.class Lcom/payumoney/core/ui/PayULoginDialog$5;
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

    .line 231
    iput-object p1, p0, Lcom/payumoney/core/ui/PayULoginDialog$5;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .line 244
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$5;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->d(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;

    iget-object v2, p0, Lcom/payumoney/core/ui/PayULoginDialog$5;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-direct {v1, v2}, Lcom/payumoney/core/ui/PayULoginDialog$onFocusListener;-><init>(Lcom/payumoney/core/ui/PayULoginDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 245
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 234
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$5;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->e(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payumoney/core/ui/PayULoginDialog;->a(Lcom/payumoney/core/ui/PayULoginDialog;Landroid/view/View;)V

    .line 235
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 240
    return-void
.end method
