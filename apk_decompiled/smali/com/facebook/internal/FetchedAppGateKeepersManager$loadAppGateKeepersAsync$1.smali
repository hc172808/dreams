.class final Lcom/facebook/internal/FetchedAppGateKeepersManager$loadAppGateKeepersAsync$1;
.super Ljava/lang/Object;
.source "FetchedAppGateKeepersManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FetchedAppGateKeepersManager;->loadAppGateKeepersAsync(Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;)V
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

.field final synthetic $gateKeepersKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$loadAppGateKeepersAsync$1;->$applicationId:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$loadAppGateKeepersAsync$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$loadAppGateKeepersAsync$1;->$gateKeepersKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-string v0, "applicationId"

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_1

    return-void

    :cond_1
    move-object v1, p0

    .line 108
    .local v1, "this":Lcom/facebook/internal/FetchedAppGateKeepersManager$loadAppGateKeepersAsync$1;
    :try_start_1
    sget-object v2, Lcom/facebook/internal/FetchedAppGateKeepersManager;->INSTANCE:Lcom/facebook/internal/FetchedAppGateKeepersManager;

    iget-object v3, v1, Lcom/facebook/internal/FetchedAppGateKeepersManager$loadAppGateKeepersAsync$1;->$applicationId:Ljava/lang/String;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->access$getAppGateKeepersQueryResponse(Lcom/facebook/internal/FetchedAppGateKeepersManager;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 109
    .local v2, "gateKeepersResultJSON":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 110
    sget-object v3, Lcom/facebook/internal/FetchedAppGateKeepersManager;->INSTANCE:Lcom/facebook/internal/FetchedAppGateKeepersManager;

    iget-object v5, v1, Lcom/facebook/internal/FetchedAppGateKeepersManager$loadAppGateKeepersAsync$1;->$applicationId:Ljava/lang/String;

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5, v2}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->parseAppGateKeepersFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 111
    nop

    .line 112
    iget-object v0, v1, Lcom/facebook/internal/FetchedAppGateKeepersManager$loadAppGateKeepersAsync$1;->$context:Landroid/content/Context;

    const-string v3, "com.facebook.internal.preferences.APP_GATEKEEPERS"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 111
    nop

    .line 113
    .local v0, "gateKeepersSharedPrefs":Landroid/content/SharedPreferences;
    nop

    .line 116
    nop

    .line 113
    nop

    .line 115
    nop

    .line 113
    nop

    .line 114
    nop

    .line 113
    nop

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 115
    iget-object v5, v1, Lcom/facebook/internal/FetchedAppGateKeepersManager$loadAppGateKeepersAsync$1;->$gateKeepersKey:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 116
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    sget-object v3, Lcom/facebook/internal/FetchedAppGateKeepersManager;->INSTANCE:Lcom/facebook/internal/FetchedAppGateKeepersManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->access$setTimestamp$p(Lcom/facebook/internal/FetchedAppGateKeepersManager;Ljava/lang/Long;)V

    .line 120
    .end local v0    # "gateKeepersSharedPrefs":Landroid/content/SharedPreferences;
    .end local v1    # "this":Lcom/facebook/internal/FetchedAppGateKeepersManager$loadAppGateKeepersAsync$1;
    :cond_2
    sget-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->INSTANCE:Lcom/facebook/internal/FetchedAppGateKeepersManager;

    invoke-static {v0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->access$pollCallbacks(Lcom/facebook/internal/FetchedAppGateKeepersManager;)V

    .line 121
    sget-object v0, Lcom/facebook/internal/FetchedAppGateKeepersManager;->INSTANCE:Lcom/facebook/internal/FetchedAppGateKeepersManager;

    invoke-static {v0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->access$isLoading$p(Lcom/facebook/internal/FetchedAppGateKeepersManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .end local v2    # "gateKeepersResultJSON":Lorg/json/JSONObject;
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v1, p0

    :goto_0
    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
