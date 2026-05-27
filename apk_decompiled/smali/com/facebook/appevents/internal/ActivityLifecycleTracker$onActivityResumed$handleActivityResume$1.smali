.class final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityResumed$handleActivityResume$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityResumed(Landroid/app/Activity;)V
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

.field final synthetic $appContext:Landroid/content/Context;

.field final synthetic $currentTime:J


# direct methods
.method constructor <init>(JLjava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-wide p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityResumed$handleActivityResume$1;->$currentTime:J

    iput-object p3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityResumed$handleActivityResume$1;->$activityName:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityResumed$handleActivityResume$1;->$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_1

    return-void

    :cond_1
    move-object v0, p0

    .line 172
    .local v0, "this":Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityResumed$handleActivityResume$1;
    :try_start_1
    sget-object v1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-static {v1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$getCurrentSession$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;)Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionLastEventTime()Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .end local v0    # "this":Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityResumed$handleActivityResume$1;
    :cond_2
    move-object v1, v2

    .line 173
    .local v1, "lastEventTime":Ljava/lang/Long;
    :goto_0
    sget-object v3, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-static {v3}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$getCurrentSession$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;)Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "appContext"

    if-nez v3, :cond_3

    .line 174
    :try_start_2
    sget-object v3, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    new-instance v11, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v5, v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityResumed$handleActivityResume$1;->$currentTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/UUID;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v3, v11}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$setCurrentSession$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;Lcom/facebook/appevents/internal/SessionInfo;)V

    .line 175
    iget-object v3, v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityResumed$handleActivityResume$1;->$activityName:Ljava/lang/String;

    sget-object v5, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-static {v5}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$getAppId$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityResumed$handleActivityResume$1;->$appContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2, v5, v6}, Lcom/facebook/appevents/internal/SessionLogger;->logActivateApp(Ljava/lang/String;Lcom/facebook/appevents/internal/SourceApplicationInfo;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 176
    :cond_3
    if-eqz v1, :cond_5

    .line 177
    iget-wide v5, v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityResumed$handleActivityResume$1;->$currentTime:J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 178
    .local v5, "suspendTime":J
    sget-object v3, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-static {v3}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$getSessionTimeoutInSeconds$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v7, v3

    cmp-long v3, v5, v7

    if-lez v3, :cond_4

    .line 181
    iget-object v3, v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityResumed$handleActivityResume$1;->$activityName:Ljava/lang/String;

    sget-object v7, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-static {v7}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$getCurrentSession$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;)Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v7

    sget-object v8, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-static {v8}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$getAppId$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lcom/facebook/appevents/internal/SessionLogger;->logDeactivateApp(Ljava/lang/String;Lcom/facebook/appevents/internal/SessionInfo;Ljava/lang/String;)V

    .line 182
    iget-object v3, v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityResumed$handleActivityResume$1;->$activityName:Ljava/lang/String;

    sget-object v7, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-static {v7}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$getAppId$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityResumed$handleActivityResume$1;->$appContext:Landroid/content/Context;

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2, v7, v8}, Lcom/facebook/appevents/internal/SessionLogger;->logActivateApp(Ljava/lang/String;Lcom/facebook/appevents/internal/SourceApplicationInfo;Ljava/lang/String;Landroid/content/Context;)V

    .line 183
    sget-object v2, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    new-instance v3, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v7, v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityResumed$handleActivityResume$1;->$currentTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/UUID;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2, v3}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$setCurrentSession$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;Lcom/facebook/appevents/internal/SessionInfo;)V

    goto :goto_1

    .line 184
    :cond_4
    const-wide/16 v2, 0x3e8

    cmp-long v4, v5, v2

    if-lez v4, :cond_5

    .line 185
    sget-object v2, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-static {v2}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$getCurrentSession$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;)Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/facebook/appevents/internal/SessionInfo;->incrementInterruptionCount()V

    .line 186
    .end local v5    # "suspendTime":J
    :cond_5
    :goto_1
    nop

    .line 187
    nop

    .line 188
    sget-object v2, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-static {v2}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$getCurrentSession$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;)Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-wide v3, v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$onActivityResumed$handleActivityResume$1;->$currentTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/appevents/internal/SessionInfo;->setSessionLastEventTime(Ljava/lang/Long;)V

    .line 189
    :cond_6
    sget-object v2, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-static {v2}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$getCurrentSession$p(Lcom/facebook/appevents/internal/ActivityLifecycleTracker;)Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/facebook/appevents/internal/SessionInfo;->writeSessionToDisk()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    .end local v1    # "lastEventTime":Ljava/lang/Long;
    :cond_7
    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v0, p0

    :goto_2
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
