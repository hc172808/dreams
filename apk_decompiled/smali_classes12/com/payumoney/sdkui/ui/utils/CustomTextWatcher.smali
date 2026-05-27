.class public Lcom/payumoney/sdkui/ui/utils/CustomTextWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/payumoney/sdkui/ui/utils/CustomTextWatcherListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/payumoney/sdkui/ui/utils/CustomTextWatcherListener;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "customTextWatcherListener"    # Lcom/payumoney/sdkui/ui/utils/CustomTextWatcherListener;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/utils/CustomTextWatcher;->b:Lcom/payumoney/sdkui/ui/utils/CustomTextWatcherListener;

    .line 13
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/utils/CustomTextWatcher;->a:Landroid/view/View;

    .line 14
    iput-object p2, p0, Lcom/payumoney/sdkui/ui/utils/CustomTextWatcher;->b:Lcom/payumoney/sdkui/ui/utils/CustomTextWatcherListener;

    .line 15
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "editable"    # Landroid/text/Editable;

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/utils/CustomTextWatcher;->b:Lcom/payumoney/sdkui/ui/utils/CustomTextWatcherListener;

    iget-object v2, p0, Lcom/payumoney/sdkui/ui/utils/CustomTextWatcher;->a:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Lcom/payumoney/sdkui/ui/utils/CustomTextWatcherListener;->afterTextChanged(Landroid/view/View;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 18
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 21
    return-void
.end method
