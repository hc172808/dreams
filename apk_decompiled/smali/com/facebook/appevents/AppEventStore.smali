.class public final Lcom/facebook/appevents/AppEventStore;
.super Ljava/lang/Object;
.source "AppEventStore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c1\u0002\u0018\u00002\u00020\u0001:\u0001\u0012B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0008\u0010\u000e\u001a\u00020\u000fH\u0007J\u0017\u0010\u0010\u001a\u00020\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000fH\u0001\u00a2\u0006\u0002\u0008\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/facebook/appevents/AppEventStore;",
        "",
        "()V",
        "PERSISTED_EVENTS_FILENAME",
        "",
        "TAG",
        "persistEvents",
        "",
        "accessTokenAppIdPair",
        "Lcom/facebook/appevents/AccessTokenAppIdPair;",
        "appEvents",
        "Lcom/facebook/appevents/SessionEventsState;",
        "eventsToPersist",
        "Lcom/facebook/appevents/AppEventCollection;",
        "readAndClearStore",
        "Lcom/facebook/appevents/PersistedEvents;",
        "saveEventsToDisk",
        "saveEventsToDisk$facebook_core_release",
        "MovedClassObjectInputStream",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/appevents/AppEventStore;

.field private static final PERSISTED_EVENTS_FILENAME:Ljava/lang/String; = "AppEventsLogger.persistedevents"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/facebook/appevents/AppEventStore;

    invoke-direct {v0}, Lcom/facebook/appevents/AppEventStore;-><init>()V

    sput-object v0, Lcom/facebook/appevents/AppEventStore;->INSTANCE:Lcom/facebook/appevents/AppEventStore;

    .line 38
    const-class v0, Lcom/facebook/appevents/AppEventStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppEventStore::class.java.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized persistEvents(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/SessionEventsState;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/AppEventStore;

    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .local p0, "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    .local p1, "appEvents":Lcom/facebook/appevents/SessionEventsState;
    :cond_0
    :try_start_1
    const-string v1, "accessTokenAppIdPair"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appEvents"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsNotMainThread()V

    .line 44
    invoke-static {}, Lcom/facebook/appevents/AppEventStore;->readAndClearStore()Lcom/facebook/appevents/PersistedEvents;

    move-result-object v1

    .line 45
    .local v1, "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    invoke-virtual {p1}, Lcom/facebook/appevents/SessionEventsState;->getEventsToPersist()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/facebook/appevents/PersistedEvents;->addEvents(Lcom/facebook/appevents/AccessTokenAppIdPair;Ljava/util/List;)V

    .line 46
    invoke-static {v1}, Lcom/facebook/appevents/AppEventStore;->saveEventsToDisk$facebook_core_release(Lcom/facebook/appevents/PersistedEvents;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    monitor-exit v0

    return-void

    .end local v1    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    .end local p0    # "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    .end local p1    # "appEvents":Lcom/facebook/appevents/SessionEventsState;
    :catchall_0
    move-exception p0

    :try_start_2
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    .line 42
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized persistEvents(Lcom/facebook/appevents/AppEventCollection;)V
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/AppEventStore;

    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .local p0, "eventsToPersist":Lcom/facebook/appevents/AppEventCollection;
    :cond_0
    :try_start_1
    const-string v1, "eventsToPersist"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsNotMainThread()V

    .line 53
    invoke-static {}, Lcom/facebook/appevents/AppEventStore;->readAndClearStore()Lcom/facebook/appevents/PersistedEvents;

    move-result-object v1

    .line 54
    .local v1, "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    invoke-virtual {p0}, Lcom/facebook/appevents/AppEventCollection;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/appevents/AccessTokenAppIdPair;

    .line 55
    .local v3, "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    invoke-virtual {p0, v3}, Lcom/facebook/appevents/AppEventCollection;->get(Lcom/facebook/appevents/AccessTokenAppIdPair;)Lcom/facebook/appevents/SessionEventsState;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 56
    .local v4, "sessionEventsState":Lcom/facebook/appevents/SessionEventsState;
    invoke-virtual {v4}, Lcom/facebook/appevents/SessionEventsState;->getEventsToPersist()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/facebook/appevents/PersistedEvents;->addEvents(Lcom/facebook/appevents/AccessTokenAppIdPair;Ljava/util/List;)V

    .end local v3    # "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    .end local v4    # "sessionEventsState":Lcom/facebook/appevents/SessionEventsState;
    goto :goto_0

    .line 55
    .restart local v3    # "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    :cond_1
    const-string v2, "Required value was null."

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 58
    .end local v3    # "accessTokenAppIdPair":Lcom/facebook/appevents/AccessTokenAppIdPair;
    :cond_2
    invoke-static {v1}, Lcom/facebook/appevents/AppEventStore;->saveEventsToDisk$facebook_core_release(Lcom/facebook/appevents/PersistedEvents;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    monitor-exit v0

    return-void

    .end local v1    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    .end local p0    # "eventsToPersist":Lcom/facebook/appevents/AppEventCollection;
    :catchall_0
    move-exception p0

    :try_start_2
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-void

    .line 51
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized readAndClearStore()Lcom/facebook/appevents/PersistedEvents;
    .locals 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/AppEventStore;

    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 65
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->assertIsNotMainThread()V

    .line 66
    move-object v1, v2

    check-cast v1, Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;

    .line 67
    .local v1, "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    move-object v3, v2

    check-cast v3, Lcom/facebook/appevents/PersistedEvents;

    .line 68
    .local v3, "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    .local v4, "context":Landroid/content/Context;
    nop

    .line 70
    :try_start_2
    const-string v5, "AppEventsLogger.persistedevents"

    invoke-virtual {v4, v5}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    const-string v6, "context.openFileInput(PERSISTED_EVENTS_FILENAME)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/io/InputStream;

    .line 71
    .local v5, "inputStream":Ljava/io/InputStream;
    new-instance v6, Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    check-cast v7, Ljava/io/InputStream;

    invoke-direct {v6, v7}, Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v6

    .line 72
    invoke-virtual {v1}, Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    check-cast v6, Lcom/facebook/appevents/PersistedEvents;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v6

    .line 78
    .end local v5    # "inputStream":Ljava/io/InputStream;
    :try_start_3
    move-object v5, v1

    check-cast v5, Ljava/io/Closeable;

    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    nop

    .line 85
    :try_start_4
    const-string v5, "AppEventsLogger.persistedevents"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_2

    .line 86
    :catch_0
    move-exception v5

    .line 87
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_5
    sget-object v6, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string v7, "Got unexpected exception when removing events file: "

    move-object v8, v5

    check-cast v8, Ljava/lang/Throwable;

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 72
    .local v5, "inputStream":Ljava/io/InputStream;
    :cond_1
    :try_start_6
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "null cannot be cast to non-null type com.facebook.appevents.PersistedEvents"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .end local v3    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    .end local v4    # "context":Landroid/content/Context;
    throw v6
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 89
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .restart local v3    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    .restart local v4    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v5

    goto :goto_0

    .line 75
    :catch_1
    move-exception v5

    .line 76
    .local v5, "e":Ljava/lang/Exception;
    :try_start_7
    sget-object v6, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string v7, "Got unexpected exception while reading events: "

    move-object v8, v5

    check-cast v8, Ljava/lang/Throwable;

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 78
    .end local v5    # "e":Ljava/lang/Exception;
    :try_start_8
    move-object v5, v1

    check-cast v5, Ljava/io/Closeable;

    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 79
    nop

    .line 85
    :try_start_9
    const-string v5, "AppEventsLogger.persistedevents"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .line 86
    :catch_2
    move-exception v5

    .line 87
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_a
    sget-object v6, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string v7, "Got unexpected exception when removing events file: "

    move-object v8, v5

    check-cast v8, Ljava/lang/Throwable;

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 78
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_0
    move-object v6, v1

    check-cast v6, Ljava/io/Closeable;

    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 79
    nop

    .line 85
    :try_start_b
    const-string v6, "AppEventsLogger.persistedevents"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_1

    .line 86
    :catch_3
    move-exception v6

    .line 87
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_c
    sget-object v7, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string v8, "Got unexpected exception when removing events file: "

    move-object v9, v6

    check-cast v9, Ljava/lang/Throwable;

    invoke-static {v7, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v6    # "ex":Ljava/lang/Exception;
    :goto_1
    throw v5

    .line 73
    :catch_4
    move-exception v5

    .line 78
    move-object v5, v1

    check-cast v5, Ljava/io/Closeable;

    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 79
    nop

    .line 85
    :try_start_d
    const-string v5, "AppEventsLogger.persistedevents"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_2

    .line 86
    :catch_5
    move-exception v5

    .line 87
    .restart local v5    # "ex":Ljava/lang/Exception;
    :try_start_e
    sget-object v6, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string v7, "Got unexpected exception when removing events file: "

    move-object v8, v5

    check-cast v8, Ljava/lang/Throwable;

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_2
    nop

    .line 89
    nop

    .line 90
    if-nez v3, :cond_2

    .line 91
    new-instance v5, Lcom/facebook/appevents/PersistedEvents;

    invoke-direct {v5}, Lcom/facebook/appevents/PersistedEvents;-><init>()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-object v3, v5

    .line 93
    :cond_2
    monitor-exit v0

    return-object v3

    .end local v1    # "ois":Lcom/facebook/appevents/AppEventStore$MovedClassObjectInputStream;
    .end local v3    # "persistedEvents":Lcom/facebook/appevents/PersistedEvents;
    .end local v4    # "context":Landroid/content/Context;
    :catchall_1
    move-exception v1

    :try_start_f
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    monitor-exit v0

    return-object v2

    .line 64
    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final saveEventsToDisk$facebook_core_release(Lcom/facebook/appevents/PersistedEvents;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "AppEventsLogger.persistedevents"

    const-class v1, Lcom/facebook/appevents/AppEventStore;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 99
    .local p0, "eventsToPersist":Lcom/facebook/appevents/PersistedEvents;
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    check-cast v2, Ljava/io/ObjectOutputStream;

    .line 100
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 101
    .local v3, "context":Landroid/content/Context;
    nop

    .line 102
    nop

    .line 103
    :try_start_1
    new-instance v4, Ljava/io/ObjectOutputStream;

    .line 104
    new-instance v5, Ljava/io/BufferedOutputStream;

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    check-cast v6, Ljava/io/OutputStream;

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    check-cast v5, Ljava/io/OutputStream;

    .line 103
    invoke-direct {v4, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v4

    .line 105
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :try_start_2
    move-object v0, v2

    check-cast v0, Ljava/io/Closeable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 106
    :catchall_0
    move-exception v4

    .line 107
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_3
    sget-object v5, Lcom/facebook/appevents/AppEventStore;->TAG:Ljava/lang/String;

    const-string v6, "Got unexpected exception while persisting events: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 108
    nop

    .line 109
    :try_start_4
    invoke-virtual {v3, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 112
    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 114
    :try_start_5
    move-object v0, v2

    check-cast v0, Ljava/io/Closeable;

    :goto_1
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 115
    nop

    .line 116
    return-void

    .line 115
    :catchall_1
    move-exception v0

    .line 114
    move-object v4, v2

    check-cast v4, Ljava/io/Closeable;

    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 116
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .end local v3    # "context":Landroid/content/Context;
    .end local p0    # "eventsToPersist":Lcom/facebook/appevents/PersistedEvents;
    :catchall_2
    move-exception p0

    invoke-static {p0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
