.class public Lcom/definiteautomation/dreamludofantacy/model/Token$Body;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/definiteautomation/dreamludofantacy/model/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Body"
.end annotation


# instance fields
.field private authenticated:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "authenticated"
    .end annotation
.end field

.field private isPromoCodeValid:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isPromoCodeValid"
    .end annotation
.end field

.field private resultInfo:Lcom/definiteautomation/dreamludofantacy/model/Token$ResultInfo;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resultInfo"
    .end annotation
.end field

.field private txnToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "txnToken"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResultInfo()Lcom/definiteautomation/dreamludofantacy/model/Token$ResultInfo;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/Token$Body;->resultInfo:Lcom/definiteautomation/dreamludofantacy/model/Token$ResultInfo;

    return-object v0
.end method

.method public getTxnToken()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/Token$Body;->txnToken:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/definiteautomation/dreamludofantacy/model/Token$Body;->authenticated:Z

    return v0
.end method

.method public isIsPromoCodeValid()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/definiteautomation/dreamludofantacy/model/Token$Body;->isPromoCodeValid:Z

    return v0
.end method

.method public setAuthenticated(Z)V
    .locals 0
    .param p1, "authenticated"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "authenticated"
        }
    .end annotation

    .line 158
    iput-boolean p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Token$Body;->authenticated:Z

    .line 159
    return-void
.end method

.method public setIsPromoCodeValid(Z)V
    .locals 0
    .param p1, "isPromoCodeValid"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPromoCodeValid"
        }
    .end annotation

    .line 150
    iput-boolean p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Token$Body;->isPromoCodeValid:Z

    .line 151
    return-void
.end method

.method public setResultInfo(Lcom/definiteautomation/dreamludofantacy/model/Token$ResultInfo;)V
    .locals 0
    .param p1, "resultInfo"    # Lcom/definiteautomation/dreamludofantacy/model/Token$ResultInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultInfo"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Token$Body;->resultInfo:Lcom/definiteautomation/dreamludofantacy/model/Token$ResultInfo;

    .line 135
    return-void
.end method

.method public setTxnToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "txnToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "txnToken"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Token$Body;->txnToken:Ljava/lang/String;

    .line 143
    return-void
.end method
