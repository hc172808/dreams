.class Lcom/paytm/pgsdk/PaytmPGActivity$2;
.super Ljava/lang/Object;
.source "PaytmPGActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/paytm/pgsdk/PaytmPGActivity;->cancelTransaction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/paytm/pgsdk/PaytmPGActivity;


# direct methods
.method constructor <init>(Lcom/paytm/pgsdk/PaytmPGActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/paytm/pgsdk/PaytmPGActivity;

    .line 332
    iput-object p1, p0, Lcom/paytm/pgsdk/PaytmPGActivity$2;->this$0:Lcom/paytm/pgsdk/PaytmPGActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 335
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmPGService;->getmPaymentTransactionCallback()Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    invoke-static {}, Lcom/paytm/pgsdk/PaytmPGService;->getService()Lcom/paytm/pgsdk/PaytmPGService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmPGService;->getmPaymentTransactionCallback()Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/paytm/pgsdk/PaytmPaymentTransactionCallback;->onBackPressedCancelTransaction()V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/paytm/pgsdk/PaytmPGActivity$2;->this$0:Lcom/paytm/pgsdk/PaytmPGActivity;

    invoke-virtual {v0}, Lcom/paytm/pgsdk/PaytmPGActivity;->finish()V

    .line 340
    return-void
.end method
