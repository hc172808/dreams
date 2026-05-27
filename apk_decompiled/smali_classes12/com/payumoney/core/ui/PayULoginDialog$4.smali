.class Lcom/payumoney/core/ui/PayULoginDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 217
    iput-object p1, p0, Lcom/payumoney/core/ui/PayULoginDialog$4;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .line 221
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$4;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-virtual {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->checkNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$4;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-virtual {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/payumoney/core/R$string;->disconnected_from_internet:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 223
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/payumoney/core/ui/PayULoginDialog$4;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v0}, Lcom/payumoney/core/ui/PayULoginDialog;->c(Lcom/payumoney/core/ui/PayULoginDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/core/ui/PayULoginDialog$4;->a:Lcom/payumoney/core/ui/PayULoginDialog;

    invoke-static {v2}, Lcom/payumoney/core/ui/PayULoginDialog;->d(Lcom/payumoney/core/ui/PayULoginDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/payumoney/core/ui/PayULoginDialog;->a(Lcom/payumoney/core/ui/PayULoginDialog;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method
