.class Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 99
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$1;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 117
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 102
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$1;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->a(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->a(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;Landroid/view/View;)V

    .line 103
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 107
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$1;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->b(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    move-result-object v1

    const/4 v2, 0x1

    sget v3, Lcom/payumoney/sdkui/R$string;->quick_pay_amount_now:I

    const/16 v4, 0xff

    invoke-static {v0, v1, v2, v3, v4}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->a(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;Landroid/view/View;ZII)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment$1;->a:Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->b(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;)Lcom/payumoney/sdkui/ui/widgets/CustomDrawableTextView;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/payumoney/sdkui/R$string;->quick_pay_amount_now:I

    const/16 v4, 0x96

    invoke-static {v0, v1, v2, v3, v4}, Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;->a(Lcom/payumoney/sdkui/ui/fragments/ValidateWalletFragment;Landroid/view/View;ZII)V

    .line 112
    :goto_0
    return-void
.end method
