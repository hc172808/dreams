.class final Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;
.super Ljava/lang/Object;
.source "AccessTokenManager.kt"

# interfaces
.implements Lcom/facebook/GraphRequestBatch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AccessTokenManager;->refreshCurrentAccessTokenImpl(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/facebook/GraphRequestBatch;",
        "onBatchCompleted"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $accessToken:Lcom/facebook/AccessToken;

.field final synthetic $callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

.field final synthetic $declinedPermissions:Ljava/util/Set;

.field final synthetic $expiredPermissions:Ljava/util/Set;

.field final synthetic $permissions:Ljava/util/Set;

.field final synthetic $permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic $refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

.field final synthetic this$0:Lcom/facebook/AccessTokenManager;


# direct methods
.method constructor <init>(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessTokenManager$RefreshResult;Lcom/facebook/AccessToken;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->this$0:Lcom/facebook/AccessTokenManager;

    iput-object p2, p0, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iput-object p3, p0, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$accessToken:Lcom/facebook/AccessToken;

    iput-object p4, p0, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    iput-object p5, p0, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p6, p0, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$permissions:Ljava/util/Set;

    iput-object p7, p0, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$declinedPermissions:Ljava/util/Set;

    iput-object p8, p0, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$expiredPermissions:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBatchCompleted(Lcom/facebook/GraphRequestBatch;)V
    .locals 25
    .param p1, "it"    # Lcom/facebook/GraphRequestBatch;

    move-object/from16 v1, p0

    const-string v0, "it"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    move-object v3, v0

    check-cast v3, Lcom/facebook/AccessToken;

    .line 199
    .local v3, "newAccessToken":Lcom/facebook/AccessToken;
    iget-object v4, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    invoke-virtual {v4}, Lcom/facebook/AccessTokenManager$RefreshResult;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "returnAccessToken":Ljava/lang/String;
    iget-object v5, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    invoke-virtual {v5}, Lcom/facebook/AccessTokenManager$RefreshResult;->getExpiresAt()I

    move-result v5

    .line 201
    .local v5, "returnExpiresAt":I
    iget-object v6, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    invoke-virtual {v6}, Lcom/facebook/AccessTokenManager$RefreshResult;->getDataAccessExpirationTime()Ljava/lang/Long;

    move-result-object v6

    .line 202
    .local v6, "returnDataAccessExpirationTime":Ljava/lang/Long;
    iget-object v7, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    invoke-virtual {v7}, Lcom/facebook/AccessTokenManager$RefreshResult;->getGraphDomain()Ljava/lang/String;

    move-result-object v7

    .line 204
    .local v7, "returnGraphDomain":Ljava/lang/String;
    nop

    .line 205
    nop

    .line 206
    const/4 v15, 0x0

    :try_start_0
    sget-object v8, Lcom/facebook/AccessTokenManager;->Companion:Lcom/facebook/AccessTokenManager$Companion;

    .line 205
    invoke-virtual {v8}, Lcom/facebook/AccessTokenManager$Companion;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/AccessTokenManager;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v8

    if-eqz v8, :cond_b

    sget-object v8, Lcom/facebook/AccessTokenManager;->Companion:Lcom/facebook/AccessTokenManager$Companion;

    .line 206
    invoke-virtual {v8}, Lcom/facebook/AccessTokenManager$Companion;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/AccessTokenManager;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    if-eqz v8, :cond_0

    :try_start_1
    invoke-virtual {v8}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v0

    move-object/from16 v23, v4

    move/from16 v24, v5

    const/4 v4, 0x0

    goto/16 :goto_a

    .line 206
    :cond_0
    :goto_0
    :try_start_2
    iget-object v8, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v8}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v8

    if-eq v0, v8, :cond_1

    move-object/from16 v20, v3

    move-object/from16 v23, v4

    move/from16 v24, v5

    const/4 v4, 0x0

    goto/16 :goto_8

    .line 211
    :cond_1
    nop

    .line 212
    nop

    .line 213
    nop

    .line 211
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    if-nez v0, :cond_3

    if-nez v4, :cond_3

    if-nez v5, :cond_3

    .line 214
    :try_start_3
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v0, :cond_2

    new-instance v8, Lcom/facebook/FacebookException;

    const-string v9, "Failed to refresh access token"

    invoke-direct {v8, v9}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v8}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshFailed(Lcom/facebook/FacebookException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    :cond_2
    nop

    .line 237
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->this$0:Lcom/facebook/AccessTokenManager;

    invoke-static {v0}, Lcom/facebook/AccessTokenManager;->access$getTokenRefreshInProgress$p(Lcom/facebook/AccessTokenManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 238
    nop

    .line 215
    return-void

    .line 217
    :cond_3
    nop

    .line 218
    :try_start_4
    new-instance v0, Lcom/facebook/AccessToken;

    .line 219
    if-eqz v4, :cond_4

    move-object v9, v4

    goto :goto_1

    :cond_4
    iget-object v8, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v8}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .line 220
    :goto_1
    iget-object v8, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v8}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v10

    .line 221
    iget-object v8, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v8}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v11

    .line 222
    iget-object v8, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    if-eqz v8, :cond_5

    :try_start_5
    iget-object v8, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$permissions:Ljava/util/Set;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :cond_5
    :try_start_6
    iget-object v8, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v8}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v8

    :goto_2
    move-object v12, v8

    check-cast v12, Ljava/util/Collection;

    .line 223
    iget-object v8, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    if-eqz v8, :cond_6

    :try_start_7
    iget-object v8, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$declinedPermissions:Ljava/util/Set;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 224
    :cond_6
    :try_start_8
    iget-object v8, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v8}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/Set;

    move-result-object v8

    .line 223
    :goto_3
    move-object v13, v8

    check-cast v13, Ljava/util/Collection;

    .line 225
    iget-object v8, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    if-eqz v8, :cond_7

    :try_start_9
    iget-object v8, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$expiredPermissions:Ljava/util/Set;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 226
    :cond_7
    :try_start_a
    iget-object v8, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v8}, Lcom/facebook/AccessToken;->getExpiredPermissions()Ljava/util/Set;

    move-result-object v8

    .line 225
    :goto_4
    move-object v14, v8

    check-cast v14, Ljava/util/Collection;

    .line 227
    iget-object v8, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v8}, Lcom/facebook/AccessToken;->getSource()Lcom/facebook/AccessTokenSource;

    move-result-object v16

    .line 228
    iget-object v8, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    invoke-virtual {v8}, Lcom/facebook/AccessTokenManager$RefreshResult;->getExpiresAt()I

    move-result v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    const-wide/16 v17, 0x3e8

    if-eqz v8, :cond_8

    :try_start_b
    new-instance v8, Ljava/util/Date;

    iget-object v15, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    invoke-virtual {v15}, Lcom/facebook/AccessTokenManager$RefreshResult;->getExpiresAt()I

    move-result v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object/from16 v20, v3

    .end local v3    # "newAccessToken":Lcom/facebook/AccessToken;
    .local v20, "newAccessToken":Lcom/facebook/AccessToken;
    int-to-long v2, v15

    mul-long v2, v2, v17

    :try_start_c
    invoke-direct {v8, v2, v3}, Ljava/util/Date;-><init>(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object v2, v8

    goto :goto_5

    .line 241
    :catchall_1
    move-exception v0

    move-object/from16 v23, v4

    move/from16 v24, v5

    move-object/from16 v3, v20

    const/4 v4, 0x0

    goto/16 :goto_a

    .end local v20    # "newAccessToken":Lcom/facebook/AccessToken;
    .restart local v3    # "newAccessToken":Lcom/facebook/AccessToken;
    :catchall_2
    move-exception v0

    move-object/from16 v20, v3

    move-object/from16 v23, v4

    move/from16 v24, v5

    const/4 v4, 0x0

    .end local v3    # "newAccessToken":Lcom/facebook/AccessToken;
    .restart local v20    # "newAccessToken":Lcom/facebook/AccessToken;
    goto/16 :goto_a

    .line 229
    .end local v20    # "newAccessToken":Lcom/facebook/AccessToken;
    .restart local v3    # "newAccessToken":Lcom/facebook/AccessToken;
    :cond_8
    move-object/from16 v20, v3

    .end local v3    # "newAccessToken":Lcom/facebook/AccessToken;
    .restart local v20    # "newAccessToken":Lcom/facebook/AccessToken;
    :try_start_d
    iget-object v2, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object v2

    .line 228
    :goto_5
    nop

    .line 230
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 231
    if-eqz v6, :cond_9

    .line 232
    :try_start_e
    new-instance v8, Ljava/util/Date;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v21
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move-object/from16 v23, v4

    move/from16 v24, v5

    .end local v4    # "returnAccessToken":Ljava/lang/String;
    .end local v5    # "returnExpiresAt":I
    .local v23, "returnAccessToken":Ljava/lang/String;
    .local v24, "returnExpiresAt":I
    mul-long v4, v21, v17

    :try_start_f
    invoke-direct {v8, v4, v5}, Ljava/util/Date;-><init>(J)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move-object/from16 v18, v8

    goto :goto_6

    .line 241
    :catchall_3
    move-exception v0

    move-object/from16 v3, v20

    const/4 v4, 0x0

    goto/16 :goto_a

    .end local v23    # "returnAccessToken":Ljava/lang/String;
    .end local v24    # "returnExpiresAt":I
    .restart local v4    # "returnAccessToken":Ljava/lang/String;
    .restart local v5    # "returnExpiresAt":I
    :catchall_4
    move-exception v0

    move-object/from16 v23, v4

    move/from16 v24, v5

    move-object/from16 v3, v20

    const/4 v4, 0x0

    goto :goto_7

    .line 233
    :cond_9
    move-object/from16 v23, v4

    move/from16 v24, v5

    .end local v4    # "returnAccessToken":Ljava/lang/String;
    .end local v5    # "returnExpiresAt":I
    .restart local v23    # "returnAccessToken":Ljava/lang/String;
    .restart local v24    # "returnExpiresAt":I
    :try_start_10
    iget-object v4, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getDataAccessExpirationTime()Ljava/util/Date;

    move-result-object v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    move-object/from16 v18, v4

    .line 231
    :goto_6
    nop

    .line 234
    nop

    .line 218
    move-object v8, v0

    const/4 v4, 0x0

    move-object/from16 v15, v16

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v7

    :try_start_11
    invoke-direct/range {v8 .. v19}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    move-object v3, v0

    .line 235
    .end local v20    # "newAccessToken":Lcom/facebook/AccessToken;
    .restart local v3    # "newAccessToken":Lcom/facebook/AccessToken;
    :try_start_12
    sget-object v0, Lcom/facebook/AccessTokenManager;->Companion:Lcom/facebook/AccessTokenManager$Companion;

    invoke-virtual {v0}, Lcom/facebook/AccessTokenManager$Companion;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/AccessTokenManager;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 237
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->this$0:Lcom/facebook/AccessTokenManager;

    invoke-static {v0}, Lcom/facebook/AccessTokenManager;->access$getTokenRefreshInProgress$p(Lcom/facebook/AccessTokenManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 238
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v0, :cond_a

    .line 239
    invoke-interface {v0, v3}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshed(Lcom/facebook/AccessToken;)V

    .line 241
    :cond_a
    nop

    .end local v3    # "newAccessToken":Lcom/facebook/AccessToken;
    .end local v6    # "returnDataAccessExpirationTime":Ljava/lang/Long;
    .end local v7    # "returnGraphDomain":Ljava/lang/String;
    .end local v23    # "returnAccessToken":Ljava/lang/String;
    .end local v24    # "returnExpiresAt":I
    nop

    .line 242
    return-void

    .line 241
    .restart local v3    # "newAccessToken":Lcom/facebook/AccessToken;
    .restart local v6    # "returnDataAccessExpirationTime":Ljava/lang/Long;
    .restart local v7    # "returnGraphDomain":Ljava/lang/String;
    .restart local v23    # "returnAccessToken":Ljava/lang/String;
    .restart local v24    # "returnExpiresAt":I
    :catchall_5
    move-exception v0

    goto :goto_a

    .end local v3    # "newAccessToken":Lcom/facebook/AccessToken;
    .restart local v20    # "newAccessToken":Lcom/facebook/AccessToken;
    :catchall_6
    move-exception v0

    const/4 v4, 0x0

    goto :goto_9

    .end local v23    # "returnAccessToken":Ljava/lang/String;
    .end local v24    # "returnExpiresAt":I
    .restart local v4    # "returnAccessToken":Ljava/lang/String;
    .restart local v5    # "returnExpiresAt":I
    :catchall_7
    move-exception v0

    move-object/from16 v23, v4

    move/from16 v24, v5

    const/4 v4, 0x0

    move-object/from16 v3, v20

    .end local v4    # "returnAccessToken":Ljava/lang/String;
    .end local v5    # "returnExpiresAt":I
    .restart local v23    # "returnAccessToken":Ljava/lang/String;
    .restart local v24    # "returnExpiresAt":I
    :goto_7
    goto :goto_a

    .line 205
    .end local v20    # "newAccessToken":Lcom/facebook/AccessToken;
    .end local v23    # "returnAccessToken":Ljava/lang/String;
    .end local v24    # "returnExpiresAt":I
    .restart local v3    # "newAccessToken":Lcom/facebook/AccessToken;
    .restart local v4    # "returnAccessToken":Ljava/lang/String;
    .restart local v5    # "returnExpiresAt":I
    :cond_b
    move-object/from16 v20, v3

    move-object/from16 v23, v4

    move/from16 v24, v5

    const/4 v4, 0x0

    .line 207
    .end local v3    # "newAccessToken":Lcom/facebook/AccessToken;
    .end local v4    # "returnAccessToken":Ljava/lang/String;
    .end local v5    # "returnExpiresAt":I
    .restart local v20    # "newAccessToken":Lcom/facebook/AccessToken;
    .restart local v23    # "returnAccessToken":Ljava/lang/String;
    .restart local v24    # "returnExpiresAt":I
    :goto_8
    :try_start_13
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v0, :cond_c

    .line 208
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "No current access token to refresh"

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-interface {v0, v2}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshFailed(Lcom/facebook/FacebookException;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 209
    :cond_c
    nop

    .line 237
    iget-object v0, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->this$0:Lcom/facebook/AccessTokenManager;

    invoke-static {v0}, Lcom/facebook/AccessTokenManager;->access$getTokenRefreshInProgress$p(Lcom/facebook/AccessTokenManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 238
    nop

    .line 209
    return-void

    .line 241
    :catchall_8
    move-exception v0

    :goto_9
    move-object/from16 v3, v20

    goto :goto_a

    .end local v20    # "newAccessToken":Lcom/facebook/AccessToken;
    .end local v23    # "returnAccessToken":Ljava/lang/String;
    .end local v24    # "returnExpiresAt":I
    .restart local v3    # "newAccessToken":Lcom/facebook/AccessToken;
    .restart local v4    # "returnAccessToken":Ljava/lang/String;
    .restart local v5    # "returnExpiresAt":I
    :catchall_9
    move-exception v0

    move-object/from16 v20, v3

    move-object/from16 v23, v4

    move/from16 v24, v5

    const/4 v4, 0x0

    .line 237
    .end local v4    # "returnAccessToken":Ljava/lang/String;
    .end local v5    # "returnExpiresAt":I
    .restart local v23    # "returnAccessToken":Ljava/lang/String;
    .restart local v24    # "returnExpiresAt":I
    :goto_a
    iget-object v2, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->this$0:Lcom/facebook/AccessTokenManager;

    invoke-static {v2}, Lcom/facebook/AccessTokenManager;->access$getTokenRefreshInProgress$p(Lcom/facebook/AccessTokenManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 238
    iget-object v2, v1, Lcom/facebook/AccessTokenManager$refreshCurrentAccessTokenImpl$1;->$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v2, :cond_d

    if-eqz v3, :cond_d

    .line 239
    invoke-interface {v2, v3}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshed(Lcom/facebook/AccessToken;)V

    :cond_d
    throw v0
.end method
