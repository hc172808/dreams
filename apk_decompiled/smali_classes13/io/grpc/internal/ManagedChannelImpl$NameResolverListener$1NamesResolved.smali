.class final Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->onResult(Lio/grpc/NameResolver$ResolutionResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NamesResolved"
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

.field final synthetic val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;Lio/grpc/NameResolver$ResolutionResult;)V
    .locals 0
    .param p1, "this$1"    # Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1323
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1328
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;

    invoke-virtual {v0}, Lio/grpc/NameResolver$ResolutionResult;->getAddresses()Ljava/util/List;

    move-result-object v0

    .line 1329
    .local v0, "servers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;

    invoke-virtual {v1}, Lio/grpc/NameResolver$ResolutionResult;->getAttributes()Lio/grpc/Attributes;

    move-result-object v1

    .line 1330
    .local v1, "attrs":Lio/grpc/Attributes;
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v2, v2, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$2900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v2

    sget-object v3, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v1, v4, v6

    const-string v7, "Resolved address: {0}, config={1}"

    invoke-virtual {v2, v3, v7, v4}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1332
    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v2, v2, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v2}, Lio/grpc/internal/ManagedChannelImpl;->access$6000(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    move-result-object v2

    .line 1334
    .local v2, "lastResolutionStateCopy":Lio/grpc/internal/ManagedChannelImpl$ResolutionState;
    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v3, v3, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v3}, Lio/grpc/internal/ManagedChannelImpl;->access$6000(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    move-result-object v3

    sget-object v4, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;->SUCCESS:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    if-eq v3, v4, :cond_0

    .line 1335
    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v3, v3, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v3}, Lio/grpc/internal/ManagedChannelImpl;->access$2900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v3

    sget-object v4, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v0, v7, v5

    const-string v8, "Address resolved: {0}"

    invoke-virtual {v3, v4, v8, v7}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1336
    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v3, v3, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    sget-object v4, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;->SUCCESS:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    invoke-static {v3, v4}, Lio/grpc/internal/ManagedChannelImpl;->access$6002(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$ResolutionState;)Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    .line 1339
    :cond_0
    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v3, v3, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lio/grpc/internal/ManagedChannelImpl;->access$6102(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/BackoffPolicy;)Lio/grpc/internal/BackoffPolicy;

    .line 1340
    iget-object v3, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;

    invoke-virtual {v3}, Lio/grpc/NameResolver$ResolutionResult;->getServiceConfig()Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v3

    .line 1341
    .local v3, "configOrError":Lio/grpc/NameResolver$ConfigOrError;
    const/4 v7, 0x0

    .line 1342
    .local v7, "validServiceConfig":Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;
    const/4 v8, 0x0

    .line 1343
    .local v8, "serviceConfigError":Lio/grpc/Status;
    if-eqz v3, :cond_2

    .line 1344
    iget-object v9, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->val$resolutionResult:Lio/grpc/NameResolver$ResolutionResult;

    .line 1345
    invoke-virtual {v9}, Lio/grpc/NameResolver$ResolutionResult;->getAttributes()Lio/grpc/Attributes;

    move-result-object v9

    sget-object v10, Lio/grpc/internal/GrpcAttributes;->NAME_RESOLVER_SERVICE_CONFIG:Lio/grpc/Attributes$Key;

    invoke-virtual {v9, v10}, Lio/grpc/Attributes;->get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 1346
    .local v9, "rawServiceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-virtual {v3}, Lio/grpc/NameResolver$ConfigOrError;->getConfig()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_1

    .line 1347
    goto :goto_0

    .line 1348
    :cond_1
    new-instance v4, Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    .line 1349
    invoke-virtual {v3}, Lio/grpc/NameResolver$ConfigOrError;->getConfig()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/grpc/internal/ManagedChannelServiceConfig;

    invoke-direct {v4, v9, v10}, Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;-><init>(Ljava/util/Map;Lio/grpc/internal/ManagedChannelServiceConfig;)V

    :goto_0
    move-object v7, v4

    .line 1350
    invoke-virtual {v3}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v8

    .line 1354
    .end local v9    # "rawServiceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_2
    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v4, v4, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v4}, Lio/grpc/internal/ManagedChannelImpl;->access$6200(Lio/grpc/internal/ManagedChannelImpl;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1355
    if-eqz v7, :cond_3

    .line 1356
    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v4, v4, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v4}, Lio/grpc/internal/ManagedChannelImpl;->access$2900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v4

    sget-object v5, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v6, "Service config from name resolver discarded by channel settings"

    invoke-virtual {v4, v5, v6}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 1361
    :cond_3
    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v4, v4, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v4}, Lio/grpc/internal/ManagedChannelImpl;->access$6300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-static {}, Lio/grpc/internal/ManagedChannelImpl;->access$6400()Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    move-result-object v4

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v4, v4, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v4}, Lio/grpc/internal/ManagedChannelImpl;->access$6300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    move-result-object v4

    .line 1362
    .local v4, "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;
    :goto_1
    invoke-virtual {v1}, Lio/grpc/Attributes;->toBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v5

    sget-object v6, Lio/grpc/internal/GrpcAttributes;->NAME_RESOLVER_SERVICE_CONFIG:Lio/grpc/Attributes$Key;

    invoke-virtual {v5, v6}, Lio/grpc/Attributes$Builder;->discard(Lio/grpc/Attributes$Key;)Lio/grpc/Attributes$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object v1

    goto/16 :goto_4

    .line 1366
    .end local v4    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;
    :cond_5
    if-eqz v7, :cond_6

    .line 1367
    move-object v4, v7

    .restart local v4    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;
    goto :goto_2

    .line 1368
    .end local v4    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;
    :cond_6
    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v4, v4, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v4}, Lio/grpc/internal/ManagedChannelImpl;->access$6300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1369
    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v4, v4, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v4}, Lio/grpc/internal/ManagedChannelImpl;->access$6300(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    move-result-object v4

    .line 1370
    .restart local v4    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;
    iget-object v9, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v9, v9, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v9}, Lio/grpc/internal/ManagedChannelImpl;->access$2900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v9

    sget-object v10, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v11, "Received no service config, using default service config"

    invoke-virtual {v9, v10, v11}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    goto :goto_2

    .line 1373
    .end local v4    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;
    :cond_7
    if-eqz v8, :cond_9

    .line 1374
    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v4, v4, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v4}, Lio/grpc/internal/ManagedChannelImpl;->access$6500(Lio/grpc/internal/ManagedChannelImpl;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1376
    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v4, v4, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v4}, Lio/grpc/internal/ManagedChannelImpl;->access$2900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v4

    sget-object v5, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v6, "Fallback to error due to invalid first service config without default config"

    invoke-virtual {v4, v5, v6}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 1379
    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    invoke-virtual {v3}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->onError(Lio/grpc/Status;)V

    .line 1380
    return-void

    .line 1382
    :cond_8
    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v4, v4, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v4}, Lio/grpc/internal/ManagedChannelImpl;->access$1700(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    move-result-object v4

    .restart local v4    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;
    goto :goto_2

    .line 1385
    .end local v4    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;
    :cond_9
    invoke-static {}, Lio/grpc/internal/ManagedChannelImpl;->access$6400()Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    move-result-object v4

    .line 1387
    .restart local v4    # "effectiveServiceConfig":Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;
    :goto_2
    iget-object v9, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v9, v9, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v9}, Lio/grpc/internal/ManagedChannelImpl;->access$1700(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    move-result-object v9

    invoke-virtual {v4, v9}, Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 1388
    iget-object v9, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v9, v9, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v9}, Lio/grpc/internal/ManagedChannelImpl;->access$2900(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/ChannelLogger;

    move-result-object v9

    sget-object v10, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    new-array v6, v6, [Ljava/lang/Object;

    .line 1391
    invoke-static {}, Lio/grpc/internal/ManagedChannelImpl;->access$6400()Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    move-result-object v11

    if-ne v4, v11, :cond_a

    const-string v11, " to empty"

    goto :goto_3

    :cond_a
    const-string v11, ""

    :goto_3
    aput-object v11, v6, v5

    .line 1388
    const-string v5, "Service config changed{0}"

    invoke-virtual {v9, v10, v5, v6}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1392
    iget-object v5, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v5, v5, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v5, v4}, Lio/grpc/internal/ManagedChannelImpl;->access$1702(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;)Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;

    .line 1399
    :cond_b
    :try_start_0
    iget-object v5, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v5, v5, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v5}, Lio/grpc/internal/ManagedChannelImpl;->access$6600(Lio/grpc/internal/ManagedChannelImpl;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1405
    goto :goto_4

    .line 1400
    :catch_0
    move-exception v5

    .line 1401
    .local v5, "re":Ljava/lang/RuntimeException;
    sget-object v6, Lio/grpc/internal/ManagedChannelImpl;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v11, v11, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    .line 1403
    invoke-virtual {v11}, Lio/grpc/internal/ManagedChannelImpl;->getLogId()Lio/grpc/InternalLogId;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "] Unexpected exception from parsing service config"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1401
    invoke-virtual {v6, v9, v10, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1409
    .end local v5    # "re":Ljava/lang/RuntimeException;
    :goto_4
    iget-object v5, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v5, v5, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->helper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object v6, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v6, v6, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v6}, Lio/grpc/internal/ManagedChannelImpl;->access$3800(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    move-result-object v6

    if-ne v5, v6, :cond_e

    .line 1410
    move-object v5, v1

    .line 1411
    .local v5, "effectiveAttrs":Lio/grpc/Attributes;
    if-eq v4, v7, :cond_c

    .line 1412
    invoke-virtual {v1}, Lio/grpc/Attributes;->toBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v6

    sget-object v9, Lio/grpc/internal/GrpcAttributes;->NAME_RESOLVER_SERVICE_CONFIG:Lio/grpc/Attributes$Key;

    iget-object v10, v4, Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;->rawServiceConfig:Ljava/util/Map;

    .line 1413
    invoke-virtual {v6, v9, v10}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v6

    .line 1416
    invoke-virtual {v6}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object v5

    .line 1419
    :cond_c
    iget-object v6, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v6, v6, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->helper:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object v6, v6, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->lb:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;

    .line 1420
    invoke-static {}, Lio/grpc/LoadBalancer$ResolvedAddresses;->newBuilder()Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v9

    .line 1421
    invoke-virtual {v9, v0}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setAddresses(Ljava/util/List;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v9

    .line 1422
    invoke-virtual {v9, v5}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setAttributes(Lio/grpc/Attributes;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v9

    iget-object v10, v4, Lio/grpc/internal/ManagedChannelImpl$ServiceConfigHolder;->managedChannelServiceConfig:Lio/grpc/internal/ManagedChannelServiceConfig;

    .line 1424
    invoke-virtual {v10}, Lio/grpc/internal/ManagedChannelServiceConfig;->getLoadBalancingConfig()Ljava/lang/Object;

    move-result-object v10

    .line 1423
    invoke-virtual {v9, v10}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setLoadBalancingPolicyConfig(Ljava/lang/Object;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v9

    .line 1425
    invoke-virtual {v9}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->build()Lio/grpc/LoadBalancer$ResolvedAddresses;

    move-result-object v9

    .line 1419
    invoke-virtual {v6, v9}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$AutoConfiguredLoadBalancer;->tryHandleResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)Lio/grpc/Status;

    move-result-object v6

    .line 1427
    .local v6, "handleResult":Lio/grpc/Status;
    invoke-virtual {v6}, Lio/grpc/Status;->isOk()Z

    move-result v9

    if-nez v9, :cond_e

    .line 1428
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_d

    sget-object v9, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;->SUCCESS:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    if-ne v2, v9, :cond_d

    .line 1432
    iget-object v9, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    invoke-static {v9}, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->access$6700(Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;)V

    goto :goto_5

    .line 1434
    :cond_d
    iget-object v9, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener$1NamesResolved;->this$1:Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;

    iget-object v11, v11, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->resolver:Lio/grpc/NameResolver;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " was used"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lio/grpc/Status;->augmentDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v10

    invoke-static {v9, v10}, Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;->access$6800(Lio/grpc/internal/ManagedChannelImpl$NameResolverListener;Lio/grpc/Status;)V

    .line 1438
    .end local v5    # "effectiveAttrs":Lio/grpc/Attributes;
    .end local v6    # "handleResult":Lio/grpc/Status;
    :cond_e
    :goto_5
    return-void
.end method
