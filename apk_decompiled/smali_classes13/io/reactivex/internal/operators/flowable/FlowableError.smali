.class public final Lio/reactivex/internal/operators/flowable/FlowableError;
.super Lio/reactivex/Flowable;
.source "FlowableError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final errorSupplier:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 27
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableError;, "Lio/reactivex/internal/operators/flowable/FlowableError<TT;>;"
    .local p1, "errorSupplier":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    .line 28
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableError;->errorSupplier:Ljava/util/concurrent/Callable;

    .line 29
    return-void
.end method


# virtual methods
.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableError;, "Lio/reactivex/internal/operators/flowable/FlowableError<TT;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableError;->errorSupplier:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .local v0, "error":Ljava/lang/Throwable;
    goto :goto_0

    .line 35
    .end local v0    # "error":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    .line 36
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 37
    move-object v1, v0

    .line 39
    .local v0, "error":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/EmptySubscription;->error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V

    .line 40
    return-void
.end method
