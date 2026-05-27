<?php
include('include/security.php');

if (isset($_POST['action'])) {
    $action = $_POST['action'];

    if ($action === 'add' || $action === 'edit') {
        $name            = mysqli_real_escape_string($conn, $_POST['name']);
        $symbol          = strtoupper(mysqli_real_escape_string($conn, $_POST['symbol']));
        $type            = mysqli_real_escape_string($conn, $_POST['type']);
        $contract        = mysqli_real_escape_string($conn, $_POST['contract_address']);
        $rpc_url         = mysqli_real_escape_string($conn, $_POST['rpc_url']);
        $rpc_backup      = mysqli_real_escape_string($conn, $_POST['rpc_backup']);
        $decimals        = intval($_POST['decimals']);
        $icon_url        = mysqli_real_escape_string($conn, $_POST['icon_url']);
        $admin_wallet    = mysqli_real_escape_string($conn, $_POST['admin_wallet']);
        $admin_pk        = mysqli_real_escape_string($conn, $_POST['admin_private_key']);
        $network         = mysqli_real_escape_string($conn, $_POST['network']);
        $is_active       = isset($_POST['is_active']) ? 1 : 0;
        $is_default      = isset($_POST['is_default']) ? 1 : 0;
        $sort_order      = intval($_POST['sort_order']);

        if ($is_default) {
            $conn->query("UPDATE tbl_coin_type SET is_default=0");
        }

        if ($action === 'add') {
            $sql = "INSERT INTO tbl_coin_type (name,symbol,type,contract_address,rpc_url,rpc_backup,decimals,icon_url,admin_wallet,admin_private_key,network,is_active,is_default,sort_order)
                    VALUES ('$name','$symbol','$type','$contract','$rpc_url','$rpc_backup',$decimals,'$icon_url','$admin_wallet','$admin_pk','$network',$is_active,$is_default,$sort_order)";
        } else {
            $id  = intval($_POST['id']);
            $pk_update = $admin_pk ? ", admin_private_key='$admin_pk'" : '';
            $sql = "UPDATE tbl_coin_type SET name='$name',symbol='$symbol',type='$type',contract_address='$contract',rpc_url='$rpc_url',rpc_backup='$rpc_backup',decimals=$decimals,icon_url='$icon_url',admin_wallet='$admin_wallet'$pk_update,network='$network',is_active=$is_active,is_default=$is_default,sort_order=$sort_order WHERE id=$id";
        }
        $conn->query($sql);
        flash('fmsg','fmsg','Coin saved successfully.','success','TRUE');
        header("Location:crypto-coins");
        exit();
    }

    if ($action === 'toggle') {
        $id  = intval($_POST['id']);
        $val = intval($_POST['val']);
        $conn->query("UPDATE tbl_coin_type SET is_active=$val WHERE id=$id");
        exit(json_encode(['ok'=>1]));
    }

    if ($action === 'delete') {
        $id = intval($_POST['id']);
        $conn->query("DELETE FROM tbl_coin_type WHERE id=$id");
        flash('fmsg','fmsg','Coin deleted.','danger','TRUE');
        header("Location:crypto-coins");
        exit();
    }
}

$coins = [];
$res = $conn->query("SELECT * FROM tbl_coin_type ORDER BY sort_order ASC, id ASC");
while ($r = $res->fetch_assoc()) { $coins[] = $r; }

