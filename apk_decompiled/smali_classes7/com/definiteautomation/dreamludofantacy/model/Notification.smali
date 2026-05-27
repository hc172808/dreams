.class public Lcom/definiteautomation/dreamludofantacy/model/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# instance fields
.field private body:Ljava/lang/String;

.field private click_action:Ljava/lang/String;

.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "click_action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "body",
            "click_action"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Notification;->title:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/definiteautomation/dreamludofantacy/model/Notification;->body:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/definiteautomation/dreamludofantacy/model/Notification;->click_action:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/Notification;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getClick_action()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/Notification;->click_action:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/Notification;->data:Ljava/util/Map;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/Notification;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "body"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Notification;->body:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setClick_action(Ljava/lang/String;)V
    .locals 0
    .param p1, "click_action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "click_action"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Notification;->click_action:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Notification;->data:Ljava/util/Map;

    .line 43
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/Notification;->title:Ljava/lang/String;

    .line 27
    return-void
.end method
