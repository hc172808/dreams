.class public Lcom/definiteautomation/dreamludofantacy/model/LeaderboardModel;
.super Ljava/lang/Object;
.source "LeaderboardModel.java"


# instance fields
.field public full_name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "full_name"
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
.method public getFull_name()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/LeaderboardModel;->full_name:Ljava/lang/String;

    return-object v0
.end method

.method public getWon_prize()D
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/model/LeaderboardModel;->won_prize:D

    return-wide v0
.end method

.method public setFull_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "full_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "full_name"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/LeaderboardModel;->full_name:Ljava/lang/String;

    .line 19
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

    .line 26
    iput-wide p1, p0, Lcom/definiteautomation/dreamludofantacy/model/LeaderboardModel;->won_prize:D

    .line 27
    return-void
.end method
