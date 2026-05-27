.class public final Lio/reactivex/plugins/RxJavaPlugins;
.super Ljava/lang/Object;
.source "RxJavaPlugins.java"


# static fields
.field static volatile errorHandler:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile failNonBlockingScheduler:Z

.field static volatile lockdown:Z

.field static volatile onBeforeBlocking:Lio/reactivex/functions/BooleanSupplier;

.field static volatile onCompletableAssembly:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Completable;",
            "+",
            "Lio/reactivex/Completable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onCompletableSubscribe:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Lio/reactivex/Completable;",
            "-",
            "Lio/reactivex/CompletableObserver;",
            "+",
            "Lio/reactivex/CompletableObserver;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onComputationHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Scheduler;",
            "+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onConnectableFlowableAssembly:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/flowables/ConnectableFlowable;",
            "+",
            "Lio/reactivex/flowables/ConnectableFlowable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onConnectableObservableAssembly:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/observables/ConnectableObservable;",
            "+",
            "Lio/reactivex/observables/ConnectableObservable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onFlowableAssembly:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Flowable;",
            "+",
            "Lio/reactivex/Flowable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onFlowableSubscribe:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Lio/reactivex/Flowable;",
            "-",
            "Lorg/reactivestreams/Subscriber;",
            "+",
            "Lorg/reactivestreams/Subscriber;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onInitComputationHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onInitIoHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onInitNewThreadHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onInitSingleHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onIoHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Scheduler;",
            "+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onMaybeAssembly:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Maybe;",
            "+",
            "Lio/reactivex/Maybe;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onMaybeSubscribe:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Lio/reactivex/Maybe;",
            "-",
            "Lio/reactivex/MaybeObserver;",
            "+",
            "Lio/reactivex/MaybeObserver;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onNewThreadHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Scheduler;",
            "+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableAssembly:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Observable;",
            "+",
            "Lio/reactivex/Observable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onObservableSubscribe:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Lio/reactivex/Observable;",
            "-",
            "Lio/reactivex/Observer;",
            "+",
            "Lio/reactivex/Observer;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onParallelAssembly:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/parallel/ParallelFlowable;",
            "+",
            "Lio/reactivex/parallel/ParallelFlowable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onScheduleHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Runnable;",
            "+",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleAssembly:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Single;",
            "+",
            "Lio/reactivex/Single;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleHandler:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Scheduler;",
            "+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field static volatile onSingleSubscribe:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Lio/reactivex/Single;",
            "-",
            "Lio/reactivex/SingleObserver;",
            "+",
            "Lio/reactivex/SingleObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1328
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static apply(Lio/reactivex/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/BiFunction<",
            "TT;TU;TR;>;TT;TU;)TR;"
        }
    .end annotation

    .line 1291
    .local p0, "f":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<TT;TU;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    .local p2, "u":Ljava/lang/Object;, "TU;"
    :try_start_0
    invoke-interface {p0, p1, p2}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1292
    :catchall_0
    move-exception v0

    .line 1293
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/functions/Function<",
            "TT;TR;>;TT;)TR;"
        }
    .end annotation

    .line 1271
    .local p0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-interface {p0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1272
    :catchall_0
    move-exception v0

    .line 1273
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;+",
            "Lio/reactivex/Scheduler;",
            ">;",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .line 1323
    .local p0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;+Lio/reactivex/Scheduler;>;"
    .local p1, "s":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;"
    invoke-static {p0, p1}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Scheduler Callable result can\'t be null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;

    return-object v0
.end method

.method static callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .line 1307
    .local p0, "s":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Scheduler Callable result can\'t be null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/Scheduler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1308
    :catchall_0
    move-exception v0

    .line 1309
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static createComputationScheduler(Ljava/util/concurrent/ThreadFactory;)Lio/reactivex/Scheduler;
    .locals 2
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 1214
    new-instance v0, Lio/reactivex/internal/schedulers/ComputationScheduler;

    const-string v1, "threadFactory is null"

    invoke-static {p0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/ComputationScheduler;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static createIoScheduler(Ljava/util/concurrent/ThreadFactory;)Lio/reactivex/Scheduler;
    .locals 2
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 1228
    new-instance v0, Lio/reactivex/internal/schedulers/IoScheduler;

    const-string v1, "threadFactory is null"

    invoke-static {p0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/IoScheduler;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static createNewThreadScheduler(Ljava/util/concurrent/ThreadFactory;)Lio/reactivex/Scheduler;
    .locals 2
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 1242
    new-instance v0, Lio/reactivex/internal/schedulers/NewThreadScheduler;

    const-string v1, "threadFactory is null"

    invoke-static {p0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/NewThreadScheduler;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static createSingleScheduler(Ljava/util/concurrent/ThreadFactory;)Lio/reactivex/Scheduler;
    .locals 2
    .param p0, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 1256
    new-instance v0, Lio/reactivex/internal/schedulers/SingleScheduler;

    const-string v1, "threadFactory is null"

    invoke-static {p0, v1}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/SingleScheduler;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static getComputationSchedulerHandler()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Scheduler;",
            "+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation

    .line 177
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onComputationHandler:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getErrorHandler()Lio/reactivex/functions/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 186
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->errorHandler:Lio/reactivex/functions/Consumer;

    return-object v0
.end method

.method public static getInitComputationSchedulerHandler()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation

    .line 195
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onInitComputationHandler:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getInitIoSchedulerHandler()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation

    .line 204
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onInitIoHandler:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getInitNewThreadSchedulerHandler()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation

    .line 213
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onInitNewThreadHandler:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getInitSingleSchedulerHandler()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation

    .line 222
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onInitSingleHandler:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getIoSchedulerHandler()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Scheduler;",
            "+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation

    .line 231
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onIoHandler:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getNewThreadSchedulerHandler()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Scheduler;",
            "+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation

    .line 240
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onNewThreadHandler:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getOnBeforeBlocking()Lio/reactivex/functions/BooleanSupplier;
    .locals 1

    .line 1200
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onBeforeBlocking:Lio/reactivex/functions/BooleanSupplier;

    return-object v0
.end method

.method public static getOnCompletableAssembly()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Completable;",
            "+",
            "Lio/reactivex/Completable;",
            ">;"
        }
    .end annotation

    .line 656
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onCompletableAssembly:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getOnCompletableSubscribe()Lio/reactivex/functions/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Lio/reactivex/Completable;",
            "-",
            "Lio/reactivex/CompletableObserver;",
            "+",
            "Lio/reactivex/CompletableObserver;",
            ">;"
        }
    .end annotation

    .line 665
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onCompletableSubscribe:Lio/reactivex/functions/BiFunction;

    return-object v0
.end method

.method public static getOnConnectableFlowableAssembly()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/flowables/ConnectableFlowable;",
            "+",
            "Lio/reactivex/flowables/ConnectableFlowable;",
            ">;"
        }
    .end annotation

    .line 685
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onConnectableFlowableAssembly:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getOnConnectableObservableAssembly()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/observables/ConnectableObservable;",
            "+",
            "Lio/reactivex/observables/ConnectableObservable;",
            ">;"
        }
    .end annotation

    .line 755
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onConnectableObservableAssembly:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getOnFlowableAssembly()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Flowable;",
            "+",
            "Lio/reactivex/Flowable;",
            ">;"
        }
    .end annotation

    .line 675
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onFlowableAssembly:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getOnFlowableSubscribe()Lio/reactivex/functions/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Lio/reactivex/Flowable;",
            "-",
            "Lorg/reactivestreams/Subscriber;",
            "+",
            "Lorg/reactivestreams/Subscriber;",
            ">;"
        }
    .end annotation

    .line 695
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onFlowableSubscribe:Lio/reactivex/functions/BiFunction;

    return-object v0
