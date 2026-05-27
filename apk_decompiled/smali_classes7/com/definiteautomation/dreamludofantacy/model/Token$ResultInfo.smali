.class public Lcom/definiteautomation/dreamludofantacy/model/Token$ResultInfo;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/definiteautomation/dreamludofantacy/model/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultInfo"
.end annotation


# instance fields
.field private resultCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resultCode"
    .end annotation
.end field

.field private resultMsg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resultMsg"
    .end annotation
.end field

.field private resultStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resultStatus"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResultCode()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/Token$ResultInfo;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/Token$ResultInfo;->resultMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getResultStatus()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/Token$ResultInfo;->resultStatus:Ljava/lang/String;

    return-object v0
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultCode"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Token$ResultInfo;->resultCode:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setResultMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultMsg"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Token$ResultInfo;->resultMsg:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setResultStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultStatus"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultStatus"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Token$ResultInfo;->resultStatus:Ljava/lang/String;

    .line 53
    return-void
.end method
