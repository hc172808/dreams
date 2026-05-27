.class Leasypay/actions/OtpHelper$4$1;
.super Ljava/lang/Object;
.source "OtpHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/OtpHelper$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Leasypay/actions/OtpHelper$4;


# direct methods
.method constructor <init>(Leasypay/actions/OtpHelper$4;)V
    .locals 0
    .param p1, "this$1"    # Leasypay/actions/OtpHelper$4;

    .line 233
    iput-object p1, p0, Leasypay/actions/OtpHelper$4$1;->this$1:Leasypay/actions/OtpHelper$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 236
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Leasypay/actions/OtpHelper$4$1;->this$1:Leasypay/actions/OtpHelper$4;

    iget-object v0, v0, Leasypay/actions/OtpHelper$4;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v0}, Leasypay/actions/OtpHelper;->access$600(Leasypay/actions/OtpHelper;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Leasypay/actions/OtpHelper$4$1;->this$1:Leasypay/actions/OtpHelper$4;

    iget-object v1, v1, Leasypay/actions/OtpHelper$4;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v1}, Leasypay/actions/OtpHelper;->access$500(Leasypay/actions/OtpHelper;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Leasypay/actions/OtpHelper$4$1$1;

    invoke-direct {v2, p0}, Leasypay/actions/OtpHelper$4$1$1;-><init>(Leasypay/actions/OtpHelper$4$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Leasypay/actions/OtpHelper$4$1;->this$1:Leasypay/actions/OtpHelper$4;

    iget-object v0, v0, Leasypay/actions/OtpHelper$4;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v0}, Leasypay/actions/OtpHelper;->access$600(Leasypay/actions/OtpHelper;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Leasypay/actions/OtpHelper$4$1;->this$1:Leasypay/actions/OtpHelper$4;

    iget-object v1, v1, Leasypay/actions/OtpHelper$4;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v1}, Leasypay/actions/OtpHelper;->access$500(Leasypay/actions/OtpHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void
.end method
