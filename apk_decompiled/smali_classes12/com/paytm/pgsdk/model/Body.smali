.class public Lcom/paytm/pgsdk/model/Body;
.super Ljava/lang/Object;
.source "Body.java"


# instance fields
.field private txnInfo:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTxnInfo()Ljava/lang/Object;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/paytm/pgsdk/model/Body;->txnInfo:Ljava/lang/Object;

    return-object v0
.end method
