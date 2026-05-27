.class final Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableSequenceEqual.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableSequenceEqual;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EqualCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x55bcb3aaa8a061f8L


# instance fields
.field final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field volatile cancelled:Z

.field final comparer:Lio/reactivex/functions/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiPredicate<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field final first:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field final resources:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

.field final second:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field v1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field v2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;ILio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiPredicate;)V
    .locals 4
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Boolean;",
            ">;I",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;",
            "Lio/reactivex/functions/BiPredicate<",
            "-TT;-TT;>;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Ljava/lang/Boolean;>;"
    .local p3, "first":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<+TT;>;"
    .local p4, "second":Lio/reactivex/ObservableSource;, "Lio/reactivex/ObservableSource<+TT;>;"
    .local p5, "comparer":Lio/reactivex/functions/BiPredicate;, "Lio/reactivex/functions/BiPredicate<-TT;-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 65
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    .line 66
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->first:Lio/reactivex/ObservableSource;

    .line 67
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->second:Lio/reactivex/ObservableSource;

    .line 68
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->comparer:Lio/reactivex/functions/BiPredicate;

    .line 70
    const/4 v0, 0x2

    new-array v1, v0, [Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    .line 71
    .local v1, "as":[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;, "[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver<TT;>;"
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    .line 72
    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p2}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;II)V

    aput-object v2, v1, v3

    .line 73
    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3, p2}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;II)V

    aput-object v2, v1, v3

    .line 74
    new-instance v2, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-direct {v2, v0}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;-><init>(I)V

    iput-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->resources:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    .line 75
    return-void
.end method


