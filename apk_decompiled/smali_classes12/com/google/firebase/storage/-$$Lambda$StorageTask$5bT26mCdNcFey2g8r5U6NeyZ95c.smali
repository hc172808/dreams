.class public final synthetic Lcom/google/firebase/storage/-$$Lambda$StorageTask$5bT26mCdNcFey2g8r5U6NeyZ95c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/gms/tasks/SuccessContinuation;

.field public final synthetic f$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic f$2:Lcom/google/android/gms/tasks/CancellationTokenSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/tasks/SuccessContinuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/CancellationTokenSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/storage/-$$Lambda$StorageTask$5bT26mCdNcFey2g8r5U6NeyZ95c;->f$0:Lcom/google/android/gms/tasks/SuccessContinuation;

    iput-object p2, p0, Lcom/google/firebase/storage/-$$Lambda$StorageTask$5bT26mCdNcFey2g8r5U6NeyZ95c;->f$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p3, p0, Lcom/google/firebase/storage/-$$Lambda$StorageTask$5bT26mCdNcFey2g8r5U6NeyZ95c;->f$2:Lcom/google/android/gms/tasks/CancellationTokenSource;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/storage/-$$Lambda$StorageTask$5bT26mCdNcFey2g8r5U6NeyZ95c;->f$0:Lcom/google/android/gms/tasks/SuccessContinuation;

    iget-object v1, p0, Lcom/google/firebase/storage/-$$Lambda$StorageTask$5bT26mCdNcFey2g8r5U6NeyZ95c;->f$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v2, p0, Lcom/google/firebase/storage/-$$Lambda$StorageTask$5bT26mCdNcFey2g8r5U6NeyZ95c;->f$2:Lcom/google/android/gms/tasks/CancellationTokenSource;

    check-cast p1, Lcom/google/firebase/storage/StorageTask$ProvideError;

    invoke-static {v0, v1, v2, p1}, Lcom/google/firebase/storage/StorageTask;->lambda$successTaskImpl$6(Lcom/google/android/gms/tasks/SuccessContinuation;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/CancellationTokenSource;Lcom/google/firebase/storage/StorageTask$ProvideError;)V

    return-void
.end method
