.class Leasypay/actions/OtpHelper$4;
.super Ljava/lang/Object;
.source "OtpHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 230
    iput-object p1, p0, Leasypay/actions/OtpHelper$4;->this$0:Leasypay/actions/OtpHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 233
    iget-object v0, p0, Leasypay/actions/OtpHelper$4;->this$0:Leasypay/actions/OtpHelper;

    invoke-static {v0}, Leasypay/actions/OtpHelper;->access$600(Leasypay/actions/OtpHelper;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Leasypay/actions/OtpHelper$4$1;

    invoke-direct {v1, p0}, Leasypay/actions/OtpHelper$4$1;-><init>(Leasypay/actions/OtpHelper$4;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 248
    return-void
.end method
