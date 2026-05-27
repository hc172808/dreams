.class public Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;
.super Ljava/lang/Object;
.source "NotificationModel.java"


# instance fields
.field public date_created:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date_created"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field public image:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
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
.method public getDate_created()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;->date_created:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDate_created(Ljava/lang/String;)V
    .locals 0
    .param p1, "date_created"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date_created"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;->date_created:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;->description:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;->image:Ljava/lang/String;

    .line 36
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

    .line 27
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;->title:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/NotificationModel;->url:Ljava/lang/String;

    .line 52
    return-void
.end method
