.class final Lio/grpc/internal/ServiceConfigInterceptor;
.super Ljava/lang/Object;
.source "ServiceConfigInterceptor.java"

# interfaces
.implements Lio/grpc/ClientInterceptor;


# static fields
.field static final HEDGING_POLICY_KEY:Lio/grpc/CallOptions$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/CallOptions$Key<",
            "Lio/grpc/internal/HedgingPolicy$Provider;",
            ">;"
        }
    .end annotation
.end field

.field static final RETRY_POLICY_KEY:Lio/grpc/CallOptions$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/CallOptions$Key<",
            "Lio/grpc/internal/RetryPolicy$Provider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile initComplete:Z

.field final managedChannelServiceConfig:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/grpc/internal/ManagedChannelServiceConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final retryEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    nop

    .line 59
    const-string v0, "internal-retry-policy"

    invoke-static {v0}, Lio/grpc/CallOptions$Key;->create(Ljava/lang/String;)Lio/grpc/CallOptions$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ServiceConfigInterceptor;->RETRY_POLICY_KEY:Lio/grpc/CallOptions$Key;

    .line 60
    nop

    .line 61
    const-string v0, "internal-hedging-policy"

    invoke-static {v0}, Lio/grpc/CallOptions$Key;->create(Ljava/lang/String;)Lio/grpc/CallOptions$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ServiceConfigInterceptor;->HEDGING_POLICY_KEY:Lio/grpc/CallOptions$Key;

    .line 60
    return-void
.end method

.method constructor <init>(Z)V
    .locals 1
    .param p1, "retryEnabled"    # Z

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ServiceConfigInterceptor;->managedChannelServiceConfig:Ljava/util/concurrent/atomic/AtomicReference;

    .line 50
    iput-boolean p1, p0, Lio/grpc/internal/ServiceConfigInterceptor;->retryEnabled:Z

    .line 51
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/ServiceConfigInterceptor;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ServiceConfigInterceptor;

    .line 37
    iget-boolean v0, p0, Lio/grpc/internal/ServiceConfigInterceptor;->initComplete:Z

    return v0
.end method

.method private getMethodInfo(Lio/grpc/MethodDescriptor;)Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;)",
            "Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 176
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    iget-object v0, p0, Lio/grpc/internal/ServiceConfigInterceptor;->managedChannelServiceConfig:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ManagedChannelServiceConfig;

    .line 177
    .local v0, "mcsc":Lio/grpc/internal/ManagedChannelServiceConfig;
    const/4 v1, 0x0

    .line 178
    .local v1, "info":Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lio/grpc/internal/ManagedChannelServiceConfig;->getServiceMethodMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    .line 181
    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->getServiceName()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "serviceName":Ljava/lang/String;
    invoke-virtual {v0}, Lio/grpc/internal/ManagedChannelServiceConfig;->getServiceMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    .line 185
    .end local v2    # "serviceName":Ljava/lang/String;
    :cond_1
    return-object v1
.end method


# virtual methods
.method getHedgingPolicyFromConfig(Lio/grpc/MethodDescriptor;)Lio/grpc/internal/HedgingPolicy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;)",
            "Lio/grpc/internal/HedgingPolicy;"
        }
    .end annotation

    .line 196
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    invoke-direct {p0, p1}, Lio/grpc/internal/ServiceConfigInterceptor;->getMethodInfo(Lio/grpc/MethodDescriptor;)Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    move-result-object v0

    .line 197
    .local v0, "info":Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    if-nez v0, :cond_0

    sget-object v1, Lio/grpc/internal/HedgingPolicy;->DEFAULT:Lio/grpc/internal/HedgingPolicy;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->hedgingPolicy:Lio/grpc/internal/HedgingPolicy;

    :goto_0
    return-object v1
.end method

.method getRetryPolicyFromConfig(Lio/grpc/MethodDescriptor;)Lio/grpc/internal/RetryPolicy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;)",
            "Lio/grpc/internal/RetryPolicy;"
        }
    .end annotation

    .line 190
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    invoke-direct {p0, p1}, Lio/grpc/internal/ServiceConfigInterceptor;->getMethodInfo(Lio/grpc/MethodDescriptor;)Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    move-result-object v0

    .line 191
    .local v0, "info":Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    if-nez v0, :cond_0

    sget-object v1, Lio/grpc/internal/RetryPolicy;->DEFAULT:Lio/grpc/internal/RetryPolicy;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->retryPolicy:Lio/grpc/internal/RetryPolicy;

    :goto_0
    return-object v1
.end method

.method handleUpdate(Lio/grpc/internal/ManagedChannelServiceConfig;)V
    .locals 1
    .param p1, "serviceConfig"    # Lio/grpc/internal/ManagedChannelServiceConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    iget-object v0, p0, Lio/grpc/internal/ServiceConfigInterceptor;->managedChannelServiceConfig:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/ServiceConfigInterceptor;->initComplete:Z

    .line 56
    return-void
