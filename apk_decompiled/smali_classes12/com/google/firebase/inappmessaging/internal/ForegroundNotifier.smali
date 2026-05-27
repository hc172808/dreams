.class public Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;
.super Ljava/lang/Object;
.source "ForegroundNotifier.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static final DELAY_MILLIS:J = 0x3e8L


# instance fields
.field private check:Ljava/lang/Runnable;

.field private foreground:Z

.field private final foregroundSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private paused:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->handler:Landroid/os/Handler;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foreground:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->paused:Z

    .line 64
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foregroundSubject:Lio/reactivex/subjects/BehaviorSubject;

    return-void
.end method


# virtual methods
.method public foregroundFlowable()Lio/reactivex/flowables/ConnectableFlowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foregroundSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lio/reactivex/BackpressureStrategy;->BUFFER:Lio/reactivex/BackpressureStrategy;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->toFlowable(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Flowable;->publish()Lio/reactivex/flowables/ConnectableFlowable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$onActivityPaused$0$ForegroundNotifier()V
    .locals 2

    .line 96
    iget-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foreground:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->paused:Z

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foreground:Z

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 100
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 112
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->paused:Z

    .line 91
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->check:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ForegroundNotifier$zJSyu__kEgiN6wuzrQSr7A1qmV0;

    invoke-direct {v1, p0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$ForegroundNotifier$zJSyu__kEgiN6wuzrQSr7A1qmV0;-><init>(Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;)V

    iput-object v1, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->check:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->paused:Z

    .line 74
    iget-boolean v0, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foreground:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 75
    .local v0, "wasBackground":Z
    iput-boolean v1, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foreground:Z

    .line 77
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->check:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 78
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81
    :cond_0
    if-eqz v0, :cond_1

    .line 82
    const-string v1, "went foreground"

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foregroundSubject:Lio/reactivex/subjects/BehaviorSubject;

    const-string v2, "ON_FOREGROUND"

    invoke-virtual {v1, v2}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 85
    :cond_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .line 109
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 103
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 106
    return-void
.end method
