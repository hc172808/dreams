.class final Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager$1;
.super Ljava/lang/Object;
.source "SuggestedEventsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->enable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 53
    .local v0, "this":Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager$1;
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    return-void

    .line 56
    :cond_1
    invoke-static {}, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 57
    invoke-static {}, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->access$100()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    return-void

    .end local v0    # "this":Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager$1;
    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
