.class public final synthetic Lcom/google/firebase/storage/-$$Lambda$TaskListenerImpl$9S735gSTLEjyjiLA9feZHcjz9nc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/storage/TaskListenerImpl;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/storage/TaskListenerImpl;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/storage/-$$Lambda$TaskListenerImpl$9S735gSTLEjyjiLA9feZHcjz9nc;->f$0:Lcom/google/firebase/storage/TaskListenerImpl;

    iput-object p2, p0, Lcom/google/firebase/storage/-$$Lambda$TaskListenerImpl$9S735gSTLEjyjiLA9feZHcjz9nc;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/storage/-$$Lambda$TaskListenerImpl$9S735gSTLEjyjiLA9feZHcjz9nc;->f$0:Lcom/google/firebase/storage/TaskListenerImpl;

    iget-object v1, p0, Lcom/google/firebase/storage/-$$Lambda$TaskListenerImpl$9S735gSTLEjyjiLA9feZHcjz9nc;->f$1:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/TaskListenerImpl;->lambda$addListener$0$TaskListenerImpl(Ljava/lang/Object;)V

    return-void
.end method
