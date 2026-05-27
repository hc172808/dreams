.class Leasypay/actions/NetBankingHelper$2;
.super Ljava/lang/Object;
.source "NetBankingHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/NetBankingHelper;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Leasypay/actions/EasypayBrowserFragment;Ljava/util/Map;Leasypay/manager/EasypayWebViewClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/actions/NetBankingHelper;


# direct methods
.method constructor <init>(Leasypay/actions/NetBankingHelper;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/actions/NetBankingHelper;

    .line 150
    iput-object p1, p0, Leasypay/actions/NetBankingHelper$2;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Leasypay/actions/NetBankingHelper$2;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v0}, Leasypay/actions/NetBankingHelper;->access$700(Leasypay/actions/NetBankingHelper;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Leasypay/actions/NetBankingHelper$2;->this$0:Leasypay/actions/NetBankingHelper;

    iget-object v1, v1, Leasypay/actions/NetBankingHelper;->injeJS:Ljava/lang/String;

    new-instance v2, Leasypay/actions/NetBankingHelper$2$1;

    invoke-direct {v2, p0}, Leasypay/actions/NetBankingHelper$2$1;-><init>(Leasypay/actions/NetBankingHelper$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Leasypay/actions/NetBankingHelper$2;->this$0:Leasypay/actions/NetBankingHelper;

    invoke-static {v0}, Leasypay/actions/NetBankingHelper;->access$700(Leasypay/actions/NetBankingHelper;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Leasypay/actions/NetBankingHelper$2;->this$0:Leasypay/actions/NetBankingHelper;

    iget-object v1, v1, Leasypay/actions/NetBankingHelper;->injeJS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void
.end method