.end method

.method public static getOnMaybeAssembly()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Maybe;",
            "+",
            "Lio/reactivex/Maybe;",
            ">;"
        }
    .end annotation

    .line 715
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onMaybeAssembly:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getOnMaybeSubscribe()Lio/reactivex/functions/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Lio/reactivex/Maybe;",
            "-",
            "Lio/reactivex/MaybeObserver;",
            "+",
            "Lio/reactivex/MaybeObserver;",
            ">;"
        }
    .end annotation

    .line 705
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onMaybeSubscribe:Lio/reactivex/functions/BiFunction;

    return-object v0
.end method

.method public static getOnObservableAssembly()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Observable;",
            "+",
            "Lio/reactivex/Observable;",
            ">;"
        }
    .end annotation

    .line 745
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onObservableAssembly:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getOnObservableSubscribe()Lio/reactivex/functions/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Lio/reactivex/Observable;",
            "-",
            "Lio/reactivex/Observer;",
            "+",
            "Lio/reactivex/Observer;",
            ">;"
        }
    .end annotation

    .line 765
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onObservableSubscribe:Lio/reactivex/functions/BiFunction;

    return-object v0
.end method

.method public static getOnParallelAssembly()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/parallel/ParallelFlowable;",
            "+",
            "Lio/reactivex/parallel/ParallelFlowable;",
            ">;"
        }
    .end annotation

    .line 1130
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onParallelAssembly:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getOnSingleAssembly()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Single;",
            "+",
            "Lio/reactivex/Single;",
            ">;"
        }
    .end annotation

    .line 725
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onSingleAssembly:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getOnSingleSubscribe()Lio/reactivex/functions/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Lio/reactivex/Single;",
            "-",
            "Lio/reactivex/SingleObserver;",
            "+",
            "Lio/reactivex/SingleObserver;",
            ">;"
        }
    .end annotation

    .line 735
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onSingleSubscribe:Lio/reactivex/functions/BiFunction;

    return-object v0
.end method

.method public static getScheduleHandler()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Runnable;",
            "+",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 249
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onScheduleHandler:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static getSingleSchedulerHandler()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Scheduler;",
            "+",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation

    .line 258
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onSingleHandler:Lio/reactivex/functions/Function;

    return-object v0
.end method

