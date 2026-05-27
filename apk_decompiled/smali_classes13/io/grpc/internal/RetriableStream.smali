.class abstract Lio/grpc/internal/RetriableStream;
.super Ljava/lang/Object;
.source "RetriableStream.java"

# interfaces
.implements Lio/grpc/internal/ClientStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/RetriableStream$FutureCanceller;,
        Lio/grpc/internal/RetriableStream$RetryPlan;,
        Lio/grpc/internal/RetriableStream$Throttle;,
        Lio/grpc/internal/RetriableStream$ChannelBufferMeter;,
        Lio/grpc/internal/RetriableStream$BufferSizeTracer;,
        Lio/grpc/internal/RetriableStream$Substream;,
        Lio/grpc/internal/RetriableStream$State;,
        Lio/grpc/internal/RetriableStream$Sublistener;,
        Lio/grpc/internal/RetriableStream$BufferEntry;,
        Lio/grpc/internal/RetriableStream$HedgingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/grpc/internal/ClientStream;"
    }
.end annotation


# static fields
.field private static final CANCELLED_BECAUSE_COMMITTED:Lio/grpc/Status;

.field static final GRPC_PREVIOUS_RPC_ATTEMPTS:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final GRPC_RETRY_PUSHBACK_MS:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static random:Ljava/util/Random;


# instance fields
.field private final callExecutor:Ljava/util/concurrent/Executor;

.field private final channelBufferLimit:J

.field private final channelBufferUsed:Lio/grpc/internal/RetriableStream$ChannelBufferMeter;

.field private final closedSubstreamsInsight:Lio/grpc/internal/InsightBuilder;

.field private final headers:Lio/grpc/Metadata;

.field private hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

.field private final hedgingPolicyProvider:Lio/grpc/internal/HedgingPolicy$Provider;

.field private isHedging:Z

.field private final lock:Ljava/lang/Object;

.field private masterListener:Lio/grpc/internal/ClientStreamListener;

.field private final method:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "TReqT;*>;"
        }
    .end annotation
.end field

.field private nextBackoffIntervalNanos:J

.field private final noMoreTransparentRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final perRpcBufferLimit:J

.field private perRpcBufferUsed:J

.field private retryPolicy:Lio/grpc/internal/RetryPolicy;

.field private final retryPolicyProvider:Lio/grpc/internal/RetryPolicy$Provider;

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private scheduledHedging:Lio/grpc/internal/RetriableStream$FutureCanceller;

.field private scheduledRetry:Lio/grpc/internal/RetriableStream$FutureCanceller;

.field private volatile state:Lio/grpc/internal/RetriableStream$State;

.field private final throttle:Lio/grpc/internal/RetriableStream$Throttle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 54
    const-string v1, "grpc-previous-rpc-attempts"

    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/RetriableStream;->GRPC_PREVIOUS_RPC_ATTEMPTS:Lio/grpc/Metadata$Key;

    .line 57
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 58
    const-string v1, "grpc-retry-pushback-ms"

    invoke-static {v1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/RetriableStream;->GRPC_RETRY_PUSHBACK_MS:Lio/grpc/Metadata$Key;

    .line 60
    sget-object v0, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    .line 61
    const-string v1, "Stream thrown away because RetriableStream committed"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/RetriableStream;->CANCELLED_BECAUSE_COMMITTED:Lio/grpc/Status;

    .line 690
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lio/grpc/internal/RetriableStream;->random:Ljava/util/Random;

    return-void
.end method

.method constructor <init>(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/internal/RetriableStream$ChannelBufferMeter;JJLjava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/RetryPolicy$Provider;Lio/grpc/internal/HedgingPolicy$Provider;Lio/grpc/internal/RetriableStream$Throttle;)V
    .locals 13
    .param p2, "headers"    # Lio/grpc/Metadata;
    .param p3, "channelBufferUsed"    # Lio/grpc/internal/RetriableStream$ChannelBufferMeter;
    .param p4, "perRpcBufferLimit"    # J
    .param p6, "channelBufferLimit"    # J
    .param p8, "callExecutor"    # Ljava/util/concurrent/Executor;
    .param p9, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p10, "retryPolicyProvider"    # Lio/grpc/internal/RetryPolicy$Provider;
    .param p11, "hedgingPolicyProvider"    # Lio/grpc/internal/HedgingPolicy$Provider;
    .param p12, "throttle"    # Lio/grpc/internal/RetriableStream$Throttle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;*>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/internal/RetriableStream$ChannelBufferMeter;",
            "JJ",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lio/grpc/internal/RetryPolicy$Provider;",
            "Lio/grpc/internal/HedgingPolicy$Provider;",
            "Lio/grpc/internal/RetriableStream$Throttle;",
            ")V"
        }
    .end annotation

    .line 111
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;*>;"
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    .line 82
    new-instance v1, Lio/grpc/internal/InsightBuilder;

    invoke-direct {v1}, Lio/grpc/internal/InsightBuilder;-><init>()V

    iput-object v1, v0, Lio/grpc/internal/RetriableStream;->closedSubstreamsInsight:Lio/grpc/internal/InsightBuilder;

    .line 85
    new-instance v1, Lio/grpc/internal/RetriableStream$State;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lio/grpc/internal/RetriableStream$State;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/RetriableStream$Substream;ZZZI)V

    iput-object v1, v0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    .line 92
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, v0, Lio/grpc/internal/RetriableStream;->noMoreTransparentRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    move-object v1, p1

    iput-object v1, v0, Lio/grpc/internal/RetriableStream;->method:Lio/grpc/MethodDescriptor;

    .line 113
    move-object/from16 v2, p3

    iput-object v2, v0, Lio/grpc/internal/RetriableStream;->channelBufferUsed:Lio/grpc/internal/RetriableStream$ChannelBufferMeter;

    .line 114
    move-wide/from16 v3, p4

    iput-wide v3, v0, Lio/grpc/internal/RetriableStream;->perRpcBufferLimit:J

    .line 115
    move-wide/from16 v5, p6

    iput-wide v5, v0, Lio/grpc/internal/RetriableStream;->channelBufferLimit:J

    .line 116
    move-object/from16 v7, p8

    iput-object v7, v0, Lio/grpc/internal/RetriableStream;->callExecutor:Ljava/util/concurrent/Executor;

    .line 117
    move-object/from16 v8, p9

    iput-object v8, v0, Lio/grpc/internal/RetriableStream;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 118
    move-object v9, p2

    iput-object v9, v0, Lio/grpc/internal/RetriableStream;->headers:Lio/grpc/Metadata;

    .line 119
    const-string v10, "retryPolicyProvider"

    move-object/from16 v11, p10

    invoke-static {v11, v10}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/grpc/internal/RetryPolicy$Provider;

    iput-object v10, v0, Lio/grpc/internal/RetriableStream;->retryPolicyProvider:Lio/grpc/internal/RetryPolicy$Provider;

    .line 120
    const-string v10, "hedgingPolicyProvider"

    move-object/from16 v12, p11

    invoke-static {v12, v10}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/grpc/internal/HedgingPolicy$Provider;

    iput-object v10, v0, Lio/grpc/internal/RetriableStream;->hedgingPolicyProvider:Lio/grpc/internal/HedgingPolicy$Provider;

    .line 121
    move-object/from16 v10, p12

    iput-object v10, v0, Lio/grpc/internal/RetriableStream;->throttle:Lio/grpc/internal/RetriableStream$Throttle;

    .line 122
    return-void
