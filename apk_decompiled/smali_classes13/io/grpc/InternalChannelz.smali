.class public final Lio/grpc/InternalChannelz;
.super Ljava/lang/Object;
.source "InternalChannelz.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/InternalChannelz$TransportStats;,
        Lio/grpc/InternalChannelz$SocketOptions;,
        Lio/grpc/InternalChannelz$TcpInfo;,
        Lio/grpc/InternalChannelz$SocketStats;,
        Lio/grpc/InternalChannelz$Tls;,
        Lio/grpc/InternalChannelz$OtherSecurity;,
        Lio/grpc/InternalChannelz$Security;,
        Lio/grpc/InternalChannelz$ChannelTrace;,
        Lio/grpc/InternalChannelz$ChannelStats;,
        Lio/grpc/InternalChannelz$ServerStats;,
        Lio/grpc/InternalChannelz$ServerSocketsList;,
        Lio/grpc/InternalChannelz$ServerList;,
        Lio/grpc/InternalChannelz$RootChannelList;,
        Lio/grpc/InternalChannelz$ServerSocketMap;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final INSTANCE:Lio/grpc/InternalChannelz;

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final otherSockets:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;>;"
        }
    .end annotation
.end field

.field private final perServerSockets:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Lio/grpc/InternalChannelz$ServerSocketMap;",
            ">;"
        }
    .end annotation
.end field

.field private final rootChannels:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "Ljava/lang/Long;",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$ChannelStats;",
            ">;>;"
        }
    .end annotation
.end field

.field private final servers:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "Ljava/lang/Long;",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$ServerStats;",
            ">;>;"
        }
    .end annotation
.end field

.field private final subchannels:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$ChannelStats;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    nop

    .line 49
    const-class v0, Lio/grpc/InternalChannelz;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/InternalChannelz;->log:Ljava/util/logging/Logger;

    .line 50
    new-instance v0, Lio/grpc/InternalChannelz;

    invoke-direct {v0}, Lio/grpc/InternalChannelz;-><init>()V

    sput-object v0, Lio/grpc/InternalChannelz;->INSTANCE:Lio/grpc/InternalChannelz;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lio/grpc/InternalChannelz;->servers:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lio/grpc/InternalChannelz;->rootChannels:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/InternalChannelz;->subchannels:Ljava/util/concurrent/ConcurrentMap;

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/InternalChannelz;->otherSockets:Ljava/util/concurrent/ConcurrentMap;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/InternalChannelz;->perServerSockets:Ljava/util/concurrent/ConcurrentMap;

    .line 72
    return-void
.end method

.method static synthetic access$400()Ljava/util/logging/Logger;
    .locals 1

    .line 48
    sget-object v0, Lio/grpc/InternalChannelz;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private static add(Ljava/util/Map;Lio/grpc/InternalInstrumented;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/grpc/InternalInstrumented<",
            "*>;>(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 238
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;TT;>;"
    .local p1, "object":Lio/grpc/InternalInstrumented;, "TT;"
    invoke-interface {p1}, Lio/grpc/InternalInstrumented;->getLogId()Lio/grpc/InternalLogId;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/InternalLogId;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/InternalInstrumented;

    .line 239
    .local v0, "prev":Lio/grpc/InternalInstrumented;, "TT;"
    if-nez v0, :cond_0

    .line 240
    return-void

    .line 239
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private static contains(Ljava/util/Map;Lio/grpc/InternalLogId;)Z
    .locals 2
    .param p1, "id"    # Lio/grpc/InternalLogId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/grpc/InternalInstrumented<",
            "*>;>(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TT;>;",
            "Lio/grpc/InternalLogId;",
            ")Z"
        }
    .end annotation

    .line 249
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;TT;>;"
    invoke-virtual {p1}, Lio/grpc/InternalLogId;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getServerSocket(J)Lio/grpc/InternalInstrumented;
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lio/grpc/InternalChannelz;->perServerSockets:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/InternalChannelz$ServerSocketMap;

    .line 210
    .local v1, "perServerSockets":Lio/grpc/InternalChannelz$ServerSocketMap;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/InternalChannelz$ServerSocketMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/InternalInstrumented;

    .line 211
    .local v2, "serverSocket":Lio/grpc/InternalInstrumented;, "Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$SocketStats;>;"
    if-eqz v2, :cond_0

    .line 212
    return-object v2

    .line 214
    .end local v1    # "perServerSockets":Lio/grpc/InternalChannelz$ServerSocketMap;
    .end local v2    # "serverSocket":Lio/grpc/InternalInstrumented;, "Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$SocketStats;>;"
    :cond_0
    goto :goto_0

    .line 215
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static id(Lio/grpc/InternalWithLogId;)J
    .locals 2
    .param p0, "withLogId"    # Lio/grpc/InternalWithLogId;

    .line 1097
    invoke-interface {p0}, Lio/grpc/InternalWithLogId;->getLogId()Lio/grpc/InternalLogId;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/InternalLogId;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static instance()Lio/grpc/InternalChannelz;
    .locals 1

    .line 75
    sget-object v0, Lio/grpc/InternalChannelz;->INSTANCE:Lio/grpc/InternalChannelz;

    return-object v0
