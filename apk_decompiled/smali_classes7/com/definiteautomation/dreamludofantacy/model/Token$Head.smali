.class public Lcom/definiteautomation/dreamludofantacy/model/Token$Head;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/definiteautomation/dreamludofantacy/model/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Head"
.end annotation


# instance fields
.field private responseTimestamp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "responseTimestamp"
    .end annotation
.end field

.field private signature:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signature"
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponseTimestamp()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/Token$Head;->responseTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/Token$Head;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/Token$Head;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setResponseTimestamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseTimestamp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "responseTimestamp"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Token$Head;->responseTimestamp:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signature"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Token$Head;->signature:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Token$Head;->version:Ljava/lang/String;

    .line 99
    return-void
.end method