# virtual methods
.method cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TT;>;",
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TT;>;)V"
        }
    .end annotation

    .line 107
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator<TT;>;"
    .local p1, "q1":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    .local p2, "q2":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancelled:Z

    .line 108
    invoke-virtual {p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 109
    invoke-virtual {p2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 110
    return-void
.end method

.method public dispose()V
    .locals 3

    .line 89
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancelled:Z

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancelled:Z

    .line 91
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->resources:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->dispose()V

    .line 93
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->getAndIncrement()I

    move-result v1

    if-nez v1, :cond_0

    .line 94
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    .line 95
    .local v1, "as":[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;, "[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver<TT;>;"
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget-object v2, v2, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 96
    aget-object v0, v1, v0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 99
    .end local v1    # "as":[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;, "[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver<TT;>;"
    :cond_0
    return-void
.end method

.method drain()V
    .locals 15

    .line 113
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x1

    .line 118
    .local v0, "missed":I
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    .line 120
    .local v1, "as":[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;, "[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver<TT;>;"
    const/4 v2, 0x0

    aget-object v3, v1, v2

    .line 121
    .local v3, "s1":Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;, "Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver<TT;>;"
    iget-object v4, v3, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 122
    .local v4, "q1":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    const/4 v5, 0x1

    aget-object v6, v1, v5

    .line 123
    .local v6, "s2":Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;, "Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver<TT;>;"
    iget-object v7, v6, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->queue:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    .line 128
    .local v7, "q2":Lio/reactivex/internal/queue/SpscLinkedArrayQueue;, "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<TT;>;"
    :goto_0
    iget-boolean v8, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancelled:Z

    if-eqz v8, :cond_1

    .line 129
    invoke-virtual {v4}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 130
    invoke-virtual {v7}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 131
    return-void

    .line 134
    :cond_1
    iget-boolean v8, v3, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->done:Z

    .line 136
    .local v8, "d1":Z
    if-eqz v8, :cond_2

    .line 137
    iget-object v9, v3, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->error:Ljava/lang/Throwable;

    .line 138
    .local v9, "e":Ljava/lang/Throwable;
    if-eqz v9, :cond_2

    .line 139
    invoke-virtual {p0, v4, v7}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 141
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    invoke-interface {v2, v9}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 142
    return-void

    .line 146
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_2
    iget-boolean v9, v6, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->done:Z

    .line 147
    .local v9, "d2":Z
    if-eqz v9, :cond_3

    .line 148
    iget-object v10, v6, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->error:Ljava/lang/Throwable;

    .line 149
    .local v10, "e":Ljava/lang/Throwable;
    if-eqz v10, :cond_3

    .line 150
    invoke-virtual {p0, v4, v7}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 152
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    invoke-interface {v2, v10}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 153
    return-void

    .line 157
    .end local v10    # "e":Ljava/lang/Throwable;
    :cond_3
    iget-object v10, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v1:Ljava/lang/Object;

    if-nez v10, :cond_4

    .line 158
    invoke-virtual {v4}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v10

    iput-object v10, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v1:Ljava/lang/Object;

    .line 160
    :cond_4
    iget-object v10, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v1:Ljava/lang/Object;

    if-nez v10, :cond_5

    const/4 v10, 0x1

    goto :goto_1

    :cond_5
    const/4 v10, 0x0

    .line 162
    .local v10, "e1":Z
    :goto_1
    iget-object v11, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v2:Ljava/lang/Object;

    if-nez v11, :cond_6

    .line 163
    invoke-virtual {v7}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v11

    iput-object v11, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v2:Ljava/lang/Object;

    .line 165
    :cond_6
    iget-object v11, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v2:Ljava/lang/Object;

    if-nez v11, :cond_7

    const/4 v12, 0x1

    goto :goto_2

    :cond_7
    const/4 v12, 0x0

    .line 167
    .local v12, "e2":Z
    :goto_2
    if-eqz v8, :cond_8

    if-eqz v9, :cond_8

    if-eqz v10, :cond_8

    if-eqz v12, :cond_8

    .line 168
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v5}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 169
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    invoke-interface {v2}, Lio/reactivex/Observer;->onComplete()V

    .line 170
    return-void

    .line 172
    :cond_8
    if-eqz v8, :cond_9

    if-eqz v9, :cond_9

    if-eq v10, v12, :cond_9

    .line 173
    invoke-virtual {p0, v4, v7}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 175
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v5, v2}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 176
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    invoke-interface {v2}, Lio/reactivex/Observer;->onComplete()V

    .line 177
    return-void

    .line 180
    :cond_9
    if-nez v10, :cond_b

    if-nez v12, :cond_b

    .line 184
    :try_start_0
    iget-object v13, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->comparer:Lio/reactivex/functions/BiPredicate;

    iget-object v14, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v1:Ljava/lang/Object;

    invoke-interface {v13, v14, v11}, Lio/reactivex/functions/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .local v11, "c":Z
    nop

    .line 193
    if-nez v11, :cond_a

    .line 194
    invoke-virtual {p0, v4, v7}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 196
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v5, v2}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 197
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    invoke-interface {v2}, Lio/reactivex/Observer;->onComplete()V

    .line 198
    return-void

    .line 201
    :cond_a
    const/4 v13, 0x0

    iput-object v13, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v1:Ljava/lang/Object;

    .line 202
    iput-object v13, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v2:Ljava/lang/Object;

    goto :goto_3

    .line 185
    .end local v11    # "c":Z
    :catchall_0
    move-exception v2

    .line 186
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 187
    invoke-virtual {p0, v4, v7}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 189
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->actual:Lio/reactivex/Observer;

    invoke-interface {v5, v2}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 190
    return-void

    .line 205
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_b
    :goto_3
    if-nez v10, :cond_d

    if-eqz v12, :cond_c

    .line 206
    goto :goto_4

    .line 208
    .end local v8    # "d1":Z
    .end local v9    # "d2":Z
    .end local v10    # "e1":Z
    .end local v12    # "e2":Z
    :cond_c
    goto/16 :goto_0

    .line 210
    :cond_d
    :goto_4
    neg-int v8, v0

    invoke-virtual {p0, v8}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->addAndGet(I)I

    move-result v0

    .line 211
    if-nez v0, :cond_e

    .line 212
    nop

    .line 215
    return-void

    .line 211
    :cond_e
    goto/16 :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    .line 103
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancelled:Z

    return v0
.end method

.method setDisposable(Lio/reactivex/disposables/Disposable;I)Z
    .locals 1
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;
    .param p2, "index"    # I

    .line 78
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->resources:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v0, p2, p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->setResource(ILio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method subscribe()V
    .locals 3

    .line 82
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;, "Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    .line 83
    .local v0, "as":[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;, "[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver<TT;>;"
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->first:Lio/reactivex/ObservableSource;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 84
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->second:Lio/reactivex/ObservableSource;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 85
    return-void
.end method
