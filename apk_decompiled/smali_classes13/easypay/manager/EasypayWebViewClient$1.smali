.class Leasypay/manager/EasypayWebViewClient$1;
.super Ljava/lang/Object;
.source "EasypayWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/manager/EasypayWebViewClient;->fireActions(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/manager/EasypayWebViewClient;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Leasypay/manager/EasypayWebViewClient;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/manager/EasypayWebViewClient;

    .line 126
    iput-object p1, p0, Leasypay/manager/EasypayWebViewClient$1;->this$0:Leasypay/manager/EasypayWebViewClient;

    iput-object p2, p0, Leasypay/manager/EasypayWebViewClient$1;->val$view:Landroid/webkit/WebView;

    iput-object p3, p0, Leasypay/manager/EasypayWebViewClient$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 129
    iget-object v0, p0, Leasypay/manager/EasypayWebViewClient$1;->this$0:Leasypay/manager/EasypayWebViewClient;

    invoke-static {v0}, Leasypay/manager/EasypayWebViewClient;->access$000(Leasypay/manager/EasypayWebViewClient;)Leasypay/actions/EasypayBrowserFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "page finish: fire action:checkAssistFlow"

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Leasypay/manager/EasypayWebViewClient$1;->this$0:Leasypay/manager/EasypayWebViewClient;

    invoke-static {v0}, Leasypay/manager/EasypayWebViewClient;->access$000(Leasypay/manager/EasypayWebViewClient;)Leasypay/actions/EasypayBrowserFragment;

    move-result-object v0

    iget-object v1, p0, Leasypay/manager/EasypayWebViewClient$1;->val$view:Landroid/webkit/WebView;

    iget-object v2, p0, Leasypay/manager/EasypayWebViewClient$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Leasypay/actions/EasypayBrowserFragment;->checkAssistFlow(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method
