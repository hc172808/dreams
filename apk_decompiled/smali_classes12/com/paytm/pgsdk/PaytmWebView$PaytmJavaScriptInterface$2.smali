.class Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface$2;
.super Ljava/lang/Object;
.source "PaytmWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;->returnResponse(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;

.field final synthetic val$PaymentTransactionCallback:Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

.field final synthetic val$inResponse:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$1"    # Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;

    .line 594
    iput-object p1, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface$2;->this$1:Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;

    iput-object p2, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface$2;->val$PaymentTransactionCallback:Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    iput-object p3, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface$2;->val$inResponse:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 599
    const-string v0, "status"

    const-string v1, "Response_Back"

    const-string v2, "Redirection"

    :try_start_0
    iget-object v3, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface$2;->val$PaymentTransactionCallback:Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    if-eqz v3, :cond_0

    .line 600
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v3

    const-string v4, "success"

    invoke-virtual {v3, v1, v2, v0, v4}, Lcom/paytm/pgsdk/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v3, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface$2;->val$PaymentTransactionCallback:Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    iget-object v4, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface$2;->val$inResponse:Landroid/os/Bundle;

    invoke-interface {v3, v4}, Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;->onTransactionResponse(Landroid/os/Bundle;)V

    .line 603
    :cond_0
    iget-object v3, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface$2;->this$1:Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;

    iget-object v3, v3, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-virtual {v3}, Lcom/paytm/pgsdk/PaytmWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    goto :goto_0

    .line 604
    :catch_0
    move-exception v3

    .line 605
    .local v3, "inEx":Ljava/lang/Exception;
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v4

    const-string v5, "fail"

    invoke-virtual {v4, v1, v2, v0, v5}, Lcom/paytm/pgsdk/AnalyticsManager;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-static {}, Lcom/paytm/pgsdk/AnalyticsManager;->getInstance()Lcom/paytm/pgsdk/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/paytm/pgsdk/AnalyticsManager;->logErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-static {v3}, Lcom/paytm/pgsdk/PaytmUtility;->printStackTrace(Ljava/lang/Exception;)V

    .line 608
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface$2;->val$PaymentTransactionCallback:Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    if-eqz v0, :cond_1

    .line 609
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;->onTransactionResponse(Landroid/os/Bundle;)V

    .line 611
    .end local v3    # "inEx":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method
