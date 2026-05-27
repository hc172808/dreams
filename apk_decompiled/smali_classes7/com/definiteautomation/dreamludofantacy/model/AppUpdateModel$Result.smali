.class public Lcom/definiteautomation/dreamludofantacy/model/AppUpdateModel$Result;
.super Ljava/lang/Object;
.source "AppUpdateModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/definiteautomation/dreamludofantacy/model/AppUpdateModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private force_update:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "force_update"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private latest_version_code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "latest_version_code"
    .end annotation
.end field

.field private latest_version_name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "latest_version_name"
    .end annotation
.end field

.field private msg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg"
    .end annotation
.end field

.field private success:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "success"
    .end annotation
.end field

.field private update_date:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_date"
    .end annotation
.end field

.field private update_url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_url"
    .end annotation
.end field

.field private whats_new:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "whats_new"
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
.method public getForce_update()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppUpdateModel$Result;->force_update:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppUpdateModel$Result;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLatest_version_code()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppUpdateModel$Result;->latest_version_code:Ljava/lang/String;

    return-object v0
.end method

.method public getLatest_version_name()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppUpdateModel$Result;->latest_version_name:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppUpdateModel$Result;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccess()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppUpdateModel$Result;->success:I

    return v0
.end method

.method public getUpdate_date()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppUpdateModel$Result;->update_date:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_url()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppUpdateModel$Result;->update_url:Ljava/lang/String;

    return-object v0
.end method

.method public getWhats_new()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppUpdateModel$Result;->whats_new:Ljava/lang/String;

    return-object v0
.end method

.method public setForce_update(Ljava/lang/String;)V
    .locals 0
    .param p1, "force_update"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "force_update"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppUpdateModel$Result;->force_update:Ljava/lang/String;

    .line 79
    return-void
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

    .line 70
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppUpdateModel$Result;->id:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setLatest_version_code(Ljava/lang/String;)V
    .locals 0
    .param p1, "latest_version_code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "latest_version_code"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppUpdateModel$Result;->latest_version_code:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setLatest_version_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "latest_version_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "latest_version_name"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppUpdateModel$Result;->latest_version_name:Ljava/lang/String;

    .line 103
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

    .line 54
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppUpdateModel$Result;->msg:Ljava/lang/String;

    .line 55
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

    .line 62
    iput p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppUpdateModel$Result;->success:I

    .line 63
    return-void
.end method

.method public setUpdate_date(Ljava/lang/String;)V
    .locals 0
    .param p1, "update_date"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "update_date"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppUpdateModel$Result;->update_date:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setUpdate_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "update_url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "update_url"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppUpdateModel$Result;->update_url:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setWhats_new(Ljava/lang/String;)V
    .locals 0
    .param p1, "whats_new"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "whats_new"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppUpdateModel$Result;->whats_new:Ljava/lang/String;

    .line 87
    return-void
.end method
