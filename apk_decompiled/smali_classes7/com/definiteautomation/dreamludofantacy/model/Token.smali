.class public Lcom/definiteautomation/dreamludofantacy/model/Token;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/definiteautomation/dreamludofantacy/model/Token$Body;,
        Lcom/definiteautomation/dreamludofantacy/model/Token$Head;,
        Lcom/definiteautomation/dreamludofantacy/model/Token$ResultInfo;
    }
.end annotation


# instance fields
.field private body:Lcom/definiteautomation/dreamludofantacy/model/Token$Body;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "body"
    .end annotation
.end field

.field private head:Lcom/definiteautomation/dreamludofantacy/model/Token$Head;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "head"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Lcom/definiteautomation/dreamludofantacy/model/Token$Body;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/Token;->body:Lcom/definiteautomation/dreamludofantacy/model/Token$Body;

    return-object v0
.end method

.method public getHead()Lcom/definiteautomation/dreamludofantacy/model/Token$Head;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/Token;->head:Lcom/definiteautomation/dreamludofantacy/model/Token$Head;

    return-object v0
.end method

.method public setBody(Lcom/definiteautomation/dreamludofantacy/model/Token$Body;)V
    .locals 0
    .param p1, "body"    # Lcom/definiteautomation/dreamludofantacy/model/Token$Body;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "body"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Token;->body:Lcom/definiteautomation/dreamludofantacy/model/Token$Body;

    .line 31
    return-void
.end method

.method public setHead(Lcom/definiteautomation/dreamludofantacy/model/Token$Head;)V
    .locals 0
    .param p1, "head"    # Lcom/definiteautomation/dreamludofantacy/model/Token$Head;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "head"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Token;->head:Lcom/definiteautomation/dreamludofantacy/model/Token$Head;

    .line 23
    return-void
.end method
