.class Lio/grpc/internal/InternalSubchannel$4;
.super Ljava/lang/Object;
.source "InternalSubchannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/InternalSubchannel;->updateAddresses(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/InternalSubchannel;

.field final synthetic val$newAddressGroups:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/grpc/internal/InternalSubchannel;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/InternalSubchannel;

    .line 339
    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    iput-object p2, p0, Lio/grpc/internal/InternalSubchannel$4;->val$newAddressGroups:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$4;->val$newAddressGroups:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 343
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 344
    .local v0, "newImmutableAddressGroups":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    const/4 v1, 0x0

    .line 345
    .local v1, "savedTransport":Lio/grpc/internal/ManagedClientTransport;
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2}, Lio/grpc/internal/InternalSubchannel;->access$800(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InternalSubchannel$Index;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/internal/InternalSubchannel$Index;->getCurrentAddress()Ljava/net/SocketAddress;

    move-result-object v2

    .line 346
    .local v2, "previousAddress":Ljava/net/SocketAddress;
    iget-object v3, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v3}, Lio/grpc/internal/InternalSubchannel;->access$800(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InternalSubchannel$Index;

    move-result-object v3

    invoke-virtual {v3, v0}, Lio/grpc/internal/InternalSubchannel$Index;->updateGroups(Ljava/util/List;)V

    .line 347
    iget-object v3, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v3, v0}, Lio/grpc/internal/InternalSubchannel;->access$902(Lio/grpc/internal/InternalSubchannel;Ljava/util/List;)Ljava/util/List;

    .line 348
    iget-object v3, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v3}, Lio/grpc/internal/InternalSubchannel;->access$100(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/ConnectivityStateInfo;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v3

    sget-object v4, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v3}, Lio/grpc/internal/InternalSubchannel;->access$100(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/ConnectivityStateInfo;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v3

    sget-object v4, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    if-ne v3, v4, :cond_2

    .line 349
    :cond_0
    iget-object v3, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v3}, Lio/grpc/internal/InternalSubchannel;->access$800(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InternalSubchannel$Index;

    move-result-object v3

    invoke-virtual {v3, v2}, Lio/grpc/internal/InternalSubchannel$Index;->seekTo(Ljava/net/SocketAddress;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 351
    iget-object v3, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v3}, Lio/grpc/internal/InternalSubchannel;->access$100(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/ConnectivityStateInfo;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v3

    sget-object v4, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    .line 352
    iget-object v3, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v3}, Lio/grpc/internal/InternalSubchannel;->access$1000(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/ManagedClientTransport;

    move-result-object v1

    .line 353
    iget-object v3, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v3, v5}, Lio/grpc/internal/InternalSubchannel;->access$1002(Lio/grpc/internal/InternalSubchannel;Lio/grpc/internal/ManagedClientTransport;)Lio/grpc/internal/ManagedClientTransport;

    .line 354
    iget-object v3, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v3}, Lio/grpc/internal/InternalSubchannel;->access$800(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InternalSubchannel$Index;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/internal/InternalSubchannel$Index;->reset()V

    .line 355
    iget-object v3, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    sget-object v4, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    invoke-static {v3, v4}, Lio/grpc/internal/InternalSubchannel;->access$300(Lio/grpc/internal/InternalSubchannel;Lio/grpc/ConnectivityState;)V

    goto :goto_0

    .line 357
    :cond_1
    iget-object v3, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v3}, Lio/grpc/internal/InternalSubchannel;->access$1100(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v1

    .line 358
    iget-object v3, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v3, v5}, Lio/grpc/internal/InternalSubchannel;->access$1102(Lio/grpc/internal/InternalSubchannel;Lio/grpc/internal/ConnectionClientTransport;)Lio/grpc/internal/ConnectionClientTransport;

    .line 359
    iget-object v3, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v3}, Lio/grpc/internal/InternalSubchannel;->access$800(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InternalSubchannel$Index;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/internal/InternalSubchannel$Index;->reset()V

    .line 360
    iget-object v3, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v3}, Lio/grpc/internal/InternalSubchannel;->access$400(Lio/grpc/internal/InternalSubchannel;)V

    .line 364
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 365
    sget-object v3, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    .line 366
    const-string v4, "InternalSubchannel closed transport due to address change"

    invoke-virtual {v3, v4}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v3

    .line 365
    invoke-interface {v1, v3}, Lio/grpc/internal/ManagedClientTransport;->shutdown(Lio/grpc/Status;)V

    .line 369
    :cond_3
    return-void
.end method
