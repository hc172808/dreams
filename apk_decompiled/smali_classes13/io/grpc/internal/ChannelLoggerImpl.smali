.class final Lio/grpc/internal/ChannelLoggerImpl;
.super Lio/grpc/ChannelLogger;
.source "ChannelLoggerImpl.java"


# instance fields
.field private final time:Lio/grpc/internal/TimeProvider;

.field private final tracer:Lio/grpc/internal/ChannelTracer;


# direct methods
.method constructor <init>(Lio/grpc/internal/ChannelTracer;Lio/grpc/internal/TimeProvider;)V
    .locals 1
    .param p1, "tracer"    # Lio/grpc/internal/ChannelTracer;
    .param p2, "time"    # Lio/grpc/internal/TimeProvider;

    .line 32
    invoke-direct {p0}, Lio/grpc/ChannelLogger;-><init>()V

    .line 33
    const-string v0, "tracer"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ChannelTracer;

    iput-object v0, p0, Lio/grpc/internal/ChannelLoggerImpl;->tracer:Lio/grpc/internal/ChannelTracer;

    .line 34
    const-string v0, "time"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/TimeProvider;

    iput-object v0, p0, Lio/grpc/internal/ChannelLoggerImpl;->time:Lio/grpc/internal/TimeProvider;

    .line 35
    return-void
.end method

