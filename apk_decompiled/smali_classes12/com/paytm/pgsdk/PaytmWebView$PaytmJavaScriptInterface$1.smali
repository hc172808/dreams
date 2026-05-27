.class Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface$1;
.super Ljava/lang/Object;
.source "PaytmWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;->inVokeUpiFlow(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;

.field final synthetic val$jsUPi:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;

    .line 540
    iput-object p1, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface$1;->this$1:Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;

    iput-object p2, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface$1;->val$jsUPi:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface$1;->this$1:Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;

    iget-object v0, v0, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    iget-object v1, p0, Lcom/paytm/pgsdk/PaytmWebView$PaytmJavaScriptInterface$1;->val$jsUPi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/paytm/pgsdk/PaytmWebView;->loadUrl(Ljava/lang/String;)V

    .line 544
    return-void
.end method
