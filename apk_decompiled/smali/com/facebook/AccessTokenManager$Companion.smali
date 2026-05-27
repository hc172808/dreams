.class public final Lcom/facebook/AccessTokenManager$Companion;
.super Ljava/lang/Object;
.source "AccessTokenManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AccessTokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0018\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0008\u0010\u0017\u001a\u00020\u000fH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/facebook/AccessTokenManager$Companion;",
        "",
        "()V",
        "ACTION_CURRENT_ACCESS_TOKEN_CHANGED",
        "",
        "EXTRA_NEW_ACCESS_TOKEN",
        "EXTRA_OLD_ACCESS_TOKEN",
        "ME_PERMISSIONS_GRAPH_PATH",
        "SHARED_PREFERENCES_NAME",
        "TAG",
        "TOKEN_EXTEND_GRAPH_PATH",
        "TOKEN_EXTEND_RETRY_SECONDS",
        "",
        "TOKEN_EXTEND_THRESHOLD_SECONDS",
        "instanceField",
        "Lcom/facebook/AccessTokenManager;",
        "createExtendAccessTokenRequest",
        "Lcom/facebook/GraphRequest;",
        "accessToken",
        "Lcom/facebook/AccessToken;",
        "callback",
        "Lcom/facebook/GraphRequest$Callback;",
        "createGrantedPermissionsRequest",
        "getInstance",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 246
    invoke-direct {p0}, Lcom/facebook/AccessTokenManager$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$createExtendAccessTokenRequest(Lcom/facebook/AccessTokenManager$Companion;Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/AccessTokenManager$Companion;
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "callback"    # Lcom/facebook/GraphRequest$Callback;

    .line 246
    invoke-direct {p0, p1, p2}, Lcom/facebook/AccessTokenManager$Companion;->createExtendAccessTokenRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$createGrantedPermissionsRequest(Lcom/facebook/AccessTokenManager$Companion;Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/AccessTokenManager$Companion;
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "callback"    # Lcom/facebook/GraphRequest$Callback;

    .line 246
    invoke-direct {p0, p1, p2}, Lcom/facebook/AccessTokenManager$Companion;->createGrantedPermissionsRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v0

    return-object v0
.end method

.method private final createExtendAccessTokenRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 11
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "callback"    # Lcom/facebook/GraphRequest$Callback;

    .line 297
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 298
    .local v0, "parameters":Landroid/os/Bundle;
    const-string v1, "grant_type"

    const-string v2, "fb_extend_sso_token"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v10, Lcom/facebook/GraphRequest;

    .line 301
    sget-object v5, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    .line 300
    const-string v3, "oauth/access_token"

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, v10

    move-object v2, p1

    move-object v4, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v9}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10
.end method

.method private final createGrantedPermissionsRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 10
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "callback"    # Lcom/facebook/GraphRequest$Callback;

    .line 288
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 289
    .local v3, "parameters":Landroid/os/Bundle;
    new-instance v9, Lcom/facebook/GraphRequest;

    .line 290
    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    .line 289
    const-string v2, "me/permissions"

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9
.end method


# virtual methods
.method public final getInstance()Lcom/facebook/AccessTokenManager;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 264
    invoke-static {}, Lcom/facebook/AccessTokenManager;->access$getInstanceField$cp()Lcom/facebook/AccessTokenManager;

    move-result-object v0

    .line 265
    .local v0, "instance":Lcom/facebook/AccessTokenManager;
    if-nez v0, :cond_1

    .line 266
    monitor-enter p0

    const/4 v1, 0x0

    .line 267
    .local v1, "$i$a$-synchronized-AccessTokenManager$Companion$getInstance$1":I
    :try_start_0
    invoke-static {}, Lcom/facebook/AccessTokenManager;->access$getInstanceField$cp()Lcom/facebook/AccessTokenManager;

    move-result-object v2

    .line 268
    .local v2, "instance":Lcom/facebook/AccessTokenManager;
    if-nez v2, :cond_0

    .line 269
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 270
    .local v3, "applicationContext":Landroid/content/Context;
    invoke-static {v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v4

    const-string v5, "LocalBroadcastManager.ge\u2026tance(applicationContext)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    .local v4, "localBroadcastManager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    new-instance v5, Lcom/facebook/AccessTokenCache;

    invoke-direct {v5}, Lcom/facebook/AccessTokenCache;-><init>()V

    .line 272
    .local v5, "accessTokenCache":Lcom/facebook/AccessTokenCache;
    new-instance v6, Lcom/facebook/AccessTokenManager;

    invoke-direct {v6, v4, v5}, Lcom/facebook/AccessTokenManager;-><init>(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Lcom/facebook/AccessTokenCache;)V

    .line 273
    .local v6, "newInstance":Lcom/facebook/AccessTokenManager;
    invoke-static {v6}, Lcom/facebook/AccessTokenManager;->access$setInstanceField$cp(Lcom/facebook/AccessTokenManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    move-object v2, v6

    .end local v3    # "applicationContext":Landroid/content/Context;
    .end local v4    # "localBroadcastManager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    .end local v5    # "accessTokenCache":Lcom/facebook/AccessTokenCache;
    .end local v6    # "newInstance":Lcom/facebook/AccessTokenManager;
    goto :goto_0

    .line 276
    :cond_0
    nop

    .line 268
    .end local v1    # "$i$a$-synchronized-AccessTokenManager$Companion$getInstance$1":I
    .end local v2    # "instance":Lcom/facebook/AccessTokenManager;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 266
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 280
    :cond_1
    return-object v0
.end method
