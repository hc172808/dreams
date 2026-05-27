.class Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->setUpUIConvenienceFee()V
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

    .line 273
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 276
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->l:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payumoney/sdkui/R$color;->payumoney_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 278
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$5;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    return-void
.end method
