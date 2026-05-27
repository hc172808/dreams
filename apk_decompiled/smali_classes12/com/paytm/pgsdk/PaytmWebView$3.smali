.class Lcom/paytm/pgsdk/PaytmWebView$3;
.super Ljava/lang/Object;
.source "PaytmWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/paytm/pgsdk/PaytmWebView;->stopProgressDialog()V
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

    .line 165
    iput-object p1, p0, Lcom/paytm/pgsdk/PaytmWebView$3;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmWebView$3;->this$0:Lcom/paytm/pgsdk/PaytmWebView;

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmWebView;->access$000(Lcom/paytm/pgsdk/PaytmWebView;)Lcom/paytm/pgsdk/PaytmPGActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/paytm/pgsdk/PaytmPGActivity;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 169
    const-string v0, "Progress dialog ended"

    invoke-static {v0}, Lcom/paytm/pgsdk/PaytmUtility;->debugLog(Ljava/lang/String;)V

    .line 170
    return-void
.end method