.method public static initComputationScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .line 269
    .local p0, "defaultScheduler":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;"
    const-string v0, "Scheduler Callable can\'t be null"

    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onInitComputationHandler:Lio/reactivex/functions/Function;

    .line 271
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;+Lio/reactivex/Scheduler;>;"
    if-nez v0, :cond_0

    .line 272
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    return-object v1

    .line 274
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    return-object v1
.end method

.method public static initIoScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .line 285
    .local p0, "defaultScheduler":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;"
    const-string v0, "Scheduler Callable can\'t be null"

    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onInitIoHandler:Lio/reactivex/functions/Function;

    .line 287
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;+Lio/reactivex/Scheduler;>;"
    if-nez v0, :cond_0

    .line 288
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    return-object v1

    .line 290
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    return-object v1
.end method

.method public static initNewThreadScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .line 301
    .local p0, "defaultScheduler":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;"
    const-string v0, "Scheduler Callable can\'t be null"

    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onInitNewThreadHandler:Lio/reactivex/functions/Function;

    .line 303
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;+Lio/reactivex/Scheduler;>;"
    if-nez v0, :cond_0

    .line 304
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    return-object v1

    .line 306
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    return-object v1
.end method

.method public static initSingleScheduler(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lio/reactivex/Scheduler;"
        }
    .end annotation

    .line 317
    .local p0, "defaultScheduler":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;"
    const-string v0, "Scheduler Callable can\'t be null"

    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onInitSingleHandler:Lio/reactivex/functions/Function;

    .line 319
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;+Lio/reactivex/Scheduler;>;"
    if-nez v0, :cond_0

    .line 320
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->callRequireNonNull(Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    return-object v1

    .line 322
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->applyRequireNonNull(Lio/reactivex/functions/Function;Ljava/util/concurrent/Callable;)Lio/reactivex/Scheduler;

    move-result-object v1

    return-object v1
.end method

.method static isBug(Ljava/lang/Throwable;)Z
    .locals 2
    .param p0, "error"    # Ljava/lang/Throwable;

    .line 396
    instance-of v0, p0, Lio/reactivex/exceptions/OnErrorNotImplementedException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 397
    return v1

    .line 401
    :cond_0
    instance-of v0, p0, Lio/reactivex/exceptions/MissingBackpressureException;

    if-eqz v0, :cond_1

    .line 402
    return v1

    .line 406
    :cond_1
    instance-of v0, p0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_2

    .line 407
    return v1

    .line 411
    :cond_2
    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_3

    .line 412
    return v1

    .line 415
    :cond_3
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_4

    .line 416
    return v1

    .line 419
    :cond_4
    instance-of v0, p0, Lio/reactivex/exceptions/CompositeException;

    if-eqz v0, :cond_5

    .line 420
    return v1

    .line 423
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public static isFailOnNonBlockingScheduler()Z
    .locals 1

    .line 168
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->failNonBlockingScheduler:Z

    return v0
.end method

.method public static isLockdown()Z
    .locals 1

    .line 141
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    return v0
.end method

.method public static lockdown()V
    .locals 1

    .line 133
    const/4 v0, 0x1

    sput-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    .line 134
    return-void
.end method

.method public static onAssembly(Lio/reactivex/Completable;)Lio/reactivex/Completable;
    .locals 2
    .param p0, "source"    # Lio/reactivex/Completable;

    .line 1098
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onCompletableAssembly:Lio/reactivex/functions/Function;

    .line 1099
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Completable;+Lio/reactivex/Completable;>;"
    if-eqz v0, :cond_0

    .line 1100
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Completable;

    return-object v1

    .line 1102
    :cond_0
    return-object p0
.end method

.method public static onAssembly(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Flowable<",
            "TT;>;)",
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation

    .line 1020
    .local p0, "source":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<TT;>;"
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onFlowableAssembly:Lio/reactivex/functions/Function;

    .line 1021
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Flowable;+Lio/reactivex/Flowable;>;"
    if-eqz v0, :cond_0

    .line 1022
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Flowable;

    return-object v1

    .line 1024
    :cond_0
    return-object p0
.end method

.method public static onAssembly(Lio/reactivex/Maybe;)Lio/reactivex/Maybe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Maybe<",
            "TT;>;)",
            "Lio/reactivex/Maybe<",
            "TT;>;"
        }
    .end annotation

    .line 1004
    .local p0, "source":Lio/reactivex/Maybe;, "Lio/reactivex/Maybe<TT;>;"
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onMaybeAssembly:Lio/reactivex/functions/Function;

    .line 1005
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Maybe;+Lio/reactivex/Maybe;>;"
    if-eqz v0, :cond_0

    .line 1006
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Maybe;

    return-object v1

    .line 1008
    :cond_0
    return-object p0
.end method

.method public static onAssembly(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1052
    .local p0, "source":Lio/reactivex/Observable;, "Lio/reactivex/Observable<TT;>;"
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onObservableAssembly:Lio/reactivex/functions/Function;

    .line 1053
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Observable;+Lio/reactivex/Observable;>;"
    if-eqz v0, :cond_0

    .line 1054
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Observable;

    return-object v1

    .line 1056
    :cond_0
    return-object p0
.end method

.method public static onAssembly(Lio/reactivex/Single;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Single<",
            "TT;>;)",
            "Lio/reactivex/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1084
    .local p0, "source":Lio/reactivex/Single;, "Lio/reactivex/Single<TT;>;"
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onSingleAssembly:Lio/reactivex/functions/Function;

    .line 1085
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Single;+Lio/reactivex/Single;>;"
    if-eqz v0, :cond_0

    .line 1086
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Single;

    return-object v1

    .line 1088
    :cond_0
    return-object p0
.end method

.method public static onAssembly(Lio/reactivex/flowables/ConnectableFlowable;)Lio/reactivex/flowables/ConnectableFlowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "TT;>;)",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "TT;>;"
        }
    .end annotation

    .line 1036
    .local p0, "source":Lio/reactivex/flowables/ConnectableFlowable;, "Lio/reactivex/flowables/ConnectableFlowable<TT;>;"
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onConnectableFlowableAssembly:Lio/reactivex/functions/Function;

    .line 1037
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/flowables/ConnectableFlowable;+Lio/reactivex/flowables/ConnectableFlowable;>;"
    if-eqz v0, :cond_0

    .line 1038
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/flowables/ConnectableFlowable;

    return-object v1

    .line 1040
    :cond_0
    return-object p0
.end method

.method public static onAssembly(Lio/reactivex/observables/ConnectableObservable;)Lio/reactivex/observables/ConnectableObservable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/observables/ConnectableObservable<",
            "TT;>;)",
            "Lio/reactivex/observables/ConnectableObservable<",
            "TT;>;"
        }
    .end annotation

    .line 1068
    .local p0, "source":Lio/reactivex/observables/ConnectableObservable;, "Lio/reactivex/observables/ConnectableObservable<TT;>;"
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onConnectableObservableAssembly:Lio/reactivex/functions/Function;

    .line 1069
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/observables/ConnectableObservable;+Lio/reactivex/observables/ConnectableObservable;>;"
    if-eqz v0, :cond_0

    .line 1070
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/observables/ConnectableObservable;

    return-object v1

    .line 1072
    :cond_0
    return-object p0
.end method

.method public static onAssembly(Lio/reactivex/parallel/ParallelFlowable;)Lio/reactivex/parallel/ParallelFlowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/parallel/ParallelFlowable<",
            "TT;>;)",
            "Lio/reactivex/parallel/ParallelFlowable<",
            "TT;>;"
        }
    .end annotation

    .line 1145
    .local p0, "source":Lio/reactivex/parallel/ParallelFlowable;, "Lio/reactivex/parallel/ParallelFlowable<TT;>;"
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onParallelAssembly:Lio/reactivex/functions/Function;

    .line 1146
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/parallel/ParallelFlowable;+Lio/reactivex/parallel/ParallelFlowable;>;"
    if-eqz v0, :cond_0

    .line 1147
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/parallel/ParallelFlowable;

    return-object v1

    .line 1149
    :cond_0
    return-object p0
