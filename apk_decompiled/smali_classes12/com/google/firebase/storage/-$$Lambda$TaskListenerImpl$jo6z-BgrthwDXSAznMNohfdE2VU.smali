.class public final synthetic Lcom/google/firebase/storage/-$$Lambda$TaskListenerImpl$jo6z-BgrthwDXSAznMNohfdE2VU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/storage/TaskListenerImpl;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Lcom/google/firebase/storage/StorageTask$ProvideError;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/storage/TaskListenerImpl;Ljava/lang/Object;Lcom/google/firebase/storage/StorageTask$ProvideError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/storage/-$$Lambda$TaskListenerImpl$jo6z-BgrthwDXSAznMNohfdE2VU;->f$0:Lcom/google/firebase/storage/TaskListenerImpl;

    iput-object p2, p0, Lcom/google/firebase/storage/-$$Lambda$TaskListenerImpl$jo6z-BgrthwDXSAznMNohfdE2VU;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/storage/-$$Lambda$TaskListenerImpl$jo6z-BgrthwDXSAznMNohfdE2VU;->f$2:Lcom/google/firebase/storage/StorageTask$ProvideError;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/storage/-$$Lambda$TaskListenerImpl$jo6z-BgrthwDXSAznMNohfdE2VU;->f$0:Lcom/google/firebase/storage/TaskListenerImpl;

    iget-object v1, p0, Lcom/google/firebase/storage/-$$Lambda$TaskListenerImpl$jo6z-BgrthwDXSAznMNohfdE2VU;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/firebase/storage/-$$Lambda$TaskListenerImpl$jo6z-BgrthwDXSAznMNohfdE2VU;->f$2:Lcom/google/firebase/storage/StorageTask$ProvideError;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/storage/TaskListenerImpl;->lambda$addListener$1$TaskListenerImpl(Ljava/lang/Object;Lcom/google/firebase/storage/StorageTask$ProvideError;)V

    return-void
.end method
