.class Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    .line 262
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 265
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->a(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)Landroidx/appcompat/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/utils/Utils;->hideKeyBoard(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 266
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->c(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;

    invoke-virtual {v0, p2}, Lcom/payumoney/sdkui/ui/adapters/RecyclerViewAdapter;->getNetBankingOption(I)Lcom/payumoney/core/entity/PaymentEntity;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->d(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->e(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 269
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->d(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    move-result-object v1

    const-string v2, "net_banking_list_dialog"

    invoke-interface {v1, v0, v2}, Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;->onItemClickListener(Lcom/payumoney/core/entity/PaymentEntity;Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->d(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    move-result-object v1

    const-string v2, "emi_banking_list_dialog"

    invoke-interface {v1, v0, v2}, Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;->onItemClickListener(Lcom/payumoney/core/entity/PaymentEntity;Ljava/lang/String;)V

    .line 274
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->a(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;)Lcom/payumoney/sdkui/presenter/fragmentPresenter/IRecyclerViewOnItemClickListener;

    .line 275
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->c(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->f(Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;)Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 276
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/DialogBankListFragment;->dismiss()V

    .line 278
    return-void
.end method
