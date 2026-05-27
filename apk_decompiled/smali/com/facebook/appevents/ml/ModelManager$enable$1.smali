.class final Lcom/facebook/appevents/ml/ModelManager$enable$1;
.super Ljava/lang/Object;
.source "ModelManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/ml/ModelManager;->enable()V
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


# static fields
.field public static final INSTANCE:Lcom/facebook/appevents/ml/ModelManager$enable$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/ml/ModelManager$enable$1;

    invoke-direct {v0}, Lcom/facebook/appevents/ml/ModelManager$enable$1;-><init>()V

    sput-object v0, Lcom/facebook/appevents/ml/ModelManager$enable$1;->INSTANCE:Lcom/facebook/appevents/ml/ModelManager$enable$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-string v0, "model_request_timestamp"

    const-string v1, "models"

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    move-object v2, p0

    .line 100
    .local v2, "this":Lcom/facebook/appevents/ml/ModelManager$enable$1;
    nop

    .line 101
    nop

    .line 102
    nop

    .line 103
    nop

    .line 102
    :try_start_1
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 103
    const-string v4, "com.facebook.internal.MODEL_STORE"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 101
    nop

    .line 104
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "cached":Ljava/lang/String;
    nop

    .line 106
    if-eqz v4, :cond_4

    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_2

    const/4 v5, 0x1

    :cond_2
    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .end local v2    # "this":Lcom/facebook/appevents/ml/ModelManager$enable$1;
    :cond_4
    :goto_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 105
    :goto_1
    nop

    .line 107
    .local v5, "models":Lorg/json/JSONObject;
    const-wide/16 v6, 0x0

    invoke-interface {v3, v0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 108
    .local v6, "cachedTimestamp":J
    nop

    .line 109
    nop

    .line 110
    nop

    .line 108
    sget-object v8, Lcom/facebook/internal/FeatureManager$Feature;->ModelRequest:Lcom/facebook/internal/FeatureManager$Feature;

    invoke-static {v8}, Lcom/facebook/internal/FeatureManager;->isEnabled(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 109
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Lcom/facebook/appevents/ml/ModelManager;->INSTANCE:Lcom/facebook/appevents/ml/ModelManager;

    .line 110
    invoke-static {v8, v6, v7}, Lcom/facebook/appevents/ml/ModelManager;->access$isValidTimestamp(Lcom/facebook/appevents/ml/ModelManager;J)Z

    move-result v8

    if-nez v8, :cond_6

    .line 111
    :cond_5
    sget-object v8, Lcom/facebook/appevents/ml/ModelManager;->INSTANCE:Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v8}, Lcom/facebook/appevents/ml/ModelManager;->access$fetchModels(Lcom/facebook/appevents/ml/ModelManager;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_7

    move-object v5, v8

    .line 112
    nop

    .line 116
    nop

    .line 112
    nop

    .line 115
    nop

    .line 112
    nop

    .line 114
    nop

    .line 112
    nop

    .line 113
    nop

    .line 112
    nop

    .line 113
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 114
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v1, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v1, v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    :cond_6
    sget-object v0, Lcom/facebook/appevents/ml/ModelManager;->INSTANCE:Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0, v5}, Lcom/facebook/appevents/ml/ModelManager;->access$addModels(Lcom/facebook/appevents/ml/ModelManager;Lorg/json/JSONObject;)V

    .line 119
    sget-object v0, Lcom/facebook/appevents/ml/ModelManager;->INSTANCE:Lcom/facebook/appevents/ml/ModelManager;

    invoke-static {v0}, Lcom/facebook/appevents/ml/ModelManager;->access$enableMTML(Lcom/facebook/appevents/ml/ModelManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v4    # "cached":Ljava/lang/String;
    .end local v5    # "models":Lorg/json/JSONObject;
    .end local v6    # "cachedTimestamp":J
    goto :goto_2

    .line 111
    .restart local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v4    # "cached":Ljava/lang/String;
    .restart local v5    # "models":Lorg/json/JSONObject;
    .restart local v6    # "cachedTimestamp":J
    :cond_7
    return-void

    .line 123
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v4    # "cached":Ljava/lang/String;
    .end local v5    # "models":Lorg/json/JSONObject;
    .end local v6    # "cachedTimestamp":J
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 120
    :catch_0
    move-exception v0

    .line 122
    :goto_2
    nop

    .line 123
    return-void

    :catchall_2
    move-exception v0

    move-object v2, p0

    :goto_3
    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