.end method

.method private static remove(Ljava/util/Map;Lio/grpc/InternalInstrumented;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/grpc/InternalInstrumented<",
            "*>;>(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 243
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;TT;>;"
    .local p1, "object":Lio/grpc/InternalInstrumented;, "TT;"
    invoke-static {p1}, Lio/grpc/InternalChannelz;->id(Lio/grpc/InternalWithLogId;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/InternalInstrumented;

    .line 244
    .local v0, "prev":Lio/grpc/InternalInstrumented;, "TT;"
    if-eqz v0, :cond_0

    .line 245
    return-void

    .line 244
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method


# virtual methods
.method public addClientSocket(Lio/grpc/InternalInstrumented;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p1, "socket":Lio/grpc/InternalInstrumented;, "Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$SocketStats;>;"
    iget-object v0, p0, Lio/grpc/InternalChannelz;->otherSockets:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, p1}, Lio/grpc/InternalChannelz;->add(Ljava/util/Map;Lio/grpc/InternalInstrumented;)V

    .line 98
    return-void
.end method

.method public addListenSocket(Lio/grpc/InternalInstrumented;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p1, "socket":Lio/grpc/InternalInstrumented;, "Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$SocketStats;>;"
    iget-object v0, p0, Lio/grpc/InternalChannelz;->otherSockets:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, p1}, Lio/grpc/InternalChannelz;->add(Ljava/util/Map;Lio/grpc/InternalInstrumented;)V

    .line 102
    return-void
.end method

.method public addRootChannel(Lio/grpc/InternalInstrumented;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$ChannelStats;",
            ">;)V"
        }
    .end annotation

    .line 92
    .local p1, "rootChannel":Lio/grpc/InternalInstrumented;, "Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$ChannelStats;>;"
    iget-object v0, p0, Lio/grpc/InternalChannelz;->rootChannels:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {v0, p1}, Lio/grpc/InternalChannelz;->add(Ljava/util/Map;Lio/grpc/InternalInstrumented;)V

    .line 93
    return-void
.end method

.method public addServer(Lio/grpc/InternalInstrumented;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$ServerStats;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p1, "server":Lio/grpc/InternalInstrumented;, "Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$ServerStats;>;"
    iget-object v0, p0, Lio/grpc/InternalChannelz;->perServerSockets:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Lio/grpc/InternalChannelz;->id(Lio/grpc/InternalWithLogId;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lio/grpc/InternalChannelz$ServerSocketMap;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lio/grpc/InternalChannelz$ServerSocketMap;-><init>(Lio/grpc/InternalChannelz$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/InternalChannelz$ServerSocketMap;

    .line 81
    .local v0, "prev":Lio/grpc/InternalChannelz$ServerSocketMap;
    if-nez v0, :cond_0

    .line 82
    iget-object v1, p0, Lio/grpc/InternalChannelz;->servers:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {v1, p1}, Lio/grpc/InternalChannelz;->add(Ljava/util/Map;Lio/grpc/InternalInstrumented;)V

    .line 83
    return-void

    .line 81
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public addServerSocket(Lio/grpc/InternalInstrumented;Lio/grpc/InternalInstrumented;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$ServerStats;",
            ">;",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p1, "server":Lio/grpc/InternalInstrumented;, "Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$ServerStats;>;"
    .local p2, "socket":Lio/grpc/InternalInstrumented;, "Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$SocketStats;>;"
    iget-object v0, p0, Lio/grpc/InternalChannelz;->perServerSockets:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Lio/grpc/InternalChannelz;->id(Lio/grpc/InternalWithLogId;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/InternalChannelz$ServerSocketMap;

    .line 108
    .local v0, "serverSockets":Lio/grpc/InternalChannelz$ServerSocketMap;
    if-eqz v0, :cond_0

    .line 109
    invoke-static {v0, p2}, Lio/grpc/InternalChannelz;->add(Ljava/util/Map;Lio/grpc/InternalInstrumented;)V

    .line 110
    return-void

    .line 108
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public addSubchannel(Lio/grpc/InternalInstrumented;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$ChannelStats;",
            ">;)V"
        }
    .end annotation

    .line 87
    .local p1, "subchannel":Lio/grpc/InternalInstrumented;, "Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$ChannelStats;>;"
    iget-object v0, p0, Lio/grpc/InternalChannelz;->subchannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, p1}, Lio/grpc/InternalChannelz;->add(Ljava/util/Map;Lio/grpc/InternalInstrumented;)V

    .line 88
    return-void
.end method

.method public containsClientSocket(Lio/grpc/InternalLogId;)Z
    .locals 1
    .param p1, "transportRef"    # Lio/grpc/InternalLogId;

    .line 234
    iget-object v0, p0, Lio/grpc/InternalChannelz;->otherSockets:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, p1}, Lio/grpc/InternalChannelz;->contains(Ljava/util/Map;Lio/grpc/InternalLogId;)Z

    move-result v0

    return v0
.end method

.method public containsServer(Lio/grpc/InternalLogId;)Z
    .locals 1
    .param p1, "serverRef"    # Lio/grpc/InternalLogId;

    .line 220
    iget-object v0, p0, Lio/grpc/InternalChannelz;->servers:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {v0, p1}, Lio/grpc/InternalChannelz;->contains(Ljava/util/Map;Lio/grpc/InternalLogId;)Z

    move-result v0

    return v0
.end method

.method public containsSubchannel(Lio/grpc/InternalLogId;)Z
    .locals 1
    .param p1, "subchannelRef"    # Lio/grpc/InternalLogId;

    .line 225
    iget-object v0, p0, Lio/grpc/InternalChannelz;->subchannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, p1}, Lio/grpc/InternalChannelz;->contains(Ljava/util/Map;Lio/grpc/InternalLogId;)Z

    move-result v0

    return v0
.end method

.method public getChannel(J)Lio/grpc/InternalInstrumented;
    .locals 2
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$ChannelStats;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 160
    iget-object v0, p0, Lio/grpc/InternalChannelz;->rootChannels:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/InternalInstrumented;

    return-object v0
.end method

.method public getRootChannel(J)Lio/grpc/InternalInstrumented;
    .locals 2
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$ChannelStats;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lio/grpc/InternalChannelz;->rootChannels:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/InternalInstrumented;

    return-object v0
.end method

.method public getRootChannels(JI)Lio/grpc/InternalChannelz$RootChannelList;
    .locals 4
    .param p1, "fromId"    # J
    .param p3, "maxPageSize"    # I

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, "channelList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$ChannelStats;>;>;"
    iget-object v1, p0, Lio/grpc/InternalChannelz;->rootChannels:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 149
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentNavigableMap;->tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 151
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$ChannelStats;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, p3, :cond_0

    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_0
    new-instance v2, Lio/grpc/InternalChannelz$RootChannelList;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v0, v3}, Lio/grpc/InternalChannelz$RootChannelList;-><init>(Ljava/util/List;Z)V

    return-object v2
.end method

.method public getServerSockets(JJI)Lio/grpc/InternalChannelz$ServerSocketsList;
    .locals 5
    .param p1, "serverId"    # J
    .param p3, "fromId"    # J
    .param p5, "maxPageSize"    # I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 185
    iget-object v0, p0, Lio/grpc/InternalChannelz;->perServerSockets:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/InternalChannelz$ServerSocketMap;

    .line 186
    .local v0, "serverSockets":Lio/grpc/InternalChannelz$ServerSocketMap;
    if-nez v0, :cond_0

    .line 187
    const/4 v1, 0x0

    return-object v1

    .line 189
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p5}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    .local v1, "socketList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/InternalWithLogId;>;"
    nop

    .line 191
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/InternalChannelz$ServerSocketMap;->tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentNavigableMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 192
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$SocketStats;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, p5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    :cond_1
    new-instance v3, Lio/grpc/InternalChannelz$ServerSocketsList;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v1, v4}, Lio/grpc/InternalChannelz$ServerSocketsList;-><init>(Ljava/util/List;Z)V

    return-object v3
.end method

.method public getServers(JI)Lio/grpc/InternalChannelz$ServerList;
    .locals 4
    .param p1, "fromId"    # J
    .param p3, "maxPageSize"    # I

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .local v0, "serverList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$ServerStats;>;>;"
    iget-object v1, p0, Lio/grpc/InternalChannelz;->servers:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 174
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentNavigableMap;->tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 176
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$ServerStats;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, p3, :cond_0

    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_0
    new-instance v2, Lio/grpc/InternalChannelz$ServerList;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v0, v3}, Lio/grpc/InternalChannelz$ServerList;-><init>(Ljava/util/List;Z)V

    return-object v2
