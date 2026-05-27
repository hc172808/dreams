.class public Lcom/facebook/bolts/Task;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/bolts/Task$TaskCompletionSource;,
        Lcom/facebook/bolts/Task$UnobservedExceptionHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static TASK_CANCELLED:Lcom/facebook/bolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/bolts/Task<",
            "*>;"
        }
    .end annotation
.end field

.field private static TASK_FALSE:Lcom/facebook/bolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static TASK_NULL:Lcom/facebook/bolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/bolts/Task<",
            "*>;"
        }
    .end annotation
.end field

.field private static TASK_TRUE:Lcom/facebook/bolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile unobservedExceptionHandler:Lcom/facebook/bolts/Task$UnobservedExceptionHandler;


# instance fields
.field private cancelled:Z

.field private complete:Z

.field private continuations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/bolts/Continuation<",
            "TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private error:Ljava/lang/Exception;

.field private errorHasBeenObserved:Z

.field private final lock:Ljava/lang/Object;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private unobservedErrorNotifier:Lcom/facebook/bolts/UnobservedErrorNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    invoke-static {}, Lcom/facebook/bolts/BoltsExecutors;->background()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/bolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 51
    invoke-static {}, Lcom/facebook/bolts/BoltsExecutors;->immediate()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/facebook/bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 54
    invoke-static {}, Lcom/facebook/bolts/AndroidExecutors;->uiThread()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/facebook/bolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 1032
    new-instance v0, Lcom/facebook/bolts/Task;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/bolts/Task;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/bolts/Task;->TASK_NULL:Lcom/facebook/bolts/Task;

    .line 1033
    new-instance v0, Lcom/facebook/bolts/Task;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/facebook/bolts/Task;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/bolts/Task;->TASK_TRUE:Lcom/facebook/bolts/Task;

    .line 1034
    new-instance v0, Lcom/facebook/bolts/Task;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/facebook/bolts/Task;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/bolts/Task;->TASK_FALSE:Lcom/facebook/bolts/Task;

    .line 1035
    new-instance v0, Lcom/facebook/bolts/Task;

    invoke-direct {v0, v1}, Lcom/facebook/bolts/Task;-><init>(Z)V

    sput-object v0, Lcom/facebook/bolts/Task;->TASK_CANCELLED:Lcom/facebook/bolts/Task;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 105
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/bolts/Task;->lock:Ljava/lang/Object;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/bolts/Task;->continuations:Ljava/util/List;

    .line 105
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 107
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TTResult;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/bolts/Task;->lock:Ljava/lang/Object;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/bolts/Task;->continuations:Ljava/util/List;

    .line 108
    invoke-virtual {p0, p1}, Lcom/facebook/bolts/Task;->trySetResult(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "cancelled"    # Z

    .line 111
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/bolts/Task;->lock:Ljava/lang/Object;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/bolts/Task;->continuations:Ljava/util/List;

    .line 112
    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/facebook/bolts/Task;->trySetCancelled()Z

    goto :goto_0

    .line 115
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/bolts/Task;->trySetResult(Ljava/lang/Object;)Z

    .line 117
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/bolts/TaskCompletionSource;
    .param p1, "x1"    # Lcom/facebook/bolts/Continuation;
    .param p2, "x2"    # Lcom/facebook/bolts/Task;
    .param p3, "x3"    # Ljava/util/concurrent/Executor;
    .param p4, "x4"    # Lcom/facebook/bolts/CancellationToken;

    .line 42
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/bolts/Task;->completeImmediately(Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/bolts/TaskCompletionSource;
    .param p1, "x1"    # Lcom/facebook/bolts/Continuation;
    .param p2, "x2"    # Lcom/facebook/bolts/Task;
    .param p3, "x3"    # Ljava/util/concurrent/Executor;
    .param p4, "x4"    # Lcom/facebook/bolts/CancellationToken;

    .line 42
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/bolts/Task;->completeAfterTask(Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)V

    return-void
.end method

.method public static call(Ljava/util/concurrent/Callable;)Lcom/facebook/bolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 367
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TTResult;>;"
    sget-object v0, Lcom/facebook/bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/bolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static call(Ljava/util/concurrent/Callable;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;
    .locals 1
    .param p1, "ct"    # Lcom/facebook/bolts/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Lcom/facebook/bolts/CancellationToken;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 373
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TTResult;>;"
    sget-object v0, Lcom/facebook/bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {p0, v0, p1}, Lcom/facebook/bolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/facebook/bolts/Task;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 326
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TTResult;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/bolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "ct"    # Lcom/facebook/bolts/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/bolts/CancellationToken;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 332
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TTResult;>;"
    new-instance v0, Lcom/facebook/bolts/TaskCompletionSource;

    invoke-direct {v0}, Lcom/facebook/bolts/TaskCompletionSource;-><init>()V

    .line 335
    .local v0, "tcs":Lcom/facebook/bolts/TaskCompletionSource;, "Lcom/facebook/bolts/TaskCompletionSource<TTResult;>;"
    :try_start_0
    new-instance v1, Lcom/facebook/bolts/Task$4;

    invoke-direct {v1, p2, v0, p0}, Lcom/facebook/bolts/Task$4;-><init>(Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/TaskCompletionSource;Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    goto :goto_0

    .line 353
    :catch_0
    move-exception v1

    .line 354
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/facebook/bolts/ExecutorException;

    invoke-direct {v2, v1}, Lcom/facebook/bolts/ExecutorException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, v2}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 357
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/bolts/TaskCompletionSource;->getTask()Lcom/facebook/bolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static callInBackground(Ljava/util/concurrent/Callable;)Lcom/facebook/bolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 310
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TTResult;>;"
    sget-object v0, Lcom/facebook/bolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/bolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static callInBackground(Ljava/util/concurrent/Callable;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;
    .locals 1
    .param p1, "ct"    # Lcom/facebook/bolts/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Lcom/facebook/bolts/CancellationToken;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 316
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TTResult;>;"
    sget-object v0, Lcom/facebook/bolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, v0, p1}, Lcom/facebook/bolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static cancelled()Lcom/facebook/bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 214
    sget-object v0, Lcom/facebook/bolts/Task;->TASK_CANCELLED:Lcom/facebook/bolts/Task;

    return-object v0
.end method

.method private static completeAfterTask(Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)V
    .locals 2
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "ct"    # Lcom/facebook/bolts/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/bolts/TaskCompletionSource<",
            "TTContinuationResult;>;",
            "Lcom/facebook/bolts/Continuation<",
            "TTResult;",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;>;",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/bolts/CancellationToken;",
            ")V"
        }
    .end annotation

    .line 920
    .local p0, "tcs":Lcom/facebook/bolts/TaskCompletionSource;, "Lcom/facebook/bolts/TaskCompletionSource<TTContinuationResult;>;"
    .local p1, "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<TTResult;Lcom/facebook/bolts/Task<TTContinuationResult;>;>;"
    .local p2, "task":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    :try_start_0
    new-instance v0, Lcom/facebook/bolts/Task$15;

    invoke-direct {v0, p4, p0, p1, p2}, Lcom/facebook/bolts/Task$15;-><init>(Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    goto :goto_0

    .line 961
    :catch_0
    move-exception v0

    .line 962
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/facebook/bolts/ExecutorException;

    invoke-direct {v1, v0}, Lcom/facebook/bolts/ExecutorException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 964
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static completeImmediately(Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)V
    .locals 2
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "ct"    # Lcom/facebook/bolts/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/bolts/TaskCompletionSource<",
            "TTContinuationResult;>;",
            "Lcom/facebook/bolts/Continuation<",
            "TTResult;TTContinuationResult;>;",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/bolts/CancellationToken;",
            ")V"
        }
    .end annotation

    .line 877
    .local p0, "tcs":Lcom/facebook/bolts/TaskCompletionSource;, "Lcom/facebook/bolts/TaskCompletionSource<TTContinuationResult;>;"
    .local p1, "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<TTResult;TTContinuationResult;>;"
    .local p2, "task":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    :try_start_0
    new-instance v0, Lcom/facebook/bolts/Task$14;

    invoke-direct {v0, p4, p0, p1, p2}, Lcom/facebook/bolts/Task$14;-><init>(Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    goto :goto_0

    .line 896
    :catch_0
    move-exception v0

    .line 897
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/facebook/bolts/ExecutorException;

    invoke-direct {v1, v0}, Lcom/facebook/bolts/ExecutorException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v1}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 899
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static delay(J)Lcom/facebook/bolts/Task;
    .locals 2
    .param p0, "delay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 224
    invoke-static {}, Lcom/facebook/bolts/BoltsExecutors;->scheduled()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/bolts/Task;->delay(JLjava/util/concurrent/ScheduledExecutorService;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static delay(JLcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;
    .locals 1
    .param p0, "delay"    # J
    .param p2, "cancellationToken"    # Lcom/facebook/bolts/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/facebook/bolts/CancellationToken;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 236
    invoke-static {}, Lcom/facebook/bolts/BoltsExecutors;->scheduled()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/facebook/bolts/Task;->delay(JLjava/util/concurrent/ScheduledExecutorService;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static delay(JLjava/util/concurrent/ScheduledExecutorService;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;
    .locals 3
    .param p0, "delay"    # J
    .param p2, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p3, "cancellationToken"    # Lcom/facebook/bolts/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/facebook/bolts/CancellationToken;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 241
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/facebook/bolts/CancellationToken;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {}, Lcom/facebook/bolts/Task;->cancelled()Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0

    .line 245
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_1

    .line 246
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/bolts/Task;->forResult(Ljava/lang/Object;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0

    .line 249
    :cond_1
    new-instance v0, Lcom/facebook/bolts/TaskCompletionSource;

    invoke-direct {v0}, Lcom/facebook/bolts/TaskCompletionSource;-><init>()V

    .line 251
    .local v0, "tcs":Lcom/facebook/bolts/TaskCompletionSource;, "Lcom/facebook/bolts/TaskCompletionSource<Ljava/lang/Void;>;"
    new-instance v1, Lcom/facebook/bolts/Task$1;

    invoke-direct {v1, v0}, Lcom/facebook/bolts/Task$1;-><init>(Lcom/facebook/bolts/TaskCompletionSource;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 252
    invoke-interface {p2, v1, p0, p1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 262
    .local v1, "scheduled":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    if-eqz p3, :cond_2

    .line 263
    new-instance v2, Lcom/facebook/bolts/Task$2;

    invoke-direct {v2, v1, v0}, Lcom/facebook/bolts/Task$2;-><init>(Ljava/util/concurrent/ScheduledFuture;Lcom/facebook/bolts/TaskCompletionSource;)V

    invoke-virtual {p3, v2}, Lcom/facebook/bolts/CancellationToken;->register(Ljava/lang/Runnable;)Lcom/facebook/bolts/CancellationTokenRegistration;

    .line 273
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/bolts/TaskCompletionSource;->getTask()Lcom/facebook/bolts/Task;

    move-result-object v2

    return-object v2
.end method

.method public static forError(Ljava/lang/Exception;)Lcom/facebook/bolts/Task;
    .locals 2
    .param p0, "error"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 205
    new-instance v0, Lcom/facebook/bolts/TaskCompletionSource;

    invoke-direct {v0}, Lcom/facebook/bolts/TaskCompletionSource;-><init>()V

    .line 207
    .local v0, "tcs":Lcom/facebook/bolts/TaskCompletionSource;, "Lcom/facebook/bolts/TaskCompletionSource<TTResult;>;"
    invoke-virtual {v0, p0}, Lcom/facebook/bolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 208
    invoke-virtual {v0}, Lcom/facebook/bolts/TaskCompletionSource;->getTask()Lcom/facebook/bolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static forResult(Ljava/lang/Object;)Lcom/facebook/bolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 191
    .local p0, "value":Ljava/lang/Object;, "TTResult;"
    if-nez p0, :cond_0

    .line 192
    sget-object v0, Lcom/facebook/bolts/Task;->TASK_NULL:Lcom/facebook/bolts/Task;

    return-object v0

    .line 194
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 195
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/bolts/Task;->TASK_TRUE:Lcom/facebook/bolts/Task;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/facebook/bolts/Task;->TASK_FALSE:Lcom/facebook/bolts/Task;

    :goto_0
    return-object v0

    .line 197
    :cond_2
    new-instance v0, Lcom/facebook/bolts/TaskCompletionSource;

    invoke-direct {v0}, Lcom/facebook/bolts/TaskCompletionSource;-><init>()V

    .line 199
    .local v0, "tcs":Lcom/facebook/bolts/TaskCompletionSource;, "Lcom/facebook/bolts/TaskCompletionSource<TTResult;>;"
    invoke-virtual {v0, p0}, Lcom/facebook/bolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 200
    invoke-virtual {v0}, Lcom/facebook/bolts/TaskCompletionSource;->getTask()Lcom/facebook/bolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static getUnobservedExceptionHandler()Lcom/facebook/bolts/Task$UnobservedExceptionHandler;
    .locals 1

    .line 83
    sget-object v0, Lcom/facebook/bolts/Task;->unobservedExceptionHandler:Lcom/facebook/bolts/Task$UnobservedExceptionHandler;

    return-object v0
.end method

.method private runContinuations()V
    .locals 4

    .line 967
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    iget-object v0, p0, Lcom/facebook/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 968
    :try_start_0
    iget-object v1, p0, Lcom/facebook/bolts/Task;->continuations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/bolts/Continuation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    .local v2, "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<TTResult;*>;"
    :try_start_1
    invoke-interface {v2, p0}, Lcom/facebook/bolts/Continuation;->then(Lcom/facebook/bolts/Task;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 975
    nop

    .line 976
    .end local v2    # "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<TTResult;*>;"
    goto :goto_0

    .line 973
    .restart local v2    # "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<TTResult;*>;"
    :catch_0
    move-exception v1

    .line 974
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 971
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 972
    .local v1, "e":Ljava/lang/RuntimeException;
    throw v1

    .line 977
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<TTResult;*>;"
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/bolts/Task;->continuations:Ljava/util/List;

    .line 978
    monitor-exit v0

    .line 979
    return-void

    .line 978
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static setUnobservedExceptionHandler(Lcom/facebook/bolts/Task$UnobservedExceptionHandler;)V
    .locals 0
    .param p0, "eh"    # Lcom/facebook/bolts/Task$UnobservedExceptionHandler;

    .line 93
    sput-object p0, Lcom/facebook/bolts/Task;->unobservedExceptionHandler:Lcom/facebook/bolts/Task$UnobservedExceptionHandler;

    .line 94
    return-void
.end method

.method public static whenAll(Ljava/util/Collection;)Lcom/facebook/bolts/Task;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/facebook/bolts/Task<",
            "*>;>;)",
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 520
    .local p0, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/facebook/bolts/Task<*>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 521
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/bolts/Task;->forResult(Ljava/lang/Object;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0

    .line 524
    :cond_0
    new-instance v6, Lcom/facebook/bolts/TaskCompletionSource;

    invoke-direct {v6}, Lcom/facebook/bolts/TaskCompletionSource;-><init>()V

    .line 526
    .local v6, "allFinished":Lcom/facebook/bolts/TaskCompletionSource;, "Lcom/facebook/bolts/TaskCompletionSource<Ljava/lang/Void;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v3, "causes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Exception;>;"
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 528
    .local v2, "errorLock":Ljava/lang/Object;
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 529
    .local v5, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 531
    .local v4, "isCancelled":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/facebook/bolts/Task;

    .line 533
    .local v7, "task":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<*>;"
    move-object v8, v7

    .line 534
    .local v8, "t":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<Ljava/lang/Object;>;"
    new-instance v9, Lcom/facebook/bolts/Task$8;

    move-object v1, v9

    invoke-direct/range {v1 .. v6}, Lcom/facebook/bolts/Task$8;-><init>(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/facebook/bolts/TaskCompletionSource;)V

    invoke-virtual {v8, v9}, Lcom/facebook/bolts/Task;->continueWith(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;

    .line 567
    .end local v7    # "task":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<*>;"
    .end local v8    # "t":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<Ljava/lang/Object;>;"
    goto :goto_0

    .line 569
    :cond_1
    invoke-virtual {v6}, Lcom/facebook/bolts/TaskCompletionSource;->getTask()Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static whenAllResult(Ljava/util/Collection;)Lcom/facebook/bolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;>;)",
            "Lcom/facebook/bolts/Task<",
            "Ljava/util/List<",
            "TTResult;>;>;"
        }
    .end annotation

    .line 481
    .local p0, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/facebook/bolts/Task<TTResult;>;>;"
    invoke-static {p0}, Lcom/facebook/bolts/Task;->whenAll(Ljava/util/Collection;)Lcom/facebook/bolts/Task;

    move-result-object v0

    new-instance v1, Lcom/facebook/bolts/Task$7;

    invoke-direct {v1, p0}, Lcom/facebook/bolts/Task$7;-><init>(Ljava/util/Collection;)V

    .line 482
    invoke-virtual {v0, v1}, Lcom/facebook/bolts/Task;->onSuccess(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;

    move-result-object v0

    .line 481
    return-object v0
.end method

.method public static whenAny(Ljava/util/Collection;)Lcom/facebook/bolts/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/facebook/bolts/Task<",
            "*>;>;)",
            "Lcom/facebook/bolts/Task<",
            "Lcom/facebook/bolts/Task<",
            "*>;>;"
        }
    .end annotation

    .line 427
    .local p0, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/facebook/bolts/Task<*>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 428
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/bolts/Task;->forResult(Ljava/lang/Object;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0

    .line 431
    :cond_0
    new-instance v0, Lcom/facebook/bolts/TaskCompletionSource;

    invoke-direct {v0}, Lcom/facebook/bolts/TaskCompletionSource;-><init>()V

    .line 433
    .local v0, "firstCompleted":Lcom/facebook/bolts/TaskCompletionSource;, "Lcom/facebook/bolts/TaskCompletionSource<Lcom/facebook/bolts/Task<*>;>;"
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 435
    .local v1, "isAnyTaskComplete":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/bolts/Task;

    .line 436
    .local v3, "task":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<*>;"
    new-instance v4, Lcom/facebook/bolts/Task$6;

    invoke-direct {v4, v1, v0}, Lcom/facebook/bolts/Task$6;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/bolts/TaskCompletionSource;)V

    .line 437
    invoke-virtual {v3, v4}, Lcom/facebook/bolts/Task;->continueWith(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;

    .line 449
    .end local v3    # "task":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<*>;"
    goto :goto_0

    .line 450
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/bolts/TaskCompletionSource;->getTask()Lcom/facebook/bolts/Task;

    move-result-object v2

    return-object v2
.end method

.method public static whenAnyResult(Ljava/util/Collection;)Lcom/facebook/bolts/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;>;)",
            "Lcom/facebook/bolts/Task<",
            "Lcom/facebook/bolts/Task<",
            "TTResult;>;>;"
        }
    .end annotation

    .line 389
    .local p0, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/facebook/bolts/Task<TTResult;>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 390
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/bolts/Task;->forResult(Ljava/lang/Object;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0

    .line 393
    :cond_0
    new-instance v0, Lcom/facebook/bolts/TaskCompletionSource;

    invoke-direct {v0}, Lcom/facebook/bolts/TaskCompletionSource;-><init>()V

    .line 395
    .local v0, "firstCompleted":Lcom/facebook/bolts/TaskCompletionSource;, "Lcom/facebook/bolts/TaskCompletionSource<Lcom/facebook/bolts/Task<TTResult;>;>;"
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 397
    .local v1, "isAnyTaskComplete":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/bolts/Task;

    .line 398
    .local v3, "task":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    new-instance v4, Lcom/facebook/bolts/Task$5;

    invoke-direct {v4, v1, v0}, Lcom/facebook/bolts/Task$5;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/bolts/TaskCompletionSource;)V

    invoke-virtual {v3, v4}, Lcom/facebook/bolts/Task;->continueWith(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;

    .line 410
    .end local v3    # "task":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/bolts/TaskCompletionSource;->getTask()Lcom/facebook/bolts/Task;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public cast()Lcom/facebook/bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOut:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/bolts/Task<",
            "TTOut;>;"
        }
    .end annotation

    .line 282
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    move-object v0, p0

    .line 283
    .local v0, "task":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTOut;>;"
    return-object v0
.end method

.method public continueWhile(Ljava/util/concurrent/Callable;Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/bolts/Continuation<",
            "Ljava/lang/Void;",
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 578
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    .local p1, "predicate":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    .local p2, "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<Ljava/lang/Void;Lcom/facebook/bolts/Task<Ljava/lang/Void;>;>;"
    sget-object v0, Lcom/facebook/bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/bolts/Task;->continueWhile(Ljava/util/concurrent/Callable;Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWhile(Ljava/util/concurrent/Callable;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;
    .locals 1
    .param p3, "ct"    # Lcom/facebook/bolts/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/bolts/Continuation<",
            "Ljava/lang/Void;",
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/Void;",
            ">;>;",
            "Lcom/facebook/bolts/CancellationToken;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 589
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    .local p1, "predicate":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    .local p2, "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<Ljava/lang/Void;Lcom/facebook/bolts/Task<Ljava/lang/Void;>;>;"
    sget-object v0, Lcom/facebook/bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/bolts/Task;->continueWhile(Ljava/util/concurrent/Callable;Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWhile(Ljava/util/concurrent/Callable;Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/bolts/Task;
    .locals 1
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/bolts/Continuation<",
            "Ljava/lang/Void;",
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/Void;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 600
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    .local p1, "predicate":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    .local p2, "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<Ljava/lang/Void;Lcom/facebook/bolts/Task<Ljava/lang/Void;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/bolts/Task;->continueWhile(Ljava/util/concurrent/Callable;Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWhile(Ljava/util/concurrent/Callable;Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;
    .locals 9
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "ct"    # Lcom/facebook/bolts/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/bolts/Continuation<",
            "Ljava/lang/Void;",
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/Void;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/bolts/CancellationToken;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 612
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    .local p1, "predicate":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    .local p2, "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<Ljava/lang/Void;Lcom/facebook/bolts/Task<Ljava/lang/Void;>;>;"
    new-instance v0, Lcom/facebook/bolts/Capture;

    invoke-direct {v0}, Lcom/facebook/bolts/Capture;-><init>()V

    .line 613
    .local v0, "predicateContinuation":Lcom/facebook/bolts/Capture;, "Lcom/facebook/bolts/Capture<Lcom/facebook/bolts/Continuation<Ljava/lang/Void;Lcom/facebook/bolts/Task<Ljava/lang/Void;>;>;>;"
    new-instance v8, Lcom/facebook/bolts/Task$9;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/bolts/Task$9;-><init>(Lcom/facebook/bolts/Task;Lcom/facebook/bolts/CancellationToken;Ljava/util/concurrent/Callable;Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/Capture;)V

    invoke-virtual {v0, v8}, Lcom/facebook/bolts/Capture;->set(Ljava/lang/Object;)V

    .line 629
    invoke-virtual {p0}, Lcom/facebook/bolts/Task;->makeVoid()Lcom/facebook/bolts/Task;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/bolts/Capture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/bolts/Continuation;

    invoke-virtual {v1, v2, p3}, Lcom/facebook/bolts/Task;->continueWithTask(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/bolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public continueWith(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/bolts/Continuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 679
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    .local p1, "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<TTResult;TTContinuationResult;>;"
    sget-object v0, Lcom/facebook/bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/bolts/Task;->continueWith(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWith(Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;
    .locals 1
    .param p2, "ct"    # Lcom/facebook/bolts/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/bolts/Continuation<",
            "TTResult;TTContinuationResult;>;",
            "Lcom/facebook/bolts/CancellationToken;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 688
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    .local p1, "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<TTResult;TTContinuationResult;>;"
    sget-object v0, Lcom/facebook/bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/bolts/Task;->continueWith(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWith(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/bolts/Task;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/bolts/Continuation<",
            "TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 639
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    .local p1, "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<TTResult;TTContinuationResult;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/bolts/Task;->continueWith(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWith(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;
    .locals 11
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "ct"    # Lcom/facebook/bolts/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/bolts/Continuation<",
            "TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/bolts/CancellationToken;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 652
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    .local p1, "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<TTResult;TTContinuationResult;>;"
    new-instance v0, Lcom/facebook/bolts/TaskCompletionSource;

    invoke-direct {v0}, Lcom/facebook/bolts/TaskCompletionSource;-><init>()V

    .line 654
    .local v0, "tcs":Lcom/facebook/bolts/TaskCompletionSource;, "Lcom/facebook/bolts/TaskCompletionSource<TTContinuationResult;>;"
    iget-object v7, p0, Lcom/facebook/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 655
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/bolts/Task;->isCompleted()Z

    move-result v1

    move v8, v1

    .line 656
    .local v8, "completed":Z
    if-nez v8, :cond_0

    .line 657
    iget-object v9, p0, Lcom/facebook/bolts/Task;->continuations:Ljava/util/List;

    new-instance v10, Lcom/facebook/bolts/Task$10;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/facebook/bolts/Task$10;-><init>(Lcom/facebook/bolts/Task;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    if-eqz v8, :cond_1

    .line 668
    invoke-static {v0, p1, p0, p2, p3}, Lcom/facebook/bolts/Task;->completeImmediately(Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)V

    .line 670
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/bolts/TaskCompletionSource;->getTask()Lcom/facebook/bolts/Task;

    move-result-object v1

    return-object v1

    .line 666
    .end local v8    # "completed":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public continueWithTask(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/bolts/Continuation<",
            "TTResult;",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;>;)",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 737
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    .local p1, "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<TTResult;Lcom/facebook/bolts/Task<TTContinuationResult;>;>;"
    sget-object v0, Lcom/facebook/bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/bolts/Task;->continueWithTask(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWithTask(Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;
    .locals 1
    .param p2, "ct"    # Lcom/facebook/bolts/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/bolts/Continuation<",
            "TTResult;",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;>;",
            "Lcom/facebook/bolts/CancellationToken;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 746
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    .local p1, "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<TTResult;Lcom/facebook/bolts/Task<TTContinuationResult;>;>;"
    sget-object v0, Lcom/facebook/bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/bolts/Task;->continueWithTask(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWithTask(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/bolts/Task;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/bolts/Continuation<",
            "TTResult;",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 698
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    .local p1, "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<TTResult;Lcom/facebook/bolts/Task<TTContinuationResult;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/bolts/Task;->continueWithTask(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWithTask(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;
    .locals 11
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "ct"    # Lcom/facebook/bolts/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/bolts/Continuation<",
            "TTResult;",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/bolts/CancellationToken;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 710
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    .local p1, "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<TTResult;Lcom/facebook/bolts/Task<TTContinuationResult;>;>;"
    new-instance v0, Lcom/facebook/bolts/TaskCompletionSource;

    invoke-direct {v0}, Lcom/facebook/bolts/TaskCompletionSource;-><init>()V

    .line 712
    .local v0, "tcs":Lcom/facebook/bolts/TaskCompletionSource;, "Lcom/facebook/bolts/TaskCompletionSource<TTContinuationResult;>;"
    iget-object v7, p0, Lcom/facebook/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 713
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/bolts/Task;->isCompleted()Z

    move-result v1

    move v8, v1

    .line 714
    .local v8, "completed":Z
    if-nez v8, :cond_0

    .line 715
    iget-object v9, p0, Lcom/facebook/bolts/Task;->continuations:Ljava/util/List;

    new-instance v10, Lcom/facebook/bolts/Task$11;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/facebook/bolts/Task$11;-><init>(Lcom/facebook/bolts/Task;Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    if-eqz v8, :cond_1

    .line 726
    invoke-static {v0, p1, p0, p2, p3}, Lcom/facebook/bolts/Task;->completeAfterTask(Lcom/facebook/bolts/TaskCompletionSource;Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/Task;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)V

    .line 728
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/bolts/TaskCompletionSource;->getTask()Lcom/facebook/bolts/Task;

    move-result-object v1

    return-object v1

    .line 724
    .end local v8    # "completed":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getError()Ljava/lang/Exception;
    .locals 2

    .line 152
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    iget-object v0, p0, Lcom/facebook/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/facebook/bolts/Task;->error:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 154
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/bolts/Task;->errorHasBeenObserved:Z

    .line 155
    iget-object v1, p0, Lcom/facebook/bolts/Task;->unobservedErrorNotifier:Lcom/facebook/bolts/UnobservedErrorNotifier;

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v1}, Lcom/facebook/bolts/UnobservedErrorNotifier;->setObserved()V

    .line 157
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/bolts/Task;->unobservedErrorNotifier:Lcom/facebook/bolts/UnobservedErrorNotifier;

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/facebook/bolts/Task;->error:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    iget-object v0, p0, Lcom/facebook/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/facebook/bolts/Task;->result:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCancelled()Z
    .locals 2

    .line 131
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    iget-object v0, p0, Lcom/facebook/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/bolts/Task;->cancelled:Z

    monitor-exit v0

    return v1

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCompleted()Z
    .locals 2

    .line 124
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    iget-object v0, p0, Lcom/facebook/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/bolts/Task;->complete:Z

    monitor-exit v0

    return v1

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isFaulted()Z
    .locals 2

    .line 138
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    iget-object v0, p0, Lcom/facebook/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/bolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public makeVoid()Lcom/facebook/bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/bolts/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 288
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    new-instance v0, Lcom/facebook/bolts/Task$3;

    invoke-direct {v0, p0}, Lcom/facebook/bolts/Task$3;-><init>(Lcom/facebook/bolts/Task;)V

    invoke-virtual {p0, v0}, Lcom/facebook/bolts/Task;->continueWithTask(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/bolts/Continuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 792
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    .local p1, "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<TTResult;TTContinuationResult;>;"
    sget-object v0, Lcom/facebook/bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/bolts/Task;->onSuccess(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;
    .locals 1
    .param p2, "ct"    # Lcom/facebook/bolts/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/bolts/Continuation<",
            "TTResult;TTContinuationResult;>;",
            "Lcom/facebook/bolts/CancellationToken;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 801
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    .local p1, "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<TTResult;TTContinuationResult;>;"
    sget-object v0, Lcom/facebook/bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/bolts/Task;->onSuccess(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/bolts/Task;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/bolts/Continuation<",
            "TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 755
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    .local p1, "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<TTResult;TTContinuationResult;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/bolts/Task;->onSuccess(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "ct"    # Lcom/facebook/bolts/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/bolts/Continuation<",
            "TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/bolts/CancellationToken;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 766
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    .local p1, "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<TTResult;TTContinuationResult;>;"
    new-instance v0, Lcom/facebook/bolts/Task$12;

    invoke-direct {v0, p0, p3, p1}, Lcom/facebook/bolts/Task$12;-><init>(Lcom/facebook/bolts/Task;Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/Continuation;)V

    invoke-virtual {p0, v0, p2}, Lcom/facebook/bolts/Task;->continueWithTask(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccessTask(Lcom/facebook/bolts/Continuation;)Lcom/facebook/bolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/bolts/Continuation<",
            "TTResult;",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;>;)",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 847
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    .local p1, "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<TTResult;Lcom/facebook/bolts/Task<TTContinuationResult;>;>;"
    sget-object v0, Lcom/facebook/bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/bolts/Task;->onSuccessTask(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccessTask(Lcom/facebook/bolts/Continuation;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;
    .locals 1
    .param p2, "ct"    # Lcom/facebook/bolts/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/bolts/Continuation<",
            "TTResult;",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;>;",
            "Lcom/facebook/bolts/CancellationToken;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 856
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    .local p1, "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<TTResult;Lcom/facebook/bolts/Task<TTContinuationResult;>;>;"
    sget-object v0, Lcom/facebook/bolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/bolts/Task;->onSuccessTask(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccessTask(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/bolts/Task;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/bolts/Continuation<",
            "TTResult;",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 810
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    .local p1, "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<TTResult;Lcom/facebook/bolts/Task<TTContinuationResult;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/bolts/Task;->onSuccessTask(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccessTask(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;Lcom/facebook/bolts/CancellationToken;)Lcom/facebook/bolts/Task;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "ct"    # Lcom/facebook/bolts/CancellationToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/bolts/Continuation<",
            "TTResult;",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/bolts/CancellationToken;",
            ")",
            "Lcom/facebook/bolts/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 821
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    .local p1, "continuation":Lcom/facebook/bolts/Continuation;, "Lcom/facebook/bolts/Continuation<TTResult;Lcom/facebook/bolts/Task<TTContinuationResult;>;>;"
    new-instance v0, Lcom/facebook/bolts/Task$13;

    invoke-direct {v0, p0, p3, p1}, Lcom/facebook/bolts/Task$13;-><init>(Lcom/facebook/bolts/Task;Lcom/facebook/bolts/CancellationToken;Lcom/facebook/bolts/Continuation;)V

    invoke-virtual {p0, v0, p2}, Lcom/facebook/bolts/Task;->continueWithTask(Lcom/facebook/bolts/Continuation;Ljava/util/concurrent/Executor;)Lcom/facebook/bolts/Task;

    move-result-object v0

    return-object v0
.end method

.method trySetCancelled()Z
    .locals 3

    .line 983
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    iget-object v0, p0, Lcom/facebook/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 984
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/bolts/Task;->complete:Z

    if-eqz v1, :cond_0

    .line 985
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 987
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/bolts/Task;->complete:Z

    .line 988
    iput-boolean v1, p0, Lcom/facebook/bolts/Task;->cancelled:Z

    .line 989
    iget-object v2, p0, Lcom/facebook/bolts/Task;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 990
    invoke-direct {p0}, Lcom/facebook/bolts/Task;->runContinuations()V

    .line 991
    monitor-exit v0

    return v1

    .line 992
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method trySetError(Ljava/lang/Exception;)Z
    .locals 3
    .param p1, "error"    # Ljava/lang/Exception;

    .line 1011
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    iget-object v0, p0, Lcom/facebook/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1012
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/bolts/Task;->complete:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1013
    monitor-exit v0

    return v2

    .line 1015
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/bolts/Task;->complete:Z

    .line 1016
    iput-object p1, p0, Lcom/facebook/bolts/Task;->error:Ljava/lang/Exception;

    .line 1017
    iput-boolean v2, p0, Lcom/facebook/bolts/Task;->errorHasBeenObserved:Z

    .line 1018
    iget-object v2, p0, Lcom/facebook/bolts/Task;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1019
    invoke-direct {p0}, Lcom/facebook/bolts/Task;->runContinuations()V

    .line 1020
    iget-boolean v2, p0, Lcom/facebook/bolts/Task;->errorHasBeenObserved:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/facebook/bolts/Task;->getUnobservedExceptionHandler()Lcom/facebook/bolts/Task$UnobservedExceptionHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1021
    new-instance v2, Lcom/facebook/bolts/UnobservedErrorNotifier;

    invoke-direct {v2, p0}, Lcom/facebook/bolts/UnobservedErrorNotifier;-><init>(Lcom/facebook/bolts/Task;)V

    iput-object v2, p0, Lcom/facebook/bolts/Task;->unobservedErrorNotifier:Lcom/facebook/bolts/UnobservedErrorNotifier;

    .line 1022
    :cond_1
    monitor-exit v0

    return v1

    .line 1023
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method trySetResult(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 997
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TTResult;"
    iget-object v0, p0, Lcom/facebook/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 998
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/bolts/Task;->complete:Z

    if-eqz v1, :cond_0

    .line 999
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1001
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/bolts/Task;->complete:Z

    .line 1002
    iput-object p1, p0, Lcom/facebook/bolts/Task;->result:Ljava/lang/Object;

    .line 1003
    iget-object v2, p0, Lcom/facebook/bolts/Task;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1004
    invoke-direct {p0}, Lcom/facebook/bolts/Task;->runContinuations()V

    .line 1005
    monitor-exit v0

    return v1

    .line 1006
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public waitForCompletion()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 166
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    iget-object v0, p0, Lcom/facebook/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/bolts/Task;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/facebook/bolts/Task;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 170
    :cond_0
    monitor-exit v0

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public waitForCompletion(JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .param p1, "duration"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 180
    .local p0, "this":Lcom/facebook/bolts/Task;, "Lcom/facebook/bolts/Task<TTResult;>;"
    iget-object v0, p0, Lcom/facebook/bolts/Task;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/bolts/Task;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/facebook/bolts/Task;->lock:Ljava/lang/Object;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/bolts/Task;->isCompleted()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 185
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