$edit = null;
if (isset($_GET['edit'])) {
    $eid = intval($_GET['edit']);
    foreach ($coins as $c) { if ($c['id'] == $eid) { $edit = $c; break; } }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>Crypto Coins | <?php echo $appDetRes['app_name']; ?></title>
    <?php include('include/head-section.php'); ?>
</head>
<body id="kt_body" class="header-fixed header-mobile-fixed subheader-enabled subheader-fixed aside-enabled aside-fixed aside-minimize-hoverable page-loading">
<?php include('include/mobile-header.php'); ?>
<div class="d-flex flex-column flex-root">
<div class="d-flex flex-row flex-column-fluid page">
<?php include('include/sidebar.php'); ?>
<div class="d-flex flex-column flex-row-fluid wrapper" id="kt_wrapper">
<?php include('include/topbar.php'); ?>
<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
    <div class="subheader py-2 py-lg-4 subheader-solid" id="kt_subheader">
        <div class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
            <h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">Crypto Coins</h5>
            <a href="crypto-coins<?php echo $edit ? '' : '?add=1'; ?>" class="btn btn-sm btn-primary font-weight-bold">
                <?php echo $edit ? 'Back to List' : '+ Add Coin'; ?>
            </a>
        </div>
    </div>
    <div class="d-flex flex-column-fluid">
    <div class="container">
        <?php flash('fmsg'); ?>

        <?php if (isset($_GET['add']) || $edit): ?>
        <!-- ADD / EDIT FORM -->
        <div class="card card-custom gutter-b">
            <div class="card-header">
                <div class="card-title"><h3 class="card-label"><?php echo $edit ? 'Edit Coin' : 'Add New Coin'; ?></h3></div>
            </div>
            <div class="card-body">
                <form method="POST">
                    <input type="hidden" name="action" value="<?php echo $edit ? 'edit' : 'add'; ?>">
                    <?php if ($edit): ?><input type="hidden" name="id" value="<?php echo $edit['id']; ?>"><?php endif; ?>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Coin Name <span class="text-danger">*</span></label>
                                <input type="text" name="name" class="form-control" required value="<?php echo htmlspecialchars($edit['name'] ?? ''); ?>" placeholder="e.g. Solana">
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>Symbol <span class="text-danger">*</span></label>
                                <input type="text" name="symbol" class="form-control" required value="<?php echo htmlspecialchars($edit['symbol'] ?? ''); ?>" placeholder="SOL">
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Type</label>
                                <select name="type" class="form-control" id="coinType" onchange="toggleFields()">
                                    <option value="solana" <?php echo ($edit['type']??'')=='solana'?'selected':''; ?>>Solana (SOL)</option>
                                    <option value="spl_token" <?php echo ($edit['type']??'')=='spl_token'?'selected':''; ?>>SPL Token</option>
                                    <option value="custom" <?php echo ($edit['type']??'')=='custom'?'selected':''; ?>>Custom Coin</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>Network</label>
                                <select name="network" class="form-control">
                                    <option value="mainnet" <?php echo ($edit['network']??'')=='mainnet'?'selected':''; ?>>Mainnet</option>
                                    <option value="devnet" <?php echo ($edit['network']??'')=='devnet'?'selected':''; ?>>Devnet</option>
                                    <option value="testnet" <?php echo ($edit['network']??'')=='testnet'?'selected':''; ?>>Testnet</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row" id="contractRow">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label>Token Mint Address <small class="text-muted">(SPL tokens only — leave blank for native SOL)</small></label>
                                <input type="text" name="contract_address" class="form-control" value="<?php echo htmlspecialchars($edit['contract_address'] ?? ''); ?>" placeholder="e.g. EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>RPC URL <span class="text-danger">*</span></label>
                                <input type="url" name="rpc_url" class="form-control" required value="<?php echo htmlspecialchars($edit['rpc_url'] ?? ''); ?>" placeholder="https://api.mainnet-beta.solana.com">
                                <small class="text-muted">Primary Solana RPC endpoint</small>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Backup RPC URL</label>
                                <input type="url" name="rpc_backup" class="form-control" value="<?php echo htmlspecialchars($edit['rpc_backup'] ?? ''); ?>" placeholder="https://solana-api.projectserum.com">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Decimals</label>
                                <input type="number" name="decimals" class="form-control" value="<?php echo $edit['decimals'] ?? 9; ?>" min="0" max="18">
                                <small class="text-muted">SOL = 9, most SPL tokens = 6 or 9</small>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Sort Order</label>
                                <input type="number" name="sort_order" class="form-control" value="<?php echo $edit['sort_order'] ?? 0; ?>" min="0">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Icon URL</label>
                                <input type="url" name="icon_url" class="form-control" value="<?php echo htmlspecialchars($edit['icon_url'] ?? ''); ?>" placeholder="https://...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Admin Hot Wallet Address</label>
                                <input type="text" name="admin_wallet" class="form-control" value="<?php echo htmlspecialchars($edit['admin_wallet'] ?? ''); ?>" placeholder="Solana public key">
                                <small class="text-muted">Platform wallet that holds prize funds</small>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Admin Wallet Private Key <?php echo $edit ? '<small class="text-muted">(leave blank to keep current)</small>' : ''; ?></label>
                                <input type="password" name="admin_private_key" class="form-control" placeholder="<?php echo $edit ? 'Leave blank to keep unchanged' : 'Base58 private key'; ?>">
                                <small class="text-danger">Stored encrypted. Used for automated prize payouts.</small>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="checkbox checkbox-primary">
                                    <input type="checkbox" name="is_active" value="1" <?php echo ($edit['is_active']??1)?'checked':''; ?>>
                                    <span></span>&nbsp; Active (visible to users)
                                </label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="checkbox checkbox-success">
                                    <input type="checkbox" name="is_default" value="1" <?php echo ($edit['is_default']??0)?'checked':''; ?>>
                                    <span></span>&nbsp; Default coin for betting
                                </label>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary mr-2"><?php echo $edit ? 'Update Coin' : 'Add Coin'; ?></button>
                    <a href="crypto-coins" class="btn btn-secondary">Cancel</a>
                </form>
            </div>
        </div>
        <?php else: ?>

        <!-- COIN LIST -->
        <div class="card card-custom gutter-b">
            <div class="card-header">
                <div class="card-title"><h3 class="card-label">All Coins</h3></div>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <thead class="thead-light">
                        <tr>
                            <th>#</th>
                            <th>Coin</th>
                            <th>Type</th>
                            <th>Network</th>
                            <th>RPC</th>
                            <th>Decimals</th>
                            <th>Admin Wallet</th>
                            <th>Default</th>
                            <th>Active</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($coins as $c): ?>
                    <tr>
                        <td><?php echo $c['id']; ?></td>
                        <td>
                            <?php if ($c['icon_url']): ?><img src="<?php echo htmlspecialchars($c['icon_url']); ?>" width="24" height="24" style="border-radius:50%;margin-right:6px;" onerror="this.style.display='none'"><?php endif; ?>
                            <strong><?php echo htmlspecialchars($c['name']); ?></strong>
                            <span class="text-muted ml-1"><?php echo htmlspecialchars($c['symbol']); ?></span>
                        </td>
                        <td><span class="badge badge-info"><?php echo $c['type']; ?></span></td>
                        <td><span class="badge badge-<?php echo $c['network']=='mainnet'?'success':($c['network']=='devnet'?'warning':'secondary'); ?>"><?php echo $c['network']; ?></span></td>
                        <td><small class="text-muted" title="<?php echo htmlspecialchars($c['rpc_url']); ?>"><?php echo strlen($c['rpc_url'])>35?substr($c['rpc_url'],0,35).'…':$c['rpc_url']; ?></small></td>
                        <td><?php echo $c['decimals']; ?></td>
                        <td><small><?php echo $c['admin_wallet'] ? substr($c['admin_wallet'],0,12).'…' : '<span class="text-danger">Not set</span>'; ?></small></td>
                        <td><?php echo $c['is_default'] ? '<span class="badge badge-success">Yes</span>' : '—'; ?></td>
                        <td>
                            <span class="switch switch-sm switch-<?php echo $c['is_active']?'success':'danger'; ?>">
                                <label>
                                    <input type="checkbox" <?php echo $c['is_active']?'checked':''; ?> onchange="toggleCoin(<?php echo $c['id']; ?>,this.checked?1:0)">
                                    <span></span>
                                </label>
                            </span>
                        </td>
                        <td>
                            <a href="crypto-coins?edit=<?php echo $c['id']; ?>" class="btn btn-sm btn-icon btn-light-primary" title="Edit"><i class="flaticon2-edit"></i></a>
                            <a href="crypto-topup?coin=<?php echo $c['id']; ?>" class="btn btn-sm btn-icon btn-light-success" title="Top-up Users"><i class="flaticon2-add"></i></a>
                            <form method="POST" style="display:inline" onsubmit="return confirm('Delete this coin? This cannot be undone.')">
                                <input type="hidden" name="action" value="delete">
                                <input type="hidden" name="id" value="<?php echo $c['id']; ?>">
                                <button type="submit" class="btn btn-sm btn-icon btn-light-danger" title="Delete"><i class="flaticon2-trash"></i></button>
                            </form>
                        </td>
                    </tr>
                    <?php endforeach; ?>
                    <?php if (empty($coins)): ?><tr><td colspan="10" class="text-center text-muted">No coins added yet.</td></tr><?php endif; ?>
                    </tbody>
                </table>
                </div>
            </div>
        </div>
        <?php endif; ?>
    </div>
    </div>
</div>
</div>
</div>
</div>
<?php include('include/footer.php'); ?>
<script>
function toggleCoin(id, val) {
    fetch('crypto-coins', {
        method:'POST',
        headers:{'Content-Type':'application/x-www-form-urlencoded'},
        body:'action=toggle&id='+id+'&val='+val
    });
}
function toggleFields() {
    var t = document.getElementById('coinType').value;
    document.getElementById('contractRow').style.display = (t === 'spl_token' || t === 'custom') ? '' : 'none';
}
toggleFields();
</script>
</body>
</html>
