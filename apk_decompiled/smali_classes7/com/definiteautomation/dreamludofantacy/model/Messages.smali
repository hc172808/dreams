.class public Lcom/definiteautomation/dreamludofantacy/model/Messages;
.super Ljava/lang/Object;
.source "Messages.java"


# instance fields
.field private from:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private seen:Z

.field private time:J

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Messages;->from:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "time"    # J
    .param p5, "seen"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "type",
            "time",
            "seen"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Messages;->message:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/definiteautomation/dreamludofantacy/model/Messages;->type:Ljava/lang/String;

    .line 27
    iput-wide p3, p0, Lcom/definiteautomation/dreamludofantacy/model/Messages;->time:J

    .line 28
    iput-boolean p5, p0, Lcom/definiteautomation/dreamludofantacy/model/Messages;->seen:Z

    .line 29
    return-void
.end method


# virtual methods
.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/Messages;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/Messages;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/model/Messages;->time:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/Messages;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isSeen()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/definiteautomation/dreamludofantacy/model/Messages;->seen:Z

    return v0
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Messages;->from:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Messages;->message:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setSeen(Z)V
    .locals 0
    .param p1, "seen"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seen"
        }
    .end annotation

    .line 60
    iput-boolean p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Messages;->seen:Z

    .line 61
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .param p1, "time"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 52
    iput-wide p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Messages;->time:J

    .line 53
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Messages;->type:Ljava/lang/String;

    .line 45
    return-void
.end method
