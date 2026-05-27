.class public Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;
.super Ljava/lang/Object;
.source "MatchModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/definiteautomation/dreamludofantacy/model/MatchModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private current_time:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "current_time"
    .end annotation
.end field

.field private msg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg"
    .end annotation
.end field

.field private play_time:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_time"
    .end annotation
.end field

.field private start_time:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start_time"
    .end annotation
.end field

.field private success:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "success"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrent_time()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;->current_time:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay_time()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;->play_time:Ljava/lang/String;

    return-object v0
.end method

.method public getStart_time()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;->start_time:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccess()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;->success:I

    return v0
.end method

.method public setCurrent_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "current_time"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "current_time"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;->current_time:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;->msg:Ljava/lang/String;

    .line 43
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

    .line 58
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;->play_time:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setStart_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "start_time"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "start_time"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;->start_time:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setSuccess(I)V
    .locals 0
    .param p1, "success"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "success"
        }
    .end annotation

    .line 50
    iput p1, p0, Lcom/definiteautomation/dreamludofantacy/model/MatchModel$Result;->success:I

    .line 51
    return-void
.end method
