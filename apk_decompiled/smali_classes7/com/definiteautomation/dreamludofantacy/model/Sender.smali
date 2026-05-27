.class public Lcom/definiteautomation/dreamludofantacy/model/Sender;
.super Ljava/lang/Object;
.source "Sender.java"


# instance fields
.field private notification:Lcom/definiteautomation/dreamludofantacy/model/Notification;

.field private to:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/definiteautomation/dreamludofantacy/model/Notification;)V
    .locals 0
    .param p1, "to"    # Ljava/lang/String;
    .param p2, "notification"    # Lcom/definiteautomation/dreamludofantacy/model/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "to",
            "notification"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Sender;->to:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/definiteautomation/dreamludofantacy/model/Sender;->notification:Lcom/definiteautomation/dreamludofantacy/model/Notification;

    .line 14
    return-void
.end method


# virtual methods
.method public getNotification()Lcom/definiteautomation/dreamludofantacy/model/Notification;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/Sender;->notification:Lcom/definiteautomation/dreamludofantacy/model/Notification;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/Sender;->to:Ljava/lang/String;

    return-object v0
.end method

.method public setNotification(Lcom/definiteautomation/dreamludofantacy/model/Notification;)V
    .locals 0
    .param p1, "notification"    # Lcom/definiteautomation/dreamludofantacy/model/Notification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Sender;->notification:Lcom/definiteautomation/dreamludofantacy/model/Notification;

    .line 30
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0
    .param p1, "to"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "to"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Sender;->to:Ljava/lang/String;

    .line 22
    return-void
.end method
