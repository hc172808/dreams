.class public Lcom/paytm/pgsdk/PaytmStatusQuery;
.super Ljava/lang/Object;
.source "PaytmStatusQuery.java"


# instance fields
.field public mMerchantId:Ljava/lang/String;

.field public mOrderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "inOrderId"    # Ljava/lang/String;
    .param p2, "inMerchantId"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/paytm/pgsdk/PaytmStatusQuery;->mOrderId:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/paytm/pgsdk/PaytmStatusQuery;->mMerchantId:Ljava/lang/String;

    .line 23
    return-void
.end method
