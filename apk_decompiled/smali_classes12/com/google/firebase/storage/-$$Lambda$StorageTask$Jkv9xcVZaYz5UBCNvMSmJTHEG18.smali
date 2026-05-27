.class public final synthetic Lcom/google/firebase/storage/-$$Lambda$StorageTask$Jkv9xcVZaYz5UBCNvMSmJTHEG18;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/storage/TaskListenerImpl$OnRaise;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/storage/StorageTask;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/storage/StorageTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/storage/-$$Lambda$StorageTask$Jkv9xcVZaYz5UBCNvMSmJTHEG18;->f$0:Lcom/google/firebase/storage/StorageTask;

    return-void
.end method


# virtual methods
.method public final raise(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/-$$Lambda$StorageTask$Jkv9xcVZaYz5UBCNvMSmJTHEG18;->f$0:Lcom/google/firebase/storage/StorageTask;

    check-cast p1, Lcom/google/android/gms/tasks/OnCompleteListener;

    check-cast p2, Lcom/google/firebase/storage/StorageTask$ProvideError;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/storage/StorageTask;->lambda$new$2$StorageTask(Lcom/google/android/gms/tasks/OnCompleteListener;Lcom/google/firebase/storage/StorageTask$ProvideError;)V

    return-void
.end method