.end method

.method public static onBeforeBlocking()Z
    .locals 3

    .line 1163
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onBeforeBlocking:Lio/reactivex/functions/BooleanSupplier;

    .line 1164
    .local v0, "f":Lio/reactivex/functions/BooleanSupplier;
    if-eqz v0, :cond_0

    .line 1166
    :try_start_0
    invoke-interface {v0}, Lio/reactivex/functions/BooleanSupplier;->getAsBoolean()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 1167
    :catchall_0
    move-exception v1

    .line 1168
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1171
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static onComputationScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;
    .locals 2
    .param p0, "defaultScheduler"    # Lio/reactivex/Scheduler;

    .line 332
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onComputationHandler:Lio/reactivex/functions/Function;

    .line 333
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Scheduler;+Lio/reactivex/Scheduler;>;"
    if-nez v0, :cond_0

    .line 334
    return-object p0

    .line 336
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Scheduler;

    return-object v1
.end method

.method public static onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "error"    # Ljava/lang/Throwable;

    .line 361
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->errorHandler:Lio/reactivex/functions/Consumer;

    .line 363
    .local v0, "f":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-Ljava/lang/Throwable;>;"
    if-nez p0, :cond_0

    .line 364
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    move-object p0, v1

    goto :goto_0

    .line 366
    :cond_0
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->isBug(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 367
    new-instance v1, Lio/reactivex/exceptions/UndeliverableException;

    invoke-direct {v1, p0}, Lio/reactivex/exceptions/UndeliverableException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v1

    .line 371
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 373
    :try_start_0
    invoke-interface {v0, p0}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    return-void

    .line 375
    :catchall_0
    move-exception v1

    .line 377
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 378
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->uncaught(Ljava/lang/Throwable;)V

    .line 382
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 383
    invoke-static {p0}, Lio/reactivex/plugins/RxJavaPlugins;->uncaught(Ljava/lang/Throwable;)V

    .line 384
    return-void
.end method

.method public static onIoScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;
    .locals 2
    .param p0, "defaultScheduler"    # Lio/reactivex/Scheduler;

    .line 439
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onIoHandler:Lio/reactivex/functions/Function;

    .line 440
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Scheduler;+Lio/reactivex/Scheduler;>;"
    if-nez v0, :cond_0

    .line 441
    return-object p0

    .line 443
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Scheduler;

    return-object v1
.end method

.method public static onNewThreadScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;
    .locals 2
    .param p0, "defaultScheduler"    # Lio/reactivex/Scheduler;

    .line 453
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onNewThreadHandler:Lio/reactivex/functions/Function;

    .line 454
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Scheduler;+Lio/reactivex/Scheduler;>;"
    if-nez v0, :cond_0

    .line 455
    return-object p0

    .line 457
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Scheduler;

    return-object v1
.end method

.method public static onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 2
    .param p0, "run"    # Ljava/lang/Runnable;

    .line 467
    const-string v0, "run is null"

    invoke-static {p0, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onScheduleHandler:Lio/reactivex/functions/Function;

    .line 470
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/lang/Runnable;+Ljava/lang/Runnable;>;"
    if-nez v0, :cond_0

    .line 471
    return-object p0

    .line 473
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    return-object v1
.end method

.method public static onSingleScheduler(Lio/reactivex/Scheduler;)Lio/reactivex/Scheduler;
    .locals 2
    .param p0, "defaultScheduler"    # Lio/reactivex/Scheduler;

    .line 483
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onSingleHandler:Lio/reactivex/functions/Function;

    .line 484
    .local v0, "f":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Scheduler;+Lio/reactivex/Scheduler;>;"
    if-nez v0, :cond_0

    .line 485
    return-object p0

    .line 487
    :cond_0
    invoke-static {v0, p0}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Scheduler;

    return-object v1
.end method

.method public static onSubscribe(Lio/reactivex/Completable;Lio/reactivex/CompletableObserver;)Lio/reactivex/CompletableObserver;
    .locals 2
    .param p0, "source"    # Lio/reactivex/Completable;
    .param p1, "observer"    # Lio/reactivex/CompletableObserver;

    .line 971
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onCompletableSubscribe:Lio/reactivex/functions/BiFunction;

    .line 972
    .local v0, "f":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<-Lio/reactivex/Completable;-Lio/reactivex/CompletableObserver;+Lio/reactivex/CompletableObserver;>;"
    if-eqz v0, :cond_0

    .line 973
    invoke-static {v0, p0, p1}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/CompletableObserver;

    return-object v1

    .line 975
    :cond_0
    return-object p1
.end method

.method public static onSubscribe(Lio/reactivex/Maybe;Lio/reactivex/MaybeObserver;)Lio/reactivex/MaybeObserver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Maybe<",
            "TT;>;",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;)",
            "Lio/reactivex/MaybeObserver<",
            "-TT;>;"
        }
    .end annotation

    .line 988
    .local p0, "source":Lio/reactivex/Maybe;, "Lio/reactivex/Maybe<TT;>;"
    .local p1, "subscriber":Lio/reactivex/MaybeObserver;, "Lio/reactivex/MaybeObserver<-TT;>;"
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onMaybeSubscribe:Lio/reactivex/functions/BiFunction;

    .line 989
    .local v0, "f":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<-Lio/reactivex/Maybe;-Lio/reactivex/MaybeObserver;+Lio/reactivex/MaybeObserver;>;"
    if-eqz v0, :cond_0

    .line 990
    invoke-static {v0, p0, p1}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/MaybeObserver;

    return-object v1

    .line 992
    :cond_0
    return-object p1
