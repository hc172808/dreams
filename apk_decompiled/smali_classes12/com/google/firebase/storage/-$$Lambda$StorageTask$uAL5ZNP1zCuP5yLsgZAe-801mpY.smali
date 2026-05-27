.class public final synthetic Lcom/google/firebase/storage/-$$Lambda$StorageTask$uAL5ZNP1zCuP5yLsgZAe-801mpY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/storage/StorageTask;

.field public final synthetic f$1:Lcom/google/android/gms/tasks/Continuation;

.field public final synthetic f$2:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic f$3:Lcom/google/android/gms/tasks/CancellationTokenSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/storage/StorageTask;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/CancellationTokenSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/storage/-$$Lambda$StorageTask$uAL5ZNP1zCuP5yLsgZAe-801mpY;->f$0:Lcom/google/firebase/storage/StorageTask;

    iput-object p2, p0, Lcom/google/firebase/storage/-$$Lambda$StorageTask$uAL5ZNP1zCuP5yLsgZAe-801mpY;->f$1:Lcom/google/android/gms/tasks/Continuation;

    iput-object p3, p0, Lcom/google/firebase/storage/-$$Lambda$StorageTask$uAL5ZNP1zCuP5yLsgZAe-801mpY;->f$2:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p4, p0, Lcom/google/firebase/storage/-$$Lambda$StorageTask$uAL5ZNP1zCuP5yLsgZAe-801mpY;->f$3:Lcom/google/android/gms/tasks/CancellationTokenSource;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/storage/-$$Lambda$StorageTask$uAL5ZNP1zCuP5yLsgZAe-801mpY;->f$0:Lcom/google/firebase/storage/StorageTask;

    iget-object v1, p0, Lcom/google/firebase/storage/-$$Lambda$StorageTask$uAL5ZNP1zCuP5yLsgZAe-801mpY;->f$1:Lcom/google/android/gms/tasks/Continuation;

    iget-object v2, p0, Lcom/google/firebase/storage/-$$Lambda$StorageTask$uAL5ZNP1zCuP5yLsgZAe-801mpY;->f$2:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v3, p0, Lcom/google/firebase/storage/-$$Lambda$StorageTask$uAL5ZNP1zCuP5yLsgZAe-801mpY;->f$3:Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/firebase/storage/StorageTask;->lambda$continueWithTaskImpl$5$StorageTask(Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/CancellationTokenSource;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
