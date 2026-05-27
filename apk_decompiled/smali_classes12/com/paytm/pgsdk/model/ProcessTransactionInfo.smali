.class public Lcom/paytm/pgsdk/model/ProcessTransactionInfo;
.super Ljava/lang/Object;
.source "ProcessTransactionInfo.java"


# instance fields
.field private body:Lcom/paytm/pgsdk/model/Body;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Lcom/paytm/pgsdk/model/Body;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/paytm/pgsdk/model/ProcessTransactionInfo;->body:Lcom/paytm/pgsdk/model/Body;

    return-object v0
.end method
