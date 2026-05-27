.class abstract Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ExecutorAndListener;
.super Ljava/lang/Object;
.source "DeveloperListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ExecutorAndListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "e"    # Ljava/util/concurrent/Executor;

    .line 208
    .local p0, "this":Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ExecutorAndListener;, "Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ExecutorAndListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ExecutorAndListener;->executor:Ljava/util/concurrent/Executor;

    .line 210
    return-void
.end method


# virtual methods
.method public abstract getListener()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public withExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p1, "defaultExecutor"    # Ljava/util/concurrent/Executor;

    .line 202
    .local p0, "this":Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ExecutorAndListener;, "Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ExecutorAndListener<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ExecutorAndListener;->executor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 203
    return-object p1

    .line 205
    :cond_0
    return-object v0
.end method