.method private isTraceable(Lio/grpc/ChannelLogger$ChannelLogLevel;)Z
    .locals 1
    .param p1, "level"    # Lio/grpc/ChannelLogger$ChannelLogLevel;

    .line 72
    sget-object v0, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/ChannelLoggerImpl;->tracer:Lio/grpc/internal/ChannelTracer;

    invoke-virtual {v0}, Lio/grpc/internal/ChannelTracer;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static logOnly(Lio/grpc/InternalLogId;Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V
    .locals 2
    .param p0, "logId"    # Lio/grpc/InternalLogId;
    .param p1, "level"    # Lio/grpc/ChannelLogger$ChannelLogLevel;
    .param p2, "msg"    # Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lio/grpc/internal/ChannelLoggerImpl;->toJavaLogLevel(Lio/grpc/ChannelLogger$ChannelLogLevel;)Ljava/util/logging/Level;

    move-result-object v0

    .line 57
    .local v0, "javaLogLevel":Ljava/util/logging/Level;
    sget-object v1, Lio/grpc/internal/ChannelTracer;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-static {p0, v0, p2}, Lio/grpc/internal/ChannelTracer;->logOnly(Lio/grpc/InternalLogId;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method static varargs logOnly(Lio/grpc/InternalLogId;Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "logId"    # Lio/grpc/InternalLogId;
    .param p1, "level"    # Lio/grpc/ChannelLogger$ChannelLogLevel;
    .param p2, "messageFormat"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 64
    invoke-static {p1}, Lio/grpc/internal/ChannelLoggerImpl;->toJavaLogLevel(Lio/grpc/ChannelLogger$ChannelLogLevel;)Ljava/util/logging/Level;

    move-result-object v0

    .line 65
    .local v0, "javaLogLevel":Ljava/util/logging/Level;
    sget-object v1, Lio/grpc/internal/ChannelTracer;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "msg":Ljava/lang/String;
    invoke-static {p0, v0, v1}, Lio/grpc/internal/ChannelTracer;->logOnly(Lio/grpc/InternalLogId;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 69
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static toJavaLogLevel(Lio/grpc/ChannelLogger$ChannelLogLevel;)Ljava/util/logging/Level;
    .locals 2
    .param p0, "level"    # Lio/grpc/ChannelLogger$ChannelLogLevel;

    .line 98
    sget-object v0, Lio/grpc/internal/ChannelLoggerImpl$1;->$SwitchMap$io$grpc$ChannelLogger$ChannelLogLevel:[I

    invoke-virtual {p0}, Lio/grpc/ChannelLogger$ChannelLogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 104
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    return-object v0

    .line 102
    :pswitch_0
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    return-object v0

    .line 100
    :pswitch_1
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toTracerSeverity(Lio/grpc/ChannelLogger$ChannelLogLevel;)Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;
    .locals 2
    .param p0, "level"    # Lio/grpc/ChannelLogger$ChannelLogLevel;

    .line 87
    sget-object v0, Lio/grpc/internal/ChannelLoggerImpl$1;->$SwitchMap$io$grpc$ChannelLogger$ChannelLogLevel:[I

    invoke-virtual {p0}, Lio/grpc/ChannelLogger$ChannelLogLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 93
    sget-object v0, Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;->CT_INFO:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    return-object v0

    .line 91
    :pswitch_0
    sget-object v0, Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;->CT_WARNING:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    return-object v0

    .line 89
    :pswitch_1
    sget-object v0, Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;->CT_ERROR:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private trace(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V
    .locals 4
    .param p1, "level"    # Lio/grpc/ChannelLogger$ChannelLogLevel;
    .param p2, "msg"    # Ljava/lang/String;

    .line 76
    sget-object v0, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    if-ne p1, v0, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ChannelLoggerImpl;->tracer:Lio/grpc/internal/ChannelTracer;

    new-instance v1, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    invoke-direct {v1}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;-><init>()V

    .line 80
    invoke-virtual {v1, p2}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setDescription(Ljava/lang/String;)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v1

    .line 81
    invoke-static {p1}, Lio/grpc/internal/ChannelLoggerImpl;->toTracerSeverity(Lio/grpc/ChannelLogger$ChannelLogLevel;)Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setSeverity(Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/internal/ChannelLoggerImpl;->time:Lio/grpc/internal/TimeProvider;

    .line 82
    invoke-interface {v2}, Lio/grpc/internal/TimeProvider;->currentTimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->setTimestampNanos(J)Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Lio/grpc/InternalChannelz$ChannelTrace$Event$Builder;->build()Lio/grpc/InternalChannelz$ChannelTrace$Event;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Lio/grpc/internal/ChannelTracer;->traceOnly(Lio/grpc/InternalChannelz$ChannelTrace$Event;)V

    .line 84
    return-void
.end method


# virtual methods
.method public log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V
    .locals 1
    .param p1, "level"    # Lio/grpc/ChannelLogger$ChannelLogLevel;
    .param p2, "msg"    # Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lio/grpc/internal/ChannelLoggerImpl;->tracer:Lio/grpc/internal/ChannelTracer;

    invoke-virtual {v0}, Lio/grpc/internal/ChannelTracer;->getLogId()Lio/grpc/InternalLogId;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lio/grpc/internal/ChannelLoggerImpl;->logOnly(Lio/grpc/InternalLogId;Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p1}, Lio/grpc/internal/ChannelLoggerImpl;->isTraceable(Lio/grpc/ChannelLogger$ChannelLogLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/ChannelLoggerImpl;->trace(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method

.method public varargs log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "level"    # Lio/grpc/ChannelLogger$ChannelLogLevel;
    .param p2, "messageFormat"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "msg":Ljava/lang/String;
    invoke-static {p1}, Lio/grpc/internal/ChannelLoggerImpl;->toJavaLogLevel(Lio/grpc/ChannelLogger$ChannelLogLevel;)Ljava/util/logging/Level;

    move-result-object v1

    .line 49
    .local v1, "javaLogLevel":Ljava/util/logging/Level;
    invoke-direct {p0, p1}, Lio/grpc/internal/ChannelLoggerImpl;->isTraceable(Lio/grpc/ChannelLogger$ChannelLogLevel;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lio/grpc/internal/ChannelTracer;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    :cond_0
    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    :cond_1
    invoke-virtual {p0, p1, v0}, Lio/grpc/internal/ChannelLoggerImpl;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 53
    return-void
.end method
