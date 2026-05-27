.class Lcom/paytm/pgsdk/PaytmWebView$4;
.super Ljava/lang/Object;
.source "PaytmWebView.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/paytm/pgsdk/PaytmWebView;->fetchTransactionStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/paytm/pgsdk/PaytmWebView;


# direct methods
.method constructor <init>(Lcom/paytm/pgsdk/PaytmWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/paytm/pgsdk/PaytmWebView;

    .line 703
    iput-object p1, p0, Lcom/paytm/pgsdk/PaytmWebView$4;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 754
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmWebView$4;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/paytm/pgsdk/PaytmWebView$4$2;

    invoke-direct {v1, p0}, Lcom/paytm/pgsdk/PaytmWebView$4$2;-><init>(Lcom/paytm/pgsdk/PaytmWebView$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 763
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 707
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmWebView$4;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/paytm/pgsdk/PaytmWebView$4$1;

    invoke-direct {v1, p0, p2}, Lcom/paytm/pgsdk/PaytmWebView$4$1;-><init>(Lcom/paytm/pgsdk/PaytmWebView$4;Lokhttp3/Response;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 749
    return-void
.end method
