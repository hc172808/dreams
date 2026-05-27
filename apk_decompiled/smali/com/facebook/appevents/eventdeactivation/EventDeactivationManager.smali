.class public final Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;
.super Ljava/lang/Object;
.source "EventDeactivationManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager$DeprecatedParamFilter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\u0015B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0007J\u0008\u0010\r\u001a\u00020\u000cH\u0002J&\u0010\u000e\u001a\u00020\u000c2\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0007J\u0016\u0010\u0012\u001a\u00020\u000c2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0007H\u0007R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;",
        "",
        "()V",
        "deprecatedEvents",
        "",
        "",
        "deprecatedParamFilters",
        "",
        "Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager$DeprecatedParamFilter;",
        "enabled",
        "",
        "enable",
        "",
        "initialize",
        "processDeprecatedParameters",
        "parameters",
        "",
        "eventName",
        "processEvents",
        "events",
        "Lcom/facebook/appevents/AppEvent;",
        "DeprecatedParamFilter",
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
.field public static final INSTANCE:Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;

.field private static final deprecatedEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final deprecatedParamFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager$DeprecatedParamFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static enabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;

    invoke-direct {v0}, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;-><init>()V

    sput-object v0, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->INSTANCE:Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->deprecatedParamFilters:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    sput-object v0, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->deprecatedEvents:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final enable()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 43
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->enabled:Z

    .line 44
    sget-object v1, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->INSTANCE:Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;

    invoke-direct {v1}, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->initialize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    return-void

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private final declared-synchronized initialize()V
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    move-object v0, p0

    .line 49
    .local v0, "this":Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;
    nop

    .line 50
    :try_start_1
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "FacebookSdk.getApplicationId()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/internal/FetchedAppSettingsManager;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 51
    .local v1, "settings":Lcom/facebook/internal/FetchedAppSettings;
    invoke-virtual {v1}, Lcom/facebook/internal/FetchedAppSettings;->getRestrictiveDataSetting()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "eventFilterResponse":Ljava/lang/String;
    if-eqz v3, :cond_6

    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_6

    .line 53
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    .local v2, "jsonObject":Lorg/json/JSONObject;
    sget-object v4, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->deprecatedParamFilters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 55
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 56
    .local v4, "keys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 57
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 58
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 59
    .local v6, "json":Lorg/json/JSONObject;
    if-eqz v6, :cond_4

    .line 60
    const-string v7, "is_deprecated_event"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 61
    sget-object v7, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->deprecatedEvents:Ljava/util/Set;

    const-string v8, "key"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    .end local v0    # "this":Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;
    :cond_2
    const-string v7, "deprecated_param"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 64
    .local v7, "deprecatedParamJsonArray":Lorg/json/JSONArray;
    new-instance v8, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager$DeprecatedParamFilter;

    const-string v9, "key"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/List;

    invoke-direct {v8, v5, v9}, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager$DeprecatedParamFilter;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 65
    .local v8, "deprecatedParamFilter":Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager$DeprecatedParamFilter;
    if-eqz v7, :cond_3

    .line 66
    nop

    .line 67
    invoke-static {v7}, Lcom/facebook/internal/Utility;->convertJSONArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager$DeprecatedParamFilter;->setDeprecateParams(Ljava/util/List;)V

    .line 69
    :cond_3
    sget-object v9, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->deprecatedParamFilters:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "json":Lorg/json/JSONObject;
    .end local v7    # "deprecatedParamJsonArray":Lorg/json/JSONArray;
    .end local v8    # "deprecatedParamFilter":Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager$DeprecatedParamFilter;
    :cond_4
    :goto_1
    nop

    .line 56
    goto :goto_0

    .line 50
    .end local v1    # "settings":Lcom/facebook/internal/FetchedAppSettings;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "eventFilterResponse":Ljava/lang/String;
    .end local v4    # "keys":Ljava/util/Iterator;
    :cond_5
    monitor-exit p0

    return-void

    .line 74
    :catch_0
    move-exception v1

    goto :goto_2

    .line 77
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    .line 74
    .restart local v0    # "this":Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;
    :catch_1
    move-exception v1

    .line 76
    :cond_6
    :goto_2
    nop

    .line 77
    monitor-exit p0

    return-void

    .line 48
    .end local v0    # "this":Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static final processDeprecatedParameters(Ljava/util/Map;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .local p0, "parameters":Ljava/util/Map;
    .local p1, "eventName":Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string v1, "parameters"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "eventName"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-boolean v1, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->enabled:Z

    if-nez v1, :cond_1

    .line 96
    return-void

    .line 98
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v1, Ljava/util/List;

    .line 99
    .local v1, "keys":Ljava/util/List;
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->deprecatedParamFilters:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v2, Ljava/util/List;

    .line 100
    .local v2, "deprecatedParamFiltersCopy":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager$DeprecatedParamFilter;

    .line 101
    .local v4, "filter":Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager$DeprecatedParamFilter;
    invoke-virtual {v4}, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager$DeprecatedParamFilter;->getEventName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    .line 102
    goto :goto_0

    .line 104
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 105
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager$DeprecatedParamFilter;->getDeprecateParams()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 106
    invoke-interface {p0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 110
    .end local v4    # "filter":Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager$DeprecatedParamFilter;
    .end local v6    # "key":Ljava/lang/String;
    :cond_5
    return-void

    .end local v1    # "keys":Ljava/util/List;
    .end local v2    # "deprecatedParamFiltersCopy":Ljava/util/List;
    .end local p0    # "parameters":Ljava/util/Map;
    .end local p1    # "eventName":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final processEvents(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .local p0, "events":Ljava/util/List;
    :cond_0
    :try_start_0
    const-string v1, "events"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    sget-boolean v1, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->enabled:Z

    if-nez v1, :cond_1

    .line 82
    return-void

    .line 84
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 85
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/appevents/AppEvent;

    .line 87
    .local v2, "event":Lcom/facebook/appevents/AppEvent;
    sget-object v3, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->deprecatedEvents:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/facebook/appevents/AppEvent;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .end local v2    # "event":Lcom/facebook/appevents/AppEvent;
    :cond_2
    goto :goto_0

    .line 91
    :cond_3
    return-void

    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local p0    # "events":Ljava/util/List;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