.end method

.method static synthetic access$000()Lio/grpc/Status;
    .locals 1

    .line 51
    sget-object v0, Lio/grpc/internal/RetriableStream;->CANCELLED_BECAUSE_COMMITTED:Lio/grpc/Status;

    return-object v0
.end method

.method static synthetic access$100(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 51
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    return-object v0
.end method

.method static synthetic access$1000(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 51
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->callExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$102(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$State;)Lio/grpc/internal/RetriableStream$State;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;
    .param p1, "x1"    # Lio/grpc/internal/RetriableStream$State;

    .line 51
    iput-object p1, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    return-object p1
.end method

.method static synthetic access$1100(Lio/grpc/internal/RetriableStream;)Lio/grpc/MethodDescriptor;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 51
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->method:Lio/grpc/MethodDescriptor;

    return-object v0
.end method

.method static synthetic access$1200(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;
    .param p1, "x1"    # Lio/grpc/internal/RetriableStream$Substream;

    .line 51
    invoke-direct {p0, p1}, Lio/grpc/internal/RetriableStream;->commitAndRun(Lio/grpc/internal/RetriableStream$Substream;)V

    return-void
.end method

.method static synthetic access$1300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/ClientStreamListener;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 51
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->masterListener:Lio/grpc/internal/ClientStreamListener;

    return-object v0
.end method

.method static synthetic access$1400(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/InsightBuilder;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 51
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->closedSubstreamsInsight:Lio/grpc/internal/InsightBuilder;

    return-object v0
.end method

.method static synthetic access$1500(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 51
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->noMoreTransparentRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1600(Lio/grpc/internal/RetriableStream;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 51
    iget-boolean v0, p0, Lio/grpc/internal/RetriableStream;->isHedging:Z

    return v0
.end method

.method static synthetic access$1700(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetryPolicy;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 51
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->retryPolicy:Lio/grpc/internal/RetryPolicy;

    return-object v0
.end method

.method static synthetic access$1702(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetryPolicy;)Lio/grpc/internal/RetryPolicy;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;
    .param p1, "x1"    # Lio/grpc/internal/RetryPolicy;

    .line 51
    iput-object p1, p0, Lio/grpc/internal/RetriableStream;->retryPolicy:Lio/grpc/internal/RetryPolicy;

    return-object p1
.end method

.method static synthetic access$1800(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetryPolicy$Provider;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 51
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->retryPolicyProvider:Lio/grpc/internal/RetryPolicy$Provider;

    return-object v0
.end method

.method static synthetic access$1900(Lio/grpc/internal/RetriableStream;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 51
    invoke-direct {p0}, Lio/grpc/internal/RetriableStream;->freezeHedging()V

    return-void
.end method

.method static synthetic access$200(Lio/grpc/internal/RetriableStream;I)Lio/grpc/internal/RetriableStream$Substream;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;
    .param p1, "x1"    # I

    .line 51
    invoke-direct {p0, p1}, Lio/grpc/internal/RetriableStream;->createSubstream(I)Lio/grpc/internal/RetriableStream$Substream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lio/grpc/internal/RetriableStream;)J
    .locals 2
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 51
    iget-wide v0, p0, Lio/grpc/internal/RetriableStream;->nextBackoffIntervalNanos:J

    return-wide v0
.end method

.method static synthetic access$2002(Lio/grpc/internal/RetriableStream;J)J
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;
    .param p1, "x1"    # J

    .line 51
    iput-wide p1, p0, Lio/grpc/internal/RetriableStream;->nextBackoffIntervalNanos:J

    return-wide p1
.end method

.method static synthetic access$2102(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$FutureCanceller;)Lio/grpc/internal/RetriableStream$FutureCanceller;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;
    .param p1, "x1"    # Lio/grpc/internal/RetriableStream$FutureCanceller;

    .line 51
    iput-object p1, p0, Lio/grpc/internal/RetriableStream;->scheduledRetry:Lio/grpc/internal/RetriableStream$FutureCanceller;

    return-object p1
.end method

.method static synthetic access$2200(Lio/grpc/internal/RetriableStream;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 51
    invoke-direct {p0, p1}, Lio/grpc/internal/RetriableStream;->pushbackHedging(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$2300()Ljava/util/Random;
    .locals 1

    .line 51
    sget-object v0, Lio/grpc/internal/RetriableStream;->random:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$2400(Lio/grpc/internal/RetriableStream;)J
    .locals 2
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 51
    iget-wide v0, p0, Lio/grpc/internal/RetriableStream;->perRpcBufferUsed:J

    return-wide v0
.end method

.method static synthetic access$2402(Lio/grpc/internal/RetriableStream;J)J
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;
    .param p1, "x1"    # J

    .line 51
    iput-wide p1, p0, Lio/grpc/internal/RetriableStream;->perRpcBufferUsed:J

    return-wide p1
.end method

.method static synthetic access$2500(Lio/grpc/internal/RetriableStream;)J
    .locals 2
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 51
    iget-wide v0, p0, Lio/grpc/internal/RetriableStream;->perRpcBufferLimit:J

    return-wide v0
.end method

.method static synthetic access$2600(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$ChannelBufferMeter;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 51
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->channelBufferUsed:Lio/grpc/internal/RetriableStream$ChannelBufferMeter;

    return-object v0
.end method

.method static synthetic access$2700(Lio/grpc/internal/RetriableStream;)J
    .locals 2
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 51
    iget-wide v0, p0, Lio/grpc/internal/RetriableStream;->channelBufferLimit:J

    return-wide v0
.end method

.method static synthetic access$2800(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;
    .param p1, "x1"    # Lio/grpc/internal/RetriableStream$Substream;

    .line 51
    invoke-direct {p0, p1}, Lio/grpc/internal/RetriableStream;->commit(Lio/grpc/internal/RetriableStream$Substream;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/internal/RetriableStream;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 51
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$State;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;
    .param p1, "x1"    # Lio/grpc/internal/RetriableStream$State;

    .line 51
    invoke-direct {p0, p1}, Lio/grpc/internal/RetriableStream;->hasPotentialHedging(Lio/grpc/internal/RetriableStream$State;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$Throttle;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 51
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->throttle:Lio/grpc/internal/RetriableStream$Throttle;

    return-object v0
.end method

.method static synthetic access$602(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$FutureCanceller;)Lio/grpc/internal/RetriableStream$FutureCanceller;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;
    .param p1, "x1"    # Lio/grpc/internal/RetriableStream$FutureCanceller;

    .line 51
    iput-object p1, p0, Lio/grpc/internal/RetriableStream;->scheduledHedging:Lio/grpc/internal/RetriableStream$FutureCanceller;

    return-object p1
.end method

.method static synthetic access$700(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/HedgingPolicy;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 51
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

    return-object v0
.end method

.method static synthetic access$800(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;

    .line 51
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$900(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/RetriableStream;
    .param p1, "x1"    # Lio/grpc/internal/RetriableStream$Substream;

    .line 51
    invoke-direct {p0, p1}, Lio/grpc/internal/RetriableStream;->drain(Lio/grpc/internal/RetriableStream$Substream;)V

    return-void
.end method

.method private commit(Lio/grpc/internal/RetriableStream$Substream;)Ljava/lang/Runnable;
    .locals 10
    .param p1, "winningSubstream"    # Lio/grpc/internal/RetriableStream$Substream;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 129
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    iget-object v1, v1, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 131
    monitor-exit v0

    return-object v2

    .line 133
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    iget-object v5, v1, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    .line 135
    .local v5, "savedDrainedSubstreams":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/RetriableStream$Substream;>;"
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    invoke-virtual {v1, p1}, Lio/grpc/internal/RetriableStream$State;->committed(Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    .line 138
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->channelBufferUsed:Lio/grpc/internal/RetriableStream$ChannelBufferMeter;

    iget-wide v3, p0, Lio/grpc/internal/RetriableStream;->perRpcBufferUsed:J

    neg-long v3, v3

    invoke-virtual {v1, v3, v4}, Lio/grpc/internal/RetriableStream$ChannelBufferMeter;->addAndGet(J)J

    .line 141
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->scheduledRetry:Lio/grpc/internal/RetriableStream$FutureCanceller;

    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {v1}, Lio/grpc/internal/RetriableStream$FutureCanceller;->markCancelled()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 145
    .local v1, "retryFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iput-object v2, p0, Lio/grpc/internal/RetriableStream;->scheduledRetry:Lio/grpc/internal/RetriableStream$FutureCanceller;

    goto :goto_0

    .line 147
    .end local v1    # "retryFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_1
    const/4 v1, 0x0

    .line 151
    .restart local v1    # "retryFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_0
    iget-object v3, p0, Lio/grpc/internal/RetriableStream;->scheduledHedging:Lio/grpc/internal/RetriableStream$FutureCanceller;

    if-eqz v3, :cond_2

    .line 154
    invoke-virtual {v3}, Lio/grpc/internal/RetriableStream$FutureCanceller;->markCancelled()Ljava/util/concurrent/Future;

    move-result-object v3

    .line 155
    .local v3, "hedgingFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iput-object v2, p0, Lio/grpc/internal/RetriableStream;->scheduledHedging:Lio/grpc/internal/RetriableStream$FutureCanceller;

    move-object v2, v3

    goto :goto_1

    .line 157
    .end local v3    # "hedgingFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_2
    const/4 v2, 0x0

    move-object v3, v2

    .line 180
    .local v2, "hedgingFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_1
    new-instance v9, Lio/grpc/internal/RetriableStream$1CommitTask;

    move-object v3, v9

    move-object v4, p0

    move-object v6, p1

    move-object v7, v1

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lio/grpc/internal/RetriableStream$1CommitTask;-><init>(Lio/grpc/internal/RetriableStream;Ljava/util/Collection;Lio/grpc/internal/RetriableStream$Substream;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V

    monitor-exit v0

    return-object v9

    .line 181
    .end local v1    # "retryFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local v2    # "hedgingFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local v5    # "savedDrainedSubstreams":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/RetriableStream$Substream;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private commitAndRun(Lio/grpc/internal/RetriableStream$Substream;)V
    .locals 1
    .param p1, "winningSubstream"    # Lio/grpc/internal/RetriableStream$Substream;

    .line 190
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    invoke-direct {p0, p1}, Lio/grpc/internal/RetriableStream;->commit(Lio/grpc/internal/RetriableStream$Substream;)Ljava/lang/Runnable;

    move-result-object v0

    .line 192
    .local v0, "postCommitTask":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 193
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 195
    :cond_0
    return-void
.end method

.method private createSubstream(I)Lio/grpc/internal/RetriableStream$Substream;
    .locals 5
    .param p1, "previousAttemptCount"    # I

    .line 198
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Lio/grpc/internal/RetriableStream$Substream;

    invoke-direct {v0, p1}, Lio/grpc/internal/RetriableStream$Substream;-><init>(I)V

    .line 200
    .local v0, "sub":Lio/grpc/internal/RetriableStream$Substream;
    new-instance v1, Lio/grpc/internal/RetriableStream$BufferSizeTracer;

    invoke-direct {v1, p0, v0}, Lio/grpc/internal/RetriableStream$BufferSizeTracer;-><init>(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V

    .line 201
    .local v1, "bufferSizeTracer":Lio/grpc/ClientStreamTracer;
    new-instance v2, Lio/grpc/internal/RetriableStream$1;

    invoke-direct {v2, p0, v1}, Lio/grpc/internal/RetriableStream$1;-><init>(Lio/grpc/internal/RetriableStream;Lio/grpc/ClientStreamTracer;)V

    .line 209
    .local v2, "tracerFactory":Lio/grpc/ClientStreamTracer$Factory;
    iget-object v3, p0, Lio/grpc/internal/RetriableStream;->headers:Lio/grpc/Metadata;

    invoke-virtual {p0, v3, p1}, Lio/grpc/internal/RetriableStream;->updateHeaders(Lio/grpc/Metadata;I)Lio/grpc/Metadata;

    move-result-object v3

    .line 211
    .local v3, "newHeaders":Lio/grpc/Metadata;
    invoke-virtual {p0, v2, v3}, Lio/grpc/internal/RetriableStream;->newSubstream(Lio/grpc/ClientStreamTracer$Factory;Lio/grpc/Metadata;)Lio/grpc/internal/ClientStream;

    move-result-object v4

    iput-object v4, v0, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    .line 212
    return-object v0
.end method

.method private delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V
    .locals 3
    .param p1, "bufferEntry"    # Lio/grpc/internal/RetriableStream$BufferEntry;

    .line 459
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    iget-boolean v1, v1, Lio/grpc/internal/RetriableStream$State;->passThrough:Z

    if-nez v1, :cond_0

    .line 461
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    iget-object v1, v1, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    iget-object v1, v1, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    .line 464
    .local v1, "savedDrainedSubstreams":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/RetriableStream$Substream;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/RetriableStream$Substream;

    .line 467
    .local v2, "substream":Lio/grpc/internal/RetriableStream$Substream;
    invoke-interface {p1, v2}, Lio/grpc/internal/RetriableStream$BufferEntry;->runWith(Lio/grpc/internal/RetriableStream$Substream;)V

    .line 468
    .end local v2    # "substream":Lio/grpc/internal/RetriableStream$Substream;
    goto :goto_0

    .line 469
    :cond_1
    return-void

    .line 464
    .end local v1    # "savedDrainedSubstreams":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/RetriableStream$Substream;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private drain(Lio/grpc/internal/RetriableStream$Substream;)V
    .locals 8
    .param p1, "substream"    # Lio/grpc/internal/RetriableStream$Substream;

    .line 235
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    const/4 v0, 0x0

    .line 236
    .local v0, "index":I
    const/16 v1, 0x80

    .line 237
    .local v1, "chunk":I
    const/4 v2, 0x0

    .line 242
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lio/grpc/internal/RetriableStream$BufferEntry;>;"
    :goto_0
    iget-object v3, p0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 243
    :try_start_0
    iget-object v4, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    .line 244
    .local v4, "savedState":Lio/grpc/internal/RetriableStream$State;
    iget-object v5, v4, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-eq v5, p1, :cond_0

    .line 246
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    .end local v4    # "savedState":Lio/grpc/internal/RetriableStream$State;
    iget-object v3, p1, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    sget-object v4, Lio/grpc/internal/RetriableStream;->CANCELLED_BECAUSE_COMMITTED:Lio/grpc/Status;

    invoke-interface {v3, v4}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    .line 284
    return-void

    .line 248
    .restart local v4    # "savedState":Lio/grpc/internal/RetriableStream$State;
    :cond_0
    :try_start_1
    iget-object v5, v4, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v0, v5, :cond_1

    .line 249
    invoke-virtual {v4, p1}, Lio/grpc/internal/RetriableStream$State;->substreamDrained(Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v5

    iput-object v5, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    .line 250
    monitor-exit v3

    return-void

    .line 253
    :cond_1
    iget-boolean v5, p1, Lio/grpc/internal/RetriableStream$Substream;->closed:Z

    if-eqz v5, :cond_2

    .line 254
    monitor-exit v3

    return-void

    .line 257
    :cond_2
    add-int v5, v0, v1

    iget-object v6, v4, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 258
    .local v5, "stop":I
    if-nez v2, :cond_3

    .line 259
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v4, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    invoke-interface {v7, v0, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v6

    goto :goto_1

    .line 261
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 262
    iget-object v6, v4, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    invoke-interface {v6, v0, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    :goto_1
    move v0, v5

    .line 265
    .end local v5    # "stop":I
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/internal/RetriableStream$BufferEntry;

    .line 268
    .local v5, "bufferEntry":Lio/grpc/internal/RetriableStream$BufferEntry;
    iget-object v4, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    .line 269
    iget-object v6, v4, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-eqz v6, :cond_4

    iget-object v6, v4, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-eq v6, p1, :cond_4

    .line 271
    goto :goto_4

    .line 273
    :cond_4
    iget-boolean v6, v4, Lio/grpc/internal/RetriableStream$State;->cancelled:Z

    if-eqz v6, :cond_6

    .line 274
    iget-object v3, v4, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-ne v3, p1, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    const-string v6, "substream should be CANCELLED_BECAUSE_COMMITTED already"

    invoke-static {v3, v6}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 277
    return-void

    .line 279
    :cond_6
    invoke-interface {v5, p1}, Lio/grpc/internal/RetriableStream$BufferEntry;->runWith(Lio/grpc/internal/RetriableStream$Substream;)V

    .line 280
    .end local v5    # "bufferEntry":Lio/grpc/internal/RetriableStream$BufferEntry;
    goto :goto_2

    .line 281
    .end local v4    # "savedState":Lio/grpc/internal/RetriableStream$State;
    :cond_7
    :goto_4
    goto/16 :goto_0

    .line 265
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method private freezeHedging()V
    .locals 3

    .line 712
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    const/4 v0, 0x0

    .line 713
    .local v0, "futureToBeCancelled":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 714
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/RetriableStream;->scheduledHedging:Lio/grpc/internal/RetriableStream$FutureCanceller;

    if-eqz v2, :cond_0

    .line 717
    invoke-virtual {v2}, Lio/grpc/internal/RetriableStream$FutureCanceller;->markCancelled()Ljava/util/concurrent/Future;

    move-result-object v2

    move-object v0, v2

    .line 718
    const/4 v2, 0x0

    iput-object v2, p0, Lio/grpc/internal/RetriableStream;->scheduledHedging:Lio/grpc/internal/RetriableStream$FutureCanceller;

    .line 720
    :cond_0
    iget-object v2, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    invoke-virtual {v2}, Lio/grpc/internal/RetriableStream$State;->freezeHedging()Lio/grpc/internal/RetriableStream$State;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    .line 721
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    if-eqz v0, :cond_1

    .line 724
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 726
    :cond_1
    return-void

    .line 721
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private hasPotentialHedging(Lio/grpc/internal/RetriableStream$State;)Z
    .locals 2
    .param p1, "state"    # Lio/grpc/internal/RetriableStream$State;

    .line 705
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    iget-object v0, p1, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-nez v0, :cond_0

    iget v0, p1, Lio/grpc/internal/RetriableStream$State;->hedgingAttemptCount:I

    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

    iget v1, v1, Lio/grpc/internal/HedgingPolicy;->maxAttempts:I

    if-ge v0, v1, :cond_0

    iget-boolean v0, p1, Lio/grpc/internal/RetriableStream$State;->hedgingFrozen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private pushbackHedging(Ljava/lang/Integer;)V
    .locals 7
    .param p1, "delayMillis"    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 348
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    if-nez p1, :cond_0

    .line 349
    return-void

    .line 351
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    .line 352
    invoke-direct {p0}, Lio/grpc/internal/RetriableStream;->freezeHedging()V

    .line 353
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->scheduledHedging:Lio/grpc/internal/RetriableStream$FutureCanceller;

    if-nez v1, :cond_2

    .line 362
    monitor-exit v0

    return-void

    .line 367
    :cond_2
    invoke-virtual {v1}, Lio/grpc/internal/RetriableStream$FutureCanceller;->markCancelled()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 368
    .local v1, "futureToBeCancelled":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    new-instance v2, Lio/grpc/internal/RetriableStream$FutureCanceller;

    iget-object v3, p0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    invoke-direct {v2, v3}, Lio/grpc/internal/RetriableStream$FutureCanceller;-><init>(Ljava/lang/Object;)V

    move-object v3, v2

    .local v3, "future":Lio/grpc/internal/RetriableStream$FutureCanceller;
    iput-object v2, p0, Lio/grpc/internal/RetriableStream;->scheduledHedging:Lio/grpc/internal/RetriableStream$FutureCanceller;

    .line 369
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    if-eqz v1, :cond_3

    .line 372
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 374
    :cond_3
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lio/grpc/internal/RetriableStream$HedgingRunnable;

    invoke-direct {v2, p0, v3}, Lio/grpc/internal/RetriableStream$HedgingRunnable;-><init>(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$FutureCanceller;)V

    .line 375
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 374
    invoke-interface {v0, v2, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-virtual {v3, v0}, Lio/grpc/internal/RetriableStream$FutureCanceller;->setFuture(Ljava/util/concurrent/Future;)V

    .line 376
    return-void

    .line 369
    .end local v1    # "futureToBeCancelled":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local v3    # "future":Lio/grpc/internal/RetriableStream$FutureCanceller;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static setRandom(Ljava/util/Random;)V
    .locals 0
    .param p0, "random"    # Ljava/util/Random;

    .line 694
    sput-object p0, Lio/grpc/internal/RetriableStream;->random:Ljava/util/Random;

    .line 695
    return-void
.end method


# virtual methods
.method public appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V
    .locals 6
    .param p1, "insight"    # Lio/grpc/internal/InsightBuilder;

    .line 662
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 663
    :try_start_0
    const-string v1, "closed"

    iget-object v2, p0, Lio/grpc/internal/RetriableStream;->closedSubstreamsInsight:Lio/grpc/internal/InsightBuilder;

    invoke-virtual {p1, v1, v2}, Lio/grpc/internal/InsightBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/internal/InsightBuilder;

    .line 664
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    .line 665
    .local v1, "currentState":Lio/grpc/internal/RetriableStream$State;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    iget-object v0, v1, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-eqz v0, :cond_0

    .line 671
    new-instance v0, Lio/grpc/internal/InsightBuilder;

    invoke-direct {v0}, Lio/grpc/internal/InsightBuilder;-><init>()V

    .line 672
    .local v0, "substreamInsight":Lio/grpc/internal/InsightBuilder;
    iget-object v2, v1, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-object v2, v2, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v2, v0}, Lio/grpc/internal/ClientStream;->appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V

    .line 673
    const-string v2, "committed"

    invoke-virtual {p1, v2, v0}, Lio/grpc/internal/InsightBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/internal/InsightBuilder;

    .line 674
    .end local v0    # "substreamInsight":Lio/grpc/internal/InsightBuilder;
    goto :goto_1

    .line 675
    :cond_0
    new-instance v0, Lio/grpc/internal/InsightBuilder;

    invoke-direct {v0}, Lio/grpc/internal/InsightBuilder;-><init>()V

    .line 681
    .local v0, "openSubstreamsInsight":Lio/grpc/internal/InsightBuilder;
    iget-object v2, v1, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/internal/RetriableStream$Substream;

    .line 682
    .local v3, "sub":Lio/grpc/internal/RetriableStream$Substream;
    new-instance v4, Lio/grpc/internal/InsightBuilder;

    invoke-direct {v4}, Lio/grpc/internal/InsightBuilder;-><init>()V

    .line 683
    .local v4, "substreamInsight":Lio/grpc/internal/InsightBuilder;
    iget-object v5, v3, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v5, v4}, Lio/grpc/internal/ClientStream;->appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V

    .line 684
    invoke-virtual {v0, v4}, Lio/grpc/internal/InsightBuilder;->append(Ljava/lang/Object;)Lio/grpc/internal/InsightBuilder;

    .line 685
    .end local v3    # "sub":Lio/grpc/internal/RetriableStream$Substream;
    .end local v4    # "substreamInsight":Lio/grpc/internal/InsightBuilder;
    goto :goto_0

    .line 686
    :cond_1
    const-string v2, "open"

    invoke-virtual {p1, v2, v0}, Lio/grpc/internal/InsightBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/internal/InsightBuilder;

    .line 688
    .end local v0    # "openSubstreamsInsight":Lio/grpc/internal/InsightBuilder;
    :goto_1
    return-void

    .line 665
    .end local v1    # "currentState":Lio/grpc/internal/RetriableStream$State;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final cancel(Lio/grpc/Status;)V
    .locals 4
    .param p1, "reason"    # Lio/grpc/Status;

    .line 440
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Lio/grpc/internal/RetriableStream$Substream;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/internal/RetriableStream$Substream;-><init>(I)V

    .line 441
    .local v0, "noopSubstream":Lio/grpc/internal/RetriableStream$Substream;
    new-instance v1, Lio/grpc/internal/NoopClientStream;

    invoke-direct {v1}, Lio/grpc/internal/NoopClientStream;-><init>()V

    iput-object v1, v0, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    .line 442
    invoke-direct {p0, v0}, Lio/grpc/internal/RetriableStream;->commit(Lio/grpc/internal/RetriableStream$Substream;)Ljava/lang/Runnable;

    move-result-object v1

    .line 444
    .local v1, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_0

    .line 445
    iget-object v2, p0, Lio/grpc/internal/RetriableStream;->masterListener:Lio/grpc/internal/ClientStreamListener;

    new-instance v3, Lio/grpc/Metadata;

    invoke-direct {v3}, Lio/grpc/Metadata;-><init>()V

    invoke-interface {v2, p1, v3}, Lio/grpc/internal/ClientStreamListener;->closed(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 446
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 447
    return-void

    .line 450
    :cond_0
    iget-object v2, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    iget-object v2, v2, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-object v2, v2, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v2, p1}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    .line 451
    iget-object v2, p0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 453
    :try_start_0
    iget-object v3, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    invoke-virtual {v3}, Lio/grpc/internal/RetriableStream$State;->cancelled()Lio/grpc/internal/RetriableStream$State;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    .line 454
    monitor-exit v2

    .line 455
    return-void

    .line 454
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public final flush()V
    .locals 2

    .line 517
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    .line 518
    .local v0, "savedState":Lio/grpc/internal/RetriableStream$State;
    iget-boolean v1, v0, Lio/grpc/internal/RetriableStream$State;->passThrough:Z

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, v0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-object v1, v1, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v1}, Lio/grpc/internal/ClientStream;->flush()V

    .line 520
    return-void

    .line 530
    :cond_0
    new-instance v1, Lio/grpc/internal/RetriableStream$1FlushEntry;

    invoke-direct {v1, p0}, Lio/grpc/internal/RetriableStream$1FlushEntry;-><init>(Lio/grpc/internal/RetriableStream;)V

    invoke-direct {p0, v1}, Lio/grpc/internal/RetriableStream;->delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V

    .line 531
    return-void
.end method

.method public final getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 653
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    return-object v0

    .line 656
    :cond_0
    sget-object v0, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    return-object v0
.end method

.method public final halfClose()V
    .locals 1

    .line 588
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Lio/grpc/internal/RetriableStream$1HalfCloseEntry;

    invoke-direct {v0, p0}, Lio/grpc/internal/RetriableStream$1HalfCloseEntry;-><init>(Lio/grpc/internal/RetriableStream;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/RetriableStream;->delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V

    .line 589
    return-void
.end method

.method public final isReady()Z
    .locals 3

    .line 535
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/RetriableStream$Substream;

    .line 536
    .local v1, "substream":Lio/grpc/internal/RetriableStream$Substream;
    iget-object v2, v1, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v2}, Lio/grpc/internal/ClientStream;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 537
    const/4 v0, 0x1

    return v0

    .line 539
    .end local v1    # "substream":Lio/grpc/internal/RetriableStream$Substream;
    :cond_0
    goto :goto_0

    .line 540
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method abstract newSubstream(Lio/grpc/ClientStreamTracer$Factory;Lio/grpc/Metadata;)Lio/grpc/internal/ClientStream;
.end method

.method abstract postCommit()V
.end method

.method abstract prestart()Lio/grpc/Status;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public final request(I)V
    .locals 2
    .param p1, "numMessages"    # I

    .line 499
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    .line 500
    .local v0, "savedState":Lio/grpc/internal/RetriableStream$State;
    iget-boolean v1, v0, Lio/grpc/internal/RetriableStream$State;->passThrough:Z

    if-eqz v1, :cond_0

    .line 501
    iget-object v1, v0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-object v1, v1, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v1, p1}, Lio/grpc/internal/ClientStream;->request(I)V

    .line 502
    return-void

    .line 512
    :cond_0
    new-instance v1, Lio/grpc/internal/RetriableStream$1RequestEntry;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/RetriableStream$1RequestEntry;-><init>(Lio/grpc/internal/RetriableStream;I)V

    invoke-direct {p0, v1}, Lio/grpc/internal/RetriableStream;->delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V

    .line 513
    return-void
.end method

.method final sendMessage(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 481
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    .local p1, "message":Ljava/lang/Object;, "TReqT;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    .line 482
    .local v0, "savedState":Lio/grpc/internal/RetriableStream$State;
    iget-boolean v1, v0, Lio/grpc/internal/RetriableStream$State;->passThrough:Z

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, v0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-object v1, v1, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    iget-object v2, p0, Lio/grpc/internal/RetriableStream;->method:Lio/grpc/MethodDescriptor;

    invoke-virtual {v2, p1}, Lio/grpc/MethodDescriptor;->streamRequest(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/grpc/internal/ClientStream;->writeMessage(Ljava/io/InputStream;)V

    .line 484
    return-void

    .line 494
    :cond_0
    new-instance v1, Lio/grpc/internal/RetriableStream$1SendMessageEntry;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/RetriableStream$1SendMessageEntry;-><init>(Lio/grpc/internal/RetriableStream;Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lio/grpc/internal/RetriableStream;->delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V

    .line 495
    return-void
.end method

.method public final setAuthority(Ljava/lang/String;)V
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;

    .line 600
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Lio/grpc/internal/RetriableStream$1AuthorityEntry;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/RetriableStream$1AuthorityEntry;-><init>(Lio/grpc/internal/RetriableStream;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/RetriableStream;->delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V

    .line 601
    return-void
.end method

.method public final setCompressor(Lio/grpc/Compressor;)V
    .locals 1
    .param p1, "compressor"    # Lio/grpc/Compressor;

    .line 552
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Lio/grpc/internal/RetriableStream$1CompressorEntry;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/RetriableStream$1CompressorEntry;-><init>(Lio/grpc/internal/RetriableStream;Lio/grpc/Compressor;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/RetriableStream;->delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V

    .line 553
    return-void
.end method

.method public final setDeadline(Lio/grpc/Deadline;)V
    .locals 1
    .param p1, "deadline"    # Lio/grpc/Deadline;

    .line 648
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Lio/grpc/internal/RetriableStream$1DeadlineEntry;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/RetriableStream$1DeadlineEntry;-><init>(Lio/grpc/internal/RetriableStream;Lio/grpc/Deadline;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/RetriableStream;->delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V

    .line 649
    return-void
.end method

.method public final setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)V
    .locals 1
    .param p1, "decompressorRegistry"    # Lio/grpc/DecompressorRegistry;

    .line 612
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Lio/grpc/internal/RetriableStream$1DecompressorRegistryEntry;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/RetriableStream$1DecompressorRegistryEntry;-><init>(Lio/grpc/internal/RetriableStream;Lio/grpc/DecompressorRegistry;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/RetriableStream;->delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V

    .line 613
    return-void
.end method

.method public final setFullStreamDecompression(Z)V
    .locals 1
    .param p1, "fullStreamDecompression"    # Z

    .line 564
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Lio/grpc/internal/RetriableStream$1FullStreamDecompressionEntry;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/RetriableStream$1FullStreamDecompressionEntry;-><init>(Lio/grpc/internal/RetriableStream;Z)V

    invoke-direct {p0, v0}, Lio/grpc/internal/RetriableStream;->delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V

    .line 565
    return-void
.end method

.method public final setMaxInboundMessageSize(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .line 624
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Lio/grpc/internal/RetriableStream$1MaxInboundMessageSizeEntry;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/RetriableStream$1MaxInboundMessageSizeEntry;-><init>(Lio/grpc/internal/RetriableStream;I)V

    invoke-direct {p0, v0}, Lio/grpc/internal/RetriableStream;->delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V

    .line 625
    return-void
.end method

.method public final setMaxOutboundMessageSize(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .line 636
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Lio/grpc/internal/RetriableStream$1MaxOutboundMessageSizeEntry;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/RetriableStream$1MaxOutboundMessageSizeEntry;-><init>(Lio/grpc/internal/RetriableStream;I)V

    invoke-direct {p0, v0}, Lio/grpc/internal/RetriableStream;->delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V

    .line 637
    return-void
.end method

.method public final setMessageCompression(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 576
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Lio/grpc/internal/RetriableStream$1MessageCompressionEntry;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/RetriableStream$1MessageCompressionEntry;-><init>(Lio/grpc/internal/RetriableStream;Z)V

    invoke-direct {p0, v0}, Lio/grpc/internal/RetriableStream;->delayOrExecute(Lio/grpc/internal/RetriableStream$BufferEntry;)V

    .line 577
    return-void
.end method

.method public final start(Lio/grpc/internal/ClientStreamListener;)V
    .locals 8
    .param p1, "listener"    # Lio/grpc/internal/ClientStreamListener;

    .line 296
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    iput-object p1, p0, Lio/grpc/internal/RetriableStream;->masterListener:Lio/grpc/internal/ClientStreamListener;

    .line 298
    invoke-virtual {p0}, Lio/grpc/internal/RetriableStream;->prestart()Lio/grpc/Status;

    move-result-object v0

    .line 300
    .local v0, "shutdownStatus":Lio/grpc/Status;
    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0, v0}, Lio/grpc/internal/RetriableStream;->cancel(Lio/grpc/Status;)V

    .line 302
    return-void

    .line 312
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 313
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    iget-object v2, v2, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    new-instance v3, Lio/grpc/internal/RetriableStream$1StartEntry;

    invoke-direct {v3, p0}, Lio/grpc/internal/RetriableStream$1StartEntry;-><init>(Lio/grpc/internal/RetriableStream;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 316
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lio/grpc/internal/RetriableStream;->createSubstream(I)Lio/grpc/internal/RetriableStream$Substream;

    move-result-object v2

    .line 317
    .local v2, "substream":Lio/grpc/internal/RetriableStream$Substream;
    iget-object v3, p0, Lio/grpc/internal/RetriableStream;->hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string v3, "hedgingPolicy has been initialized unexpectedly"

    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 319
    iget-object v1, p0, Lio/grpc/internal/RetriableStream;->hedgingPolicyProvider:Lio/grpc/internal/HedgingPolicy$Provider;

    invoke-interface {v1}, Lio/grpc/internal/HedgingPolicy$Provider;->get()Lio/grpc/internal/HedgingPolicy;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/RetriableStream;->hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

    .line 320
    sget-object v1, Lio/grpc/internal/HedgingPolicy;->DEFAULT:Lio/grpc/internal/HedgingPolicy;

    iget-object v3, p0, Lio/grpc/internal/RetriableStream;->hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

    invoke-virtual {v1, v3}, Lio/grpc/internal/HedgingPolicy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 321
    iput-boolean v4, p0, Lio/grpc/internal/RetriableStream;->isHedging:Z

    .line 322
    sget-object v1, Lio/grpc/internal/RetryPolicy;->DEFAULT:Lio/grpc/internal/RetryPolicy;

    iput-object v1, p0, Lio/grpc/internal/RetriableStream;->retryPolicy:Lio/grpc/internal/RetryPolicy;

    .line 324
    const/4 v1, 0x0

    .line 326
    .local v1, "scheduledHedgingRef":Lio/grpc/internal/RetriableStream$FutureCanceller;
    iget-object v3, p0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 327
    :try_start_1
    iget-object v4, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    invoke-virtual {v4, v2}, Lio/grpc/internal/RetriableStream$State;->addActiveHedge(Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    .line 328
    iget-object v4, p0, Lio/grpc/internal/RetriableStream;->state:Lio/grpc/internal/RetriableStream$State;

    invoke-direct {p0, v4}, Lio/grpc/internal/RetriableStream;->hasPotentialHedging(Lio/grpc/internal/RetriableStream$State;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lio/grpc/internal/RetriableStream;->throttle:Lio/grpc/internal/RetriableStream$Throttle;

    if-eqz v4, :cond_2

    .line 329
    invoke-virtual {v4}, Lio/grpc/internal/RetriableStream$Throttle;->isAboveThreshold()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 330
    :cond_2
    new-instance v4, Lio/grpc/internal/RetriableStream$FutureCanceller;

    iget-object v5, p0, Lio/grpc/internal/RetriableStream;->lock:Ljava/lang/Object;

    invoke-direct {v4, v5}, Lio/grpc/internal/RetriableStream$FutureCanceller;-><init>(Ljava/lang/Object;)V

    move-object v1, v4

    iput-object v4, p0, Lio/grpc/internal/RetriableStream;->scheduledHedging:Lio/grpc/internal/RetriableStream$FutureCanceller;

    .line 332
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    if-eqz v1, :cond_4

    .line 335
    iget-object v3, p0, Lio/grpc/internal/RetriableStream;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lio/grpc/internal/RetriableStream$HedgingRunnable;

    invoke-direct {v4, p0, v1}, Lio/grpc/internal/RetriableStream$HedgingRunnable;-><init>(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$FutureCanceller;)V

    iget-object v5, p0, Lio/grpc/internal/RetriableStream;->hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

    iget-wide v5, v5, Lio/grpc/internal/HedgingPolicy;->hedgingDelayNanos:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 336
    invoke-interface {v3, v4, v5, v6, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    .line 335
    invoke-virtual {v1, v3}, Lio/grpc/internal/RetriableStream$FutureCanceller;->setFuture(Ljava/util/concurrent/Future;)V

    goto :goto_0

    .line 332
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 343
    .end local v1    # "scheduledHedgingRef":Lio/grpc/internal/RetriableStream$FutureCanceller;
    :cond_4
    :goto_0
    invoke-direct {p0, v2}, Lio/grpc/internal/RetriableStream;->drain(Lio/grpc/internal/RetriableStream$Substream;)V

    .line 344
    return-void

    .line 314
    .end local v2    # "substream":Lio/grpc/internal/RetriableStream$Substream;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method final updateHeaders(Lio/grpc/Metadata;I)Lio/grpc/Metadata;
    .locals 3
    .param p1, "originalHeaders"    # Lio/grpc/Metadata;
    .param p2, "previousAttemptCount"    # I

    .line 226
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    .line 227
    .local v0, "newHeaders":Lio/grpc/Metadata;
    invoke-virtual {v0, p1}, Lio/grpc/Metadata;->merge(Lio/grpc/Metadata;)V

    .line 228
    if-lez p2, :cond_0

    .line 229
    sget-object v1, Lio/grpc/internal/RetriableStream;->GRPC_PREVIOUS_RPC_ATTEMPTS:Lio/grpc/Metadata$Key;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 231
    :cond_0
    return-object v0
.end method

.method public final writeMessage(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "message"    # Ljava/io/InputStream;

    .line 477
    .local p0, "this":Lio/grpc/internal/RetriableStream;, "Lio/grpc/internal/RetriableStream<TReqT;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RetriableStream.writeMessage() should not be called directly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
