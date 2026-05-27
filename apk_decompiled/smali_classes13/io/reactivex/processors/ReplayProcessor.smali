.class public final Lio/reactivex/processors/ReplayProcessor;
.super Lio/reactivex/processors/FlowableProcessor;
.source "ReplayProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;,
        Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;,
        Lio/reactivex/processors/ReplayProcessor$TimedNode;,
        Lio/reactivex/processors/ReplayProcessor$Node;,
        Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;,
        Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;,
        Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/processors/FlowableProcessor<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

.field private static final EMPTY_ARRAY:[Ljava/lang/Object;

.field static final TERMINATED:[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;


# instance fields
.field final buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/ReplayProcessor$ReplayBuffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field done:Z

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 92
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lio/reactivex/processors/ReplayProcessor;->EMPTY_ARRAY:[Ljava/lang/Object;

    .line 101
    new-array v1, v0, [Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    sput-object v1, Lio/reactivex/processors/ReplayProcessor;->EMPTY:[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    .line 104
    new-array v0, v0, [Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    sput-object v0, Lio/reactivex/processors/ReplayProcessor;->TERMINATED:[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    return-void
.end method

.method constructor <init>(Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/ReplayProcessor$ReplayBuffer<",
            "TT;>;)V"
        }
    .end annotation

    .line 272
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor;, "Lio/reactivex/processors/ReplayProcessor<TT;>;"
    .local p1, "buffer":Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$ReplayBuffer<TT;>;"
    invoke-direct {p0}, Lio/reactivex/processors/FlowableProcessor;-><init>()V

    .line 273
    iput-object p1, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    .line 274
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/processors/ReplayProcessor;->EMPTY:[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 275
    return-void
.end method

.method public static create()Lio/reactivex/processors/ReplayProcessor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/processors/ReplayProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 122
    new-instance v0, Lio/reactivex/processors/ReplayProcessor;

    new-instance v1, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/processors/ReplayProcessor;-><init>(Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;)V

    return-object v0
.end method

.method public static create(I)Lio/reactivex/processors/ReplayProcessor;
    .locals 2
    .param p0, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/processors/ReplayProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 143
    new-instance v0, Lio/reactivex/processors/ReplayProcessor;

    new-instance v1, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;

    invoke-direct {v1, p0}, Lio/reactivex/processors/ReplayProcessor$UnboundedReplayBuffer;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/processors/ReplayProcessor;-><init>(Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;)V

    return-object v0
.end method

.method static createUnbounded()Lio/reactivex/processors/ReplayProcessor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/processors/ReplayProcessor<",
            "TT;>;"
        }
    .end annotation

    .line 186
    new-instance v0, Lio/reactivex/processors/ReplayProcessor;

    new-instance v1, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;

    const v2, 0x7fffffff

    invoke-direct {v1, v2}, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/processors/ReplayProcessor;-><init>(Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;)V

    return-object v0
.end method

.method public static createWithSize(I)Lio/reactivex/processors/ReplayProcessor;
    .locals 2
    .param p0, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lio/reactivex/processors/ReplayProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 169
    new-instance v0, Lio/reactivex/processors/ReplayProcessor;

    new-instance v1, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;

    invoke-direct {v1, p0}, Lio/reactivex/processors/ReplayProcessor$SizeBoundReplayBuffer;-><init>(I)V

    invoke-direct {v0, v1}, Lio/reactivex/processors/ReplayProcessor;-><init>(Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;)V

    return-object v0
.end method

.method public static createWithTime(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/processors/ReplayProcessor;
    .locals 8
    .param p0, "maxAge"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "scheduler"    # Lio/reactivex/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            ")",
            "Lio/reactivex/processors/ReplayProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 224
    new-instance v0, Lio/reactivex/processors/ReplayProcessor;

    new-instance v7, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;

    const v2, 0x7fffffff

    move-object v1, v7

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    invoke-direct {v0, v7}, Lio/reactivex/processors/ReplayProcessor;-><init>(Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;)V

    return-object v0
.end method

.method public static createWithTimeAndSize(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;I)Lio/reactivex/processors/ReplayProcessor;
    .locals 8
    .param p0, "maxAge"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "scheduler"    # Lio/reactivex/Scheduler;
    .param p4, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/Scheduler;",
            "I)",
            "Lio/reactivex/processors/ReplayProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 264
    new-instance v0, Lio/reactivex/processors/ReplayProcessor;

    new-instance v7, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;

    move-object v1, v7

    move v2, p4

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/reactivex/processors/ReplayProcessor$SizeAndTimeBoundReplayBuffer;-><init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V

    invoke-direct {v0, v7}, Lio/reactivex/processors/ReplayProcessor;-><init>(Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;)V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<",
            "TT;>;)Z"
        }
    .end annotation

    .line 453
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor;, "Lio/reactivex/processors/ReplayProcessor<TT;>;"
    .local p1, "rs":Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    .line 454
    .local v0, "a":[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    sget-object v1, Lio/reactivex/processors/ReplayProcessor;->TERMINATED:[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 455
    return v2

    .line 457
    :cond_0
    array-length v1, v0

    .line 459
    .local v1, "len":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    .line 460
    .local v3, "b":[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 461
    aput-object p1, v3, v1

    .line 462
    iget-object v2, p0, Lio/reactivex/processors/ReplayProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 463
    const/4 v2, 0x1

    return v2

    .line 465
    .end local v0    # "a":[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    .end local v1    # "len":I
    .end local v3    # "b":[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    :cond_1
    goto :goto_0
.end method

.method public cleanupBuffer()V
    .locals 1

    .line 386
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor;, "Lio/reactivex/processors/ReplayProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    invoke-interface {v0}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->trimHead()V

    .line 387
    return-void
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2

    .line 364
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor;, "Lio/reactivex/processors/ReplayProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    .line 365
    .local v0, "b":Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$ReplayBuffer<TT;>;"
    invoke-interface {v0}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    invoke-interface {v0}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->getError()Ljava/lang/Throwable;

    move-result-object v1

    return-object v1

    .line 368
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 395
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor;, "Lio/reactivex/processors/ReplayProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    invoke-interface {v0}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValues()[Ljava/lang/Object;
    .locals 3

    .line 405
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor;, "Lio/reactivex/processors/ReplayProcessor<TT;>;"
    sget-object v0, Lio/reactivex/processors/ReplayProcessor;->EMPTY_ARRAY:[Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    .line 406
    .local v1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, v1}, Lio/reactivex/processors/ReplayProcessor;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 407
    .local v2, "b":[Ljava/lang/Object;, "[TT;"
    if-ne v2, v0, :cond_0

    .line 408
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0

    .line 410
    :cond_0
    return-object v2
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 423
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor;, "Lio/reactivex/processors/ReplayProcessor<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    invoke-interface {v0, p1}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasComplete()Z
    .locals 2

    .line 428
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor;, "Lio/reactivex/processors/ReplayProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    .line 429
    .local v0, "b":Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$ReplayBuffer<TT;>;"
    invoke-interface {v0}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->getError()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasSubscribers()Z
    .locals 1

    .line 354
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor;, "Lio/reactivex/processors/ReplayProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasThrowable()Z
    .locals 2

    .line 434
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor;, "Lio/reactivex/processors/ReplayProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    .line 435
    .local v0, "b":Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$ReplayBuffer<TT;>;"
    invoke-interface {v0}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->getError()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasValue()Z
    .locals 1

    .line 444
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor;, "Lio/reactivex/processors/ReplayProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    invoke-interface {v0}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 5

    .line 338
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor;, "Lio/reactivex/processors/ReplayProcessor<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor;->done:Z

    if-eqz v0, :cond_0

    .line 339
    return-void

    .line 341
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor;->done:Z

    .line 343
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    .line 345
    .local v0, "b":Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$ReplayBuffer<TT;>;"
    invoke-interface {v0}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->complete()V

    .line 347
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/processors/ReplayProcessor;->TERMINATED:[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 348
    .local v4, "rs":Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    invoke-interface {v0, v4}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->replay(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V

    .line 347
    .end local v4    # "rs":Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 350
    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 319
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor;, "Lio/reactivex/processors/ReplayProcessor<TT;>;"
    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 321
    iget-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor;->done:Z

    if-eqz v0, :cond_0

    .line 322
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 323
    return-void

    .line 325
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor;->done:Z

    .line 327
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    .line 328
    .local v0, "b":Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$ReplayBuffer<TT;>;"
    invoke-interface {v0, p1}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->error(Ljava/lang/Throwable;)V

    .line 330
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/processors/ReplayProcessor;->TERMINATED:[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 331
    .local v4, "rs":Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    invoke-interface {v0, v4}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->replay(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V

    .line 330
    .end local v4    # "rs":Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 333
    :cond_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 302
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor;, "Lio/reactivex/processors/ReplayProcessor<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 304
    iget-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor;->done:Z

    if-eqz v0, :cond_0

    .line 305
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    .line 309
    .local v0, "b":Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;, "Lio/reactivex/processors/ReplayProcessor$ReplayBuffer<TT;>;"
    invoke-interface {v0, p1}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->next(Ljava/lang/Object;)V

    .line 311
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 312
    .local v4, "rs":Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    invoke-interface {v0, v4}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->replay(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V

    .line 311
    .end local v4    # "rs":Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 314
    :cond_1
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 293
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor;, "Lio/reactivex/processors/ReplayProcessor<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/processors/ReplayProcessor;->done:Z

    if-eqz v0, :cond_0

    .line 294
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 295
    return-void

    .line 297
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 298
    return-void
.end method

.method remove(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 471
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor;, "Lio/reactivex/processors/ReplayProcessor<TT;>;"
    .local p1, "rs":Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    .line 472
    .local v0, "a":[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    sget-object v1, Lio/reactivex/processors/ReplayProcessor;->TERMINATED:[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    if-eq v0, v1, :cond_6

    sget-object v1, Lio/reactivex/processors/ReplayProcessor;->EMPTY:[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    if-ne v0, v1, :cond_0

    goto :goto_4

    .line 475
    :cond_0
    array-length v1, v0

    .line 476
    .local v1, "len":I
    const/4 v2, -0x1

    .line 477
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 478
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_1

    .line 479
    move v2, v3

    .line 480
    goto :goto_2

    .line 477
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 484
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 485
    return-void

    .line 488
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 489
    sget-object v3, Lio/reactivex/processors/ReplayProcessor;->EMPTY:[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    .local v3, "b":[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    goto :goto_3

    .line 491
    .end local v3    # "b":[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    :cond_4
    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    .line 492
    .local v4, "b":[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 493
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v3

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 495
    .end local v4    # "b":[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    .restart local v3    # "b":[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    :goto_3
    iget-object v4, p0, Lio/reactivex/processors/ReplayProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 496
    return-void

    .line 498
    .end local v0    # "a":[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    .end local v1    # "len":I
    .end local v2    # "j":I
    .end local v3    # "b":[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    :cond_5
    goto :goto_0

    .line 473
    .restart local v0    # "a":[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "[Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    :cond_6
    :goto_4
    return-void
.end method

.method size()I
    .locals 1

    .line 448
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor;, "Lio/reactivex/processors/ReplayProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    invoke-interface {v0}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->size()I

    move-result v0

    return v0
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 279
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor;, "Lio/reactivex/processors/ReplayProcessor<TT;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    new-instance v0, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    invoke-direct {v0, p1, p0}, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/ReplayProcessor;)V

    .line 280
    .local v0, "rs":Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;, "Lio/reactivex/processors/ReplayProcessor$ReplaySubscription<TT;>;"
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 282
    invoke-virtual {p0, v0}, Lio/reactivex/processors/ReplayProcessor;->add(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-boolean v1, v0, Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;->cancelled:Z

    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {p0, v0}, Lio/reactivex/processors/ReplayProcessor;->remove(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V

    .line 285
    return-void

    .line 288
    :cond_0
    iget-object v1, p0, Lio/reactivex/processors/ReplayProcessor;->buffer:Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;

    invoke-interface {v1, v0}, Lio/reactivex/processors/ReplayProcessor$ReplayBuffer;->replay(Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;)V

    .line 289
    return-void
.end method

.method subscriberCount()I
    .locals 1

    .line 358
    .local p0, "this":Lio/reactivex/processors/ReplayProcessor;, "Lio/reactivex/processors/ReplayProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/ReplayProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/ReplayProcessor$ReplaySubscription;

    array-length v0, v0

    return v0
.end method
