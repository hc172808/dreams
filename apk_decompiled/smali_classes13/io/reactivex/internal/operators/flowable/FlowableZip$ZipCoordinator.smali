.class final Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "FlowableZip.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableZip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ZipCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x21ca630c444d714fL


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field final current:[Ljava/lang/Object;

.field final delayErrors:Z

.field final errors:Lio/reactivex/internal/util/AtomicThrowable;

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final subscribers:[Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field final zipper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/functions/Function;IIZ)V
    .locals 3
    .param p3, "n"    # I
    .param p4, "prefetch"    # I
    .param p5, "delayErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IIZ)V"
        }
    .end annotation

    .line 106
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator<TT;TR;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TR;>;"
    .local p2, "zipper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-[Ljava/lang/Object;+TR;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 107
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->actual:Lorg/reactivestreams/Subscriber;

    .line 108
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->zipper:Lio/reactivex/functions/Function;

    .line 109
    iput-boolean p5, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->delayErrors:Z

    .line 111
    new-array v0, p3, [Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;

    .line 112
    .local v0, "a":[Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber<TT;TR;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 113
    new-instance v2, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;

    invoke-direct {v2, p0, p4}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;-><init>(Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;I)V

    aput-object v2, v0, v1

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "i":I
    :cond_0
    new-array v1, p3, [Ljava/lang/Object;

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->current:[Ljava/lang/Object;

    .line 116
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->subscribers:[Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;

    .line 117
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 118
    new-instance v1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {v1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    .line 119
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 141
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelled:Z

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelled:Z

    .line 144
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    .line 146
    :cond_0
    return-void
.end method

.method cancelAll()V
    .locals 4

    .line 158
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->subscribers:[Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 159
    .local v3, "s":Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber<TT;TR;>;"
    invoke-virtual {v3}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;->cancel()V

    .line 158
    .end local v3    # "s":Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber<TT;TR;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_0
    return-void
.end method

.method drain()V
    .locals 19

    .line 165
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator<TT;TR;>;"
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    return-void

    .line 169
    :cond_0
    iget-object v2, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->actual:Lorg/reactivestreams/Subscriber;

    .line 170
    .local v2, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TR;>;"
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->subscribers:[Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;

    .line 171
    .local v3, "qs":[Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber<TT;TR;>;"
    array-length v4, v3

    .line 172
    .local v4, "n":I
    iget-object v5, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->current:[Ljava/lang/Object;

    .line 174
    .local v5, "values":[Ljava/lang/Object;
    const/4 v0, 0x1

    move v6, v0

    .line 178
    .local v6, "missed":I
    :goto_0
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    .line 179
    .local v7, "r":J
    const-wide/16 v9, 0x0

    .line 181
    .local v9, "e":J
    :goto_1
    cmp-long v0, v7, v9

    if-eqz v0, :cond_c

    .line 183
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelled:Z

    if-eqz v0, :cond_1

    .line 184
    return-void

    .line 187
    :cond_1
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->delayErrors:Z

    if-nez v0, :cond_2

    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 188
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    .line 189
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 190
    return-void

    .line 193
    :cond_2
    const/4 v0, 0x0

    .line 195
    .local v0, "empty":Z
    const/4 v14, 0x0

    move v15, v14

    move v14, v0

    .end local v0    # "empty":Z
    .local v14, "empty":Z
    .local v15, "j":I
    :goto_2
    if-ge v15, v4, :cond_a

    .line 196
    aget-object v12, v3, v15

    .line 197
    .local v12, "inner":Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber<TT;TR;>;"
    aget-object v0, v5, v15

    if-nez v0, :cond_9

    .line 199
    :try_start_0
    iget-boolean v0, v12, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;->done:Z

    .line 200
    .local v0, "d":Z
    iget-object v13, v12, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 202
    .local v13, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    if-eqz v13, :cond_3

    invoke-interface {v13}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v16

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    .line 204
    .local v16, "v":Ljava/lang/Object;, "TT;"
    :goto_3
    if-nez v16, :cond_4

    const/16 v17, 0x1

    goto :goto_4

    :cond_4
    const/16 v17, 0x0

    .line 205
    .local v17, "sourceEmpty":Z
    :goto_4
    if-eqz v0, :cond_6

    if-eqz v17, :cond_6

    .line 206
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    .line 207
    iget-object v11, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v11}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Throwable;

    .line 208
    .local v11, "ex":Ljava/lang/Throwable;
    if-eqz v11, :cond_5

    .line 209
    move/from16 v18, v0

    .end local v0    # "d":Z
    .local v18, "d":Z
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 211
    .end local v18    # "d":Z
    .restart local v0    # "d":Z
    :cond_5
    move/from16 v18, v0

    .end local v0    # "d":Z
    .restart local v18    # "d":Z
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 213
    :goto_5
    return-void

    .line 205
    .end local v11    # "ex":Ljava/lang/Throwable;
    .end local v18    # "d":Z
    .restart local v0    # "d":Z
    :cond_6
    move/from16 v18, v0

    .line 215
    .end local v0    # "d":Z
    .restart local v18    # "d":Z
    if-nez v17, :cond_7

    .line 216
    aput-object v16, v5, v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    .line 218
    :cond_7
    const/4 v14, 0x1

    .line 230
    .end local v13    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .end local v16    # "v":Ljava/lang/Object;, "TT;"
    .end local v17    # "sourceEmpty":Z
    .end local v18    # "d":Z
    :goto_6
    goto :goto_7

    .line 220
    :catchall_0
    move-exception v0

    .line 221
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 223
    iget-object v11, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v11, v0}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 224
    iget-boolean v11, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->delayErrors:Z

    if-nez v11, :cond_8

    .line 225
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    .line 226
    iget-object v11, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v11}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v11

    invoke-interface {v2, v11}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 227
    return-void

    .line 229
    :cond_8
    const/4 v11, 0x1

    move v14, v11

    .line 195
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v12    # "inner":Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber<TT;TR;>;"
    :cond_9
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 234
    .end local v15    # "j":I
    :cond_a
    if-eqz v14, :cond_b

    .line 235
    const/4 v11, 0x0

    goto :goto_8

    .line 241
    :cond_b
    :try_start_1
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->zipper:Lio/reactivex/functions/Function;

    invoke-virtual {v5}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v0, v11}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v11, "The zipper returned a null value"

    invoke-static {v0, v11}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 248
    .local v0, "v":Ljava/lang/Object;, "TR;"
    nop

    .line 250
    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 252
    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    .line 254
    const/4 v11, 0x0

    invoke-static {v5, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 255
    .end local v0    # "v":Ljava/lang/Object;, "TR;"
    .end local v14    # "empty":Z
    goto/16 :goto_1

    .line 242
    .restart local v14    # "empty":Z
    :catchall_1
    move-exception v0

    .line 243
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    .line 245
    iget-object v11, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v11, v0}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 246
    iget-object v11, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v11}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v11

    invoke-interface {v2, v11}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 247
    return-void

    .line 181
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v14    # "empty":Z
    :cond_c
    const/4 v11, 0x0

    .line 257
    :goto_8
    cmp-long v0, v7, v9

    if-nez v0, :cond_15

    .line 258
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelled:Z

    if-eqz v0, :cond_d

    .line 259
    return-void

    .line 262
    :cond_d
    iget-boolean v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->delayErrors:Z

    if-nez v0, :cond_e

    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 263
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    .line 264
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 265
    return-void

    .line 268
    :cond_e
    const/4 v0, 0x0

    move v12, v0

    .local v12, "j":I
    :goto_9
    if-ge v12, v4, :cond_15

    .line 269
    aget-object v13, v3, v12

    .line 270
    .local v13, "inner":Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber<TT;TR;>;"
    aget-object v0, v5, v12

    if-nez v0, :cond_14

    .line 272
    :try_start_2
    iget-boolean v0, v13, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;->done:Z

    .line 273
    .local v0, "d":Z
    iget-object v14, v13, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 274
    .local v14, "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    if-eqz v14, :cond_f

    invoke-interface {v14}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v15

    goto :goto_a

    :cond_f
    move-object v15, v11

    .line 276
    .local v15, "v":Ljava/lang/Object;, "TT;"
    :goto_a
    if-nez v15, :cond_10

    const/16 v16, 0x1

    goto :goto_b

    :cond_10
    const/16 v16, 0x0

    .line 277
    .local v16, "empty":Z
    :goto_b
    if-eqz v0, :cond_12

    if-eqz v16, :cond_12

    .line 278
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    .line 279
    iget-object v11, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v11}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Throwable;

    .line 280
    .restart local v11    # "ex":Ljava/lang/Throwable;
    if-eqz v11, :cond_11

    .line 281
    move/from16 v17, v0

    .end local v0    # "d":Z
    .local v17, "d":Z
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_c

    .line 283
    .end local v17    # "d":Z
    .restart local v0    # "d":Z
    :cond_11
    move/from16 v17, v0

    .end local v0    # "d":Z
    .restart local v17    # "d":Z
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 285
    :goto_c
    return-void

    .line 277
    .end local v11    # "ex":Ljava/lang/Throwable;
    .end local v17    # "d":Z
    .restart local v0    # "d":Z
    :cond_12
    move/from16 v17, v0

    .line 287
    .end local v0    # "d":Z
    .restart local v17    # "d":Z
    if-nez v16, :cond_13

    .line 288
    aput-object v15, v5, v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 298
    .end local v14    # "q":Lio/reactivex/internal/fuseable/SimpleQueue;, "Lio/reactivex/internal/fuseable/SimpleQueue<TT;>;"
    .end local v15    # "v":Ljava/lang/Object;, "TT;"
    .end local v16    # "empty":Z
    .end local v17    # "d":Z
    :cond_13
    goto :goto_d

    .line 290
    :catchall_2
    move-exception v0

    .line 291
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 292
    iget-object v11, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v11, v0}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 293
    iget-boolean v11, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->delayErrors:Z

    if-nez v11, :cond_14

    .line 294
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelAll()V

    .line 295
    iget-object v11, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v11}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v11

    invoke-interface {v2, v11}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 296
    return-void

    .line 268
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v13    # "inner":Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber<TT;TR;>;"
    :cond_14
    :goto_d
    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x0

    goto :goto_9

    .line 304
    .end local v12    # "j":I
    :cond_15
    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-eqz v0, :cond_17

    .line 306
    array-length v0, v3

    const/4 v12, 0x0

    :goto_e
    if-ge v12, v0, :cond_16

    aget-object v11, v3, v12

    .line 307
    .local v11, "inner":Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber<TT;TR;>;"
    invoke-virtual {v11, v9, v10}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;->request(J)V

    .line 306
    .end local v11    # "inner":Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber<TT;TR;>;"
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 310
    :cond_16
    const-wide v11, 0x7fffffffffffffffL

    cmp-long v0, v7, v11

    if-eqz v0, :cond_17

    .line 311
    iget-object v0, v1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v11, v9

    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 315
    :cond_17
    neg-int v0, v6

    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->addAndGet(I)I

    move-result v6

    .line 316
    if-nez v6, :cond_18

    .line 317
    nop

    .line 320
    .end local v7    # "r":J
    .end local v9    # "e":J
    return-void

    .line 319
    :cond_18
    goto/16 :goto_0
.end method

.method error(Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;Ljava/lang/Throwable;)V
    .locals 1
    .param p2, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber<",
            "TT;TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 149
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator<TT;TR;>;"
    .local p1, "inner":Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;, "Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p1, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;->done:Z

    .line 151
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->drain()V

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {p2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 155
    :goto_0
    return-void
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 133
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator<TT;TR;>;"
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 135
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->drain()V

    .line 137
    :cond_0
    return-void
.end method

.method subscribe([Lorg/reactivestreams/Publisher;I)V
    .locals 4
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;I)V"
        }
    .end annotation

    .line 122
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;, "Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator<TT;TR;>;"
    .local p1, "sources":[Lorg/reactivestreams/Publisher;, "[Lorg/reactivestreams/Publisher<+TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->subscribers:[Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;

    .line 123
    .local v0, "a":[Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber;, "[Lio/reactivex/internal/operators/flowable/FlowableZip$ZipSubscriber<TT;TR;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 124
    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->cancelled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->delayErrors:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableZip$ZipCoordinator;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 127
    :cond_0
    aget-object v2, p1, v1

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Lorg/reactivestreams/Publisher;->subscribe(Lorg/reactivestreams/Subscriber;)V

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_1
    :goto_1
    return-void

    .line 129
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
