.class public Lcom/paytm/pgsdk/PaytmClientCertificate;
.super Ljava/lang/Object;
.source "PaytmClientCertificate.java"


# instance fields
.field public mFileName:Ljava/lang/String;

.field public mPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "inPassword"    # Ljava/lang/String;
    .param p2, "inFileName"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/paytm/pgsdk/PaytmClientCertificate;->mPassword:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/paytm/pgsdk/PaytmClientCertificate;->mFileName:Ljava/lang/String;

    .line 23
    return-void
.end method
