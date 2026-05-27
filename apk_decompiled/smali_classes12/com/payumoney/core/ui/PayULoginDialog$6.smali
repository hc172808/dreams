.class Lcom/payumoney/core/ui/PayULoginDialog$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/ui/PayULoginDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 247
    iput-object p1, p0, Lcom/payumoney/core/ui/PayULoginDialog$6;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .line 261
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$6;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->c(Lcom/payumoney/core/ui/PayULoginDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->isValidateUsername(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$6;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->f(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 264
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$6;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->f(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$6;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->f(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 270
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$6;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->f(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 273
    :cond_1
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 250
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$6;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->e(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payumoney/core/ui/PayULoginDialog;->a(Lcom/payumoney/core/ui/PayULoginDialog;Landroid/view/View;)V

    .line 251
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 256
    return-void
.end method
