.class public abstract Lcom/google/firebase/storage/StorageTask;
.super Lcom/google/firebase/storage/ControllableTask;
.source "StorageTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/StorageTask$SnapshotBase;,
        Lcom/google/firebase/storage/StorageTask$ProvideError;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT::",
        "Lcom/google/firebase/storage/StorageTask$ProvideError;",
        ">",
        "Lcom/google/firebase/storage/ControllableTask<",
        "TResultT;>;"
    }
.end annotation


# static fields
.field static final INTERNAL_STATE_CANCELED:I = 0x100

.field static final INTERNAL_STATE_CANCELING:I = 0x20

.field static final INTERNAL_STATE_FAILURE:I = 0x40

.field static final INTERNAL_STATE_IN_PROGRESS:I = 0x4

.field static final INTERNAL_STATE_NOT_STARTED:I = 0x1

.field static final INTERNAL_STATE_PAUSED:I = 0x10

.field static final INTERNAL_STATE_PAUSING:I = 0x8

.field static final INTERNAL_STATE_QUEUED:I = 0x2

.field static final INTERNAL_STATE_SUCCESS:I = 0x80

.field static final STATES_CANCELED:I = 0x100

.field static final STATES_COMPLETE:I = 0x1c0

.field static final STATES_FAILURE:I = 0x40

.field static final STATES_INPROGRESS:I = -0x1d1

.field static final STATES_PAUSED:I = 0x10

.field static final STATES_SUCCESS:I = 0x80

.field private static final TAG:Ljava/lang/String; = "StorageTask"

.field private static final ValidTaskInitiatedStateChanges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final ValidUserInitiatedStateChanges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final cancelManager:Lcom/google/firebase/storage/TaskListenerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/TaskListenerImpl<",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            "TResultT;>;"
        }
    .end annotation
.end field

.field final completeListener:Lcom/google/firebase/storage/TaskListenerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/TaskListenerImpl<",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "TResultT;>;TResultT;>;"
        }
    .end annotation
.end field

.field private volatile currentState:I

.field final failureManager:Lcom/google/firebase/storage/TaskListenerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/TaskListenerImpl<",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            "TResultT;>;"
        }
    .end annotation
.end field

.field private finalResult:Lcom/google/firebase/storage/StorageTask$ProvideError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResultT;"
        }
    .end annotation
.end field

.field final pausedManager:Lcom/google/firebase/storage/TaskListenerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/TaskListenerImpl<",
            "Lcom/google/firebase/storage/OnPausedListener<",
            "-TResultT;>;TResultT;>;"
        }
    .end annotation
.end field

.field final progressManager:Lcom/google/firebase/storage/TaskListenerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/TaskListenerImpl<",
            "Lcom/google/firebase/storage/OnProgressListener<",
            "-TResultT;>;TResultT;>;"
        }
    .end annotation
.end field

.field final successManager:Lcom/google/firebase/storage/TaskListenerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/TaskListenerImpl<",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "-TResultT;>;TResultT;>;"
        }
    .end annotation
.end field

