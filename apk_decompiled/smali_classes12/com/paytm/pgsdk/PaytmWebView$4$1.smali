.class Lcom/paytm/pgsdk/PaytmWebView$4$1;
.super Ljava/lang/Object;
.source "PaytmWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/paytm/pgsdk/PaytmWebView$4;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/paytm/pgsdk/PaytmWebView$4;

.field final synthetic val$response:Lokhttp3/Response;


# direct methods
.method constructor <init>(Lcom/paytm/pgsdk/PaytmWebView$4;Lokhttp3/Response;)V
    .locals 0
    .param p1, "this$1"    # Lcom/paytm/pgsdk/PaytmWebView$4;

    .line 707
    iput-object p1, p0, Lcom/paytm/pgsdk/PaytmWebView$4$1;->this$1:Lcom/paytm/pgsdk/PaytmWebView$4;

    iput-object p2, p0, Lcom/paytm/pgsdk/PaytmWebView$4$1;->val$response:Lokhttp3/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 711
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmPGService;->getmPaymentTransactionCallback()Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    move-result-object v0

    .line 713
    .local v0, "PaymentTransactionCallback":Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/paytm/pgsdk/PaytmWebView$4$1;->val$response:Lokhttp3/Response;

    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/paytm/pgsdk/PaytmWebView$4$1;->val$response:Lokhttp3/Response;

    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 714
    iget-object v2, p0, Lcom/paytm/pgsdk/PaytmWebView$4$1;->val$response:Lokhttp3/Response;

    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    .line 715
    .local v2, "responseString":Ljava/lang/String;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/paytm/pgsdk/model/ProcessTransactionInfo;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/paytm/pgsdk/model/ProcessTransactionInfo;

    .line 716
    .local v3, "transactionStatusResponse":Lcom/paytm/pgsdk/model/ProcessTransactionInfo;
    invoke-virtual {v3}, Lcom/paytm/pgsdk/model/ProcessTransactionInfo;->getBody()Lcom/paytm/pgsdk/model/Body;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/paytm/pgsdk/model/ProcessTransactionInfo;->getBody()Lcom/paytm/pgsdk/model/Body;

    move-result-object v4

    invoke-virtual {v4}, Lcom/paytm/pgsdk/model/Body;->getTxnInfo()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 719
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 721
    .local v4, "bundle":Landroid/os/Bundle;
    :try_start_1
    sget-object v5, Lcom/paytm/pgsdk/Constants;->RESPONSE:Ljava/lang/String;

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3}, Lcom/paytm/pgsdk/model/ProcessTransactionInfo;->getBody()Lcom/paytm/pgsdk/model/Body;

    move-result-object v7

    invoke-virtual {v7}, Lcom/paytm/pgsdk/model/Body;->getTxnInfo()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 724
    goto :goto_0

    .line 722
    :catch_0
    move-exception v5

    .line 723
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-interface {v0, v1}, Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;->onTransactionResponse(Landroid/os/Bundle;)V

    .line 726
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-interface {v0, v4}, Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;->onTransactionResponse(Landroid/os/Bundle;)V

    .line 727
    .end local v4    # "bundle":Landroid/os/Bundle;
    goto :goto_1

    .line 728
    :cond_0
    invoke-interface {v0, v1}, Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;->onTransactionResponse(Landroid/os/Bundle;)V

    .line 729
    iget-object v4, p0, Lcom/paytm/pgsdk/PaytmWebView$4$1;->this$1:Lcom/paytm/pgsdk/PaytmWebView$4;

    iget-object v4, v4, Lcom/paytm/pgsdk/PaytmWebView$4;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-virtual {v4}, Lcom/paytm/pgsdk/PaytmWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 731
    .end local v2    # "responseString":Ljava/lang/String;
    .end local v3    # "transactionStatusResponse":Lcom/paytm/pgsdk/model/ProcessTransactionInfo;
    :goto_1
    goto :goto_2

    .line 732
    :cond_1
    invoke-interface {v0, v1}, Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;->onTransactionResponse(Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 736
    :goto_2
    goto :goto_3

    .line 734
    :catch_1
    move-exception v2

    .line 735
    .local v2, "e":Ljava/lang/Exception;
    invoke-interface {v0, v1}, Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;->onTransactionResponse(Landroid/os/Bundle;)V

    .line 744
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    iget-object v1, p0, Lcom/paytm/pgsdk/PaytmWebView$4$1;->this$1:Lcom/paytm/pgsdk/PaytmWebView$4;

    iget-object v1, v1, Lcom/paytm/pgsdk/PaytmWebView$4;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-virtual {v1}, Lcom/paytm/pgsdk/PaytmWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 745
    return-void
.end method
