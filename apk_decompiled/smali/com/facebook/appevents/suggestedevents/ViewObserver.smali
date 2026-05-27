.class final Lcom/facebook/appevents/suggestedevents/ViewObserver;
.super Ljava/lang/Object;
.source "ViewObserver.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# static fields
.field private static final MAX_TEXT_LENGTH:I = 0x12c

.field private static final TAG:Ljava/lang/String;

.field private static final observers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/appevents/suggestedevents/ViewObserver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private isTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final uiThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/facebook/appevents/suggestedevents/ViewObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/suggestedevents/ViewObserver;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/suggestedevents/ViewObserver;->observers:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/appevents/suggestedevents/ViewObserver;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/appevents/suggestedevents/ViewObserver;->uiThreadHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/appevents/suggestedevents/ViewObserver;->isTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/appevents/suggestedevents/ViewObserver;)Ljava/lang/ref/WeakReference;
    .locals 3

    const-class v0, Lcom/facebook/appevents/suggestedevents/ViewObserver;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 41
    .local p0, "x0":Lcom/facebook/appevents/suggestedevents/ViewObserver;
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/suggestedevents/ViewObserver;->activityWeakReference:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local p0    # "x0":Lcom/facebook/appevents/suggestedevents/ViewObserver;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private process()V
    .locals 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 114
    .local v0, "this":Lcom/facebook/appevents/suggestedevents/ViewObserver;
    :try_start_0
    new-instance v1, Lcom/facebook/appevents/suggestedevents/ViewObserver$1;

    invoke-direct {v1, v0}, Lcom/facebook/appevents/suggestedevents/ViewObserver$1;-><init>(Lcom/facebook/appevents/suggestedevents/ViewObserver;)V

    .line 143
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 144
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 146
    .end local v0    # "this":Lcom/facebook/appevents/suggestedevents/ViewObserver;
    :cond_1
    iget-object v2, v0, Lcom/facebook/appevents/suggestedevents/ViewObserver;->uiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :goto_0
    return-void

    .end local v1    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private startTracking()V
    .locals 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 74
    .local v0, "this":Lcom/facebook/appevents/suggestedevents/ViewObserver;
    :try_start_0
    iget-object v1, v0, Lcom/facebook/appevents/suggestedevents/ViewObserver;->isTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    return-void

    .line 77
    :cond_1
    iget-object v1, v0, Lcom/facebook/appevents/suggestedevents/ViewObserver;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/facebook/appevents/internal/AppEventUtility;->getRootView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, "rootView":Landroid/view/View;
    if-nez v1, :cond_2

    .line 79
    return-void

    .line 81
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 82
    .local v2, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 84
    invoke-direct {v0}, Lcom/facebook/appevents/suggestedevents/ViewObserver;->process()V

    .line 85
    iget-object v3, v0, Lcom/facebook/appevents/suggestedevents/ViewObserver;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .end local v0    # "this":Lcom/facebook/appevents/suggestedevents/ViewObserver;
    :cond_3
    return-void

    .end local v1    # "rootView":Landroid/view/View;
    .end local v2    # "observer":Landroid/view/ViewTreeObserver;
    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static startTrackingActivity(Landroid/app/Activity;)V
    .locals 5

    const-class v0, Lcom/facebook/appevents/suggestedevents/ViewObserver;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 50
    .local p0, "activity":Landroid/app/Activity;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 51
    .local v1, "key":I
    sget-object v2, Lcom/facebook/appevents/suggestedevents/ViewObserver;->observers:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 52
    new-instance v3, Lcom/facebook/appevents/suggestedevents/ViewObserver;

    invoke-direct {v3, p0}, Lcom/facebook/appevents/suggestedevents/ViewObserver;-><init>(Landroid/app/Activity;)V

    .line 53
    .local v3, "observer":Lcom/facebook/appevents/suggestedevents/ViewObserver;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-direct {v3}, Lcom/facebook/appevents/suggestedevents/ViewObserver;->startTracking()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .end local v3    # "observer":Lcom/facebook/appevents/suggestedevents/ViewObserver;
    :cond_1
    return-void

    .end local v1    # "key":I
    .end local p0    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private stopTracking()V
    .locals 5

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 90
    .local v0, "this":Lcom/facebook/appevents/suggestedevents/ViewObserver;
    :try_start_0
    iget-object v1, v0, Lcom/facebook/appevents/suggestedevents/ViewObserver;->isTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 91
    return-void

    .line 93
    :cond_1
    iget-object v1, v0, Lcom/facebook/appevents/suggestedevents/ViewObserver;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/facebook/appevents/internal/AppEventUtility;->getRootView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 94
    .local v1, "rootView":Landroid/view/View;
    if-nez v1, :cond_2

    .line 95
    return-void

    .line 97
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 98
    .local v2, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-nez v3, :cond_3

    .line 99
    return-void

    .line 101
    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_4

    .line 102
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 104
    .end local v0    # "this":Lcom/facebook/appevents/suggestedevents/ViewObserver;
    :cond_4
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :goto_0
    return-void

    .end local v1    # "rootView":Landroid/view/View;
    .end local v2    # "observer":Landroid/view/ViewTreeObserver;
    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static stopTrackingActivity(Landroid/app/Activity;)V
    .locals 5

    const-class v0, Lcom/facebook/appevents/suggestedevents/ViewObserver;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 59
    .local p0, "activity":Landroid/app/Activity;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 60
    .local v1, "key":I
    sget-object v2, Lcom/facebook/appevents/suggestedevents/ViewObserver;->observers:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/appevents/suggestedevents/ViewObserver;

    .line 62
    .local v3, "observer":Lcom/facebook/appevents/suggestedevents/ViewObserver;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-direct {v3}, Lcom/facebook/appevents/suggestedevents/ViewObserver;->stopTracking()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .end local v3    # "observer":Lcom/facebook/appevents/suggestedevents/ViewObserver;
    :cond_1
    return-void

    .end local v1    # "key":I
    .end local p0    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 110
    .local v0, "this":Lcom/facebook/appevents/suggestedevents/ViewObserver;
    :try_start_0
    invoke-direct {v0}, Lcom/facebook/appevents/suggestedevents/ViewObserver;->process()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    return-void

    .end local v0    # "this":Lcom/facebook/appevents/suggestedevents/ViewObserver;
    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
