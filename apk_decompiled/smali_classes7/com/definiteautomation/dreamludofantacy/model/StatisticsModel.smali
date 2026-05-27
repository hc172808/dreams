.class public Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;
.super Ljava/lang/Object;
.source "StatisticsModel.java"


# instance fields
.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public match_fee:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "match_fee"
    .end annotation
.end field

.field public play_time:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_time"
    .end annotation
.end field

.field public win:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "win"
    .end annotation
.end field

.field public won_prize:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "won_prize"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMatch_fee()D
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;->match_fee:D

    return-wide v0
.end method

.method public getPlay_time()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;->play_time:Ljava/lang/String;

    return-object v0
.end method

.method public getWin()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;->win:Ljava/lang/String;

    return-object v0
.end method

.method public getWon_prize()D
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;->won_prize:D

    return-wide v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;->id:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setMatch_fee(D)V
    .locals 0
    .param p1, "match_fee"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "match_fee"
        }
    .end annotation

    .line 35
    iput-wide p1, p0, Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;->match_fee:D

    .line 36
    return-void
.end method

.method public setPlay_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "play_time"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "play_time"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;->play_time:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setWin(Ljava/lang/String;)V
    .locals 0
    .param p1, "win"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "win"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;->win:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setWon_prize(D)V
    .locals 0
    .param p1, "won_prize"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "won_prize"
        }
    .end annotation

    .line 43
    iput-wide p1, p0, Lcom/definiteautomation/dreamludofantacy/model/StatisticsModel;->won_prize:D

    .line 44
    return-void
.end method
