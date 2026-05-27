.class public Lcom/payumoney/sdkui/ui/widgets/OtpEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/sdkui/ui/widgets/OtpEditText$OtpEditInputConnection;,
        Lcom/payumoney/sdkui/ui/widgets/OtpEditText$DeletePress;
    }
.end annotation


# instance fields
.field a:Lcom/payumoney/sdkui/ui/widgets/OtpEditText$DeletePress;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 39
    new-instance v0, Lcom/payumoney/sdkui/ui/widgets/OtpEditText$OtpEditInputConnection;

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/payumoney/sdkui/ui/widgets/OtpEditText$OtpEditInputConnection;-><init>(Lcom/payumoney/sdkui/ui/widgets/OtpEditText;Landroid/view/inputmethod/InputConnection;Z)V

    return-object v0
.end method

.method public setDeletePressListener(Lcom/payumoney/sdkui/ui/widgets/OtpEditText$DeletePress;)V
    .locals 0
    .param p1, "deletePress"    # Lcom/payumoney/sdkui/ui/widgets/OtpEditText$DeletePress;

    .line 34
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/widgets/OtpEditText;->a:Lcom/payumoney/sdkui/ui/widgets/OtpEditText$DeletePress;

    .line 35
    return-void
.end method
