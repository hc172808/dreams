.class Lcom/payumoney/core/ui/PayULoginDialog$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/ui/PayULoginDialog;->initiateDelayResendOTP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/ui/PayULoginDialog;


# direct methods
.method constructor <init>(Lcom/payumoney/core/ui/PayULoginDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/ui/PayULoginDialog;

    .line 596
    iput-object p1, p0, Lcom/payumoney/core/ui/PayULoginDialog$9;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 599
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$9;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-virtual {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$9;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-virtual {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$9;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->j(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 601
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$9;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->j(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 602
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$9;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->j(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog$9;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-virtual {v1}, Lcom/payumoney/core/ui/PayULoginDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payumoney/core/R$color;->primary_green:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 604
    :cond_0
    return-void
.end method
