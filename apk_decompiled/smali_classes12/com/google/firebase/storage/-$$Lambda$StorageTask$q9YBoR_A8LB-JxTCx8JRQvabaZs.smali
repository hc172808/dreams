.class public final synthetic Lcom/google/firebase/storage/-$$Lambda$StorageTask$q9YBoR_A8LB-JxTCx8JRQvabaZs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/storage/StorageTask;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/storage/StorageTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/storage/-$$Lambda$StorageTask$q9YBoR_A8LB-JxTCx8JRQvabaZs;->f$0:Lcom/google/firebase/storage/StorageTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/-$$Lambda$StorageTask$q9YBoR_A8LB-JxTCx8JRQvabaZs;->f$0:Lcom/google/firebase/storage/StorageTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageTask;->lambda$getRunnable$7$StorageTask()V

    return-void
.end method
