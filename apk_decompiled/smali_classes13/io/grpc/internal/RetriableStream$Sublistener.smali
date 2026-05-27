.class final Lio/grpc/internal/RetriableStream$Sublistener;
.super Ljava/lang/Object;
.source "RetriableStream.java"

# interfaces
.implements Lio/grpc/internal/ClientStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/RetriableStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Sublistener"
.end annotation


# instance fields
.field final substream:Lio/grpc/internal/RetriableStream$Substream;

.field final synthetic this$0:Lio/grpc/internal/RetriableStream;


# direct methods
.method constructor <init>(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V
    .locals 0
    .param p2, "substream"    # Lio/grpc/internal/RetriableStream$Substream;

    .line 736
    .local p0, "this":Lio/grpc/internal/RetriableStream$Sublistener;, "Lio/grpc/internal/RetriableStream<TReqT;>.Sublistener;"
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 737
    iput-object p2, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    .line 738
    return-void
.end method

.method private makeRetryDecision(Lio/grpc/Status;Lio/grpc/Metadata;)Lio/grpc/internal/RetriableStream$RetryPlan;
    .locals 19
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "trailer"    # Lio/grpc/Metadata;

    .line 889
    .local p0, "this":Lio/grpc/internal/RetriableStream$Sublistener;, "Lio/grpc/internal/RetriableStream<TReqT;>.Sublistener;"
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 890
    .local v2, "shouldRetry":Z
    const-wide/16 v3, 0x0

    .line 891
    .local v3, "backoffNanos":J
    iget-object v0, v1, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$1700(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetryPolicy;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/internal/RetryPolicy;->retryableStatusCodes:Ljava/util/Set;

    invoke-virtual/range {p1 .. p1}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 892
    .local v5, "isRetryableStatusCode":Z
    iget-object v0, v1, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$700(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/HedgingPolicy;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/internal/HedgingPolicy;->nonFatalStatusCodes:Ljava/util/Set;

    invoke-virtual/range {p1 .. p1}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 893
    .local v6, "isNonFatalStatusCode":Z
    iget-object v0, v1, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$1600(Lio/grpc/internal/RetriableStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v6, :cond_0

    .line 895
    new-instance v0, Lio/grpc/internal/RetriableStream$RetryPlan;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/grpc/internal/RetriableStream$RetryPlan;-><init>(ZZJLjava/lang/Integer;)V

    return-object v0

    .line 898
    :cond_0
    sget-object v0, Lio/grpc/internal/RetriableStream;->GRPC_RETRY_PUSHBACK_MS:Lio/grpc/Metadata$Key;

    move-object/from16 v7, p2

    invoke-virtual {v7, v0}, Lio/grpc/Metadata;->get(Lio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 899
    .local v8, "pushbackStr":Ljava/lang/String;
    const/4 v9, 0x0

    .line 900
    .local v9, "pushbackMillis":Ljava/lang/Integer;
    if-eqz v8, :cond_1

    .line 902
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v0

    .line 905
    goto :goto_0

    .line 903
    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 904
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 908
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 909
    .local v0, "isThrottled":Z
    iget-object v10, v1, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v10}, Lio/grpc/internal/RetriableStream;->access$500(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$Throttle;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 910
    if-nez v5, :cond_2

    if-nez v6, :cond_2

    if-eqz v9, :cond_3

    .line 911
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-gez v10, :cond_3

    .line 912
    :cond_2
    iget-object v10, v1, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v10}, Lio/grpc/internal/RetriableStream;->access$500(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$Throttle;

    move-result-object v10

    invoke-virtual {v10}, Lio/grpc/internal/RetriableStream$Throttle;->onQualifiedFailureThenCheckIsAboveThreshold()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    move v0, v10

    .line 916
    :cond_3
    iget-object v10, v1, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v10}, Lio/grpc/internal/RetriableStream;->access$1700(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetryPolicy;

    move-result-object v10

    iget v10, v10, Lio/grpc/internal/RetryPolicy;->maxAttempts:I

    iget-object v11, v1, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    iget v11, v11, Lio/grpc/internal/RetriableStream$Substream;->previousAttemptCount:I

    add-int/lit8 v11, v11, 0x1

    if-le v10, v11, :cond_5

    if-nez v0, :cond_5

    .line 917
    if-nez v9, :cond_4

    .line 918
    if-eqz v5, :cond_5

    .line 919
    const/4 v2, 0x1

    .line 920
    iget-object v10, v1, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v10}, Lio/grpc/internal/RetriableStream;->access$2000(Lio/grpc/internal/RetriableStream;)J

    move-result-wide v10

    long-to-double v10, v10

    invoke-static {}, Lio/grpc/internal/RetriableStream;->access$2300()Ljava/util/Random;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Random;->nextDouble()D

    move-result-wide v12

    mul-double v10, v10, v12

    double-to-long v3, v10

    .line 921
    iget-object v10, v1, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    .line 922
    invoke-static {v10}, Lio/grpc/internal/RetriableStream;->access$2000(Lio/grpc/internal/RetriableStream;)J

    move-result-wide v11

    long-to-double v11, v11

    iget-object v13, v1, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v13}, Lio/grpc/internal/RetriableStream;->access$1700(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetryPolicy;

    move-result-object v13

    iget-wide v13, v13, Lio/grpc/internal/RetryPolicy;->backoffMultiplier:D

    mul-double v11, v11, v13

    double-to-long v11, v11

    iget-object v13, v1, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    .line 923
    invoke-static {v13}, Lio/grpc/internal/RetriableStream;->access$1700(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetryPolicy;

    move-result-object v13

    iget-wide v13, v13, Lio/grpc/internal/RetryPolicy;->maxBackoffNanos:J

    .line 921
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lio/grpc/internal/RetriableStream;->access$2002(Lio/grpc/internal/RetriableStream;J)J

    goto :goto_1

    .line 926
    :cond_4
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ltz v10, :cond_5

    .line 927
    const/4 v2, 0x1

    .line 928
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    .line 929
    iget-object v10, v1, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v10}, Lio/grpc/internal/RetriableStream;->access$1700(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetryPolicy;

    move-result-object v11

    iget-wide v11, v11, Lio/grpc/internal/RetryPolicy;->initialBackoffNanos:J

    invoke-static {v10, v11, v12}, Lio/grpc/internal/RetriableStream;->access$2002(Lio/grpc/internal/RetriableStream;J)J

    .line 933
    :cond_5
    :goto_1
    new-instance v10, Lio/grpc/internal/RetriableStream$RetryPlan;

    const/4 v15, 0x0

    .line 934
    iget-object v11, v1, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v11}, Lio/grpc/internal/RetriableStream;->access$1600(Lio/grpc/internal/RetriableStream;)Z

    move-result v11

    if-eqz v11, :cond_6

    move-object/from16 v18, v9

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    move-object/from16 v18, v11

    :goto_2
    move-object v13, v10

    move v14, v2

    move-wide/from16 v16, v3

    invoke-direct/range {v13 .. v18}, Lio/grpc/internal/RetriableStream$RetryPlan;-><init>(ZZJLjava/lang/Integer;)V

    .line 933
    return-object v10
.end method


# virtual methods
.method public closed(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 1
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "trailers"    # Lio/grpc/Metadata;

    .line 753
    .local p0, "this":Lio/grpc/internal/RetriableStream$Sublistener;, "Lio/grpc/internal/RetriableStream<TReqT;>.Sublistener;"
    sget-object v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-virtual {p0, p1, v0, p2}, Lio/grpc/internal/RetriableStream$Sublistener;->closed(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    .line 754
    return-void
.end method

.method public closed(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V
    .locals 8
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "rpcProgress"    # Lio/grpc/internal/ClientStreamListener$RpcProgress;
    .param p3, "trailers"    # Lio/grpc/Metadata;

    .line 758
    .local p0, "this":Lio/grpc/internal/RetriableStream$Sublistener;, "Lio/grpc/internal/RetriableStream<TReqT;>.Sublistener;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 759
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$100(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    invoke-virtual {v2, v3}, Lio/grpc/internal/RetriableStream$State;->substreamClosed(Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v2

    invoke-static {v1, v2}, Lio/grpc/internal/RetriableStream;->access$102(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$State;)Lio/grpc/internal/RetriableStream$State;

    .line 760
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$1400(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/InsightBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/internal/InsightBuilder;->append(Ljava/lang/Object;)Lio/grpc/internal/InsightBuilder;

    .line 761
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 765
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    iget-boolean v0, v0, Lio/grpc/internal/RetriableStream$Substream;->bufferLimitExceeded:Z

    if-eqz v0, :cond_1

    .line 766
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    invoke-static {v0, v1}, Lio/grpc/internal/RetriableStream;->access$1200(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V

    .line 767
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$100(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    if-ne v0, v1, :cond_0

    .line 768
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$1300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/ClientStreamListener;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lio/grpc/internal/ClientStreamListener;->closed(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 770
    :cond_0
    return-void

    .line 773
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$100(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-nez v0, :cond_e

    .line 774
    const/4 v0, 0x0

    .line 775
    .local v0, "isFatal":Z
    sget-object v1, Lio/grpc/internal/ClientStreamListener$RpcProgress;->REFUSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_7

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    .line 776
    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$1500(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 778
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    iget-object v3, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    iget v3, v3, Lio/grpc/internal/RetriableStream$Substream;->previousAttemptCount:I

    invoke-static {v1, v3}, Lio/grpc/internal/RetriableStream;->access$200(Lio/grpc/internal/RetriableStream;I)Lio/grpc/internal/RetriableStream$Substream;

    move-result-object v1

    .line 780
    .local v1, "newSubstream":Lio/grpc/internal/RetriableStream$Substream;
    iget-object v3, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v3}, Lio/grpc/internal/RetriableStream;->access$1600(Lio/grpc/internal/RetriableStream;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 781
    const/4 v3, 0x0

    .line 782
    .local v3, "commit":Z
    iget-object v4, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v4}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 787
    :try_start_1
    iget-object v5, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v5}, Lio/grpc/internal/RetriableStream;->access$100(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v6

    iget-object v7, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    invoke-virtual {v6, v7, v1}, Lio/grpc/internal/RetriableStream$State;->replaceActiveHedge(Lio/grpc/internal/RetriableStream$Substream;Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v6

    invoke-static {v5, v6}, Lio/grpc/internal/RetriableStream;->access$102(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$State;)Lio/grpc/internal/RetriableStream$State;

    .line 790
    iget-object v5, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v5}, Lio/grpc/internal/RetriableStream;->access$100(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v6

    invoke-static {v5, v6}, Lio/grpc/internal/RetriableStream;->access$400(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$State;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    .line 791
    invoke-static {v5}, Lio/grpc/internal/RetriableStream;->access$100(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v5

    iget-object v5, v5, Lio/grpc/internal/RetriableStream$State;->activeHedges:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    if-ne v5, v2, :cond_2

    .line 792
    const/4 v2, 0x1

    move v3, v2

    .line 794
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 795
    if-eqz v3, :cond_3

    .line 796
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v2, v1}, Lio/grpc/internal/RetriableStream;->access$1200(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V

    .line 798
    .end local v3    # "commit":Z
    :cond_3
    goto :goto_0

    .line 794
    .restart local v3    # "commit":Z
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 799
    .end local v3    # "commit":Z
    :cond_4
    iget-object v3, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v3}, Lio/grpc/internal/RetriableStream;->access$1700(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetryPolicy;

    move-result-object v3

    if-nez v3, :cond_5

    .line 800
    iget-object v3, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v3}, Lio/grpc/internal/RetriableStream;->access$1800(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetryPolicy$Provider;

    move-result-object v4

    invoke-interface {v4}, Lio/grpc/internal/RetryPolicy$Provider;->get()Lio/grpc/internal/RetryPolicy;

    move-result-object v4

    invoke-static {v3, v4}, Lio/grpc/internal/RetriableStream;->access$1702(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetryPolicy;)Lio/grpc/internal/RetryPolicy;

    .line 802
    :cond_5
    iget-object v3, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v3}, Lio/grpc/internal/RetriableStream;->access$1700(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetryPolicy;

    move-result-object v3

    iget v3, v3, Lio/grpc/internal/RetryPolicy;->maxAttempts:I

    if-ne v3, v2, :cond_6

    .line 804
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v2, v1}, Lio/grpc/internal/RetriableStream;->access$1200(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V

    .line 807
    :cond_6
    :goto_0
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v2}, Lio/grpc/internal/RetriableStream;->access$1000(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lio/grpc/internal/RetriableStream$Sublistener$1;

    invoke-direct {v3, p0, v1}, Lio/grpc/internal/RetriableStream$Sublistener$1;-><init>(Lio/grpc/internal/RetriableStream$Sublistener;Lio/grpc/internal/RetriableStream$Substream;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 813
    return-void

    .line 814
    .end local v1    # "newSubstream":Lio/grpc/internal/RetriableStream$Substream;
    :cond_7
    sget-object v1, Lio/grpc/internal/ClientStreamListener$RpcProgress;->DROPPED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    if-ne p2, v1, :cond_8

    .line 817
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$1600(Lio/grpc/internal/RetriableStream;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 818
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$1900(Lio/grpc/internal/RetriableStream;)V

    goto :goto_1

    .line 821
    :cond_8
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$1500(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 823
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$1700(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetryPolicy;

    move-result-object v1

    if-nez v1, :cond_9

    .line 824
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$1800(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetryPolicy$Provider;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/internal/RetryPolicy$Provider;->get()Lio/grpc/internal/RetryPolicy;

    move-result-object v2

    invoke-static {v1, v2}, Lio/grpc/internal/RetriableStream;->access$1702(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetryPolicy;)Lio/grpc/internal/RetryPolicy;

    .line 825
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$1700(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetryPolicy;

    move-result-object v2

    iget-wide v2, v2, Lio/grpc/internal/RetryPolicy;->initialBackoffNanos:J

    invoke-static {v1, v2, v3}, Lio/grpc/internal/RetriableStream;->access$2002(Lio/grpc/internal/RetriableStream;J)J

    .line 828
    :cond_9
    invoke-direct {p0, p1, p3}, Lio/grpc/internal/RetriableStream$Sublistener;->makeRetryDecision(Lio/grpc/Status;Lio/grpc/Metadata;)Lio/grpc/internal/RetriableStream$RetryPlan;

    move-result-object v1

    .line 829
    .local v1, "retryPlan":Lio/grpc/internal/RetriableStream$RetryPlan;
    iget-boolean v2, v1, Lio/grpc/internal/RetriableStream$RetryPlan;->shouldRetry:Z

    if-eqz v2, :cond_a

    .line 833
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v2}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 834
    :try_start_3
    iget-object v3, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    new-instance v4, Lio/grpc/internal/RetriableStream$FutureCanceller;

    invoke-static {v3}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/grpc/internal/RetriableStream$FutureCanceller;-><init>(Ljava/lang/Object;)V

    move-object v5, v4

    .local v5, "scheduledRetryCopy":Lio/grpc/internal/RetriableStream$FutureCanceller;
    invoke-static {v3, v4}, Lio/grpc/internal/RetriableStream;->access$2102(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$FutureCanceller;)Lio/grpc/internal/RetriableStream$FutureCanceller;

    .line 835
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 836
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v2}, Lio/grpc/internal/RetriableStream;->access$800(Lio/grpc/internal/RetriableStream;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lio/grpc/internal/RetriableStream$Sublistener$2;

    invoke-direct {v3, p0}, Lio/grpc/internal/RetriableStream$Sublistener$2;-><init>(Lio/grpc/internal/RetriableStream$Sublistener;)V

    iget-wide v6, v1, Lio/grpc/internal/RetriableStream$RetryPlan;->backoffNanos:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v6, v7, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    invoke-virtual {v5, v2}, Lio/grpc/internal/RetriableStream$FutureCanceller;->setFuture(Ljava/util/concurrent/Future;)V

    .line 853
    return-void

    .line 835
    .end local v5    # "scheduledRetryCopy":Lio/grpc/internal/RetriableStream$FutureCanceller;
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 855
    :cond_a
    iget-boolean v0, v1, Lio/grpc/internal/RetriableStream$RetryPlan;->isFatal:Z

    .line 856
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    iget-object v3, v1, Lio/grpc/internal/RetriableStream$RetryPlan;->hedgingPushbackMillis:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lio/grpc/internal/RetriableStream;->access$2200(Lio/grpc/internal/RetriableStream;Ljava/lang/Integer;)V

    .line 859
    .end local v1    # "retryPlan":Lio/grpc/internal/RetriableStream$RetryPlan;
    :cond_b
    :goto_1
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$1600(Lio/grpc/internal/RetriableStream;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 860
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 861
    :try_start_5
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v2}, Lio/grpc/internal/RetriableStream;->access$100(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v3

    iget-object v4, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    invoke-virtual {v3, v4}, Lio/grpc/internal/RetriableStream$State;->removeActiveHedge(Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v3

    invoke-static {v2, v3}, Lio/grpc/internal/RetriableStream;->access$102(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$State;)Lio/grpc/internal/RetriableStream$State;

    .line 867
    if-nez v0, :cond_d

    .line 868
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v2}, Lio/grpc/internal/RetriableStream;->access$100(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v3

    invoke-static {v2, v3}, Lio/grpc/internal/RetriableStream;->access$400(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$State;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v2}, Lio/grpc/internal/RetriableStream;->access$100(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v2

    iget-object v2, v2, Lio/grpc/internal/RetriableStream$State;->activeHedges:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 869
    :cond_c
    monitor-exit v1

    return-void

    .line 873
    :cond_d
    monitor-exit v1

    goto :goto_2

    :catchall_2
    move-exception v2

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 877
    .end local v0    # "isFatal":Z
    :cond_e
    :goto_2
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    invoke-static {v0, v1}, Lio/grpc/internal/RetriableStream;->access$1200(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V

    .line 878
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$100(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    if-ne v0, v1, :cond_f

    .line 879
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$1300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/ClientStreamListener;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lio/grpc/internal/ClientStreamListener;->closed(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 881
    :cond_f
    return-void

    .line 761
    :catchall_3
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1
.end method

.method public headersRead(Lio/grpc/Metadata;)V
    .locals 2
    .param p1, "headers"    # Lio/grpc/Metadata;

    .line 742
    .local p0, "this":Lio/grpc/internal/RetriableStream$Sublistener;, "Lio/grpc/internal/RetriableStream<TReqT;>.Sublistener;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    invoke-static {v0, v1}, Lio/grpc/internal/RetriableStream;->access$1200(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V

    .line 743
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$100(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    if-ne v0, v1, :cond_0

    .line 744
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$1300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/ClientStreamListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStreamListener;->headersRead(Lio/grpc/Metadata;)V

    .line 745
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$500(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$Throttle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$500(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$Throttle;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/RetriableStream$Throttle;->onSuccess()V

    .line 749
    :cond_0
    return-void
.end method

.method public messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V
    .locals 3
    .param p1, "producer"    # Lio/grpc/internal/StreamListener$MessageProducer;

    .line 939
    .local p0, "this":Lio/grpc/internal/RetriableStream$Sublistener;, "Lio/grpc/internal/RetriableStream<TReqT;>.Sublistener;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$100(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v0

    .line 940
    .local v0, "savedState":Lio/grpc/internal/RetriableStream$State;
    iget-object v1, v0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Headers should be received prior to messages."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 942
    iget-object v1, v0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-object v2, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    if-eq v1, v2, :cond_1

    .line 943
    return-void

    .line 945
    :cond_1
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$1300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/ClientStreamListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lio/grpc/internal/ClientStreamListener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V

    .line 946
    return-void
.end method

.method public onReady()V
    .locals 2

    .line 951
    .local p0, "this":Lio/grpc/internal/RetriableStream$Sublistener;, "Lio/grpc/internal/RetriableStream<TReqT;>.Sublistener;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$100(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$Sublistener;->substream:Lio/grpc/internal/RetriableStream$Substream;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$1300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/ClientStreamListener;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ClientStreamListener;->onReady()V

    .line 954
    :cond_0
    return-void
.end method
