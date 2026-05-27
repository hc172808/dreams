.class public Lcom/paytm/pgsdk/PaytmRefund;
.super Ljava/lang/Object;
.source "PaytmRefund.java"


# instance fields
.field public mChecksumHash:Ljava/lang/String;

.field public mComments:Ljava/lang/String;

.field public mMerchantId:Ljava/lang/String;

.field public mOrderId:Ljava/lang/String;

.field public mRefundAmount:Ljava/lang/String;

.field public mTransactioType:Ljava/lang/String;

.field public mTransactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "inTransactionId"    # Ljava/lang/String;
    .param p2, "inOrderId"    # Ljava/lang/String;
    .param p3, "inRefundAmount"    # Ljava/lang/String;
    .param p4, "inTransactioType"    # Ljava/lang/String;
    .param p5, "inComments"    # Ljava/lang/String;
    .param p6, "inChecksumHash"    # Ljava/lang/String;
    .param p7, "inMerchantId"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/paytm/pgsdk/PaytmRefund;->mTransactionId:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/paytm/pgsdk/PaytmRefund;->mOrderId:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/paytm/pgsdk/PaytmRefund;->mRefundAmount:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/paytm/pgsdk/PaytmRefund;->mTransactioType:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/paytm/pgsdk/PaytmRefund;->mComments:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Lcom/paytm/pgsdk/PaytmRefund;->mChecksumHash:Ljava/lang/String;

    .line 32
    iput-object p7, p0, Lcom/paytm/pgsdk/PaytmRefund;->mMerchantId:Ljava/lang/String;

    .line 33
    return-void
.end method
