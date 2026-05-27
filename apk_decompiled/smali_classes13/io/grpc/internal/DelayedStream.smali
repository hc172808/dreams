.class Lio/grpc/internal/DelayedStream;
.super Ljava/lang/Object;
.source "DelayedStream.java"

# interfaces
.implements Lio/grpc/internal/ClientStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/DelayedStream$DelayedStreamListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private delayedListener:Lio/grpc/internal/DelayedStream$DelayedStreamListener;

.field private error:Lio/grpc/Status;

.field private listener:Lio/grpc/internal/ClientStreamListener;

.field private volatile passThrough:Z

.field private pendingCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private realStream:Lio/grpc/internal/ClientStream;

.field private startTimeNanos:J

.field private streamSetTimeNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 42
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/DelayedStream;->pendingCalls:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/DelayedStream;)Lio/grpc/internal/ClientStream;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/DelayedStream;

    .line 42
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    return-object v0
.end method

.method private delayOrExecute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 180
    monitor-enter p0

    .line 181
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->pendingCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    monitor-exit p0

    return-void

    .line 185
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 187
    return-void

    .line 185
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private drainPendingCalls()V
    .locals 4

    .line 141
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    if-eqz v0, :cond_4

    .line 142
    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    if-nez v0, :cond_3

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, "toRun":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    const/4 v1, 0x0

    .line 146
    .local v1, "delayedListener":Lio/grpc/internal/DelayedStream$DelayedStreamListener;
    :goto_0
    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/DelayedStream;->pendingCalls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    const/4 v2, 0x0

    iput-object v2, p0, Lio/grpc/internal/DelayedStream;->pendingCalls:Ljava/util/List;

    .line 149
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    .line 150
    iget-object v2, p0, Lio/grpc/internal/DelayedStream;->delayedListener:Lio/grpc/internal/DelayedStream$DelayedStreamListener;

    move-object v1, v2

    .line 151
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v1}, Lio/grpc/internal/DelayedStream$DelayedStreamListener;->drainPendingCallbacks()V

    .line 170
    :cond_0
    return-void

    .line 156
    :cond_1
    move-object v2, v0

    .line 157
    .local v2, "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :try_start_1
    iget-object v3, p0, Lio/grpc/internal/DelayedStream;->pendingCalls:Ljava/util/List;

    move-object v0, v3

    .line 158
    iput-object v2, p0, Lio/grpc/internal/DelayedStream;->pendingCalls:Ljava/util/List;

    .line 159
    .end local v2    # "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 163
    .local v3, "runnable":Ljava/lang/Runnable;
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 164
    .end local v3    # "runnable":Ljava/lang/Runnable;
    goto :goto_1

    .line 165
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 142
    .end local v0    # "toRun":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    .end local v1    # "delayedListener":Lio/grpc/internal/DelayedStream$DelayedStreamListener;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 141
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private setRealStream(Lio/grpc/internal/ClientStream;)V
    .locals 3
    .param p1, "realStream"    # Lio/grpc/internal/ClientStream;

    .line 310
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "realStream already set to %s"

    invoke-static {v1, v2, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 311
    iput-object p1, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    .line 312
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/internal/DelayedStream;->streamSetTimeNanos:J

    .line 313
    return-void
.end method


# virtual methods
.method public appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V
    .locals 5
    .param p1, "insight"    # Lio/grpc/internal/InsightBuilder;

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    .line 105
    monitor-exit p0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    if-eqz v0, :cond_1

    .line 108
    const-string v0, "buffered_nanos"

    iget-wide v1, p0, Lio/grpc/internal/DelayedStream;->streamSetTimeNanos:J

    iget-wide v3, p0, Lio/grpc/internal/DelayedStream;->startTimeNanos:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/grpc/internal/InsightBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/internal/InsightBuilder;

    .line 109
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->appendTimeoutInsight(Lio/grpc/internal/InsightBuilder;)V

    goto :goto_0

    .line 111
    :cond_1
    const-string v0, "buffered_nanos"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lio/grpc/internal/DelayedStream;->startTimeNanos:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/grpc/internal/InsightBuilder;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/internal/InsightBuilder;

    .line 112
    const-string v0, "waiting_for_connection"

    invoke-virtual {p1, v0}, Lio/grpc/internal/InsightBuilder;->append(Ljava/lang/Object;)Lio/grpc/internal/InsightBuilder;

    .line 114
    :goto_0
    monitor-exit p0

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancel(Lio/grpc/Status;)V
    .locals 3
    .param p1, "reason"    # Lio/grpc/Status;

    .line 280
    const-string v0, "reason"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const/4 v0, 0x1

    .line 282
    .local v0, "delegateToRealStream":Z
    const/4 v1, 0x0

    .line 283
    .local v1, "listenerToClose":Lio/grpc/internal/ClientStreamListener;
    monitor-enter p0

    .line 285
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    if-nez v2, :cond_0

    .line 286
    sget-object v2, Lio/grpc/internal/NoopClientStream;->INSTANCE:Lio/grpc/internal/NoopClientStream;

    invoke-direct {p0, v2}, Lio/grpc/internal/DelayedStream;->setRealStream(Lio/grpc/internal/ClientStream;)V

    .line 287
    const/4 v0, 0x0

    .line 289
    iget-object v2, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    move-object v1, v2

    .line 290
    iput-object p1, p0, Lio/grpc/internal/DelayedStream;->error:Lio/grpc/Status;

    .line 292
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    if-eqz v0, :cond_1

    .line 294
    new-instance v2, Lio/grpc/internal/DelayedStream$8;

    invoke-direct {v2, p0, p1}, Lio/grpc/internal/DelayedStream$8;-><init>(Lio/grpc/internal/DelayedStream;Lio/grpc/Status;)V

    invoke-direct {p0, v2}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 301
    :cond_1
    if-eqz v1, :cond_2

    .line 302
    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    invoke-interface {v1, p1, v2}, Lio/grpc/internal/ClientStreamListener;->closed(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 304
    :cond_2
    invoke-direct {p0}, Lio/grpc/internal/DelayedStream;->drainPendingCalls()V

    .line 306
    :goto_0
    return-void

    .line 292
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public flush()V
    .locals 1

    .line 265
    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->flush()V

    goto :goto_0

    .line 268
    :cond_0
    new-instance v0, Lio/grpc/internal/DelayedStream$7;

    invoke-direct {v0, p0}, Lio/grpc/internal/DelayedStream$7;-><init>(Lio/grpc/internal/DelayedStream;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 275
    :goto_0
    return-void
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 2

    .line 238
    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    .line 240
    .local v0, "savedRealStream":Lio/grpc/internal/ClientStream;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->getAttributes()Lio/grpc/Attributes;

    move-result-object v1

    return-object v1

    .line 244
    :cond_0
    sget-object v1, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    return-object v1

    .line 240
    .end local v0    # "savedRealStream":Lio/grpc/internal/ClientStream;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getRealStream()Lio/grpc/internal/ClientStream;
    .locals 1

    .line 397
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    return-object v0
.end method

.method public halfClose()V
    .locals 1

    .line 317
    new-instance v0, Lio/grpc/internal/DelayedStream$9;

    invoke-direct {v0, p0}, Lio/grpc/internal/DelayedStream$9;-><init>(Lio/grpc/internal/DelayedStream;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 323
    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 374
    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->isReady()Z

    move-result v0

    return v0

    .line 377
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public request(I)V
    .locals 1
    .param p1, "numMessages"    # I

    .line 327
    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->request(I)V

    goto :goto_0

    .line 330
    :cond_0
    new-instance v0, Lio/grpc/internal/DelayedStream$10;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedStream$10;-><init>(Lio/grpc/internal/DelayedStream;I)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 337
    :goto_0
    return-void
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 2
    .param p1, "authority"    # Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "May only be called before start"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 192
    const-string v0, "authority"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v0, Lio/grpc/internal/DelayedStream$4;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedStream$4;-><init>(Lio/grpc/internal/DelayedStream;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method

.method public setCompressor(Lio/grpc/Compressor;)V
    .locals 1
    .param p1, "compressor"    # Lio/grpc/Compressor;

    .line 341
    const-string v0, "compressor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    new-instance v0, Lio/grpc/internal/DelayedStream$11;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedStream$11;-><init>(Lio/grpc/internal/DelayedStream;Lio/grpc/Compressor;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 348
    return-void
.end method

.method public setDeadline(Lio/grpc/Deadline;)V
    .locals 1
    .param p1, "deadline"    # Lio/grpc/Deadline;

    .line 93
    new-instance v0, Lio/grpc/internal/DelayedStream$3;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedStream$3;-><init>(Lio/grpc/internal/DelayedStream;Lio/grpc/Deadline;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method public setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)V
    .locals 1
    .param p1, "decompressorRegistry"    # Lio/grpc/DecompressorRegistry;

    .line 363
    const-string v0, "decompressorRegistry"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    new-instance v0, Lio/grpc/internal/DelayedStream$13;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedStream$13;-><init>(Lio/grpc/internal/DelayedStream;Lio/grpc/DecompressorRegistry;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 370
    return-void
.end method

.method public setFullStreamDecompression(Z)V
    .locals 1
    .param p1, "fullStreamDecompression"    # Z

    .line 352
    new-instance v0, Lio/grpc/internal/DelayedStream$12;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedStream$12;-><init>(Lio/grpc/internal/DelayedStream;Z)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 359
    return-void
.end method

.method public setMaxInboundMessageSize(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .line 65
    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->setMaxInboundMessageSize(I)V

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Lio/grpc/internal/DelayedStream$1;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedStream$1;-><init>(Lio/grpc/internal/DelayedStream;I)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 75
    :goto_0
    return-void
.end method

.method public setMaxOutboundMessageSize(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .line 79
    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->setMaxOutboundMessageSize(I)V

    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Lio/grpc/internal/DelayedStream$2;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedStream$2;-><init>(Lio/grpc/internal/DelayedStream;I)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 89
    :goto_0
    return-void
.end method

.method public setMessageCompression(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 383
    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->setMessageCompression(Z)V

    goto :goto_0

    .line 386
    :cond_0
    new-instance v0, Lio/grpc/internal/DelayedStream$14;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedStream$14;-><init>(Lio/grpc/internal/DelayedStream;Z)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 393
    :goto_0
    return-void
.end method

.method final setStream(Lio/grpc/internal/ClientStream;)V
    .locals 1
    .param p1, "stream"    # Lio/grpc/internal/ClientStream;

    .line 124
    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    if-eqz v0, :cond_0

    .line 127
    monitor-exit p0

    return-void

    .line 129
    :cond_0
    const-string v0, "stream"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ClientStream;

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->setRealStream(Lio/grpc/internal/ClientStream;)V

    .line 130
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-direct {p0}, Lio/grpc/internal/DelayedStream;->drainPendingCalls()V

    .line 133
    return-void

    .line 130
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public start(Lio/grpc/internal/ClientStreamListener;)V
    .locals 4
    .param p1, "listener"    # Lio/grpc/internal/ClientStreamListener;

    .line 203
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 207
    monitor-enter p0

    .line 208
    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ClientStreamListener;

    iput-object v0, p0, Lio/grpc/internal/DelayedStream;->listener:Lio/grpc/internal/ClientStreamListener;

    .line 210
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->error:Lio/grpc/Status;

    .line 211
    .local v0, "savedError":Lio/grpc/Status;
    iget-boolean v1, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    .line 212
    .local v1, "savedPassThrough":Z
    if-nez v1, :cond_1

    .line 213
    new-instance v2, Lio/grpc/internal/DelayedStream$DelayedStreamListener;

    invoke-direct {v2, p1}, Lio/grpc/internal/DelayedStream$DelayedStreamListener;-><init>(Lio/grpc/internal/ClientStreamListener;)V

    iput-object v2, p0, Lio/grpc/internal/DelayedStream;->delayedListener:Lio/grpc/internal/DelayedStream$DelayedStreamListener;

    move-object p1, v2

    .line 215
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lio/grpc/internal/DelayedStream;->startTimeNanos:J

    .line 216
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    if-eqz v0, :cond_2

    .line 218
    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    invoke-interface {p1, v0, v2}, Lio/grpc/internal/ClientStreamListener;->closed(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 219
    return-void

    .line 222
    :cond_2
    if-eqz v1, :cond_3

    .line 223
    iget-object v2, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    invoke-interface {v2, p1}, Lio/grpc/internal/ClientStream;->start(Lio/grpc/internal/ClientStreamListener;)V

    goto :goto_1

    .line 225
    :cond_3
    move-object v2, p1

    .line 226
    .local v2, "finalListener":Lio/grpc/internal/ClientStreamListener;
    new-instance v3, Lio/grpc/internal/DelayedStream$5;

    invoke-direct {v3, p0, v2}, Lio/grpc/internal/DelayedStream$5;-><init>(Lio/grpc/internal/DelayedStream;Lio/grpc/internal/ClientStreamListener;)V

    invoke-direct {p0, v3}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 233
    .end local v2    # "finalListener":Lio/grpc/internal/ClientStreamListener;
    :goto_1
    return-void

    .line 216
    .end local v0    # "savedError":Lio/grpc/Status;
    .end local v1    # "savedPassThrough":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public writeMessage(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "message"    # Ljava/io/InputStream;

    .line 250
    const-string v0, "message"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-boolean v0, p0, Lio/grpc/internal/DelayedStream;->passThrough:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lio/grpc/internal/DelayedStream;->realStream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStream;->writeMessage(Ljava/io/InputStream;)V

    goto :goto_0

    .line 254
    :cond_0
    new-instance v0, Lio/grpc/internal/DelayedStream$6;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedStream$6;-><init>(Lio/grpc/internal/DelayedStream;Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedStream;->delayOrExecute(Ljava/lang/Runnable;)V

    .line 261
    :goto_0
    return-void
.end method