.end method

.method public static onSubscribe(Lio/reactivex/Observable;Lio/reactivex/Observer;)Lio/reactivex/Observer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "TT;>;",
            "Lio/reactivex/Observer<",
            "-TT;>;)",
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation

    .line 939
    .local p0, "source":Lio/reactivex/Observable;, "Lio/reactivex/Observable<TT;>;"
    .local p1, "observer":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onObservableSubscribe:Lio/reactivex/functions/BiFunction;

    .line 940
    .local v0, "f":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<-Lio/reactivex/Observable;-Lio/reactivex/Observer;+Lio/reactivex/Observer;>;"
    if-eqz v0, :cond_0

    .line 941
    invoke-static {v0, p0, p1}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Observer;

    return-object v1

    .line 943
    :cond_0
    return-object p1
.end method

.method public static onSubscribe(Lio/reactivex/Single;Lio/reactivex/SingleObserver;)Lio/reactivex/SingleObserver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Single<",
            "TT;>;",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation

    .line 956
    .local p0, "source":Lio/reactivex/Single;, "Lio/reactivex/Single<TT;>;"
    .local p1, "observer":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onSingleSubscribe:Lio/reactivex/functions/BiFunction;

    .line 957
    .local v0, "f":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<-Lio/reactivex/Single;-Lio/reactivex/SingleObserver;+Lio/reactivex/SingleObserver;>;"
    if-eqz v0, :cond_0

    .line 958
    invoke-static {v0, p0, p1}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/SingleObserver;

    return-object v1

    .line 960
    :cond_0
    return-object p1
.end method

