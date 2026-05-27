.class final Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager$sendInstallEventAsync$1;
.super Ljava/lang/Object;
.source "OnDeviceProcessingManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;->sendInstallEventAsync(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $applicationId:Ljava/lang/String;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $preferencesName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager$sendInstallEventAsync$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager$sendInstallEventAsync$1;->$preferencesName:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager$sendInstallEventAsync$1;->$applicationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_1

    return-void

    :cond_1
    move-object v0, p0

    .line 55
    .local v0, "this":Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager$sendInstallEventAsync$1;
    :try_start_1
    iget-object v1, v0, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager$sendInstallEventAsync$1;->$context:Landroid/content/Context;

    iget-object v2, v0, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager$sendInstallEventAsync$1;->$preferencesName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 56
    .local v1, "preferences":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager$sendInstallEventAsync$1;->$applicationId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "pingForOnDevice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "pingKey":Ljava/lang/String;
    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 60
    .local v5, "lastOnDevicePing":J
    cmp-long v7, v5, v3

    if-nez v7, :cond_2

    .line 61
    iget-object v3, v0, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager$sendInstallEventAsync$1;->$applicationId:Ljava/lang/String;

    invoke-static {v3}, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;->sendInstallEvent(Ljava/lang/String;)Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;

    .line 65
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 66
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-wide v4, v7

    .line 67
    .end local v5    # "lastOnDevicePing":J
    .local v4, "lastOnDevicePing":J
    invoke-interface {v3, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .end local v0    # "this":Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager$sendInstallEventAsync$1;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    .end local v2    # "pingKey":Ljava/lang/String;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "lastOnDevicePing":J
    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    goto :goto_0

    :catchall_2
    move-exception v1

    move-object v0, p0

    :goto_0
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
