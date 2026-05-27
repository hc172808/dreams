.class final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1$task$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityLifecycleTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityLifecycleTracker.kt\ncom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1$task$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,269:1\n1#2:270\n*E\n"
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
.field final synthetic this$0:Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1$task$1;->this$0:Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1;

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

    .line 218
    .local v0, "this":Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1$task$1;
    :try_start_1
    sget-object v1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-static {v1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$getCurrentSession$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;)Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 219
    sget-object v1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    new-instance v8, Lcom/facebook/appevents/internal/SessionInfo;

    iget-object v2, v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1$task$1;->this$0:Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1;

    iget-wide v2, v2, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1;->$currentTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/UUID;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, v8}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$setCurrentSession$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;Lcom/facebook/appevents/internal/SessionInfo;)V

    .line 221
    .end local v0    # "this":Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1$task$1;
    :cond_2
    sget-object v1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-static {v1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$getForegroundActivityCount$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_3

    .line 222
    iget-object v1, v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1$task$1;->this$0:Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1;

    iget-object v1, v1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1;->$activityName:Ljava/lang/String;

    sget-object v3, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-static {v3}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$getCurrentSession$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;)Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v3

    sget-object v4, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-static {v4}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$getAppId$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/facebook/appevents/internal/SessionLogger;->logDeactivateApp(Ljava/lang/String;Lcom/facebook/appevents/internal/SessionInfo;Ljava/lang/String;)V

    .line 223
    sget-object v1, Lcom/facebook/appevents/internal/SessionInfo;->Companion:Lcom/facebook/appevents/internal/SessionInfo$Companion;

    invoke-virtual {v1}, Lcom/facebook/appevents/internal/SessionInfo$Companion;->clearSavedSessionFromDisk()V

    .line 224
    sget-object v1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    move-object v3, v2

    check-cast v3, Lcom/facebook/appevents/internal/SessionInfo;

    invoke-static {v1, v3}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$setCurrentSession$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;Lcom/facebook/appevents/internal/SessionInfo;)V

    .line 226
    :cond_3
    sget-object v1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-static {v1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$getCurrentFutureLock$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 270
    const/4 v3, 0x0

    .line 226
    .local v3, "$i$a$-synchronized-ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1$task$1$1":I
    :try_start_2
    sget-object v4, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    check-cast v2, Ljava/util/concurrent/ScheduledFuture;

    invoke-static {v4, v2}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$setCurrentFuture$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;Ljava/util/concurrent/ScheduledFuture;)V

    .end local v3    # "$i$a$-synchronized-ActivityLifecycleTracker$onActivityPaused$handleActivityPaused$1$task$1$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 227
    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_2
    move-exception v1

    goto :goto_0

    :catchall_3
    move-exception v1

    move-object v0, p0

    :goto_0
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
