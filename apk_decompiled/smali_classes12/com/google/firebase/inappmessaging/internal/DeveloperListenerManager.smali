.class public Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;
.super Ljava/lang/Object;
.source "DeveloperListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ErrorsExecutorAndListener;,
        Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;,
        Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;,
        Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;,
        Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ExecutorAndListener;,
        Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$FIAMThreadFactory;
    }
.end annotation


# static fields
.field private static final CALLBACK_QUEUE_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final KEEP_ALIVE_TIME_SECONDS:I = 0xf

.field private static final POOL_SIZE:I = 0x1

.field public static instance:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

.field private static mCallbackQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private registeredClickListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;",
            "Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;",
            ">;"
        }
    .end annotation
.end field

.field private registeredDismissListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;",
            "Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;",
            ">;"
        }
    .end annotation
.end field

.field private registeredErrorListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;",
            "Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ErrorsExecutorAndListener;",
            ">;"
        }
    .end annotation
.end field

.field private registeredImpressionListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;",
            "Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 48
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->instance:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    .line 58
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->mCallbackQueue:Ljava/util/concurrent/BlockingQueue;

    .line 59
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->mCallbackQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$FIAMThreadFactory;

    const-string v1, "EventListeners-"

    invoke-direct {v8, v1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$FIAMThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0xf

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->CALLBACK_QUEUE_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 69
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->registeredClickListeners:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->registeredDismissListeners:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->registeredErrorListeners:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->registeredImpressionListeners:Ljava/util/Map;

    return-void
.end method

.method static synthetic lambda$displayErrorEncountered$1(Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ErrorsExecutorAndListener;Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;)V
    .locals 1
    .param p0, "listener"    # Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ErrorsExecutorAndListener;
    .param p1, "inAppMessage"    # Lcom/google/firebase/inappmessaging/model/InAppMessage;
    .param p2, "errorReason"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;

    .line 87
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ErrorsExecutorAndListener;->getListener()Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;->displayErrorEncountered(Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;)V

    return-void
.end method

.method static synthetic lambda$impressionDetected$0(Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;Lcom/google/firebase/inappmessaging/model/InAppMessage;)V
    .locals 1
    .param p0, "listener"    # Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;
    .param p1, "inAppMessage"    # Lcom/google/firebase/inappmessaging/model/InAppMessage;

    .line 77
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;->getListener()Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;->impressionDetected(Lcom/google/firebase/inappmessaging/model/InAppMessage;)V

    return-void
.end method

.method static synthetic lambda$messageClicked$2(Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/model/Action;)V
    .locals 1
    .param p0, "listener"    # Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;
    .param p1, "inAppMessage"    # Lcom/google/firebase/inappmessaging/model/InAppMessage;
    .param p2, "action"    # Lcom/google/firebase/inappmessaging/model/Action;

    .line 95
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;->getListener()Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;->messageClicked(Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/model/Action;)V

    return-void
.end method

.method static synthetic lambda$messageDismissed$3(Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;Lcom/google/firebase/inappmessaging/model/InAppMessage;)V
    .locals 1
    .param p0, "listener"    # Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;
    .param p1, "inAppMessage"    # Lcom/google/firebase/inappmessaging/model/InAppMessage;

    .line 103
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;->getListener()Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;->messageDismissed(Lcom/google/firebase/inappmessaging/model/InAppMessage;)V

    return-void
.end method


# virtual methods
.method public addClickListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;)V
    .locals 2
    .param p1, "clickListener"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;

    .line 114
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->registeredClickListeners:Ljava/util/Map;

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;

    invoke-direct {v1, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;-><init>(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public addClickListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "clickListener"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 137
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->registeredClickListeners:Ljava/util/Map;

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;

    invoke-direct {v1, p1, p2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;-><init>(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public addDismissListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;)V
    .locals 2
    .param p1, "dismissListener"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;

    .line 118
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->registeredDismissListeners:Ljava/util/Map;

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;

    invoke-direct {v1, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;-><init>(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method public addDismissListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "dismissListener"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 143
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->registeredDismissListeners:Ljava/util/Map;

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;

    invoke-direct {v1, p1, p2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;-><init>(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method public addDisplayErrorListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;)V
    .locals 2
    .param p1, "displayErrorListener"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;

    .line 124
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->registeredErrorListeners:Ljava/util/Map;

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ErrorsExecutorAndListener;

    invoke-direct {v1, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ErrorsExecutorAndListener;-><init>(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public addDisplayErrorListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "displayErrorListener"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 149
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->registeredErrorListeners:Ljava/util/Map;

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ErrorsExecutorAndListener;

    invoke-direct {v1, p1, p2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ErrorsExecutorAndListener;-><init>(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public addImpressionListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;)V
    .locals 2
    .param p1, "impressionListener"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;

    .line 109
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->registeredImpressionListeners:Ljava/util/Map;

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;

    invoke-direct {v1, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;-><init>(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public addImpressionListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "impressionListener"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 131
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->registeredImpressionListeners:Ljava/util/Map;

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;

    invoke-direct {v1, p1, p2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;-><init>(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public displayErrorEncountered(Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;)V
    .locals 4
    .param p1, "inAppMessage"    # Lcom/google/firebase/inappmessaging/model/InAppMessage;
    .param p2, "errorReason"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;

    .line 84
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->registeredErrorListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ErrorsExecutorAndListener;

    .line 85
    .local v1, "listener":Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ErrorsExecutorAndListener;
    sget-object v2, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->CALLBACK_QUEUE_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 86
    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ErrorsExecutorAndListener;->withExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$wilAQLhdG5oUFgGSJJA6CvXX5sA;

    invoke-direct {v3, v1, p1, p2}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$wilAQLhdG5oUFgGSJJA6CvXX5sA;-><init>(Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ErrorsExecutorAndListener;Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks$InAppMessagingErrorReason;)V

    .line 87
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 88
    .end local v1    # "listener":Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ErrorsExecutorAndListener;
    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method public impressionDetected(Lcom/google/firebase/inappmessaging/model/InAppMessage;)V
    .locals 4
    .param p1, "inAppMessage"    # Lcom/google/firebase/inappmessaging/model/InAppMessage;

    .line 74
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->registeredImpressionListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;

    .line 75
    .local v1, "listener":Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;
    sget-object v2, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->CALLBACK_QUEUE_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 76
    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;->withExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$fQJSgjv3qOsfBqH74oXKjlbz0t0;

    invoke-direct {v3, v1, p1}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$fQJSgjv3qOsfBqH74oXKjlbz0t0;-><init>(Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;Lcom/google/firebase/inappmessaging/model/InAppMessage;)V

    .line 77
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 78
    .end local v1    # "listener":Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ImpressionExecutorAndListener;
    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method

.method public messageClicked(Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/model/Action;)V
    .locals 4
    .param p1, "inAppMessage"    # Lcom/google/firebase/inappmessaging/model/InAppMessage;
    .param p2, "action"    # Lcom/google/firebase/inappmessaging/model/Action;

    .line 92
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->registeredClickListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;

    .line 93
    .local v1, "listener":Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;
    sget-object v2, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->CALLBACK_QUEUE_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 94
    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;->withExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$a6Y13gxlp-Wqy4GP6EG6KtQaipo;

    invoke-direct {v3, v1, p1, p2}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$a6Y13gxlp-Wqy4GP6EG6KtQaipo;-><init>(Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/model/Action;)V

    .line 95
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 96
    .end local v1    # "listener":Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$ClicksExecutorAndListener;
    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method public messageDismissed(Lcom/google/firebase/inappmessaging/model/InAppMessage;)V
    .locals 4
    .param p1, "inAppMessage"    # Lcom/google/firebase/inappmessaging/model/InAppMessage;

    .line 100
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->registeredDismissListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;

    .line 101
    .local v1, "listener":Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;
    sget-object v2, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->CALLBACK_QUEUE_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 102
    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;->withExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$XVbdvCRsgXo-x_yTebWwWdTPyDg;

    invoke-direct {v3, v1, p1}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DeveloperListenerManager$XVbdvCRsgXo-x_yTebWwWdTPyDg;-><init>(Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;Lcom/google/firebase/inappmessaging/model/InAppMessage;)V

    .line 103
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 104
    .end local v1    # "listener":Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager$DismissExecutorAndListener;
    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method public removeAllListeners()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->registeredClickListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 170
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->registeredImpressionListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 171
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->registeredErrorListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 172
    return-void
.end method

.method public removeClickListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;)V
    .locals 1
    .param p1, "clickListener"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;

    .line 160
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->registeredClickListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method public removeDisplayErrorListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;)V
    .locals 1
    .param p1, "displayErrorListener"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;

    .line 165
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->registeredErrorListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void
.end method

.method public removeImpressionListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;)V
    .locals 1
    .param p1, "impressionListener"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;

    .line 156
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->registeredImpressionListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void
.end method
