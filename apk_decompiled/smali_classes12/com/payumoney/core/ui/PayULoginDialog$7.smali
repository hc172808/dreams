.class Lcom/payumoney/core/ui/PayULoginDialog$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 279
    iput-object p1, p0, Lcom/payumoney/core/ui/PayULoginDialog$7;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .line 282
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x6

    if-ne p2, v1, :cond_3

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog$7;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-virtual {v1}, Lcom/payumoney/core/ui/PayULoginDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/payumoney/core/utils/SdkHelper;->checkNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 284
    iget-object v1, p0, Lcom/payumoney/core/ui/PayULoginDialog$7;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-virtual {v1}, Lcom/payumoney/core/ui/PayULoginDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/payumoney/core/R$string;->disconnected_from_internet:I

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 285
    return v0

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$7;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->c(Lcom/payumoney/core/ui/PayULoginDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/core/ui/PayULoginDialog$7;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v2}, Lcom/payumoney/core/ui/PayULoginDialog;->d(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/payumoney/core/ui/PayULoginDialog;->a(Lcom/payumoney/core/ui/PayULoginDialog;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const/4 v0, 0x1

    return v0

    .line 291
    :cond_3
    return v0
.end method