.method public static onSubscribe(Lio/reactivex/Flowable;Lorg/reactivestreams/Subscriber;)Lorg/reactivestreams/Subscriber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Flowable<",
            "TT;>;",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation

    .line 922
    .local p0, "source":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<TT;>;"
    .local p1, "subscriber":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    sget-object v0, Lio/reactivex/plugins/RxJavaPlugins;->onFlowableSubscribe:Lio/reactivex/functions/BiFunction;

    .line 923
    .local v0, "f":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<-Lio/reactivex/Flowable;-Lorg/reactivestreams/Subscriber;+Lorg/reactivestreams/Subscriber;>;"
    if-eqz v0, :cond_0

    .line 924
    invoke-static {v0, p0, p1}, Lio/reactivex/plugins/RxJavaPlugins;->apply(Lio/reactivex/functions/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/reactivestreams/Subscriber;

    return-object v1

    .line 926
    :cond_0
    return-object p1
.end method

.method public static reset()V
    .locals 2

    .line 494
    const/4 v0, 0x0

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setErrorHandler(Lio/reactivex/functions/Consumer;)V

    .line 495
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setScheduleHandler(Lio/reactivex/functions/Function;)V

    .line 497
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setComputationSchedulerHandler(Lio/reactivex/functions/Function;)V

    .line 498
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setInitComputationSchedulerHandler(Lio/reactivex/functions/Function;)V

    .line 500
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setIoSchedulerHandler(Lio/reactivex/functions/Function;)V

    .line 501
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setInitIoSchedulerHandler(Lio/reactivex/functions/Function;)V

    .line 503
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setSingleSchedulerHandler(Lio/reactivex/functions/Function;)V

    .line 504
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setInitSingleSchedulerHandler(Lio/reactivex/functions/Function;)V

    .line 506
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setNewThreadSchedulerHandler(Lio/reactivex/functions/Function;)V

    .line 507
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setInitNewThreadSchedulerHandler(Lio/reactivex/functions/Function;)V

    .line 509
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnFlowableAssembly(Lio/reactivex/functions/Function;)V

    .line 510
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnFlowableSubscribe(Lio/reactivex/functions/BiFunction;)V

    .line 512
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnObservableAssembly(Lio/reactivex/functions/Function;)V

    .line 513
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnObservableSubscribe(Lio/reactivex/functions/BiFunction;)V

    .line 515
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnSingleAssembly(Lio/reactivex/functions/Function;)V

    .line 516
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnSingleSubscribe(Lio/reactivex/functions/BiFunction;)V

    .line 518
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnCompletableAssembly(Lio/reactivex/functions/Function;)V

    .line 519
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnCompletableSubscribe(Lio/reactivex/functions/BiFunction;)V

    .line 521
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnConnectableFlowableAssembly(Lio/reactivex/functions/Function;)V

    .line 522
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnConnectableObservableAssembly(Lio/reactivex/functions/Function;)V

    .line 524
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnMaybeAssembly(Lio/reactivex/functions/Function;)V

    .line 525
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnMaybeSubscribe(Lio/reactivex/functions/BiFunction;)V

    .line 527
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnParallelAssembly(Lio/reactivex/functions/Function;)V

    .line 529
    const/4 v1, 0x0

    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->setFailOnNonBlockingScheduler(Z)V

    .line 530
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->setOnBeforeBlocking(Lio/reactivex/functions/BooleanSupplier;)V

    .line 531
    return-void
.end method

.method public static setComputationSchedulerHandler(Lio/reactivex/functions/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Scheduler;",
            "+",
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 538
    .local p0, "handler":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Scheduler;+Lio/reactivex/Scheduler;>;"
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 541
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onComputationHandler:Lio/reactivex/functions/Function;

    .line 542
    return-void

    .line 539
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugins can\'t be changed anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setErrorHandler(Lio/reactivex/functions/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 549
    .local p0, "handler":Lio/reactivex/functions/Consumer;, "Lio/reactivex/functions/Consumer<-Ljava/lang/Throwable;>;"
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 552
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->errorHandler:Lio/reactivex/functions/Consumer;

    .line 553
    return-void

    .line 550
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugins can\'t be changed anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setFailOnNonBlockingScheduler(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .line 153
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 156
    sput-boolean p0, Lio/reactivex/plugins/RxJavaPlugins;->failNonBlockingScheduler:Z

    .line 157
    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugins can\'t be changed anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setInitComputationSchedulerHandler(Lio/reactivex/functions/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;+",
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 560
    .local p0, "handler":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;+Lio/reactivex/Scheduler;>;"
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 563
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onInitComputationHandler:Lio/reactivex/functions/Function;

    .line 564
    return-void

    .line 561
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugins can\'t be changed anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setInitIoSchedulerHandler(Lio/reactivex/functions/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;+",
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 571
    .local p0, "handler":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;+Lio/reactivex/Scheduler;>;"
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 574
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onInitIoHandler:Lio/reactivex/functions/Function;

    .line 575
    return-void

    .line 572
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugins can\'t be changed anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setInitNewThreadSchedulerHandler(Lio/reactivex/functions/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;+",
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 582
    .local p0, "handler":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;+Lio/reactivex/Scheduler;>;"
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 585
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onInitNewThreadHandler:Lio/reactivex/functions/Function;

    .line 586
    return-void

    .line 583
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugins can\'t be changed anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setInitSingleSchedulerHandler(Lio/reactivex/functions/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/util/concurrent/Callable<",
            "Lio/reactivex/Scheduler;",
            ">;+",
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 593
    .local p0, "handler":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/util/concurrent/Callable<Lio/reactivex/Scheduler;>;+Lio/reactivex/Scheduler;>;"
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 596
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onInitSingleHandler:Lio/reactivex/functions/Function;

    .line 597
    return-void

    .line 594
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugins can\'t be changed anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setIoSchedulerHandler(Lio/reactivex/functions/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Scheduler;",
            "+",
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 604
    .local p0, "handler":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Scheduler;+Lio/reactivex/Scheduler;>;"
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 607
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onIoHandler:Lio/reactivex/functions/Function;

    .line 608
    return-void

    .line 605
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugins can\'t be changed anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setNewThreadSchedulerHandler(Lio/reactivex/functions/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Scheduler;",
            "+",
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 615
    .local p0, "handler":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Scheduler;+Lio/reactivex/Scheduler;>;"
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 618
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onNewThreadHandler:Lio/reactivex/functions/Function;

    .line 619
    return-void

    .line 616
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugins can\'t be changed anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setOnBeforeBlocking(Lio/reactivex/functions/BooleanSupplier;)V
    .locals 2
    .param p0, "handler"    # Lio/reactivex/functions/BooleanSupplier;

    .line 1185
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 1188
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onBeforeBlocking:Lio/reactivex/functions/BooleanSupplier;

    .line 1189
    return-void

    .line 1186
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugins can\'t be changed anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setOnCompletableAssembly(Lio/reactivex/functions/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Completable;",
            "+",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    .line 773
    .local p0, "onCompletableAssembly":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Completable;+Lio/reactivex/Completable;>;"
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 776
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onCompletableAssembly:Lio/reactivex/functions/Function;

    .line 777
    return-void

    .line 774
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugins can\'t be changed anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setOnCompletableSubscribe(Lio/reactivex/functions/BiFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Lio/reactivex/Completable;",
            "-",
            "Lio/reactivex/CompletableObserver;",
            "+",
            "Lio/reactivex/CompletableObserver;",
            ">;)V"
        }
    .end annotation

    .line 785
    .local p0, "onCompletableSubscribe":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<-Lio/reactivex/Completable;-Lio/reactivex/CompletableObserver;+Lio/reactivex/CompletableObserver;>;"
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 788
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onCompletableSubscribe:Lio/reactivex/functions/BiFunction;

    .line 789
    return-void

    .line 786
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugins can\'t be changed anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setOnConnectableFlowableAssembly(Lio/reactivex/functions/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/flowables/ConnectableFlowable;",
            "+",
            "Lio/reactivex/flowables/ConnectableFlowable;",
            ">;)V"
        }
    .end annotation

    .line 821
    .local p0, "onConnectableFlowableAssembly":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/flowables/ConnectableFlowable;+Lio/reactivex/flowables/ConnectableFlowable;>;"
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 824
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onConnectableFlowableAssembly:Lio/reactivex/functions/Function;

    .line 825
    return-void

    .line 822
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugins can\'t be changed anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setOnConnectableObservableAssembly(Lio/reactivex/functions/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/observables/ConnectableObservable;",
            "+",
            "Lio/reactivex/observables/ConnectableObservable;",
            ">;)V"
        }
    .end annotation

    .line 869
    .local p0, "onConnectableObservableAssembly":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/observables/ConnectableObservable;+Lio/reactivex/observables/ConnectableObservable;>;"
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 872
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onConnectableObservableAssembly:Lio/reactivex/functions/Function;

    .line 873
    return-void

    .line 870
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugins can\'t be changed anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setOnFlowableAssembly(Lio/reactivex/functions/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Flowable;",
            "+",
            "Lio/reactivex/Flowable;",
            ">;)V"
        }
    .end annotation

    .line 797
    .local p0, "onFlowableAssembly":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Flowable;+Lio/reactivex/Flowable;>;"
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 800
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onFlowableAssembly:Lio/reactivex/functions/Function;

    .line 801
    return-void

    .line 798
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugins can\'t be changed anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setOnFlowableSubscribe(Lio/reactivex/functions/BiFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Lio/reactivex/Flowable;",
            "-",
            "Lorg/reactivestreams/Subscriber;",
            "+",
            "Lorg/reactivestreams/Subscriber;",
            ">;)V"
        }
    .end annotation

    .line 833
    .local p0, "onFlowableSubscribe":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<-Lio/reactivex/Flowable;-Lorg/reactivestreams/Subscriber;+Lorg/reactivestreams/Subscriber;>;"
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 836
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onFlowableSubscribe:Lio/reactivex/functions/BiFunction;

    .line 837
    return-void

    .line 834
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugins can\'t be changed anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setOnMaybeAssembly(Lio/reactivex/functions/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Maybe;",
            "+",
            "Lio/reactivex/Maybe;",
            ">;)V"
        }
    .end annotation

    .line 809
    .local p0, "onMaybeAssembly":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Maybe;+Lio/reactivex/Maybe;>;"
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 812
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onMaybeAssembly:Lio/reactivex/functions/Function;

    .line 813
    return-void

    .line 810
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugins can\'t be changed anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setOnMaybeSubscribe(Lio/reactivex/functions/BiFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Lio/reactivex/Maybe;",
            "Lio/reactivex/MaybeObserver;",
            "+",
            "Lio/reactivex/MaybeObserver;",
            ">;)V"
        }
    .end annotation

    .line 845
    .local p0, "onMaybeSubscribe":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<-Lio/reactivex/Maybe;Lio/reactivex/MaybeObserver;+Lio/reactivex/MaybeObserver;>;"
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 848
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onMaybeSubscribe:Lio/reactivex/functions/BiFunction;

    .line 849
    return-void

    .line 846
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugins can\'t be changed anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setOnObservableAssembly(Lio/reactivex/functions/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Observable;",
            "+",
            "Lio/reactivex/Observable;",
            ">;)V"
        }
    .end annotation

    .line 857
    .local p0, "onObservableAssembly":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Observable;+Lio/reactivex/Observable;>;"
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 860
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onObservableAssembly:Lio/reactivex/functions/Function;

    .line 861
    return-void

    .line 858
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugins can\'t be changed anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setOnObservableSubscribe(Lio/reactivex/functions/BiFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Lio/reactivex/Observable;",
            "-",
            "Lio/reactivex/Observer;",
            "+",
            "Lio/reactivex/Observer;",
            ">;)V"
        }
    .end annotation

    .line 882
    .local p0, "onObservableSubscribe":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<-Lio/reactivex/Observable;-Lio/reactivex/Observer;+Lio/reactivex/Observer;>;"
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 885
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onObservableSubscribe:Lio/reactivex/functions/BiFunction;

    .line 886
    return-void

    .line 883
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugins can\'t be changed anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setOnParallelAssembly(Lio/reactivex/functions/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/parallel/ParallelFlowable;",
            "+",
            "Lio/reactivex/parallel/ParallelFlowable;",
            ">;)V"
        }
    .end annotation

    .line 1114
    .local p0, "handler":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/parallel/ParallelFlowable;+Lio/reactivex/parallel/ParallelFlowable;>;"
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 1117
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onParallelAssembly:Lio/reactivex/functions/Function;

    .line 1118
    return-void

    .line 1115
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugins can\'t be changed anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setOnSingleAssembly(Lio/reactivex/functions/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Single;",
            "+",
            "Lio/reactivex/Single;",
            ">;)V"
        }
    .end annotation

    .line 894
    .local p0, "onSingleAssembly":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Single;+Lio/reactivex/Single;>;"
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 897
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onSingleAssembly:Lio/reactivex/functions/Function;

    .line 898
    return-void

    .line 895
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugins can\'t be changed anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setOnSingleSubscribe(Lio/reactivex/functions/BiFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/BiFunction<",
            "-",
            "Lio/reactivex/Single;",
            "-",
            "Lio/reactivex/SingleObserver;",
            "+",
            "Lio/reactivex/SingleObserver;",
            ">;)V"
        }
    .end annotation

    .line 906
    .local p0, "onSingleSubscribe":Lio/reactivex/functions/BiFunction;, "Lio/reactivex/functions/BiFunction<-Lio/reactivex/Single;-Lio/reactivex/SingleObserver;+Lio/reactivex/SingleObserver;>;"
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 909
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onSingleSubscribe:Lio/reactivex/functions/BiFunction;

    .line 910
    return-void

    .line 907
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugins can\'t be changed anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setScheduleHandler(Lio/reactivex/functions/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Ljava/lang/Runnable;",
            "+",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 626
    .local p0, "handler":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Ljava/lang/Runnable;+Ljava/lang/Runnable;>;"
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 629
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onScheduleHandler:Lio/reactivex/functions/Function;

    .line 630
    return-void

    .line 627
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugins can\'t be changed anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setSingleSchedulerHandler(Lio/reactivex/functions/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Function<",
            "-",
            "Lio/reactivex/Scheduler;",
            "+",
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 637
    .local p0, "handler":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-Lio/reactivex/Scheduler;+Lio/reactivex/Scheduler;>;"
    sget-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    if-nez v0, :cond_0

    .line 640
    sput-object p0, Lio/reactivex/plugins/RxJavaPlugins;->onSingleHandler:Lio/reactivex/functions/Function;

    .line 641
    return-void

    .line 638
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Plugins can\'t be changed anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static uncaught(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "error"    # Ljava/lang/Throwable;

    .line 427
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 428
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 429
    .local v1, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 430
    return-void
.end method

.method static unlock()V
    .locals 1

    .line 647
    const/4 v0, 0x0

    sput-boolean v0, Lio/reactivex/plugins/RxJavaPlugins;->lockdown:Z

    .line 648
    return-void
.end method
