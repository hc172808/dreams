.class Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    .line 394
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 397
    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ne p2, v1, :cond_1

    .line 398
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v2}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->i(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/payumoney/sdkui/ui/utils/Utils;->hideKeyBoard(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 401
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 403
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->f(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->setPaymentButtonEnable()V

    .line 407
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->j(Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;)V

    .line 408
    const/4 v0, 0x1

    return v0

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment$8;->a:Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;

    invoke-virtual {v1}, Lcom/payumoney/sdkui/ui/fragments/AddEmiCardFragment;->setPaymentButtonDisable()V

    .line 412
    return v0

    .line 416
    :cond_1
    return v0
.end method
