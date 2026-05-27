<?php

include('../../include/config.php');
/*
 * DataTables example server-side processing script.
 *
 * Please note that this script is intentionally extremely simply to show how
 * server-side processing can be implemented, and probably shouldn't be used as
 * the basis for a large complex system. It is suitable for simple use cases as
 * for learning.
 *
 * See http://datatables.net/usage/server-side for full details on the server-
 * side processing requirements of DataTables.
 *
 * @license MIT - http://datatables.net/license_mit
 */

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * Easy set variables
 */

// DB table to use
$table = 'tbl_match';

// Table's primary key
$primaryKey = 'id';

// Array of database columns which should be read and sent back to DataTables.
// The `db` parameter represents the column name in the database, while the `dt`
// parameter represents the DataTables column identifier. In this case simple
// indexes

$columns = array(
    array( 'db' => '`m`.`id`', 'dt' => 0, 'field' => 'id' ),
    array( 'db' => '`m`.`match_fee`',  'dt' => 1, 'field' => 'match_fee' ),
    array( 'db' => '`m`.`prize`', 'dt' => 2, 'field' => 'prize' ),
    array( 'db' => '`m`.`table_size`',  'dt' => 3, 'field' => 'table_size' ),
    array( 'db' => '`m`.`type`',  'dt' => 4, 'field' => 'type' ),
    array( 'db' => '`m`.`date_created`',  'dt' => 5, 'field' => 'date_created' ),
    array( 'db' => '`m`.`status`',  'dt' => 6, 'field' => 'status' ),
    // array('defaultContent: <a id="myBtn" class="btn">Edit</a>', "dt" => 3)
);
// SQL server connection information
$sql_details = array(
    'user' => $username,
    'pass' => $password,
    'db'   => $db,
    'host' => $servername
);

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 * If you just want to use the basic configuration for DataTables with PHP
 * server-side, there is no need to edit below this line.
 */

// require( 'ssp.class.php' );
require('sspCustom.class.php' );

$joinQuery = "FROM `tbl_match` AS `m`";

if(isset($_GET['mtstatus']))
{
    $mtstatus = $_GET['mtstatus'];
    $extraWhere = "`m`.`status` = $mtstatus";
}

// $groupBy = "`u`.`office`";
// $having = "`u`.`salary` >= 140000";
if(isset($_GET['mtstatus']))
{
    echo json_encode(
        // SSP::simple( $_GET, $sql_details, $table, $primaryKey, $columns, $joinQuery, $extraWhere, $groupBy, $having )
        
        SSP::simple( $_GET, $sql_details, $table, $primaryKey, $columns, $joinQuery, $extraWhere )
    );
}
else
{   
    echo json_encode( 
        SSP::simple( $_GET, $sql_details, $table, $primaryKey, $columns, $joinQuery )
    );    
}