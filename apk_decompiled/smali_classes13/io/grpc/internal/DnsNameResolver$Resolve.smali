.class final Lio/grpc/internal/DnsNameResolver$Resolve;
.super Ljava/lang/Object;
.source "DnsNameResolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/DnsNameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Resolve"
.end annotation


# instance fields
.field private final savedListener:Lio/grpc/NameResolver$Listener2;

.field final synthetic this$0:Lio/grpc/internal/DnsNameResolver;


# direct methods
.method constructor <init>(Lio/grpc/internal/DnsNameResolver;Lio/grpc/NameResolver$Listener2;)V
    .locals 0
    .param p2, "savedListener"    # Lio/grpc/NameResolver$Listener2;

    .line 218
    iput-object p1, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const-string p1, "savedListener"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/NameResolver$Listener2;

    iput-object p1, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->savedListener:Lio/grpc/NameResolver$Listener2;

    .line 220
    return-void
.end method


# virtual methods
.method resolveInternal()V
    .locals 11

    .line 242
    const-string v0, "Unable to resolve host "

    iget-object v1, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    .line 243
    invoke-static {v1}, Lio/grpc/internal/DnsNameResolver;->access$100(Lio/grpc/internal/DnsNameResolver;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    invoke-static {v2}, Lio/grpc/internal/DnsNameResolver;->access$400(Lio/grpc/internal/DnsNameResolver;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 246
    .local v1, "destination":Ljava/net/InetSocketAddress;
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    iget-object v2, v2, Lio/grpc/internal/DnsNameResolver;->proxyDetector:Lio/grpc/ProxyDetector;

    invoke-interface {v2, v1}, Lio/grpc/ProxyDetector;->proxyFor(Ljava/net/SocketAddress;)Lio/grpc/ProxiedSocketAddress;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 251
    .local v2, "proxiedAddr":Lio/grpc/ProxiedSocketAddress;
    nop

    .line 252
    if-eqz v2, :cond_1

    .line 253
    invoke-static {}, Lio/grpc/internal/DnsNameResolver;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-static {}, Lio/grpc/internal/DnsNameResolver;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using proxy address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 256
    :cond_0
    new-instance v0, Lio/grpc/EquivalentAddressGroup;

    invoke-direct {v0, v2}, Lio/grpc/EquivalentAddressGroup;-><init>(Ljava/net/SocketAddress;)V

    .line 258
    .local v0, "server":Lio/grpc/EquivalentAddressGroup;
    invoke-static {}, Lio/grpc/NameResolver$ResolutionResult;->newBuilder()Lio/grpc/NameResolver$ResolutionResult$Builder;

    move-result-object v3

    .line 259
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/grpc/NameResolver$ResolutionResult$Builder;->setAddresses(Ljava/util/List;)Lio/grpc/NameResolver$ResolutionResult$Builder;

    move-result-object v3

    sget-object v4, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    .line 260
    invoke-virtual {v3, v4}, Lio/grpc/NameResolver$ResolutionResult$Builder;->setAttributes(Lio/grpc/Attributes;)Lio/grpc/NameResolver$ResolutionResult$Builder;

    move-result-object v3

    .line 261
    invoke-virtual {v3}, Lio/grpc/NameResolver$ResolutionResult$Builder;->build()Lio/grpc/NameResolver$ResolutionResult;

    move-result-object v3

    .line 262
    .local v3, "resolutionResult":Lio/grpc/NameResolver$ResolutionResult;
    iget-object v4, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->savedListener:Lio/grpc/NameResolver$Listener2;

    invoke-virtual {v4, v3}, Lio/grpc/NameResolver$Listener2;->onResult(Lio/grpc/NameResolver$ResolutionResult;)V

    .line 263
    return-void

    .line 268
    .end local v0    # "server":Lio/grpc/EquivalentAddressGroup;
    .end local v3    # "resolutionResult":Lio/grpc/NameResolver$ResolutionResult;
    :cond_1
    const/4 v3, 0x0

    .line 269
    .local v3, "resourceResolver":Lio/grpc/internal/DnsNameResolver$ResourceResolver;
    :try_start_1
    sget-boolean v4, Lio/grpc/internal/DnsNameResolver;->enableJndi:Z

    sget-boolean v5, Lio/grpc/internal/DnsNameResolver;->enableJndiLocalhost:Z

    iget-object v6, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    invoke-static {v6}, Lio/grpc/internal/DnsNameResolver;->access$100(Lio/grpc/internal/DnsNameResolver;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lio/grpc/internal/DnsNameResolver;->shouldUseJndi(ZZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 270
    iget-object v4, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    invoke-static {v4}, Lio/grpc/internal/DnsNameResolver;->access$500(Lio/grpc/internal/DnsNameResolver;)Lio/grpc/internal/DnsNameResolver$ResourceResolver;

    move-result-object v4

    move-object v3, v4

    .line 272
    :cond_2
    iget-object v4, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    .line 273
    invoke-static {v4}, Lio/grpc/internal/DnsNameResolver;->access$600(Lio/grpc/internal/DnsNameResolver;)Lio/grpc/internal/DnsNameResolver$AddressResolver;

    move-result-object v4

    iget-object v5, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    .line 275
    invoke-static {v5}, Lio/grpc/internal/DnsNameResolver;->access$700(Lio/grpc/internal/DnsNameResolver;)Z

    move-result v5

    sget-boolean v6, Lio/grpc/internal/DnsNameResolver;->enableTxt:Z

    iget-object v7, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    .line 277
    invoke-static {v7}, Lio/grpc/internal/DnsNameResolver;->access$100(Lio/grpc/internal/DnsNameResolver;)Ljava/lang/String;

    move-result-object v7

    .line 272
    invoke-static {v4, v3, v5, v6, v7}, Lio/grpc/internal/DnsNameResolver;->resolveAll(Lio/grpc/internal/DnsNameResolver$AddressResolver;Lio/grpc/internal/DnsNameResolver$ResourceResolver;ZZLjava/lang/String;)Lio/grpc/internal/DnsNameResolver$ResolutionResults;

    move-result-object v4

    .line 278
    .local v4, "results":Lio/grpc/internal/DnsNameResolver$ResolutionResults;
    move-object v5, v4

    .line 279
    .local v5, "resolutionResults":Lio/grpc/internal/DnsNameResolver$ResolutionResults;
    iget-object v6, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    invoke-static {v6}, Lio/grpc/internal/DnsNameResolver;->access$300(Lio/grpc/internal/DnsNameResolver;)Lio/grpc/SynchronizationContext;

    move-result-object v6

    new-instance v7, Lio/grpc/internal/DnsNameResolver$Resolve$2;

    invoke-direct {v7, p0, v4}, Lio/grpc/internal/DnsNameResolver$Resolve$2;-><init>(Lio/grpc/internal/DnsNameResolver$Resolve;Lio/grpc/internal/DnsNameResolver$ResolutionResults;)V

    invoke-virtual {v6, v7}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 288
    invoke-static {}, Lio/grpc/internal/DnsNameResolver;->access$000()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 289
    invoke-static {}, Lio/grpc/internal/DnsNameResolver;->access$000()Ljava/util/logging/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found DNS results "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    invoke-static {v8}, Lio/grpc/internal/DnsNameResolver;->access$100(Lio/grpc/internal/DnsNameResolver;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 295
    .end local v3    # "resourceResolver":Lio/grpc/internal/DnsNameResolver$ResourceResolver;
    .end local v4    # "results":Lio/grpc/internal/DnsNameResolver$ResolutionResults;
    :cond_3
    nop

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v0, "servers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    iget-object v3, v5, Lio/grpc/internal/DnsNameResolver$ResolutionResults;->addresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 299
    .local v4, "inetAddr":Ljava/net/InetAddress;
    new-instance v6, Lio/grpc/EquivalentAddressGroup;

    new-instance v7, Ljava/net/InetSocketAddress;

    iget-object v8, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    invoke-static {v8}, Lio/grpc/internal/DnsNameResolver;->access$400(Lio/grpc/internal/DnsNameResolver;)I

    move-result v8

    invoke-direct {v7, v4, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v6, v7}, Lio/grpc/EquivalentAddressGroup;-><init>(Ljava/net/SocketAddress;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    .end local v4    # "inetAddr":Ljava/net/InetAddress;
    goto :goto_0

    .line 302
    :cond_4
    invoke-static {}, Lio/grpc/NameResolver$ResolutionResult;->newBuilder()Lio/grpc/NameResolver$ResolutionResult$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lio/grpc/NameResolver$ResolutionResult$Builder;->setAddresses(Ljava/util/List;)Lio/grpc/NameResolver$ResolutionResult$Builder;

    move-result-object v3

    .line 303
    .local v3, "resultBuilder":Lio/grpc/NameResolver$ResolutionResult$Builder;
    invoke-static {}, Lio/grpc/Attributes;->newBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v4

    .line 304
    .local v4, "attributesBuilder":Lio/grpc/Attributes$Builder;
    iget-object v6, v5, Lio/grpc/internal/DnsNameResolver$ResolutionResults;->balancerAddresses:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 305
    sget-object v6, Lio/grpc/internal/GrpcAttributes;->ATTR_LB_ADDRS:Lio/grpc/Attributes$Key;

    iget-object v7, v5, Lio/grpc/internal/DnsNameResolver$ResolutionResults;->balancerAddresses:Ljava/util/List;

    invoke-virtual {v4, v6, v7}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    .line 307
    :cond_5
    iget-object v6, v5, Lio/grpc/internal/DnsNameResolver$ResolutionResults;->txtRecords:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 308
    iget-object v6, v5, Lio/grpc/internal/DnsNameResolver$ResolutionResults;->txtRecords:Ljava/util/List;

    iget-object v7, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    .line 309
    invoke-static {v7}, Lio/grpc/internal/DnsNameResolver;->access$1100(Lio/grpc/internal/DnsNameResolver;)Ljava/util/Random;

    move-result-object v7

    invoke-static {}, Lio/grpc/internal/DnsNameResolver;->access$1200()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lio/grpc/internal/DnsNameResolver;->parseServiceConfig(Ljava/util/List;Ljava/util/Random;Ljava/lang/String;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v6

    .line 310
    .local v6, "rawServiceConfig":Lio/grpc/NameResolver$ConfigOrError;
    if-eqz v6, :cond_7

    .line 311
    invoke-virtual {v6}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 312
    iget-object v7, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->savedListener:Lio/grpc/NameResolver$Listener2;

    invoke-virtual {v6}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v8

    invoke-virtual {v7, v8}, Lio/grpc/NameResolver$Listener2;->onError(Lio/grpc/Status;)V

    .line 313
    return-void

    .line 317
    :cond_6
    invoke-virtual {v6}, Lio/grpc/NameResolver$ConfigOrError;->getConfig()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 318
    .local v7, "verifiedRawServiceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    iget-object v8, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    .line 319
    invoke-static {v8}, Lio/grpc/internal/DnsNameResolver;->access$1300(Lio/grpc/internal/DnsNameResolver;)Lio/grpc/NameResolver$ServiceConfigParser;

    move-result-object v8

    invoke-virtual {v8, v7}, Lio/grpc/NameResolver$ServiceConfigParser;->parseServiceConfig(Ljava/util/Map;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v8

    .line 320
    .local v8, "parsedServiceConfig":Lio/grpc/NameResolver$ConfigOrError;
    invoke-virtual {v3, v8}, Lio/grpc/NameResolver$ResolutionResult$Builder;->setServiceConfig(Lio/grpc/NameResolver$ConfigOrError;)Lio/grpc/NameResolver$ResolutionResult$Builder;

    .line 321
    sget-object v9, Lio/grpc/internal/GrpcAttributes;->NAME_RESOLVER_SERVICE_CONFIG:Lio/grpc/Attributes$Key;

    .line 322
    invoke-virtual {v4, v9, v7}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    .line 324
    .end local v6    # "rawServiceConfig":Lio/grpc/NameResolver$ConfigOrError;
    .end local v7    # "verifiedRawServiceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v8    # "parsedServiceConfig":Lio/grpc/NameResolver$ConfigOrError;
    :cond_7
    goto :goto_1

    .line 325
    :cond_8
    invoke-static {}, Lio/grpc/internal/DnsNameResolver;->access$000()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    invoke-static {v10}, Lio/grpc/internal/DnsNameResolver;->access$100(Lio/grpc/internal/DnsNameResolver;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const-string v9, "No TXT records found for {0}"

    invoke-virtual {v6, v7, v9, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    :goto_1
    iget-object v6, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->savedListener:Lio/grpc/NameResolver$Listener2;

    invoke-virtual {v4}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object v7

    invoke-virtual {v3, v7}, Lio/grpc/NameResolver$ResolutionResult$Builder;->setAttributes(Lio/grpc/Attributes;)Lio/grpc/NameResolver$ResolutionResult$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lio/grpc/NameResolver$ResolutionResult$Builder;->build()Lio/grpc/NameResolver$ResolutionResult;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/grpc/NameResolver$Listener2;->onResult(Lio/grpc/NameResolver$ResolutionResult;)V

    .line 328
    return-void

    .line 291
    .end local v0    # "servers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    .end local v3    # "resultBuilder":Lio/grpc/NameResolver$ResolutionResult$Builder;
    .end local v4    # "attributesBuilder":Lio/grpc/Attributes$Builder;
    .end local v5    # "resolutionResults":Lio/grpc/internal/DnsNameResolver$ResolutionResults;
    :catch_0
    move-exception v3

    .line 292
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->savedListener:Lio/grpc/NameResolver$Listener2;

    sget-object v5, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    .line 293
    invoke-static {v0}, Lio/grpc/internal/DnsNameResolver;->access$100(Lio/grpc/internal/DnsNameResolver;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0, v3}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    .line 292
    invoke-virtual {v4, v0}, Lio/grpc/NameResolver$Listener2;->onError(Lio/grpc/Status;)V

    .line 294
    return-void

    .line 247
    .end local v2    # "proxiedAddr":Lio/grpc/ProxiedSocketAddress;
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 248
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->savedListener:Lio/grpc/NameResolver$Listener2;

    sget-object v4, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    .line 249
    invoke-static {v0}, Lio/grpc/internal/DnsNameResolver;->access$100(Lio/grpc/internal/DnsNameResolver;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    .line 248
    invoke-virtual {v3, v0}, Lio/grpc/NameResolver$Listener2;->onError(Lio/grpc/Status;)V

    .line 250
    return-void
.end method

.method public run()V
    .locals 3

    .line 224
    invoke-static {}, Lio/grpc/internal/DnsNameResolver;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-static {}, Lio/grpc/internal/DnsNameResolver;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting DNS resolution of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    invoke-static {v2}, Lio/grpc/internal/DnsNameResolver;->access$100(Lio/grpc/internal/DnsNameResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 228
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/internal/DnsNameResolver$Resolve;->resolveInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    invoke-static {v0}, Lio/grpc/internal/DnsNameResolver;->access$300(Lio/grpc/internal/DnsNameResolver;)Lio/grpc/SynchronizationContext;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/DnsNameResolver$Resolve$1;

    invoke-direct {v1, p0}, Lio/grpc/internal/DnsNameResolver$Resolve$1;-><init>(Lio/grpc/internal/DnsNameResolver$Resolve;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 236
    nop

    .line 237
    return-void

    .line 230
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/grpc/internal/DnsNameResolver$Resolve;->this$0:Lio/grpc/internal/DnsNameResolver;

    invoke-static {v1}, Lio/grpc/internal/DnsNameResolver;->access$300(Lio/grpc/internal/DnsNameResolver;)Lio/grpc/SynchronizationContext;

    move-result-object v1

    new-instance v2, Lio/grpc/internal/DnsNameResolver$Resolve$1;

    invoke-direct {v2, p0}, Lio/grpc/internal/DnsNameResolver$Resolve$1;-><init>(Lio/grpc/internal/DnsNameResolver$Resolve;)V

    invoke-virtual {v1, v2}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    throw v0
.end method
