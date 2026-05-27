.class public Lcom/payumoney/graphics/classes/NetBanking;
.super Ljava/lang/Object;
.source "NetBanking.java"


# instance fields
.field private bankName:Ljava/lang/String;

.field private issuerCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIssuerCode()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/payumoney/graphics/classes/NetBanking;->issuerCode:Ljava/lang/String;

    return-object v0
.end method
