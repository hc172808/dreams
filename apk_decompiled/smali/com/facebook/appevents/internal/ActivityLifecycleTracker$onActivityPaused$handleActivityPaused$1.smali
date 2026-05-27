.class final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $activityName:Ljava/lang/String;

.field final synthetic $currentTime:J


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 0

    iput-wide p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1;->$currentTime:J

    iput-object p3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1;->$activityName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_1

    return-void

    :cond_1
    move-object v0, p0

    .line 207
    .local v0, "this":Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1;
    :try_start_1
    sget-object v1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-static {v1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$getCurrentSession$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;)Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 210
    sget-object v1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    new-instance v8, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v2, v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1;->$currentTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/UUID;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, v8}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$setCurrentSession$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;Lcom/facebook/appevents/internal/SessionInfo;)V

    .line 212
    .end local v0    # "this":Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1;
    :cond_2
    sget-object v1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-static {v1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$getCurrentSession$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;)Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-wide v2, v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1;->$currentTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/appevents/internal/SessionInfo;->setSessionLastEventTime(Ljava/lang/Long;)V

    .line 213
    :cond_3
    sget-object v1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-static {v1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$getForegroundActivityCount$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-gtz v1, :cond_4

    .line 217
    new-instance v1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1$task$1;

    invoke-direct {v1, v0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1$task$1;-><init>(Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1;)V

    check-cast v1, Ljava/lang/Runnable;

    .line 228
    .local v1, "task":Ljava/lang/Runnable;
    sget-object v2, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-static {v2}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$getCurrentFutureLock$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    .line 229
    .local v3, "$i$a$-synchronized-ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1$1":I
    nop

    .line 230
    :try_start_2
    sget-object v4, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    sget-object v5, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-static {v5}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$getSingleThreadExecutor$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    .line 231
    sget-object v6, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-static {v6}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$getSessionTimeoutInSeconds$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;)I

    move-result v6

    int-to-long v6, v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 230
    invoke-interface {v5, v1, v6, v7, v8}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$setCurrentFuture$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;Ljava/util/concurrent/ScheduledFuture;)V

    .line 232
    .end local v3    # "$i$a$-synchronized-ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    :try_start_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 234
    .end local v1    # "task":Ljava/lang/Runnable;
    :cond_4
    :goto_0
    sget-object v1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-static {v1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$getCurrentActivityAppearTime$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;)J

    move-result-wide v1

    .line 235
    .local v1, "appearTime":J
    nop

    .line 236
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_5

    iget-wide v3, v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1;->$currentTime:J

    sub-long/2addr v3, v1

    const/16 v5, 0x3e8

    int-to-long v5, v5

    div-long/2addr v3, v5

    .line 235
    :cond_5
    nop

    .line 237
    .local v3, "timeSpentOnActivityInSeconds":J
    iget-object v5, v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1;->$activityName:Ljava/lang/String;

    invoke-static {v5, v3, v4}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->logActivityTimeSpentEvent(Ljava/lang/String;J)V

    .line 238
    sget-object v5, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-static {v5}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$getCurrentSession$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;)Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/facebook/appevents/internal/SessionInfo;->writeSessionToDisk()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 239
    .end local v1    # "appearTime":J
    .end local v3    # "timeSpentOnActivityInSeconds":J
    :cond_6
    return-void

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_2
    move-exception v1

    goto :goto_1

    :catchall_3
    move-exception v1

    move-object v0, p0

    :goto_1
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
