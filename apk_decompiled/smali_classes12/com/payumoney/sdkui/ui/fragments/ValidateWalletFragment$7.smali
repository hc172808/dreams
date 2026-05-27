.class Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->initiateDelayResendOTP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    .line 405
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$7;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 408
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$7;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$7;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$7;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->e(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 410
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$7;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->e(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 411
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$7;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->e(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$7;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payumoney/core/R$color;->primary_green:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 413
    :cond_0
    return-void
.end method