.field protected final syncObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/storage/StorageTask;->ValidUserInitiatedStateChanges:Ljava/util/HashMap;

    .line 62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/firebase/storage/StorageTask;->ValidTaskInitiatedStateChanges:Ljava/util/HashMap;

    .line 66
    nop

    .line 67
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    const/4 v5, 0x2

    .line 71
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 67
    new-array v7, v5, [Ljava/lang/Integer;

    .line 68
    const/16 v8, 0x10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/16 v10, 0x100

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v2

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 66
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    nop

    .line 71
    new-instance v4, Ljava/util/HashSet;

    new-array v7, v5, [Ljava/lang/Integer;

    .line 72
    const/16 v11, 0x8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v9

    const/16 v12, 0x20

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v7, v2

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 70
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    nop

    .line 75
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v7, Ljava/util/HashSet;

    new-array v13, v5, [Ljava/lang/Integer;

    .line 76
    aput-object v11, v13, v9

    aput-object v12, v13, v2

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 74
    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    nop

    .line 79
    new-instance v7, Ljava/util/HashSet;

    new-array v13, v5, [Ljava/lang/Integer;

    .line 80
    aput-object v6, v13, v9

    aput-object v10, v13, v2

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 78
    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    nop

    .line 83
    const/16 v7, 0x40

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v13, Ljava/util/HashSet;

    new-array v14, v5, [Ljava/lang/Integer;

    .line 84
    aput-object v6, v14, v9

    aput-object v10, v14, v2

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 82
    invoke-virtual {v0, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    nop

    .line 87
    new-instance v0, Ljava/util/HashSet;

    new-array v13, v5, [Ljava/lang/Integer;

    .line 88
    aput-object v6, v13, v9

    aput-object v7, v13, v2

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 86
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    nop

    .line 91
    new-instance v0, Ljava/util/HashSet;

    const/4 v3, 0x3

    new-array v13, v3, [Ljava/lang/Integer;

    .line 94
    aput-object v4, v13, v9

    aput-object v7, v13, v2

    const/16 v14, 0x80

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v5

    .line 93
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 90
    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    nop

    .line 97
    new-instance v0, Ljava/util/HashSet;

    new-array v6, v3, [Ljava/lang/Integer;

    .line 100
    aput-object v4, v6, v9

    aput-object v7, v6, v2

    aput-object v14, v6, v5

    .line 99
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 96
    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    nop

    .line 103
    new-instance v0, Ljava/util/HashSet;

    new-array v4, v3, [Ljava/lang/Integer;

    .line 105
    aput-object v8, v4, v9

    aput-object v7, v4, v2

    aput-object v14, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 102
    invoke-virtual {v1, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    nop

    .line 108
    new-instance v0, Ljava/util/HashSet;

    new-array v3, v3, [Ljava/lang/Integer;

    .line 111
    aput-object v10, v3, v9

    aput-object v7, v3, v2

    aput-object v14, v3, v5

    .line 110
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 107
    invoke-virtual {v1, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .line 167
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-direct {p0}, Lcom/google/firebase/storage/ControllableTask;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->syncObject:Ljava/lang/Object;

    .line 116
    new-instance v0, Lcom/google/firebase/storage/TaskListenerImpl;

    new-instance v1, Lcom/google/firebase/storage/-$$Lambda$StorageTask$xlHsb5OfSRp-di5vg8sdDdXsCO4;

    invoke-direct {v1, p0}, Lcom/google/firebase/storage/-$$Lambda$StorageTask$xlHsb5OfSRp-di5vg8sdDdXsCO4;-><init>(Lcom/google/firebase/storage/StorageTask;)V

    const/16 v2, 0x80

    invoke-direct {v0, p0, v2, v1}, Lcom/google/firebase/storage/TaskListenerImpl;-><init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/TaskListenerImpl$OnRaise;)V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->successManager:Lcom/google/firebase/storage/TaskListenerImpl;

    .line 126
    new-instance v0, Lcom/google/firebase/storage/TaskListenerImpl;

    new-instance v1, Lcom/google/firebase/storage/-$$Lambda$StorageTask$kGBBr9mjcn2-DxduMaHtT-Bojro;

    invoke-direct {v1, p0}, Lcom/google/firebase/storage/-$$Lambda$StorageTask$kGBBr9mjcn2-DxduMaHtT-Bojro;-><init>(Lcom/google/firebase/storage/StorageTask;)V

    const/16 v2, 0x40

    invoke-direct {v0, p0, v2, v1}, Lcom/google/firebase/storage/TaskListenerImpl;-><init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/TaskListenerImpl$OnRaise;)V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->failureManager:Lcom/google/firebase/storage/TaskListenerImpl;

    .line 136
    new-instance v0, Lcom/google/firebase/storage/TaskListenerImpl;

    new-instance v1, Lcom/google/firebase/storage/-$$Lambda$StorageTask$Jkv9xcVZaYz5UBCNvMSmJTHEG18;

    invoke-direct {v1, p0}, Lcom/google/firebase/storage/-$$Lambda$StorageTask$Jkv9xcVZaYz5UBCNvMSmJTHEG18;-><init>(Lcom/google/firebase/storage/StorageTask;)V

    const/16 v2, 0x1c0

    invoke-direct {v0, p0, v2, v1}, Lcom/google/firebase/storage/TaskListenerImpl;-><init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/TaskListenerImpl$OnRaise;)V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->completeListener:Lcom/google/firebase/storage/TaskListenerImpl;

    .line 146
    new-instance v0, Lcom/google/firebase/storage/TaskListenerImpl;

    new-instance v1, Lcom/google/firebase/storage/-$$Lambda$StorageTask$NSdjk49HEq4blyR-OF6mZEPTt_s;

    invoke-direct {v1, p0}, Lcom/google/firebase/storage/-$$Lambda$StorageTask$NSdjk49HEq4blyR-OF6mZEPTt_s;-><init>(Lcom/google/firebase/storage/StorageTask;)V

    const/16 v2, 0x100

    invoke-direct {v0, p0, v2, v1}, Lcom/google/firebase/storage/TaskListenerImpl;-><init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/TaskListenerImpl$OnRaise;)V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->cancelManager:Lcom/google/firebase/storage/TaskListenerImpl;

    .line 156
    new-instance v0, Lcom/google/firebase/storage/TaskListenerImpl;

    sget-object v1, Lcom/google/firebase/storage/-$$Lambda$XYrrQpsB_p_00PPOCyqc7ym51TA;->INSTANCE:Lcom/google/firebase/storage/-$$Lambda$XYrrQpsB_p_00PPOCyqc7ym51TA;

    const/16 v2, -0x1d1

    invoke-direct {v0, p0, v2, v1}, Lcom/google/firebase/storage/TaskListenerImpl;-><init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/TaskListenerImpl$OnRaise;)V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->progressManager:Lcom/google/firebase/storage/TaskListenerImpl;

    .line 160
    new-instance v0, Lcom/google/firebase/storage/TaskListenerImpl;

    sget-object v1, Lcom/google/firebase/storage/-$$Lambda$HI9VW-fkLzW-JEKLQBX3mZC5p1s;->INSTANCE:Lcom/google/firebase/storage/-$$Lambda$HI9VW-fkLzW-JEKLQBX3mZC5p1s;

    const/16 v2, 0x10

    invoke-direct {v0, p0, v2, v1}, Lcom/google/firebase/storage/TaskListenerImpl;-><init>(Lcom/google/firebase/storage/StorageTask;ILcom/google/firebase/storage/TaskListenerImpl$OnRaise;)V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->pausedManager:Lcom/google/firebase/storage/TaskListenerImpl;

    .line 168
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firebase/storage/StorageTask;->currentState:I

    .line 169
    return-void
.end method

.method private continueWithImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TResultT;TContinuationResultT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TContinuationResultT;>;"
        }
    .end annotation

    .line 887
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "continuation":Lcom/google/android/gms/tasks/Continuation;, "Lcom/google/android/gms/tasks/Continuation<TResultT;TContinuationResultT;>;"
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 888
    .local v0, "source":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<TContinuationResultT;>;"
    iget-object v1, p0, Lcom/google/firebase/storage/StorageTask;->completeListener:Lcom/google/firebase/storage/TaskListenerImpl;

    new-instance v2, Lcom/google/firebase/storage/-$$Lambda$StorageTask$mk_kE2XoKM88mAmixvAkBmUTyro;

    invoke-direct {v2, p0, p2, v0}, Lcom/google/firebase/storage/-$$Lambda$StorageTask$mk_kE2XoKM88mAmixvAkBmUTyro;-><init>(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p1, v2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 910
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method private continueWithTaskImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TResultT;",
            "Lcom/google/android/gms/tasks/Task<",
            "TContinuationResultT;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TContinuationResultT;>;"
        }
    .end annotation

    .line 985
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "continuation":Lcom/google/android/gms/tasks/Continuation;, "Lcom/google/android/gms/tasks/Continuation<TResultT;Lcom/google/android/gms/tasks/Task<TContinuationResultT;>;>;"
    new-instance v0, Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;-><init>()V

    .line 986
    .local v0, "cancellationTokenSource":Lcom/google/android/gms/tasks/CancellationTokenSource;
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;->getToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object v1

    .line 987
    .local v1, "cancellationToken":Lcom/google/android/gms/tasks/CancellationToken;
    new-instance v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v2, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>(Lcom/google/android/gms/tasks/CancellationToken;)V

    .line 989
    .local v2, "source":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<TContinuationResultT;>;"
    iget-object v3, p0, Lcom/google/firebase/storage/StorageTask;->completeListener:Lcom/google/firebase/storage/TaskListenerImpl;

    new-instance v4, Lcom/google/firebase/storage/-$$Lambda$StorageTask$uAL5ZNP1zCuP5yLsgZAe-801mpY;

    invoke-direct {v4, p0, p2, v2, v0}, Lcom/google/firebase/storage/-$$Lambda$StorageTask$uAL5ZNP1zCuP5yLsgZAe-801mpY;-><init>(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/CancellationTokenSource;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5, p1, v4}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 1020
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    return-object v3
.end method

.method private ensureFinalState()V
    .locals 2

    .line 1086
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1089
    const/16 v0, 0x100

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/StorageTask;->tryChangeState(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1090
    const/16 v0, 0x40

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/StorageTask;->tryChangeState(IZ)Z

    .line 1093
    :cond_0
    return-void
.end method

.method private getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    .line 444
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->finalResult:Lcom/google/firebase/storage/StorageTask$ProvideError;

    if-eqz v0, :cond_0

    .line 445
    return-object v0

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 449
    const/4 v0, 0x0

    return-object v0

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->finalResult:Lcom/google/firebase/storage/StorageTask$ProvideError;

    if-nez v0, :cond_2

    .line 453
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->snapState()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/storage/StorageTask;->finalResult:Lcom/google/firebase/storage/StorageTask$ProvideError;

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->finalResult:Lcom/google/firebase/storage/StorageTask$ProvideError;

    return-object v0
.end method

.method private getStateString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .line 1110
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    sparse-switch p1, :sswitch_data_0

    .line 1130
    const-string v0, "Unknown Internal State!"

    return-object v0

    .line 1128
    :sswitch_0
    const-string v0, "INTERNAL_STATE_CANCELED"

    return-object v0

    .line 1126
    :sswitch_1
    const-string v0, "INTERNAL_STATE_SUCCESS"

    return-object v0

    .line 1124
    :sswitch_2
    const-string v0, "INTERNAL_STATE_FAILURE"

    return-object v0

    .line 1122
    :sswitch_3
    const-string v0, "INTERNAL_STATE_CANCELING"

    return-object v0

    .line 1120
    :sswitch_4
    const-string v0, "INTERNAL_STATE_PAUSED"

    return-object v0

    .line 1118
    :sswitch_5
    const-string v0, "INTERNAL_STATE_PAUSING"

    return-object v0

    .line 1116
    :sswitch_6
    const-string v0, "INTERNAL_STATE_IN_PROGRESS"

    return-object v0

    .line 1114
    :sswitch_7
    const-string v0, "INTERNAL_STATE_QUEUED"

    return-object v0

    .line 1112
    :sswitch_8
    const-string v0, "INTERNAL_STATE_NOT_STARTED"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_7
        0x4 -> :sswitch_6
        0x8 -> :sswitch_5
        0x10 -> :sswitch_4
        0x20 -> :sswitch_3
        0x40 -> :sswitch_2
        0x80 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method private getStateString([I)Ljava/lang/String;
    .locals 6
    .param p1, "states"    # [I

    .line 1096
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    array-length v0, p1

    if-nez v0, :cond_0

    .line 1097
    const-string v0, ""

    return-object v0

    .line 1100
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1102
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p1, v3

    .line 1103
    .local v4, "state":I
    invoke-direct {p0, v4}, Lcom/google/firebase/storage/StorageTask;->getStateString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    .end local v4    # "state":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1106
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$successTaskImpl$6(Lcom/google/android/gms/tasks/SuccessContinuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/CancellationTokenSource;Lcom/google/firebase/storage/StorageTask$ProvideError;)V
    .locals 2
    .param p0, "continuation"    # Lcom/google/android/gms/tasks/SuccessContinuation;
    .param p1, "source"    # Lcom/google/android/gms/tasks/TaskCompletionSource;
    .param p2, "cancellationTokenSource"    # Lcom/google/android/gms/tasks/CancellationTokenSource;
    .param p3, "result"    # Lcom/google/firebase/storage/StorageTask$ProvideError;

    .line 1038
    :try_start_0
    invoke-interface {p0, p3}, Lcom/google/android/gms/tasks/SuccessContinuation;->then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    .local v0, "resultTask":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<TContinuationResultT;>;"
    nop

    .line 1051
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/firebase/storage/-$$Lambda$JkyFbgEatWwF9u2RXdKZbbkQ0Jw;

    invoke-direct {v1, p1}, Lcom/google/firebase/storage/-$$Lambda$JkyFbgEatWwF9u2RXdKZbbkQ0Jw;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 1052
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/firebase/storage/-$$Lambda$g715g6W7VdV2JIn7lpH1jtTC4D0;

    invoke-direct {v1, p1}, Lcom/google/firebase/storage/-$$Lambda$g715g6W7VdV2JIn7lpH1jtTC4D0;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 1053
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/firebase/storage/-$$Lambda$0ZEndH1RQEKxIilqWbB8Nk19iDo;

    invoke-direct {v1, p2}, Lcom/google/firebase/storage/-$$Lambda$0ZEndH1RQEKxIilqWbB8Nk19iDo;-><init>(Lcom/google/android/gms/tasks/CancellationTokenSource;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    .line 1054
    return-void

    .line 1046
    .end local v0    # "resultTask":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<TContinuationResultT;>;"
    :catch_0
    move-exception v0

    .line 1047
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 1048
    return-void

    .line 1039
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1040
    .local v0, "e":Lcom/google/android/gms/tasks/RuntimeExecutionException;
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 1041
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1043
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 1045
    :goto_0
    return-void
.end method

.method private successTaskImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/SuccessContinuation<",
            "TResultT;TContinuationResultT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TContinuationResultT;>;"
        }
    .end annotation

    .line 1027
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "continuation":Lcom/google/android/gms/tasks/SuccessContinuation;, "Lcom/google/android/gms/tasks/SuccessContinuation<TResultT;TContinuationResultT;>;"
    new-instance v0, Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;-><init>()V

    .line 1028
    .local v0, "cancellationTokenSource":Lcom/google/android/gms/tasks/CancellationTokenSource;
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;->getToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object v1

    .line 1029
    .local v1, "cancellationToken":Lcom/google/android/gms/tasks/CancellationToken;
    new-instance v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v2, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>(Lcom/google/android/gms/tasks/CancellationToken;)V

    .line 1032
    .local v2, "source":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<TContinuationResultT;>;"
    iget-object v3, p0, Lcom/google/firebase/storage/StorageTask;->successManager:Lcom/google/firebase/storage/TaskListenerImpl;

    new-instance v4, Lcom/google/firebase/storage/-$$Lambda$StorageTask$5bT26mCdNcFey2g8r5U6NeyZ95c;

    invoke-direct {v4, p2, v2, v0}, Lcom/google/firebase/storage/-$$Lambda$StorageTask$5bT26mCdNcFey2g8r5U6NeyZ95c;-><init>(Lcom/google/android/gms/tasks/SuccessContinuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/CancellationTokenSource;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5, p1, v4}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 1055
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public bridge synthetic addOnCanceledListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnCanceledListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public addOnCanceledListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/google/android/gms/tasks/OnCanceledListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 838
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->cancelManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 841
    return-object p0
.end method

.method public addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "listener"    # Lcom/google/android/gms/tasks/OnCanceledListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 799
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->cancelManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 801
    return-object p0
.end method

.method public addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Lcom/google/android/gms/tasks/OnCanceledListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 817
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->cancelManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 820
    return-object p0
.end method

.method public bridge synthetic addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 771
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "listener":Lcom/google/android/gms/tasks/OnCompleteListener;, "Lcom/google/android/gms/tasks/OnCompleteListener<TResultT;>;"
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->completeListener:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 775
    return-object p0
.end method

.method public addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 729
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p1, "listener":Lcom/google/android/gms/tasks/OnCompleteListener;, "Lcom/google/android/gms/tasks/OnCompleteListener<TResultT;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->completeListener:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 731
    return-object p0
.end method

.method public addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 749
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "listener":Lcom/google/android/gms/tasks/OnCompleteListener;, "Lcom/google/android/gms/tasks/OnCompleteListener<TResultT;>;"
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->completeListener:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 753
    return-object p0
.end method

.method public bridge synthetic addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public addOnFailureListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/google/android/gms/tasks/OnFailureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 700
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->failureManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 704
    return-object p0
.end method

.method public addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "listener"    # Lcom/google/android/gms/tasks/OnFailureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 657
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->failureManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 659
    return-object p0
.end method

.method public addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Lcom/google/android/gms/tasks/OnFailureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 677
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->failureManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 681
    return-object p0
.end method

.method public bridge synthetic addOnPausedListener(Landroid/app/Activity;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/ControllableTask;
    .locals 0

    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnPausedListener(Landroid/app/Activity;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addOnPausedListener(Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/ControllableTask;
    .locals 0

    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->addOnPausedListener(Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addOnPausedListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/ControllableTask;
    .locals 0

    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnPausedListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public addOnPausedListener(Landroid/app/Activity;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/storage/OnPausedListener<",
            "-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 501
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "listener":Lcom/google/firebase/storage/OnPausedListener;, "Lcom/google/firebase/storage/OnPausedListener<-TResultT;>;"
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->pausedManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 504
    return-object p0
.end method

.method public addOnPausedListener(Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/OnPausedListener<",
            "-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 467
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p1, "listener":Lcom/google/firebase/storage/OnPausedListener;, "Lcom/google/firebase/storage/OnPausedListener<-TResultT;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->pausedManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 469
    return-object p0
.end method

.method public addOnPausedListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/storage/OnPausedListener<",
            "-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 482
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "listener":Lcom/google/firebase/storage/OnPausedListener;, "Lcom/google/firebase/storage/OnPausedListener<-TResultT;>;"
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->pausedManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 485
    return-object p0
.end method

.method public bridge synthetic addOnProgressListener(Landroid/app/Activity;Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/CancellableTask;
    .locals 0

    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnProgressListener(Landroid/app/Activity;Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/CancellableTask;
    .locals 0

    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->addOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addOnProgressListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/CancellableTask;
    .locals 0

    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnProgressListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public addOnProgressListener(Landroid/app/Activity;Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/storage/OnProgressListener<",
            "-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 557
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "listener":Lcom/google/firebase/storage/OnProgressListener;, "Lcom/google/firebase/storage/OnProgressListener<-TResultT;>;"
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->progressManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 560
    return-object p0
.end method

.method public addOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/OnProgressListener<",
            "-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 525
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p1, "listener":Lcom/google/firebase/storage/OnProgressListener;, "Lcom/google/firebase/storage/OnProgressListener<-TResultT;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->progressManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 527
    return-object p0
.end method

.method public addOnProgressListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/storage/OnProgressListener<",
            "-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 540
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "listener":Lcom/google/firebase/storage/OnProgressListener;, "Lcom/google/firebase/storage/OnProgressListener<-TResultT;>;"
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->progressManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 543
    return-object p0
.end method

.method public bridge synthetic addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    return-object p1
.end method

.method public addOnSuccessListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 628
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "listener":Lcom/google/android/gms/tasks/OnSuccessListener;, "Lcom/google/android/gms/tasks/OnSuccessListener<-TResultT;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->successManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 631
    return-object p0
.end method

.method public addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 584
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p1, "listener":Lcom/google/android/gms/tasks/OnSuccessListener;, "Lcom/google/android/gms/tasks/OnSuccessListener<-TResultT;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->successManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 586
    return-object p0
.end method

.method public addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 605
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "listener":Lcom/google/android/gms/tasks/OnSuccessListener;, "Lcom/google/android/gms/tasks/OnSuccessListener<-TResultT;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->successManager:Lcom/google/firebase/storage/TaskListenerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/firebase/storage/TaskListenerImpl;->addListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 608
    return-object p0
.end method

.method public cancel()Z
    .locals 2

    .line 231
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/StorageTask;->tryChangeState([IZ)Z

    move-result v0

    return v0

    :array_0
    .array-data 4
        0x100
        0x20
    .end array-data
.end method

.method public continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TResultT;TContinuationResultT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TContinuationResultT;>;"
        }
    .end annotation

    .line 864
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p1, "continuation":Lcom/google/android/gms/tasks/Continuation;, "Lcom/google/android/gms/tasks/Continuation<TResultT;TContinuationResultT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/storage/StorageTask;->continueWithImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TResultT;TContinuationResultT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TContinuationResultT;>;"
        }
    .end annotation

    .line 879
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "continuation":Lcom/google/android/gms/tasks/Continuation;, "Lcom/google/android/gms/tasks/Continuation<TResultT;TContinuationResultT;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->continueWithImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TResultT;",
            "Lcom/google/android/gms/tasks/Task<",
            "TContinuationResultT;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TContinuationResultT;>;"
        }
    .end annotation

    .line 925
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p1, "continuation":Lcom/google/android/gms/tasks/Continuation;, "Lcom/google/android/gms/tasks/Continuation<TResultT;Lcom/google/android/gms/tasks/Task<TContinuationResultT;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/storage/StorageTask;->continueWithTaskImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TResultT;",
            "Lcom/google/android/gms/tasks/Task<",
            "TContinuationResultT;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TContinuationResultT;>;"
        }
    .end annotation

    .line 940
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "continuation":Lcom/google/android/gms/tasks/Continuation;, "Lcom/google/android/gms/tasks/Continuation<TResultT;Lcom/google/android/gms/tasks/Task<TContinuationResultT;>;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->continueWithTaskImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 313
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 314
    const/4 v0, 0x0

    return-object v0

    .line 316
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/storage/StorageTask$ProvideError;->getError()Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method getInternalState()I
    .locals 1

    .line 331
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    iget v0, p0, Lcom/google/firebase/storage/StorageTask;->currentState:I

    return v0
.end method

.method public getResult()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    .line 273
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 276
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/storage/StorageTask$ProvideError;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 277
    .local v0, "t":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v1

    return-object v1

    .line 278
    :cond_0
    new-instance v1, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 274
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getResult(Ljava/lang/Class;)Lcom/google/firebase/storage/StorageTask$ProvideError;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;)TResultT;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 293
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 296
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/storage/StorageTask$ProvideError;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/storage/StorageTask$ProvideError;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 300
    .local v0, "t":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 303
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v1

    return-object v1

    .line 301
    :cond_0
    new-instance v1, Lcom/google/android/gms/tasks/RuntimeExecutionException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 297
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->getFinalResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/storage/StorageTask$ProvideError;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 294
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1

    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getResult()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageTask;->getResult(Ljava/lang/Class;)Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object p1

    return-object p1
.end method

.method getRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 1070
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    new-instance v0, Lcom/google/firebase/storage/-$$Lambda$StorageTask$q9YBoR_A8LB-JxTCx8JRQvabaZs;

    invoke-direct {v0, p0}, Lcom/google/firebase/storage/-$$Lambda$StorageTask$q9YBoR_A8LB-JxTCx8JRQvabaZs;-><init>(Lcom/google/firebase/storage/StorageTask;)V

    return-object v0
.end method

.method public getSnapshot()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    .line 325
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->snapState()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v0

    return-object v0
.end method

.method abstract getStorage()Lcom/google/firebase/storage/StorageReference;
.end method

.method getSyncObject()Ljava/lang/Object;
    .locals 1

    .line 336
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->syncObject:Ljava/lang/Object;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 2

    .line 249
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isComplete()Z
    .locals 1

    .line 237
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v0

    and-int/lit16 v0, v0, 0x1c0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInProgress()Z
    .locals 1

    .line 255
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v0

    and-int/lit16 v0, v0, -0x1d1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 261
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuccessful()Z
    .locals 1

    .line 243
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$continueWithImpl$4$StorageTask(Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .param p1, "continuation"    # Lcom/google/android/gms/tasks/Continuation;
    .param p2, "source"    # Lcom/google/android/gms/tasks/TaskCompletionSource;
    .param p3, "task"    # Lcom/google/android/gms/tasks/Task;

    .line 894
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    :try_start_0
    invoke-interface {p1, p0}, Lcom/google/android/gms/tasks/Continuation;->then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    .local v0, "result":Ljava/lang/Object;, "TContinuationResultT;"
    nop

    .line 906
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 907
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 909
    :cond_0
    return-void

    .line 902
    .end local v0    # "result":Ljava/lang/Object;, "TContinuationResultT;"
    :catch_0
    move-exception v0

    .line 903
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 904
    return-void

    .line 895
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 896
    .local v0, "e":Lcom/google/android/gms/tasks/RuntimeExecutionException;
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 897
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 899
    :cond_1
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 901
    :goto_0
    return-void
.end method

.method public synthetic lambda$continueWithTaskImpl$5$StorageTask(Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/CancellationTokenSource;Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .param p1, "continuation"    # Lcom/google/android/gms/tasks/Continuation;
    .param p2, "source"    # Lcom/google/android/gms/tasks/TaskCompletionSource;
    .param p3, "cancellationTokenSource"    # Lcom/google/android/gms/tasks/CancellationTokenSource;
    .param p4, "task"    # Lcom/google/android/gms/tasks/Task;

    .line 995
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    :try_start_0
    invoke-interface {p1, p0}, Lcom/google/android/gms/tasks/Continuation;->then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1006
    .local v0, "resultTask":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<TContinuationResultT;>;"
    nop

    .line 1008
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1009
    if-nez v0, :cond_0

    .line 1010
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 1011
    return-void

    .line 1014
    :cond_0
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/firebase/storage/-$$Lambda$JkyFbgEatWwF9u2RXdKZbbkQ0Jw;

    invoke-direct {v1, p2}, Lcom/google/firebase/storage/-$$Lambda$JkyFbgEatWwF9u2RXdKZbbkQ0Jw;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 1015
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/firebase/storage/-$$Lambda$g715g6W7VdV2JIn7lpH1jtTC4D0;

    invoke-direct {v1, p2}, Lcom/google/firebase/storage/-$$Lambda$g715g6W7VdV2JIn7lpH1jtTC4D0;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 1016
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/firebase/storage/-$$Lambda$0ZEndH1RQEKxIilqWbB8Nk19iDo;

    invoke-direct {v1, p3}, Lcom/google/firebase/storage/-$$Lambda$0ZEndH1RQEKxIilqWbB8Nk19iDo;-><init>(Lcom/google/android/gms/tasks/CancellationTokenSource;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    .line 1018
    :cond_1
    return-void

    .line 1003
    .end local v0    # "resultTask":Lcom/google/android/gms/tasks/Task;, "Lcom/google/android/gms/tasks/Task<TContinuationResultT;>;"
    :catch_0
    move-exception v0

    .line 1004
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 1005
    return-void

    .line 996
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 997
    .local v0, "e":Lcom/google/android/gms/tasks/RuntimeExecutionException;
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_2

    .line 998
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/RuntimeExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1000
    :cond_2
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 1002
    :goto_0
    return-void
.end method

.method public synthetic lambda$getRunnable$7$StorageTask()V
    .locals 1

    .line 1072
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->ensureFinalState()V

    .line 1075
    nop

    .line 1076
    return-void

    .line 1074
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/firebase/storage/StorageTask;->ensureFinalState()V

    .line 1075
    throw v0
.end method

.method public synthetic lambda$new$0$StorageTask(Lcom/google/android/gms/tasks/OnSuccessListener;Lcom/google/firebase/storage/StorageTask$ProvideError;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/tasks/OnSuccessListener;
    .param p2, "snappedState"    # Lcom/google/firebase/storage/StorageTask$ProvideError;

    .line 122
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskManager;->getInstance()Lcom/google/firebase/storage/StorageTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/storage/StorageTaskManager;->unRegister(Lcom/google/firebase/storage/StorageTask;)V

    .line 123
    invoke-interface {p1, p2}, Lcom/google/android/gms/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public synthetic lambda$new$1$StorageTask(Lcom/google/android/gms/tasks/OnFailureListener;Lcom/google/firebase/storage/StorageTask$ProvideError;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/tasks/OnFailureListener;
    .param p2, "snappedState"    # Lcom/google/firebase/storage/StorageTask$ProvideError;

    .line 132
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskManager;->getInstance()Lcom/google/firebase/storage/StorageTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/storage/StorageTaskManager;->unRegister(Lcom/google/firebase/storage/StorageTask;)V

    .line 133
    invoke-interface {p2}, Lcom/google/firebase/storage/StorageTask$ProvideError;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    .line 134
    return-void
.end method

.method public synthetic lambda$new$2$StorageTask(Lcom/google/android/gms/tasks/OnCompleteListener;Lcom/google/firebase/storage/StorageTask$ProvideError;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/tasks/OnCompleteListener;
    .param p2, "snappedState"    # Lcom/google/firebase/storage/StorageTask$ProvideError;

    .line 142
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskManager;->getInstance()Lcom/google/firebase/storage/StorageTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/storage/StorageTaskManager;->unRegister(Lcom/google/firebase/storage/StorageTask;)V

    .line 143
    invoke-interface {p1, p0}, Lcom/google/android/gms/tasks/OnCompleteListener;->onComplete(Lcom/google/android/gms/tasks/Task;)V

    .line 144
    return-void
.end method

.method public synthetic lambda$new$3$StorageTask(Lcom/google/android/gms/tasks/OnCanceledListener;Lcom/google/firebase/storage/StorageTask$ProvideError;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/tasks/OnCanceledListener;
    .param p2, "snappedState"    # Lcom/google/firebase/storage/StorageTask$ProvideError;

    .line 152
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskManager;->getInstance()Lcom/google/firebase/storage/StorageTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/firebase/storage/StorageTaskManager;->unRegister(Lcom/google/firebase/storage/StorageTask;)V

    .line 153
    invoke-interface {p1}, Lcom/google/android/gms/tasks/OnCanceledListener;->onCanceled()V

    .line 154
    return-void
.end method

.method protected onCanceled()V
    .locals 0

    .line 441
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    return-void
.end method

.method protected onFailure()V
    .locals 0

    .line 437
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    return-void
.end method

.method protected onPaused()V
    .locals 0

    .line 435
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    return-void
.end method

.method protected onProgress()V
    .locals 0

    .line 433
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    return-void
.end method

.method protected onQueued()V
    .locals 0

    .line 431
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    return-void
.end method

.method protected onSuccess()V
    .locals 0

    .line 439
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    return-void
.end method

.method public onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/SuccessContinuation<",
            "TResultT;TContinuationResultT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TContinuationResultT;>;"
        }
    .end annotation

    .line 959
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p1, "continuation":Lcom/google/android/gms/tasks/SuccessContinuation;, "Lcom/google/android/gms/tasks/SuccessContinuation<TResultT;TContinuationResultT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/storage/StorageTask;->successTaskImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContinuationResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/SuccessContinuation<",
            "TResultT;TContinuationResultT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TContinuationResultT;>;"
        }
    .end annotation

    .line 978
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p2, "continuation":Lcom/google/android/gms/tasks/SuccessContinuation;, "Lcom/google/android/gms/tasks/SuccessContinuation<TResultT;TContinuationResultT;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->successTaskImpl(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public pause()Z
    .locals 2

    .line 221
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/StorageTask;->tryChangeState([IZ)Z

    move-result v0

    return v0

    :array_0
    .array-data 4
        0x10
        0x8
    .end array-data
.end method

.method queue()Z
    .locals 2

    .line 179
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/StorageTask;->tryChangeState(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->schedule()V

    .line 181
    const/4 v0, 0x1

    return v0

    .line 183
    :cond_0
    return v1
.end method

.method public removeOnCanceledListener(Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/tasks/OnCanceledListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCanceledListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 847
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->cancelManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->removeListener(Ljava/lang/Object;)V

    .line 849
    return-object p0
.end method

.method public removeOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 782
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p1, "listener":Lcom/google/android/gms/tasks/OnCompleteListener;, "Lcom/google/android/gms/tasks/OnCompleteListener<TResultT;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->completeListener:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->removeListener(Ljava/lang/Object;)V

    .line 784
    return-object p0
.end method

.method public removeOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/tasks/OnFailureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnFailureListener;",
            ")",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 710
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->failureManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->removeListener(Ljava/lang/Object;)V

    .line 712
    return-object p0
.end method

.method public removeOnPausedListener(Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/OnPausedListener<",
            "-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 511
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p1, "listener":Lcom/google/firebase/storage/OnPausedListener;, "Lcom/google/firebase/storage/OnPausedListener<-TResultT;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->pausedManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->removeListener(Ljava/lang/Object;)V

    .line 513
    return-object p0
.end method

.method public removeOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/OnProgressListener<",
            "-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 567
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p1, "listener":Lcom/google/firebase/storage/OnProgressListener;, "Lcom/google/firebase/storage/OnProgressListener<-TResultT;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->progressManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->removeListener(Ljava/lang/Object;)V

    .line 569
    return-object p0
.end method

.method public removeOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "-TResultT;>;)",
            "Lcom/google/firebase/storage/StorageTask<",
            "TResultT;>;"
        }
    .end annotation

    .line 638
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    .local p1, "listener":Lcom/google/android/gms/tasks/OnSuccessListener;, "Lcom/google/android/gms/tasks/OnSuccessListener<-TResultT;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->successManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/TaskListenerImpl;->removeListener(Ljava/lang/Object;)V

    .line 640
    return-object p0
.end method

.method resetState()V
    .locals 0

    .line 187
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    return-void
.end method

.method public resume()Z
    .locals 2

    .line 205
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/storage/StorageTask;->tryChangeState(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->resetState()V

    .line 207
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->schedule()V

    .line 208
    return v1

    .line 210
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method abstract run()V
.end method

.method abstract schedule()V
.end method

.method snapState()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    .line 342
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->snapStateImpl()Lcom/google/firebase/storage/StorageTask$ProvideError;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 344
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method abstract snapStateImpl()Lcom/google/firebase/storage/StorageTask$ProvideError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation
.end method

.method tryChangeState(IZ)Z
    .locals 2
    .param p1, "newState"    # I
    .param p2, "userInitiated"    # Z

    .line 426
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/google/firebase/storage/StorageTask;->tryChangeState([IZ)Z

    move-result v0

    return v0
.end method

.method tryChangeState([IZ)Z
    .locals 8
    .param p1, "requestedStates"    # [I
    .param p2, "userInitiated"    # Z

    .line 360
    .local p0, "this":Lcom/google/firebase/storage/StorageTask;, "Lcom/google/firebase/storage/StorageTask<TResultT;>;"
    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/firebase/storage/StorageTask;->ValidUserInitiatedStateChanges:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/firebase/storage/StorageTask;->ValidTaskInitiatedStateChanges:Ljava/util/HashMap;

    .line 362
    .local v0, "table":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/HashSet<Ljava/lang/Integer;>;>;"
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/storage/StorageTask;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 363
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_3

    aget v5, p1, v4

    .line 364
    .local v5, "newState":I
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    .line 365
    .local v6, "validStates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v6, :cond_2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 366
    iput v5, p0, Lcom/google/firebase/storage/StorageTask;->currentState:I

    .line 367
    iget v2, p0, Lcom/google/firebase/storage/StorageTask;->currentState:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_2

    .line 385
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->onCanceled()V

    .line 386
    goto :goto_2

    .line 382
    :sswitch_1
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->onSuccess()V

    .line 383
    goto :goto_2

    .line 379
    :sswitch_2
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->onFailure()V

    .line 380
    goto :goto_2

    .line 376
    :sswitch_3
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->onPaused()V

    .line 377
    goto :goto_2

    .line 373
    :sswitch_4
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->onProgress()V

    .line 374
    goto :goto_2

    .line 369
    :sswitch_5
    invoke-static {}, Lcom/google/firebase/storage/StorageTaskManager;->getInstance()Lcom/google/firebase/storage/StorageTaskManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/firebase/storage/StorageTaskManager;->ensureRegistered(Lcom/google/firebase/storage/StorageTask;)V

    .line 370
    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageTask;->onQueued()V

    .line 371
    nop

    .line 389
    :goto_2
    iget-object v2, p0, Lcom/google/firebase/storage/StorageTask;->successManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v2}, Lcom/google/firebase/storage/TaskListenerImpl;->onInternalStateChanged()V

    .line 390
    iget-object v2, p0, Lcom/google/firebase/storage/StorageTask;->failureManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v2}, Lcom/google/firebase/storage/TaskListenerImpl;->onInternalStateChanged()V

    .line 391
    iget-object v2, p0, Lcom/google/firebase/storage/StorageTask;->cancelManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v2}, Lcom/google/firebase/storage/TaskListenerImpl;->onInternalStateChanged()V

    .line 392
    iget-object v2, p0, Lcom/google/firebase/storage/StorageTask;->completeListener:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v2}, Lcom/google/firebase/storage/TaskListenerImpl;->onInternalStateChanged()V

    .line 393
    iget-object v2, p0, Lcom/google/firebase/storage/StorageTask;->pausedManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v2}, Lcom/google/firebase/storage/TaskListenerImpl;->onInternalStateChanged()V

    .line 394
    iget-object v2, p0, Lcom/google/firebase/storage/StorageTask;->progressManager:Lcom/google/firebase/storage/TaskListenerImpl;

    invoke-virtual {v2}, Lcom/google/firebase/storage/TaskListenerImpl;->onInternalStateChanged()V

    .line 396
    const-string v2, "StorageTask"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    const-string v2, "StorageTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changed internal state to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-direct {p0, v5}, Lcom/google/firebase/storage/StorageTask;->getStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isUser: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " from state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/google/firebase/storage/StorageTask;->currentState:I

    .line 404
    invoke-direct {p0, v4}, Lcom/google/firebase/storage/StorageTask;->getStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 397
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_1
    monitor-exit v1

    const/4 v1, 0x1

    return v1

    .line 363
    .end local v5    # "newState":I
    .end local v6    # "validStates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 411
    :cond_3
    const-string v2, "StorageTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to change internal state to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-direct {p0, p1}, Lcom/google/firebase/storage/StorageTask;->getStateString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isUser: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " from state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/google/firebase/storage/StorageTask;->currentState:I

    .line 418
    invoke-direct {p0, v5}, Lcom/google/firebase/storage/StorageTask;->getStateString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 411
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    monitor-exit v1

    return v3

    .line 421
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_5
        0x4 -> :sswitch_4
        0x10 -> :sswitch_3
        0x40 -> :sswitch_2
        0x80 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method
