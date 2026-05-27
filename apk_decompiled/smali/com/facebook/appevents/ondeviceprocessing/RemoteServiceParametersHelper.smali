.class public final Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceParametersHelper;
.super Ljava/lang/Object;
.source "RemoteServiceParametersHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00042\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0007J\u001e\u0010\r\u001a\u00020\u000e2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\t\u001a\u00020\u0004H\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceParametersHelper;",
        "",
        "()V",
        "TAG",
        "",
        "buildEventsBundle",
        "Landroid/os/Bundle;",
        "eventType",
        "Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;",
        "applicationId",
        "appEvents",
        "",
        "Lcom/facebook/appevents/AppEvent;",
        "buildEventsJson",
        "Lorg/json/JSONArray;",
        "includeImplicitEvents",
        "",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceParametersHelper;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceParametersHelper;

    invoke-direct {v0}, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceParametersHelper;-><init>()V

    sput-object v0, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceParametersHelper;->INSTANCE:Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceParametersHelper;

    .line 34
    const-class v0, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteServiceWrapper::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceParametersHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildEventsBundle(Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceParametersHelper;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .local p0, "eventType":Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;
    .local p1, "applicationId":Ljava/lang/String;
    .local p2, "appEvents":Ljava/util/List;
    :cond_0
    :try_start_0
    const-string v1, "eventType"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "applicationId"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appEvents"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v1, "eventBundle":Landroid/os/Bundle;
    const-string v3, "event"

    invoke-virtual {p0}, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v3, "app_id"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v3, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;->CUSTOM_APP_EVENTS:Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;

    if-ne v3, p0, :cond_2

    .line 46
    sget-object v3, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceParametersHelper;->INSTANCE:Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceParametersHelper;

    invoke-direct {v3, p2, p1}, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceParametersHelper;->buildEventsJson(Ljava/util/List;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 47
    .local v3, "filteredEventsJson":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 48
    return-object v2

    .line 50
    :cond_1
    const-string v4, "custom_events"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local v3    # "filteredEventsJson":Lorg/json/JSONArray;
    :cond_2
    return-object v1

    .end local v1    # "eventBundle":Landroid/os/Bundle;
    .end local p0    # "eventType":Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;
    .end local p1    # "applicationId":Ljava/lang/String;
    .end local p2    # "appEvents":Ljava/util/List;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private final buildEventsJson(Ljava/util/List;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    move-object v0, p0

    .line 56
    .local v0, "this":Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceParametersHelper;
    .local p1, "appEvents":Ljava/util/List;
    .local p2, "applicationId":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 59
    .local v2, "filteredEventsJsonArray":Lorg/json/JSONArray;
    move-object v3, p1

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 60
    .local v3, "mutableAppEvents":Ljava/util/List;
    invoke-static {v3}, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->processEvents(Ljava/util/List;)V

    .line 61
    invoke-direct {v0, p2}, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceParametersHelper;->includeImplicitEvents(Ljava/lang/String;)Z

    move-result v4

    .line 62
    .local v4, "includeImplicitEvents":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/appevents/AppEvent;

    .line 63
    .local v6, "event":Lcom/facebook/appevents/AppEvent;
    invoke-virtual {v6}, Lcom/facebook/appevents/AppEvent;->isChecksumValid()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 64
    invoke-virtual {v6}, Lcom/facebook/appevents/AppEvent;->isImplicit()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    .line 65
    .local v7, "isExplicitEvent":Z
    if-nez v7, :cond_1

    invoke-virtual {v6}, Lcom/facebook/appevents/AppEvent;->isImplicit()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v4, :cond_3

    .line 66
    .end local v0    # "this":Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceParametersHelper;
    :cond_1
    invoke-virtual {v6}, Lcom/facebook/appevents/AppEvent;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 69
    .end local v7    # "isExplicitEvent":Z
    :cond_2
    sget-object v7, Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceParametersHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Event with invalid checksum: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .end local v6    # "event":Lcom/facebook/appevents/AppEvent;
    :cond_3
    :goto_1
    nop

    .line 62
    goto :goto_0

    .line 72
    :cond_4
    return-object v2

    .end local v2    # "filteredEventsJsonArray":Lorg/json/JSONArray;
    .end local v3    # "mutableAppEvents":Ljava/util/List;
    .end local v4    # "includeImplicitEvents":Z
    .end local p1    # "appEvents":Ljava/util/List;
    .end local p2    # "applicationId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private final includeImplicitEvents(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move-object v0, p0

    .line 76
    .local v0, "this":Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceParametersHelper;
    .local p1, "applicationId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 77
    .local v2, "supportsImplicitLogging":Z
    :try_start_0
    invoke-static {p1, v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v3

    .line 78
    .local v3, "appSettings":Lcom/facebook/internal/FetchedAppSettings;
    if-eqz v3, :cond_1

    .line 79
    invoke-virtual {v3}, Lcom/facebook/internal/FetchedAppSettings;->supportsImplicitLogging()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v1

    .line 81
    .end local v0    # "this":Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceParametersHelper;
    :cond_1
    return v2

    .end local v2    # "supportsImplicitLogging":Z
    .end local v3    # "appSettings":Lcom/facebook/internal/FetchedAppSettings;
    .end local p1    # "applicationId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method
