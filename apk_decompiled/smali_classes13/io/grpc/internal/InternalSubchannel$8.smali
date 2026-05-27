.class Lio/grpc/internal/InternalSubchannel$8;
.super Ljava/lang/Object;
.source "InternalSubchannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/InternalSubchannel;->shutdownNow(Lio/grpc/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/InternalSubchannel;

.field final synthetic val$reason:Lio/grpc/Status;


# direct methods
.method constructor <init>(Lio/grpc/internal/InternalSubchannel;Lio/grpc/Status;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/InternalSubchannel;

    .line 435
    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel$8;->this$0:Lio/grpc/internal/InternalSubchannel;

    iput-object p2, p0, Lio/grpc/internal/InternalSubchannel$8;->val$reason:Lio/grpc/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$8;->this$0:Lio/grpc/internal/InternalSubchannel;

    .line 439
    invoke-static {v1}, Lio/grpc/internal/InternalSubchannel;->access$1300(Lio/grpc/internal/InternalSubchannel;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 441
    .local v0, "transportsCopy":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/ManagedClientTransport;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/ManagedClientTransport;

    .line 442
    .local v2, "transport":Lio/grpc/internal/ManagedClientTransport;
    iget-object v3, p0, Lio/grpc/internal/InternalSubchannel$8;->val$reason:Lio/grpc/Status;

    invoke-interface {v2, v3}, Lio/grpc/internal/ManagedClientTransport;->shutdownNow(Lio/grpc/Status;)V

    .line 443
    .end local v2    # "transport":Lio/grpc/internal/ManagedClientTransport;
    goto :goto_0

    .line 444
    :cond_0
    return-void
.end method
