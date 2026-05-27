.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$FLTSR4tguF2x3I1Yot0QyMNCC3k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$FLTSR4tguF2x3I1Yot0QyMNCC3k;->f$0:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DisplayCallbacksImpl$FLTSR4tguF2x3I1Yot0QyMNCC3k;->f$0:Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->lambda$maybeToTask$10(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/Throwable;)Lio/reactivex/MaybeSource;

    move-result-object p1

    return-object p1
.end method
