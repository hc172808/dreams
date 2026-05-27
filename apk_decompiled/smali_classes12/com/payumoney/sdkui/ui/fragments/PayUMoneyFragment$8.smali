.class Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->showLogoutDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    .line 931
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 934
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 936
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 937
    const-string v1, "Logging out..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 938
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 939
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 941
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8$1;

    invoke-direct {v2, p0, v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8$1;-><init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$8;Landroid/app/ProgressDialog;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 954
    return-void
.end method
