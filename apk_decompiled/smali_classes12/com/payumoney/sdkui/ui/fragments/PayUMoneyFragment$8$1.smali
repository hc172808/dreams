.class Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8;

    .line 941
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8$1;->b:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8;

    iput-object p2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8$1;->a:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8$1;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 945
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->logoutUser()V

    .line 947
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8$1;->b:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->i(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/sdkui/presenter/fragmentPresenter/ILogoutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8$1;->b:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->i(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Lcom/payumoney/sdkui/presenter/fragmentPresenter/ILogoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/payumoney/sdkui/presenter/fragmentPresenter/ILogoutListener;->onLogout()V

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8$1;->b:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    .line 951
    return-void
.end method