.end method

.method public getSocket(J)Lio/grpc/InternalInstrumented;
    .locals 2
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 201
    iget-object v0, p0, Lio/grpc/InternalChannelz;->otherSockets:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/InternalInstrumented;

    .line 202
    .local v0, "clientSocket":Lio/grpc/InternalInstrumented;, "Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$SocketStats;>;"
    if-eqz v0, :cond_0

    .line 203
    return-object v0

    .line 205
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/grpc/InternalChannelz;->getServerSocket(J)Lio/grpc/InternalInstrumented;

    move-result-object v1

    return-object v1
.end method

.method public getSubchannel(J)Lio/grpc/InternalInstrumented;
    .locals 2
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$ChannelStats;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 166
    iget-object v0, p0, Lio/grpc/InternalChannelz;->subchannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/InternalInstrumented;

    return-object v0
.end method

.method public removeClientSocket(Lio/grpc/InternalInstrumented;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p1, "socket":Lio/grpc/InternalInstrumented;, "Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$SocketStats;>;"
    iget-object v0, p0, Lio/grpc/InternalChannelz;->otherSockets:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, p1}, Lio/grpc/InternalChannelz;->remove(Ljava/util/Map;Lio/grpc/InternalInstrumented;)V

    .line 130
    return-void
.end method

.method public removeListenSocket(Lio/grpc/InternalInstrumented;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;)V"
        }
    .end annotation

    .line 133
    .local p1, "socket":Lio/grpc/InternalInstrumented;, "Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$SocketStats;>;"
    iget-object v0, p0, Lio/grpc/InternalChannelz;->otherSockets:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, p1}, Lio/grpc/InternalChannelz;->remove(Ljava/util/Map;Lio/grpc/InternalInstrumented;)V

    .line 134
    return-void
