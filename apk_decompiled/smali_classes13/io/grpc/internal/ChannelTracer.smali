.class final Lio/grpc/internal/ChannelTracer;
.super Ljava/lang/Object;
.source "ChannelTracer.java"


# static fields
.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final channelCreationTimeNanos:J

.field private final events:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/grpc/InternalChannelz$ChannelTrace$Event;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private eventsLogged:I

.field private final lock:Ljava/lang/Object;

.field private final logId:Lio/grpc/InternalLogId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lio/grpc/ChannelLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ChannelTracer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lio/grpc/InternalLogId;IJLjava/lang/String;)V
    .locals 3
    .param p1, "logId"    # Lio/grpc/InternalLogId;
    .param p2, "maxEvents"    # I
    .param p3, "channelCreationTimeNanos"    # J
    .param p5, "description"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ChannelTracer;->lock:Ljava/lang/Object;

    .line 64
    const-string v0, "description"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v0, "logId"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/InternalLogId;

    iput-object v0, p0, Lio/grpc/internal/ChannelTracer;->logId:Lio/grpc/InternalLogId;

    .line 66
    if-lez p2, :cond_0

    .line 67
    new-instance v0, Lio/grpc/internal/ChannelTracer$1;

    invoke-direct {v0, p0, p2}, Lio/grpc/internal/ChannelTracer$1;-><init>(Lio/grpc/internal/ChannelTracer;I)V

    iput-object v0, p0, Lio/grpc/internal/ChannelTracer;->events:Ljava/util/Collection;

    goto :goto_0

    .line 79
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/ChannelTracer;->events:Ljava/util/Collection;

    .line 81
    :goto_0
    iput-wide p3, p0, Lio/grpc/internal/ChannelTracer;->channelCreationTimeNanos:J

    .line 83
    new-instance v0, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    invoke-direct {v0}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setDescription(Ljava/lang/String;)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v0

    sget-object v1, Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;->CT_INFO:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    .line 85
    invoke-virtual {v0, v1}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setSeverity(Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0, p3, p4}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setTimestampNanos(J)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->build()Lio/grpc/InternalChannelz$ChannelTrace$Event;

    move-result-object v0

    .line 83
    invoke-virtual {p0, v0}, Lio/grpc/internal/ChannelTracer;->reportEvent(Lio/grpc/InternalChannelz$ChannelTrace$Event;)V

    .line 91
    return-void
.end method

.method static synthetic access$008(Lio/grpc/internal/ChannelTracer;)I
    .locals 2
    .param p0, "x0"    # Lio/grpc/internal/ChannelTracer;

    .line 39
    iget v0, p0, Lio/grpc/internal/ChannelTracer;->eventsLogged:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/grpc/internal/ChannelTracer;->eventsLogged:I

    return v0
.end method

