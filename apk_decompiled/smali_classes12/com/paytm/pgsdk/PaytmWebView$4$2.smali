.class Lcom/paytm/pgsdk/PaytmWebView$4$2;
.super Ljava/lang/Object;
.source "PaytmWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/paytm/pgsdk/PaytmWebView$4;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/paytm/pgsdk/PaytmWebView$4;


# direct methods
.method constructor <init>(Lcom/paytm/pgsdk/PaytmWebView$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/paytm/pgsdk/PaytmWebView$4;

    .line 754
    iput-object p1, p0, Lcom/paytm/pgsdk/PaytmWebView$4$2;->this$1:Lcom/paytm/pgsdk/PaytmWebView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 757
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmPGService;->getmPaymentTransactionCallback()Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    move-result-object v0

    .line 758
    .local v0, "paymentTransactionCallback":Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;->onTransactionResponse(Landroid/os/Bundle;)V

    .line 759
    iget-object v1, p0, Lcom/paytm/pgsdk/PaytmWebView$4$2;->this$1:Lcom/paytm/pgsdk/PaytmWebView$4;

    iget-object v1, v1, Lcom/paytm/pgsdk/PaytmWebView$4;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-virtual {v1}, Lcom/paytm/pgsdk/PaytmWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 760
    return-void
.end method
