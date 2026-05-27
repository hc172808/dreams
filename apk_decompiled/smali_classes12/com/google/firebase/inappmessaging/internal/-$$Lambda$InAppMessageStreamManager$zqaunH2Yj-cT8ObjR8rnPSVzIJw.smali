.class public final synthetic Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$zqaunH2Yj-cT8ObjR8rnPSVzIJw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lio/reactivex/MaybeEmitter;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/MaybeEmitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$zqaunH2Yj-cT8ObjR8rnPSVzIJw;->f$0:Lio/reactivex/MaybeEmitter;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$InAppMessageStreamManager$zqaunH2Yj-cT8ObjR8rnPSVzIJw;->f$0:Lio/reactivex/MaybeEmitter;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->lambda$taskToMaybe$28(Lio/reactivex/MaybeEmitter;Ljava/lang/Object;)V

    return-void
.end method