.method static logOnly(Lio/grpc/InternalLogId;Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 4
    .param p0, "logId"    # Lio/grpc/InternalLogId;
    .param p1, "logLevel"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;

    .line 124
    sget-object v0, Lio/grpc/internal/ChannelTracer;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    new-instance v1, Ljava/util/logging/LogRecord;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 127
    .local v1, "lr":Ljava/util/logging/LogRecord;
    invoke-virtual {v0}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 130
    const-string v2, "log"

    invoke-virtual {v1, v2}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 133
    .end local v1    # "lr":Ljava/util/logging/LogRecord;
    :cond_0
    return-void
.end method


# virtual methods
.method getLogId()Lio/grpc/InternalLogId;
    .locals 1

    .line 136
    iget-object v0, p0, Lio/grpc/internal/ChannelTracer;->logId:Lio/grpc/InternalLogId;

    return-object v0
.end method

.method isTraceEnabled()Z
    .locals 2

    .line 110
    iget-object v0, p0, Lio/grpc/internal/ChannelTracer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/ChannelTracer;->events:Ljava/util/Collection;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method reportEvent(Lio/grpc/InternalChannelz$ChannelTrace$Event;)V
    .locals 3
    .param p1, "event"    # Lio/grpc/InternalChannelz$ChannelTrace$Event;

    .line 95
    sget-object v0, Lio/grpc/internal/ChannelTracer$2;->$SwitchMap$io$grpc$InternalChannelz$ChannelTrace$Event$Severity:[I

    iget-object v1, p1, Lio/grpc/InternalChannelz$ChannelTrace$Event;->severity:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    invoke-virtual {v1}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .local v0, "logLevel":Ljava/util/logging/Level;
    goto :goto_0

    .line 100
    .end local v0    # "logLevel":Ljava/util/logging/Level;
    :pswitch_0
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 101
    .restart local v0    # "logLevel":Ljava/util/logging/Level;
    goto :goto_0

    .line 97
    .end local v0    # "logLevel":Ljava/util/logging/Level;
    :pswitch_1
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 98
    .restart local v0    # "logLevel":Ljava/util/logging/Level;
    nop

    .line 105
    :goto_0
    invoke-virtual {p0, p1}, Lio/grpc/internal/ChannelTracer;->traceOnly(Lio/grpc/InternalChannelz$ChannelTrace$Event;)V

    .line 106
    iget-object v1, p0, Lio/grpc/internal/ChannelTracer;->logId:Lio/grpc/InternalLogId;

    iget-object v2, p1, Lio/grpc/InternalChannelz$ChannelTrace$Event;->description:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lio/grpc/internal/ChannelTracer;->logOnly(Lio/grpc/InternalLogId;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 107
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method traceOnly(Lio/grpc/InternalChannelz$ChannelTrace$Event;)V
    .locals 2
    .param p1, "event"    # Lio/grpc/InternalChannelz$ChannelTrace$Event;

    .line 116
    iget-object v0, p0, Lio/grpc/internal/ChannelTracer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/ChannelTracer;->events:Ljava/util/Collection;

    if-eqz v1, :cond_0

    .line 118
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    monitor-exit v0

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateBuilder(Lio/grpc/InternalChannelz$ChannelStats$Builder;)V
    .locals 5
    .param p1, "builder"    # Lio/grpc/InternalChannelz$ChannelStats$Builder;

    .line 142
    iget-object v0, p0, Lio/grpc/internal/ChannelTracer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/ChannelTracer;->events:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 144
    monitor-exit v0

    return-void

    .line 146
    :cond_0
    iget v1, p0, Lio/grpc/internal/ChannelTracer;->eventsLogged:I

    .line 147
    .local v1, "eventsLoggedSnapshot":I
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lio/grpc/internal/ChannelTracer;->events:Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 148
    .local v2, "eventsSnapshot":Ljava/util/List;, "Ljava/util/List<Lio/grpc/InternalChannelz$ChannelTrace$Event;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    new-instance v0, Lio/grpc/InternalChannelz$ChannelTrace$Builder;

    invoke-direct {v0}, Lio/grpc/InternalChannelz$ChannelTrace$Builder;-><init>()V

    int-to-long v3, v1

    .line 150
    invoke-virtual {v0, v3, v4}, Lio/grpc/InternalChannelz$ChannelTrace$Builder;->setNumEventsLogged(J)Lio/grpc/InternalChannelz$ChannelTrace$Builder;

    move-result-object v0

    iget-wide v3, p0, Lio/grpc/internal/ChannelTracer;->channelCreationTimeNanos:J

    .line 151
    invoke-virtual {v0, v3, v4}, Lio/grpc/InternalChannelz$ChannelTrace$Builder;->setCreationTimeNanos(J)Lio/grpc/InternalChannelz$ChannelTrace$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0, v2}, Lio/grpc/InternalChannelz$ChannelTrace$Builder;->setEvents(Ljava/util/List;)Lio/grpc/InternalChannelz$ChannelTrace$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lio/grpc/InternalChannelz$ChannelTrace$Builder;->build()Lio/grpc/InternalChannelz$ChannelTrace;

    move-result-object v0

    .line 149
    invoke-virtual {p1, v0}, Lio/grpc/InternalChannelz$ChannelStats$Builder;->setChannelTrace(Lio/grpc/InternalChannelz$ChannelTrace;)Lio/grpc/InternalChannelz$ChannelStats$Builder;

    .line 154
    return-void

    .line 148
    .end local v1    # "eventsLoggedSnapshot":I
    .end local v2    # "eventsSnapshot":Ljava/util/List;, "Ljava/util/List<Lio/grpc/InternalChannelz$ChannelTrace$Event;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