.end method

.method public removeRootChannel(Lio/grpc/InternalInstrumented;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$ChannelStats;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p1, "channel":Lio/grpc/InternalInstrumented;, "Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$ChannelStats;>;"
    iget-object v0, p0, Lio/grpc/InternalChannelz;->rootChannels:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {v0, p1}, Lio/grpc/InternalChannelz;->remove(Ljava/util/Map;Lio/grpc/InternalInstrumented;)V

    .line 126
    return-void
.end method

.method public removeServer(Lio/grpc/InternalInstrumented;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$ServerStats;",
            ">;)V"
        }
    .end annotation

    .line 114
    .local p1, "server":Lio/grpc/InternalInstrumented;, "Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$ServerStats;>;"
    iget-object v0, p0, Lio/grpc/InternalChannelz;->servers:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {v0, p1}, Lio/grpc/InternalChannelz;->remove(Ljava/util/Map;Lio/grpc/InternalInstrumented;)V

    .line 115
    iget-object v0, p0, Lio/grpc/InternalChannelz;->perServerSockets:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Lio/grpc/InternalChannelz;->id(Lio/grpc/InternalWithLogId;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/InternalChannelz$ServerSocketMap;

    .line 116
    .local v0, "prev":Lio/grpc/InternalChannelz$ServerSocketMap;
    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0}, Lio/grpc/InternalChannelz$ServerSocketMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    return-void

    .line 117
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 116
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public removeServerSocket(Lio/grpc/InternalInstrumented;Lio/grpc/InternalInstrumented;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$ServerStats;",
            ">;",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$SocketStats;",
            ">;)V"
        }
    .end annotation

    .line 139
    .local p1, "server":Lio/grpc/InternalInstrumented;, "Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$ServerStats;>;"
    .local p2, "socket":Lio/grpc/InternalInstrumented;, "Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$SocketStats;>;"
    iget-object v0, p0, Lio/grpc/InternalChannelz;->perServerSockets:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Lio/grpc/InternalChannelz;->id(Lio/grpc/InternalWithLogId;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/InternalChannelz$ServerSocketMap;

    .line 140
    .local v0, "socketsOfServer":Lio/grpc/InternalChannelz$ServerSocketMap;
    if-eqz v0, :cond_0

    .line 141
    invoke-static {v0, p2}, Lio/grpc/InternalChannelz;->remove(Ljava/util/Map;Lio/grpc/InternalInstrumented;)V

    .line 142
    return-void

    .line 140
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public removeSubchannel(Lio/grpc/InternalInstrumented;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/InternalInstrumented<",
            "Lio/grpc/InternalChannelz$ChannelStats;",
            ">;)V"
        }
    .end annotation

    .line 121
    .local p1, "subchannel":Lio/grpc/InternalInstrumented;, "Lio/grpc/InternalInstrumented<Lio/grpc/InternalChannelz$ChannelStats;>;"
    iget-object v0, p0, Lio/grpc/InternalChannelz;->subchannels:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, p1}, Lio/grpc/InternalChannelz;->remove(Ljava/util/Map;Lio/grpc/InternalInstrumented;)V

    .line 122
    return-void
.end method