.end method

.method public interceptCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Channel;)Lio/grpc/ClientCall;
    .locals 5
    .param p2, "callOptions"    # Lio/grpc/CallOptions;
    .param p3, "next"    # Lio/grpc/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/CallOptions;",
            "Lio/grpc/Channel;",
            ")",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 66
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    iget-boolean v0, p0, Lio/grpc/internal/ServiceConfigInterceptor;->retryEnabled:Z

    if-eqz v0, :cond_3

    .line 67
    iget-boolean v0, p0, Lio/grpc/internal/ServiceConfigInterceptor;->initComplete:Z

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServiceConfigInterceptor;->getRetryPolicyFromConfig(Lio/grpc/MethodDescriptor;)Lio/grpc/internal/RetryPolicy;

    move-result-object v0

    .line 76
    .local v0, "retryPolicy":Lio/grpc/internal/RetryPolicy;
    invoke-virtual {p0, p1}, Lio/grpc/internal/ServiceConfigInterceptor;->getHedgingPolicyFromConfig(Lio/grpc/MethodDescriptor;)Lio/grpc/internal/HedgingPolicy;

    move-result-object v1

    .line 84
    .local v1, "hedgingPolicy":Lio/grpc/internal/HedgingPolicy;
    sget-object v2, Lio/grpc/internal/RetryPolicy;->DEFAULT:Lio/grpc/internal/RetryPolicy;

    .line 85
    invoke-virtual {v0, v2}, Lio/grpc/internal/RetryPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lio/grpc/internal/HedgingPolicy;->DEFAULT:Lio/grpc/internal/HedgingPolicy;

    invoke-virtual {v1, v2}, Lio/grpc/internal/HedgingPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 84
    :goto_1
    const-string v3, "Can not apply both retry and hedging policy for the method \'%s\'"

    invoke-static {v2, v3, p1}, Lcom/google/common/base/Verify;->verify(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 88
    sget-object v2, Lio/grpc/internal/ServiceConfigInterceptor;->RETRY_POLICY_KEY:Lio/grpc/CallOptions$Key;

    new-instance v3, Lio/grpc/internal/ServiceConfigInterceptor$1ImmediateRetryPolicyProvider;

    invoke-direct {v3, p0, v0}, Lio/grpc/internal/ServiceConfigInterceptor$1ImmediateRetryPolicyProvider;-><init>(Lio/grpc/internal/ServiceConfigInterceptor;Lio/grpc/internal/RetryPolicy;)V

    .line 89
    invoke-virtual {p2, v2, v3}, Lio/grpc/CallOptions;->withOption(Lio/grpc/CallOptions$Key;Ljava/lang/Object;)Lio/grpc/CallOptions;

    move-result-object v2

    sget-object v3, Lio/grpc/internal/ServiceConfigInterceptor;->HEDGING_POLICY_KEY:Lio/grpc/CallOptions$Key;

    new-instance v4, Lio/grpc/internal/ServiceConfigInterceptor$1ImmediateHedgingPolicyProvider;

    invoke-direct {v4, p0, v1}, Lio/grpc/internal/ServiceConfigInterceptor$1ImmediateHedgingPolicyProvider;-><init>(Lio/grpc/internal/ServiceConfigInterceptor;Lio/grpc/internal/HedgingPolicy;)V

    .line 90
    invoke-virtual {v2, v3, v4}, Lio/grpc/CallOptions;->withOption(Lio/grpc/CallOptions$Key;Ljava/lang/Object;)Lio/grpc/CallOptions;

    move-result-object p2

    .line 91
    .end local v0    # "retryPolicy":Lio/grpc/internal/RetryPolicy;
    .end local v1    # "hedgingPolicy":Lio/grpc/internal/HedgingPolicy;
    goto :goto_2

    .line 129
    :cond_2
    sget-object v0, Lio/grpc/internal/ServiceConfigInterceptor;->RETRY_POLICY_KEY:Lio/grpc/CallOptions$Key;

    new-instance v1, Lio/grpc/internal/ServiceConfigInterceptor$1DelayedRetryPolicyProvider;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/ServiceConfigInterceptor$1DelayedRetryPolicyProvider;-><init>(Lio/grpc/internal/ServiceConfigInterceptor;Lio/grpc/MethodDescriptor;)V

    .line 130
    invoke-virtual {p2, v0, v1}, Lio/grpc/CallOptions;->withOption(Lio/grpc/CallOptions$Key;Ljava/lang/Object;)Lio/grpc/CallOptions;

    move-result-object v0

    sget-object v1, Lio/grpc/internal/ServiceConfigInterceptor;->HEDGING_POLICY_KEY:Lio/grpc/CallOptions$Key;

    new-instance v2, Lio/grpc/internal/ServiceConfigInterceptor$1DelayedHedgingPolicyProvider;

    invoke-direct {v2, p0, p1}, Lio/grpc/internal/ServiceConfigInterceptor$1DelayedHedgingPolicyProvider;-><init>(Lio/grpc/internal/ServiceConfigInterceptor;Lio/grpc/MethodDescriptor;)V

    .line 131
    invoke-virtual {v0, v1, v2}, Lio/grpc/CallOptions;->withOption(Lio/grpc/CallOptions$Key;Ljava/lang/Object;)Lio/grpc/CallOptions;

    move-result-object p2

    .line 135
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lio/grpc/internal/ServiceConfigInterceptor;->getMethodInfo(Lio/grpc/MethodDescriptor;)Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;

    move-result-object v0

    .line 136
    .local v0, "info":Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;
    if-nez v0, :cond_4

    .line 137
    invoke-virtual {p3, p1, p2}, Lio/grpc/Channel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object v1

    return-object v1

    .line 140
    :cond_4
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->timeoutNanos:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 141
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->timeoutNanos:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3}, Lio/grpc/Deadline;->after(JLjava/util/concurrent/TimeUnit;)Lio/grpc/Deadline;

    move-result-object v1

    .line 142
    .local v1, "newDeadline":Lio/grpc/Deadline;
    invoke-virtual {p2}, Lio/grpc/CallOptions;->getDeadline()Lio/grpc/Deadline;

    move-result-object v2

    .line 144
    .local v2, "existingDeadline":Lio/grpc/Deadline;
    if-eqz v2, :cond_5

    invoke-virtual {v1, v2}, Lio/grpc/Deadline;->compareTo(Lio/grpc/Deadline;)I

    move-result v3

    if-gez v3, :cond_6

    .line 145
    :cond_5
    invoke-virtual {p2, v1}, Lio/grpc/CallOptions;->withDeadline(Lio/grpc/Deadline;)Lio/grpc/CallOptions;

    move-result-object p2

    .line 148
    .end local v1    # "newDeadline":Lio/grpc/Deadline;
    .end local v2    # "existingDeadline":Lio/grpc/Deadline;
    :cond_6
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->waitForReady:Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 150
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->waitForReady:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lio/grpc/CallOptions;->withWaitForReady()Lio/grpc/CallOptions;

    move-result-object v1

    goto :goto_3

    :cond_7
    invoke-virtual {p2}, Lio/grpc/CallOptions;->withoutWaitForReady()Lio/grpc/CallOptions;

    move-result-object v1

    :goto_3
    move-object p2, v1

    .line 152
    :cond_8
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxInboundMessageSize:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    .line 153
    invoke-virtual {p2}, Lio/grpc/CallOptions;->getMaxInboundMessageSize()Ljava/lang/Integer;

    move-result-object v1

    .line 154
    .local v1, "existingLimit":Ljava/lang/Integer;
    if-eqz v1, :cond_9

    .line 155
    nop

    .line 156
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxInboundMessageSize:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 155
    invoke-virtual {p2, v2}, Lio/grpc/CallOptions;->withMaxInboundMessageSize(I)Lio/grpc/CallOptions;

    move-result-object p2

    goto :goto_4

    .line 158
    :cond_9
    iget-object v2, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxInboundMessageSize:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Lio/grpc/CallOptions;->withMaxInboundMessageSize(I)Lio/grpc/CallOptions;

    move-result-object p2

    .line 161
    .end local v1    # "existingLimit":Ljava/lang/Integer;
    :cond_a
    :goto_4
    iget-object v1, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxOutboundMessageSize:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 162
    invoke-virtual {p2}, Lio/grpc/CallOptions;->getMaxOutboundMessageSize()Ljava/lang/Integer;

    move-result-object v1

    .line 163
    .restart local v1    # "existingLimit":Ljava/lang/Integer;
    if-eqz v1, :cond_b

    .line 164
    nop

    .line 165
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxOutboundMessageSize:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 164
    invoke-virtual {p2, v2}, Lio/grpc/CallOptions;->withMaxOutboundMessageSize(I)Lio/grpc/CallOptions;

    move-result-object p2

    goto :goto_5

    .line 167
    :cond_b
    iget-object v2, v0, Lio/grpc/internal/ManagedChannelServiceConfig$MethodInfo;->maxOutboundMessageSize:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Lio/grpc/CallOptions;->withMaxOutboundMessageSize(I)Lio/grpc/CallOptions;

    move-result-object p2

    .line 171
    .end local v1    # "existingLimit":Ljava/lang/Integer;
    :cond_c
    :goto_5
    invoke-virtual {p3, p1, p2}, Lio/grpc/Channel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object v1

    return-object v1
.end method
