.class public final Lcom/facebook/AccessTokenCache;
.super Ljava/lang/Object;
.source "AccessTokenCache.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;,
        Lcom/facebook/AccessTokenCache$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001b\u001cB\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\u0013\u001a\u00020\u0014J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u0008\u0010\u0017\u001a\u0004\u0018\u00010\tJ\u000e\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\tJ\u0008\u0010\u001a\u001a\u00020\u0016H\u0002R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u000c\u001a\u0004\u0018\u00010\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u000f8CX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/facebook/AccessTokenCache;",
        "",
        "()V",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "tokenCachingStrategyFactory",
        "Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;",
        "(Landroid/content/SharedPreferences;Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;)V",
        "cachedAccessToken",
        "Lcom/facebook/AccessToken;",
        "getCachedAccessToken",
        "()Lcom/facebook/AccessToken;",
        "legacyAccessToken",
        "getLegacyAccessToken",
        "tokenCachingStrategy",
        "Lcom/facebook/LegacyTokenHelper;",
        "getTokenCachingStrategy",
        "()Lcom/facebook/LegacyTokenHelper;",
        "tokenCachingStrategyField",
        "clear",
        "",
        "hasCachedAccessToken",
        "",
        "load",
        "save",
        "accessToken",
        "shouldCheckLegacyToken",
        "Companion",
        "SharedPreferencesTokenCachingStrategyFactory",
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
.field public static final CACHED_ACCESS_TOKEN_KEY:Ljava/lang/String; = "com.facebook.AccessTokenManager.CachedAccessToken"

.field public static final Companion:Lcom/facebook/AccessTokenCache$Companion;


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private final tokenCachingStrategyFactory:Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;

.field private tokenCachingStrategyField:Lcom/facebook/LegacyTokenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/AccessTokenCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/AccessTokenCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/AccessTokenCache;->Companion:Lcom/facebook/AccessTokenCache$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 48
    nop

    .line 50
    nop

    .line 51
    nop

    .line 50
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 51
    const-string v1, "com.facebook.AccessTokenManager.SharedPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "FacebookSdk.getApplicati\u2026ME, Context.MODE_PRIVATE)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v1, Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;

    invoke-direct {v1}, Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;-><init>()V

    .line 49
    invoke-direct {p0, v0, v1}, Lcom/facebook/AccessTokenCache;-><init>(Landroid/content/SharedPreferences;Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "tokenCachingStrategyFactory"    # Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tokenCachingStrategyFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/AccessTokenCache;->sharedPreferences:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/facebook/AccessTokenCache;->tokenCachingStrategyFactory:Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;

    return-void
.end method

.method private final getCachedAccessToken()Lcom/facebook/AccessToken;
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/facebook/AccessTokenCache;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "com.facebook.AccessTokenManager.CachedAccessToken"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "jsonString":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 94
    nop

    .line 95
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "jsonObject":Lorg/json/JSONObject;
    sget-object v3, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v3, v1}, Lcom/facebook/AccessToken$Companion;->createFromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/AccessToken;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Lorg/json/JSONException;
    nop

    .line 94
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    goto :goto_1

    .line 100
    :cond_0
    nop

    .line 93
    :goto_1
    return-object v2
.end method

.method private final getLegacyAccessToken()Lcom/facebook/AccessToken;
    .locals 3

    .line 109
    const/4 v0, 0x0

    check-cast v0, Lcom/facebook/AccessToken;

    .line 110
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    invoke-direct {p0}, Lcom/facebook/AccessTokenCache;->getTokenCachingStrategy()Lcom/facebook/LegacyTokenHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/LegacyTokenHelper;->load()Landroid/os/Bundle;

    move-result-object v1

    .line 111
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    sget-object v2, Lcom/facebook/LegacyTokenHelper;->Companion:Lcom/facebook/LegacyTokenHelper$Companion;

    invoke-virtual {v2, v1}, Lcom/facebook/LegacyTokenHelper$Companion;->hasTokenInformation(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    sget-object v2, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v2, v1}, Lcom/facebook/AccessToken$Companion;->createFromLegacyCache(Landroid/os/Bundle;)Lcom/facebook/AccessToken;

    move-result-object v0

    .line 114
    :cond_0
    return-object v0
