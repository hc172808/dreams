.class Lio/grpc/okhttp/OkHttpFrameLogger;
.super Ljava/lang/Object;
.source "OkHttpFrameLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;,
        Lio/grpc/okhttp/OkHttpFrameLogger$Direction;
    }
.end annotation


# static fields
.field private static final BUFFER_LENGTH_THRESHOLD:I = 0x40


# instance fields
.field private final level:Ljava/util/logging/Level;

.field private final logger:Ljava/util/logging/Logger;


# direct methods
.method constructor <init>(Ljava/util/logging/Level;Ljava/lang/Class;)V
    .locals 1
    .param p1, "level"    # Ljava/util/logging/Level;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Level;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 38
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/grpc/okhttp/OkHttpFrameLogger;-><init>(Ljava/util/logging/Level;Ljava/util/logging/Logger;)V

    .line 39
    return-void
.end method

.method constructor <init>(Ljava/util/logging/Level;Ljava/util/logging/Logger;)V
    .locals 1
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "logger"    # Ljava/util/logging/Logger;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "level"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Level;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->level:Ljava/util/logging/Level;

    .line 44
    const-string v0, "logger"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Logger;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->logger:Ljava/util/logging/Logger;

    .line 45
    return-void
.end method

.method private isEnabled()Z
    .locals 2

    .line 70
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->level:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method private static toString(Lio/grpc/okhttp/internal/framed/Settings;)Ljava/lang/String;
    .locals 6
    .param p0, "settings"    # Lio/grpc/okhttp/internal/framed/Settings;

    .line 48
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 49
    .local v0, "map":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;Ljava/lang/Integer;>;"
    invoke-static {}, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->values()[Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 51
    .local v4, "p":Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;
    invoke-virtual {v4}, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->getBit()I

    move-result v5

    invoke-virtual {p0, v5}, Lio/grpc/okhttp/internal/framed/Settings;->isSet(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    invoke-virtual {v4}, Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;->getBit()I

    move-result v5

    invoke-virtual {p0, v5}, Lio/grpc/okhttp/internal/framed/Settings;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .end local v4    # "p":Lio/grpc/okhttp/OkHttpFrameLogger$SettingParams;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v0}, Ljava/util/EnumMap;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static toString(Lokio/Buffer;)Ljava/lang/String;
    .locals 5
    .param p0, "buf"    # Lokio/Buffer;

    .line 59
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x40

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 61
    invoke-virtual {p0}, Lokio/Buffer;->snapshot()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 66
    .local v1, "length":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method logData(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;ILokio/Buffer;IZ)V
    .locals 4
    .param p1, "direction"    # Lio/grpc/okhttp/OkHttpFrameLogger$Direction;
    .param p2, "streamId"    # I
    .param p3, "data"    # Lokio/Buffer;
    .param p4, "length"    # I
    .param p5, "endStream"    # Z

    .line 74
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpFrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->level:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " DATA: streamId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " endStream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {p3}, Lio/grpc/okhttp/OkHttpFrameLogger;->toString(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method

.method logGoAway(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;ILio/grpc/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V
    .locals 4
    .param p1, "direction"    # Lio/grpc/okhttp/OkHttpFrameLogger$Direction;
    .param p2, "lastStreamId"    # I
    .param p3, "errorCode"    # Lio/grpc/okhttp/internal/framed/ErrorCode;
    .param p4, "debugData"    # Lokio/ByteString;

    .line 167
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpFrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->level:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " GO_AWAY: lastStreamId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p4}, Lokio/ByteString;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 178
    invoke-virtual {v3, p4}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v3

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpFrameLogger;->toString(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 180
    :cond_0
    return-void
.end method

.method logHeaders(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;ILjava/util/List;Z)V
    .locals 4
    .param p1, "direction"    # Lio/grpc/okhttp/OkHttpFrameLogger$Direction;
    .param p2, "streamId"    # I
    .param p4, "endStream"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/okhttp/OkHttpFrameLogger$Direction;",
            "I",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;Z)V"
        }
    .end annotation

    .line 90
    .local p3, "headers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpFrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->level:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " HEADERS: streamId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " headers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " endStream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void
.end method

.method logPing(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;J)V
    .locals 4
    .param p1, "direction"    # Lio/grpc/okhttp/OkHttpFrameLogger$Direction;
    .param p2, "data"    # J

    .line 140
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpFrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->level:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " PING: ack=false bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 143
    :cond_0
    return-void
.end method

.method logPingAck(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;J)V
    .locals 4
    .param p1, "direction"    # Lio/grpc/okhttp/OkHttpFrameLogger$Direction;
    .param p2, "data"    # J

    .line 146
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpFrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->level:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " PING: ack=true bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 149
    :cond_0
    return-void
.end method

.method public logPriority(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;IIIZ)V
    .locals 4
    .param p1, "direction"    # Lio/grpc/okhttp/OkHttpFrameLogger$Direction;
    .param p2, "streamId"    # I
    .param p3, "streamDependency"    # I
    .param p4, "weight"    # I
    .param p5, "exclusive"    # Z

    .line 105
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpFrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->level:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " PRIORITY: streamId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " streamDependency="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " weight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " exclusive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method logPushPromise(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;IILjava/util/List;)V
    .locals 4
    .param p1, "direction"    # Lio/grpc/okhttp/OkHttpFrameLogger$Direction;
    .param p2, "streamId"    # I
    .param p3, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/okhttp/OkHttpFrameLogger$Direction;",
            "II",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .line 153
    .local p4, "headers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpFrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->level:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " PUSH_PROMISE: streamId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " promisedStreamId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " headers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 164
    :cond_0
    return-void
.end method

.method logRstStream(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;ILio/grpc/okhttp/internal/framed/ErrorCode;)V
    .locals 4
    .param p1, "direction"    # Lio/grpc/okhttp/OkHttpFrameLogger$Direction;
    .param p2, "streamId"    # I
    .param p3, "errorCode"    # Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 121
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpFrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->level:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " RST_STREAM: streamId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method logSettings(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;Lio/grpc/okhttp/internal/framed/Settings;)V
    .locals 4
    .param p1, "direction"    # Lio/grpc/okhttp/OkHttpFrameLogger$Direction;
    .param p2, "settings"    # Lio/grpc/okhttp/internal/framed/Settings;

    .line 134
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpFrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->level:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " SETTINGS: ack=false settings="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpFrameLogger;->toString(Lio/grpc/okhttp/internal/framed/Settings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 137
    :cond_0
    return-void
.end method

.method logSettingsAck(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;)V
    .locals 4
    .param p1, "direction"    # Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    .line 128
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpFrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->level:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " SETTINGS: ack=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method

.method logWindowsUpdate(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;IJ)V
    .locals 4
    .param p1, "direction"    # Lio/grpc/okhttp/OkHttpFrameLogger$Direction;
    .param p2, "streamId"    # I
    .param p3, "windowSizeIncrement"    # J

    .line 183
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpFrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpFrameLogger;->level:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " WINDOW_UPDATE: streamId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " windowSizeIncrement="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 192
    :cond_0
    return-void
.end method
