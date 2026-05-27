.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$BDN_tzs3yZpgGj8l7VWD3t0RfOs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$BDN_tzs3yZpgGj8l7VWD3t0RfOs;->f$0:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$BDN_tzs3yZpgGj8l7VWD3t0RfOs;->f$0:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->lambda$maybeToTask$9(Lcom/google/android/gms/tasks/TaskCompletionSource;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
