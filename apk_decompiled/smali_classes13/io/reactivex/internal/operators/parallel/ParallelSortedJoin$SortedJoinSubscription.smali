.class final Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ParallelSortedJoin.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/ParallelSortedJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SortedJoinSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x30527af9756114d9L


# instance fields
.field final actual:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final error:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final indexes:[I

.field final lists:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field final remaining:Ljava/util/concurrent/atomic/AtomicInteger;

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final subscribers:[Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/reactivestreams/Subscriber;ILjava/util/Comparator;)V
    .locals 3
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;I",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 80
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;, "Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription<TT;>;"
    .local p1, "actual":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    .line 81
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 82
    iput-object p3, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->comparator:Ljava/util/Comparator;

    .line 84
    new-array v0, p2, [Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;

    .line 86
    .local v0, "s":[Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;, "[Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 87
    new-instance v2, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;

    invoke-direct {v2, p0, v1}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;-><init>(Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;I)V

    aput-object v2, v0, v1

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "i":I
    :cond_0
    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->subscribers:[Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;

    .line 90
    new-array v1, p2, [Ljava/util/List;

    iput-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->lists:[Ljava/util/List;

    .line 91
    new-array v1, p2, [I

    iput-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->indexes:[I

    .line 92
    iget-object v1, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 93
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 107
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;, "Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelled:Z

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelled:Z

    .line 109
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelAll()V

    .line 110
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->lists:[Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    :cond_0
    return-void
.end method

.method cancelAll()V
    .locals 4

    .line 117
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;, "Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->subscribers:[Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 118
    .local v3, "s":Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber<TT;>;"
    invoke-virtual {v3}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;->cancel()V

    .line 117
    .end local v3    # "s":Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber;, "Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinInnerSubscriber<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method drain()V
    .locals 20

    .line 140
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;, "Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription<TT;>;"
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x1

    .line 145
    .local v0, "missed":I
    iget-object v2, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->actual:Lorg/reactivestreams/Subscriber;

    .line 146
    .local v2, "a":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget-object v3, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->lists:[Ljava/util/List;

    .line 147
    .local v3, "lists":[Ljava/util/List;, "[Ljava/util/List<TT;>;"
    iget-object v4, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->indexes:[I

    .line 148
    .local v4, "indexes":[I
    array-length v5, v4

    move v6, v0

    .line 152
    .end local v0    # "missed":I
    .local v5, "n":I
    .local v6, "missed":I
    :goto_0
    iget-object v0, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    .line 153
    .local v7, "r":J
    const-wide/16 v9, 0x0

    .line 155
    .local v9, "e":J
    :goto_1
    const/4 v11, 0x0

    cmp-long v0, v9, v7

    if-eqz v0, :cond_a

    .line 156
    iget-boolean v0, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelled:Z

    if-eqz v0, :cond_1

    .line 157
    invoke-static {v3, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    return-void

    .line 161
    :cond_1
    iget-object v0, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/Throwable;

    .line 162
    .local v12, "ex":Ljava/lang/Throwable;
    if-eqz v12, :cond_2

    .line 163
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelAll()V

    .line 164
    invoke-static {v3, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 165
    invoke-interface {v2, v12}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 166
    return-void

    .line 169
    :cond_2
    const/4 v0, 0x0

    .line 170
    .local v0, "min":Ljava/lang/Object;, "TT;"
    const/4 v13, -0x1

    .line 172
    .local v13, "minIndex":I
    const/4 v14, 0x0

    move v15, v14

    move v14, v13

    move-object v13, v0

    .end local v0    # "min":Ljava/lang/Object;, "TT;"
    .local v13, "min":Ljava/lang/Object;, "TT;"
    .local v14, "minIndex":I
    .local v15, "i":I
    :goto_2
    if-ge v15, v5, :cond_8

    .line 173
    aget-object v11, v3, v15

    .line 174
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object/from16 v16, v12

    .end local v12    # "ex":Ljava/lang/Throwable;
    .local v16, "ex":Ljava/lang/Throwable;
    aget v12, v4, v15

    .line 176
    .local v12, "index":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v12, :cond_6

    .line 177
    if-nez v13, :cond_3

    .line 178
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 179
    .end local v13    # "min":Ljava/lang/Object;, "TT;"
    .restart local v0    # "min":Ljava/lang/Object;, "TT;"
    move v13, v15

    move/from16 v17, v6

    move v14, v13

    move-object v13, v0

    .end local v14    # "minIndex":I
    .local v13, "minIndex":I
    goto :goto_4

    .line 181
    .end local v0    # "min":Ljava/lang/Object;, "TT;"
    .local v13, "min":Ljava/lang/Object;, "TT;"
    .restart local v14    # "minIndex":I
    :cond_3
    move/from16 v17, v6

    .end local v6    # "missed":I
    .local v17, "missed":I
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 186
    .local v6, "b":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, v13, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 196
    .local v0, "smaller":Z
    :goto_3
    nop

    .line 197
    if-eqz v0, :cond_7

    .line 198
    move-object v13, v6

    .line 199
    move v14, v15

    goto :goto_4

    .line 187
    .end local v0    # "smaller":Z
    :catchall_0
    move-exception v0

    .line 188
    .local v0, "exc":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 189
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelAll()V

    .line 190
    move-object/from16 v18, v6

    const/4 v6, 0x0

    .end local v6    # "b":Ljava/lang/Object;, "TT;"
    .local v18, "b":Ljava/lang/Object;, "TT;"
    invoke-static {v3, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    move-object/from16 v19, v11

    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local v19, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v11, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v11, v6, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 192
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 194
    :cond_5
    iget-object v6, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    invoke-interface {v2, v6}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 195
    return-void

    .line 176
    .end local v0    # "exc":Ljava/lang/Throwable;
    .end local v17    # "missed":I
    .end local v18    # "b":Ljava/lang/Object;, "TT;"
    .end local v19    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local v6, "missed":I
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_6
    move/from16 v17, v6

    move-object/from16 v19, v11

    .line 172
    .end local v6    # "missed":I
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v12    # "index":I
    .restart local v17    # "missed":I
    :cond_7
    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v12, v16

    move/from16 v6, v17

    const/4 v11, 0x0

    goto :goto_2

    .end local v16    # "ex":Ljava/lang/Throwable;
    .end local v17    # "missed":I
    .restart local v6    # "missed":I
    .local v12, "ex":Ljava/lang/Throwable;
    :cond_8
    move/from16 v17, v6

    move-object/from16 v16, v12

    .line 205
    .end local v6    # "missed":I
    .end local v12    # "ex":Ljava/lang/Throwable;
    .end local v15    # "i":I
    .restart local v16    # "ex":Ljava/lang/Throwable;
    .restart local v17    # "missed":I
    if-nez v13, :cond_9

    .line 206
    const/4 v6, 0x0

    invoke-static {v3, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 208
    return-void

    .line 211
    :cond_9
    invoke-interface {v2, v13}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 213
    aget v0, v4, v14

    const/4 v6, 0x1

    add-int/2addr v0, v6

    aput v0, v4, v14

    .line 215
    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    .line 216
    .end local v13    # "min":Ljava/lang/Object;, "TT;"
    .end local v14    # "minIndex":I
    .end local v16    # "ex":Ljava/lang/Throwable;
    move/from16 v6, v17

    goto/16 :goto_1

    .line 218
    .end local v17    # "missed":I
    .restart local v6    # "missed":I
    :cond_a
    move/from16 v17, v6

    .end local v6    # "missed":I
    .restart local v17    # "missed":I
    cmp-long v0, v9, v7

    if-nez v0, :cond_f

    .line 219
    iget-boolean v0, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelled:Z

    if-eqz v0, :cond_b

    .line 220
    const/4 v6, 0x0

    invoke-static {v3, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    return-void

    .line 224
    :cond_b
    iget-object v0, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 225
    .local v0, "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_c

    .line 226
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->cancelAll()V

    .line 227
    const/4 v6, 0x0

    invoke-static {v3, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 228
    invoke-interface {v2, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 229
    return-void

    .line 232
    :cond_c
    const/4 v6, 0x1

    .line 234
    .local v6, "empty":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    if-ge v11, v5, :cond_e

    .line 235
    aget v12, v4, v11

    aget-object v13, v3, v11

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-eq v12, v13, :cond_d

    .line 236
    const/4 v6, 0x0

    .line 237
    goto :goto_6

    .line 234
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 241
    .end local v11    # "i":I
    :cond_e
    :goto_6
    if-eqz v6, :cond_f

    .line 242
    const/4 v11, 0x0

    invoke-static {v3, v11}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    invoke-interface {v2}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 244
    return-void

    .line 248
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v6    # "empty":Z
    :cond_f
    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-eqz v0, :cond_10

    const-wide v11, 0x7fffffffffffffffL

    cmp-long v0, v7, v11

    if-eqz v0, :cond_10

    .line 249
    iget-object v0, v1, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v11, v9

    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 252
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->get()I

    move-result v0

    .line 253
    .local v0, "w":I
    move/from16 v6, v17

    .end local v17    # "missed":I
    .local v6, "missed":I
    if-ne v0, v6, :cond_11

    .line 254
    neg-int v11, v6

    invoke-virtual {v1, v11}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->addAndGet(I)I

    move-result v6

    .line 255
    if-nez v6, :cond_12

    .line 256
    nop

    .line 262
    .end local v0    # "w":I
    .end local v7    # "r":J
    .end local v9    # "e":J
    return-void

    .line 259
    .restart local v0    # "w":I
    .restart local v7    # "r":J
    .restart local v9    # "e":J
    :cond_11
    move v6, v0

    .line 261
    .end local v0    # "w":I
    .end local v7    # "r":J
    .end local v9    # "e":J
    :cond_12
    goto/16 :goto_0
.end method

.method innerError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 130
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;, "Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->drain()V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 134
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 137
    :cond_1
    :goto_0
    return-void
.end method

.method innerNext(Ljava/util/List;I)V
    .locals 1
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 123
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;, "Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription<TT;>;"
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->lists:[Ljava/util/List;

    aput-object p1, v0, p2

    .line 124
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->drain()V

    .line 127
    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .line 97
    .local p0, "this":Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;, "Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription<TT;>;"
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 99
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->remaining:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/ParallelSortedJoin$SortedJoinSubscription;->drain()V

    .line 103
    :cond_0
    return-void
.end method
