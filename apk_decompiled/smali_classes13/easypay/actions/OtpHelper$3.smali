.class Leasypay/actions/OtpHelper$3;
.super Ljava/lang/Object;
.source "OtpHelper.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/OtpHelper;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Leasypay/actions/EasypayBrowserFragment;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Leasypay/manager/EasypayWebViewClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/actions/OtpHelper;


# direct methods
.method constructor <init>(Leasypay/actions/OtpHelper;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/actions/OtpHelper;

    .line 188
    iput-object p1, p0, Leasypay/actions/OtpHelper$3;->this$0:Leasypay/actions/OtpHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 191
    if-eqz p2, :cond_0

    .line 192
    iget-object v0, p0, Leasypay/actions/OtpHelper$3;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v0}, Leasypay/actions/OtpHelper;->access$400(Leasypay/actions/OtpHelper;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Leasypay/actions/OtpHelper$3;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v0}, Leasypay/actions/OtpHelper;->access$400(Leasypay/actions/OtpHelper;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "Enter OTP"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 196
    :goto_0
    return-void
.end method
