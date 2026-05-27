.class final Lcom/facebook/internal/FetchedAppSettingsManager$loadAppSettingsAsync$1;
.super Ljava/lang/Object;
.source "FetchedAppSettingsManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FetchedAppSettingsManager;->loadAppSettingsAsync()V
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

.field final synthetic $settingsKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/internal/FetchedAppSettingsManager$loadAppSettingsAsync$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/internal/FetchedAppSettingsManager$loadAppSettingsAsync$1;->$settingsKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/internal/FetchedAppSettingsManager$loadAppSettingsAsync$1;->$applicationId:Ljava/lang/String;

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

    .line 124
    .local v0, "this":Lcom/facebook/internal/FetchedAppSettingsManager$loadAppSettingsAsync$1;
    :try_start_1
    iget-object v1, v0, Lcom/facebook/internal/FetchedAppSettingsManager$loadAppSettingsAsync$1;->$context:Landroid/content/Context;

    const-string v2, "com.facebook.internal.preferences.APP_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 125
    .local v1, "sharedPrefs":Landroid/content/SharedPreferences;
    iget-object v2, v0, Lcom/facebook/internal/FetchedAppSettingsManager$loadAppSettingsAsync$1;->$settingsKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "settingsJSONString":Ljava/lang/String;
    move-object v4, v3

    check-cast v4, Lcom/facebook/internal/FetchedAppSettings;

    .line 127
    .local v4, "appSettings":Lcom/facebook/internal/FetchedAppSettings;
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "applicationId"

    if-nez v5, :cond_3

    .line 128
    if-eqz v2, :cond_2

    .line 129
    :try_start_2
    check-cast v3, Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    .local v3, "settingsJSON":Lorg/json/JSONObject;
    nop

    .line 131
    :try_start_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v5

    goto :goto_0

    .line 132
    .end local v0    # "this":Lcom/facebook/internal/FetchedAppSettingsManager$loadAppSettingsAsync$1;
    :catch_0
    move-exception v5

    .line 133
    .local v5, "je":Lorg/json/JSONException;
    :try_start_4
    const-string v7, "FacebookSDK"

    move-object v8, v5

    check-cast v8, Ljava/lang/Exception;

    invoke-static {v7, v8}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 134
    .end local v5    # "je":Lorg/json/JSONException;
    :goto_0
    nop

    .line 135
    if-eqz v3, :cond_3

    .line 136
    sget-object v5, Lcom/facebook/internal/FetchedAppSettingsManager;->INSTANCE:Lcom/facebook/internal/FetchedAppSettingsManager;

    iget-object v7, v0, Lcom/facebook/internal/FetchedAppSettingsManager$loadAppSettingsAsync$1;->$applicationId:Ljava/lang/String;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v7, v3}, Lcom/facebook/internal/FetchedAppSettingsManager;->parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 128
    .end local v3    # "settingsJSON":Lorg/json/JSONObject;
    :cond_2
    const-string v3, "Required value was null."

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5

    .line 139
    :cond_3
    :goto_1
    sget-object v3, Lcom/facebook/internal/FetchedAppSettingsManager;->INSTANCE:Lcom/facebook/internal/FetchedAppSettingsManager;

    iget-object v5, v0, Lcom/facebook/internal/FetchedAppSettingsManager$loadAppSettingsAsync$1;->$applicationId:Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$getAppSettingsQueryResponse(Lcom/facebook/internal/FetchedAppSettingsManager;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 140
    .local v3, "resultJSON":Lorg/json/JSONObject;
    if-eqz v3, :cond_4

    .line 141
    sget-object v5, Lcom/facebook/internal/FetchedAppSettingsManager;->INSTANCE:Lcom/facebook/internal/FetchedAppSettingsManager;

    iget-object v7, v0, Lcom/facebook/internal/FetchedAppSettingsManager$loadAppSettingsAsync$1;->$applicationId:Ljava/lang/String;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v7, v3}, Lcom/facebook/internal/FetchedAppSettingsManager;->parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;

    .line 142
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iget-object v7, v0, Lcom/facebook/internal/FetchedAppSettingsManager$loadAppSettingsAsync$1;->$settingsKey:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 146
    :cond_4
    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 147
    invoke-virtual {v4}, Lcom/facebook/internal/FetchedAppSettings;->getSdkUpdateMessage()Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, "updateMessage":Ljava/lang/String;
    sget-object v8, Lcom/facebook/internal/FetchedAppSettingsManager;->INSTANCE:Lcom/facebook/internal/FetchedAppSettingsManager;

    invoke-static {v8}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$getPrintedSDKUpdatedMessage$p(Lcom/facebook/internal/FetchedAppSettingsManager;)Z

    move-result v8

    if-nez v8, :cond_5

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 149
    sget-object v8, Lcom/facebook/internal/FetchedAppSettingsManager;->INSTANCE:Lcom/facebook/internal/FetchedAppSettingsManager;

    invoke-static {v8, v5}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$setPrintedSDKUpdatedMessage$p(Lcom/facebook/internal/FetchedAppSettingsManager;Z)V

    .line 150
    sget-object v8, Lcom/facebook/internal/FetchedAppSettingsManager;->INSTANCE:Lcom/facebook/internal/FetchedAppSettingsManager;

    invoke-static {v8}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$getTAG$p(Lcom/facebook/internal/FetchedAppSettingsManager;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v7    # "updateMessage":Ljava/lang/String;
    :cond_5
    iget-object v7, v0, Lcom/facebook/internal/FetchedAppSettingsManager$loadAppSettingsAsync$1;->$applicationId:Ljava/lang/String;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v5}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->queryAppGateKeepers(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 158
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->logActivateAppEvent()V

    .line 160
    sget-object v5, Lcom/facebook/internal/FetchedAppSettingsManager;->INSTANCE:Lcom/facebook/internal/FetchedAppSettingsManager;

    invoke-static {v5}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$getLoadingState$p(Lcom/facebook/internal/FetchedAppSettingsManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    .line 161
    sget-object v6, Lcom/facebook/internal/FetchedAppSettingsManager;->INSTANCE:Lcom/facebook/internal/FetchedAppSettingsManager;

    invoke-static {v6}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$getFetchedAppSettings$p(Lcom/facebook/internal/FetchedAppSettingsManager;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, v0, Lcom/facebook/internal/FetchedAppSettingsManager$loadAppSettingsAsync$1;->$applicationId:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->SUCCESS:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    goto :goto_2

    .line 162
    :cond_6
    sget-object v6, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->ERROR:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    .line 161
    :goto_2
    nop

    .line 160
    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 163
    sget-object v5, Lcom/facebook/internal/FetchedAppSettingsManager;->INSTANCE:Lcom/facebook/internal/FetchedAppSettingsManager;

    invoke-static {v5}, Lcom/facebook/internal/FetchedAppSettingsManager;->access$pollCallbacks(Lcom/facebook/internal/FetchedAppSettingsManager;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 164
    .end local v1    # "sharedPrefs":Landroid/content/SharedPreferences;
    .end local v2    # "settingsJSONString":Ljava/lang/String;
    .end local v3    # "resultJSON":Lorg/json/JSONObject;
    .end local v4    # "appSettings":Lcom/facebook/internal/FetchedAppSettings;
    return-void

    :catchall_0
    move-exception v1

    :try_start_5
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v0, p0

    :goto_3
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
