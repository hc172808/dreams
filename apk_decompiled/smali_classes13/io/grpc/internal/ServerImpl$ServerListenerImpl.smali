.class final Lio/grpc/internal/ServerImpl$ServerListenerImpl;
.super Ljava/lang/Object;
.source "ServerImpl.java"

# interfaces
.implements Lio/grpc/internal/ServerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ServerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServerListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ServerImpl;


# direct methods
.method private constructor <init>(Lio/grpc/internal/ServerImpl;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lio/grpc/internal/ServerImpl$ServerListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/ServerImpl;Lio/grpc/internal/ServerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/internal/ServerImpl;
    .param p2, "x1"    # Lio/grpc/internal/ServerImpl$1;

    .line 375
    invoke-direct {p0, p1}, Lio/grpc/internal/ServerImpl$ServerListenerImpl;-><init>(Lio/grpc/internal/ServerImpl;)V

    return-void
.end method


# virtual methods
.method public serverShutdown()V
    .locals 5

    .line 391
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl;->access$200(Lio/grpc/internal/ServerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 392
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/ServerImpl$ServerListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v1}, Lio/grpc/internal/ServerImpl;->access$410(Lio/grpc/internal/ServerImpl;)I

    .line 393
    iget-object v1, p0, Lio/grpc/internal/ServerImpl$ServerListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v1}, Lio/grpc/internal/ServerImpl;->access$400(Lio/grpc/internal/ServerImpl;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    monitor-exit v0

    return-void

    .line 399
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/grpc/internal/ServerImpl$ServerListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v2}, Lio/grpc/internal/ServerImpl;->access$300(Lio/grpc/internal/ServerImpl;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 400
    .local v1, "copiedTransports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/grpc/internal/ServerTransport;>;"
    iget-object v2, p0, Lio/grpc/internal/ServerImpl$ServerListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v2}, Lio/grpc/internal/ServerImpl;->access$500(Lio/grpc/internal/ServerImpl;)Lio/grpc/Status;

    move-result-object v2

    .line 401
    .local v2, "shutdownNowStatusCopy":Lio/grpc/Status;
    iget-object v3, p0, Lio/grpc/internal/ServerImpl$ServerListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lio/grpc/internal/ServerImpl;->access$602(Lio/grpc/internal/ServerImpl;Z)Z

    .line 402
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 403
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/internal/ServerTransport;

    .line 404
    .local v3, "transport":Lio/grpc/internal/ServerTransport;
    if-nez v2, :cond_1

    .line 405
    invoke-interface {v3}, Lio/grpc/internal/ServerTransport;->shutdown()V

    goto :goto_1

    .line 407
    :cond_1
    invoke-interface {v3, v2}, Lio/grpc/internal/ServerTransport;->shutdownNow(Lio/grpc/Status;)V

    .line 409
    .end local v3    # "transport":Lio/grpc/internal/ServerTransport;
    :goto_1
    goto :goto_0

    .line 410
    :cond_2
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl;->access$200(Lio/grpc/internal/ServerImpl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 411
    :try_start_1
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v0, v4}, Lio/grpc/internal/ServerImpl;->access$702(Lio/grpc/internal/ServerImpl;Z)Z

    .line 412
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl;->access$800(Lio/grpc/internal/ServerImpl;)V

    .line 413
    monitor-exit v3

    .line 414
    return-void

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 402
    .end local v1    # "copiedTransports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/grpc/internal/ServerTransport;>;"
    .end local v2    # "shutdownNowStatusCopy":Lio/grpc/Status;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public transportCreated(Lio/grpc/internal/ServerTransport;)Lio/grpc/internal/ServerTransportListener;
    .locals 2
    .param p1, "transport"    # Lio/grpc/internal/ServerTransport;

    .line 379
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$ServerListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl;->access$200(Lio/grpc/internal/ServerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 380
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/ServerImpl$ServerListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-static {v1}, Lio/grpc/internal/ServerImpl;->access$300(Lio/grpc/internal/ServerImpl;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 381
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    new-instance v0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;

    iget-object v1, p0, Lio/grpc/internal/ServerImpl$ServerListenerImpl;->this$0:Lio/grpc/internal/ServerImpl;

    invoke-direct {v0, v1, p1}, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;-><init>(Lio/grpc/internal/ServerImpl;Lio/grpc/internal/ServerTransport;)V

    .line 383
    .local v0, "stli":Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;
    invoke-virtual {v0}, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;->init()V

    .line 384
    return-object v0

    .line 381
    .end local v0    # "stli":Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
