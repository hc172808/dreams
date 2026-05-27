.class Lcom/payumoney/sdkui/ui/widgets/OtpEditText$OtpEditInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/sdkui/ui/widgets/OtpEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OtpEditInputConnection"
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;


# direct methods
.method public constructor <init>(Lcom/payumoney/sdkui/ui/widgets/OtpEditText;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0
    .param p2, "target"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "mutable"    # Z

    .line 53
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/widgets/OtpEditText$OtpEditInputConnection;->a:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    .line 54
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 55
    return-void
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .locals 4
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 86
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 88
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x43

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText$OtpEditInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText$OtpEditInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0

    .line 92
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result v0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 59
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 60
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/OtpEditText$OtpEditInputConnection;->a:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->a:Lcom/payumoney/sdkui/ui/widgets/OtpEditText$DeletePress;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/OtpEditText$OtpEditInputConnection;->a:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/OtpEditText$OtpEditInputConnection;->a:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->a:Lcom/payumoney/sdkui/ui/widgets/OtpEditText$DeletePress;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/OtpEditText$OtpEditInputConnection;->a:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->a:Lcom/payumoney/sdkui/ui/widgets/OtpEditText$DeletePress;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/widgets/OtpEditText$OtpEditInputConnection;->a:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v2}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText$DeletePress;->onEmptyDeletePress(Ljava/lang/String;)V

    .line 67
    return v1

    .line 72
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText$OtpEditInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/OtpEditText$OtpEditInputConnection;->a:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    iget-object v0, v0, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->a:Lcom/payumoney/sdkui/ui/widgets/OtpEditText$DeletePress;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/widgets/OtpEditText$OtpEditInputConnection;->a:Lcom/payumoney/sdkui/ui/widgets/OtpEditText;

    invoke-virtual {v2}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText$DeletePress;->onNonEmptyDeletePress(Ljava/lang/String;)V

    .line 74
    return v1

    .line 79
    :cond_1
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
