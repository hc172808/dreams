.class public Lcom/google/firebase/inappmessaging/internal/injection/modules/ForegroundFlowableModule;
.super Ljava/lang/Object;
.source "ForegroundFlowableModule.java"


# annotations
.annotation runtime Lcom/google/firebase/inappmessaging/dagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesAppForegroundEventStream(Landroid/app/Application;)Lio/reactivex/flowables/ConnectableFlowable;
    .locals 2
    .param p1, "application"    # Landroid/app/Application;
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/AppForeground;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            ")",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 38
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;-><init>()V

    .line 39
    .local v0, "notifier":Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/ForegroundNotifier;->foregroundFlowable()Lio/reactivex/flowables/ConnectableFlowable;

    move-result-object v1

    .line 40
    .local v1, "foregroundFlowable":Lio/reactivex/flowables/ConnectableFlowable;, "Lio/reactivex/flowables/ConnectableFlowable<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lio/reactivex/flowables/ConnectableFlowable;->connect()Lio/reactivex/disposables/Disposable;

    .line 42
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 43
    return-object v1
.end method
