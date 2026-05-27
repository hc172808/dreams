.class Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;

    .line 243
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 246
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->a(Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;)Landroidx/appcompat/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/utils/Utils;->hideKeyBoard(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 247
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->c(Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    invoke-virtual {v0, p2}, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->getNetBankingOption(I)Lcom/payumoney/core/entity/PaymentEntity;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->d(Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;)Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->d(Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;)Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    move-result-object v1

    const-string v2, "wallet_list_dialog"

    invoke-interface {v1, v0, v2}, Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;->onItemClickListener(Lcom/payumoney/core/entity/PaymentEntity;Ljava/lang/String;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->a(Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;)Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    .line 254
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->c(Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->e(Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;)Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 255
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/WalletListFragment;->dismiss()V

    .line 257
    return-void
.end method