.end method

.method private final getTokenCachingStrategy()Lcom/facebook/LegacyTokenHelper;
    .locals 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    move-object v0, p0

    .line 38
    .local v0, "this":Lcom/facebook/AccessTokenCache;
    :try_start_0
    iget-object v2, v0, Lcom/facebook/AccessTokenCache;->tokenCachingStrategyField:Lcom/facebook/LegacyTokenHelper;

    if-nez v2, :cond_2

    .line 39
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    .line 40
    .local v2, "$i$a$-synchronized-AccessTokenCache$tokenCachingStrategy$1":I
    :try_start_1
    iget-object v3, v0, Lcom/facebook/AccessTokenCache;->tokenCachingStrategyField:Lcom/facebook/LegacyTokenHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_1

    .line 41
    :try_start_2
    iget-object v3, v0, Lcom/facebook/AccessTokenCache;->tokenCachingStrategyFactory:Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;

    invoke-virtual {v3}, Lcom/facebook/AccessTokenCache$SharedPreferencesTokenCachingStrategyFactory;->create()Lcom/facebook/LegacyTokenHelper;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/AccessTokenCache;->tokenCachingStrategyField:Lcom/facebook/LegacyTokenHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 39
    .end local v2    # "$i$a$-synchronized-AccessTokenCache$tokenCachingStrategy$1":I
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    :try_start_3
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    :try_start_4
    monitor-exit v0

    goto :goto_2

    .end local v0    # "this":Lcom/facebook/AccessTokenCache;
    :catchall_1
    move-exception v2

    :goto_1
    monitor-exit v0

    throw v2

    .line 45
    :cond_2
    :goto_2
    iget-object v2, v0, Lcom/facebook/AccessTokenCache;->tokenCachingStrategyField:Lcom/facebook/LegacyTokenHelper;

    if-eqz v2, :cond_3

    return-object v2

    .restart local v0    # "this":Lcom/facebook/AccessTokenCache;
    :cond_3
    const-string v2, "Required value was null."

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v0    # "this":Lcom/facebook/AccessTokenCache;
    :catchall_2
    move-exception v2

    invoke-static {v2, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private final hasCachedAccessToken()Z
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/facebook/AccessTokenCache;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private final shouldCheckLegacyToken()Z
    .locals 1

    .line 104
    invoke-static {}, Lcom/facebook/FacebookSdk;->isLegacyTokenUpgradeSupported()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/facebook/AccessTokenCache;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 81
    invoke-direct {p0}, Lcom/facebook/AccessTokenCache;->shouldCheckLegacyToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/facebook/AccessTokenCache;->getTokenCachingStrategy()Lcom/facebook/LegacyTokenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/LegacyTokenHelper;->clear()V

    .line 84
    :cond_0
    return-void
.end method

.method public final load()Lcom/facebook/AccessToken;
    .locals 2

    .line 55
    const/4 v0, 0x0

    check-cast v0, Lcom/facebook/AccessToken;

    .line 56
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    invoke-direct {p0}, Lcom/facebook/AccessTokenCache;->hasCachedAccessToken()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/facebook/AccessTokenCache;->getCachedAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_0
    invoke-direct {p0}, Lcom/facebook/AccessTokenCache;->shouldCheckLegacyToken()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    invoke-direct {p0}, Lcom/facebook/AccessTokenCache;->getLegacyAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p0, v0}, Lcom/facebook/AccessTokenCache;->save(Lcom/facebook/AccessToken;)V

    .line 64
    invoke-direct {p0}, Lcom/facebook/AccessTokenCache;->getTokenCachingStrategy()Lcom/facebook/LegacyTokenHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/LegacyTokenHelper;->clear()V

    .line 66
    :cond_1
    :goto_0
    nop

    .line 67
    return-object v0
.end method

.method public final save(Lcom/facebook/AccessToken;)V
    .locals 4
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    nop

    .line 72
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 73
    .local v0, "jsonObject":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/facebook/AccessTokenCache;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "com.facebook.AccessTokenManager.CachedAccessToken"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 76
    :goto_0
    nop

    .line 77
    return-void
.end method
