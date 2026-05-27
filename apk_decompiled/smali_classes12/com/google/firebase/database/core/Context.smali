.class public Lcom/google/firebase/database/core/Context;
.super Ljava/lang/Object;
.source "Context.java"


# static fields
.field private static final DEFAULT_CACHE_SIZE:J = 0xa00000L


# instance fields
.field protected appCheckTokenProvider:Lcom/google/firebase/database/core/TokenProvider;

.field protected authTokenProvider:Lcom/google/firebase/database/core/TokenProvider;

.field protected cacheSize:J

.field protected eventTarget:Lcom/google/firebase/database/core/EventTarget;

.field protected firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private forcedPersistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

.field private frozen:Z

.field protected logLevel:Lcom/google/firebase/database/logging/Logger$Level;

.field protected loggedComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected logger:Lcom/google/firebase/database/logging/Logger;

.field protected persistenceEnabled:Z

.field protected persistenceKey:Ljava/lang/String;

.field private platform:Lcom/google/firebase/database/core/Platform;

.field protected runLoop:Lcom/google/firebase/database/core/RunLoop;

.field private stopped:Z

.field protected userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/google/firebase/database/logging/Logger$Level;->INFO:Lcom/google/firebase/database/logging/Logger$Level;

    iput-object v0, p0, Lcom/google/firebase/database/core/Context;->logLevel:Lcom/google/firebase/database/logging/Logger$Level;

    .line 49
    const-wide/32 v0, 0xa00000

    iput-wide v0, p0, Lcom/google/firebase/database/core/Context;->cacheSize:J

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/database/core/Context;->frozen:Z

    .line 53
    iput-boolean v0, p0, Lcom/google/firebase/database/core/Context;->stopped:Z

    return-void
.end method

.method private buildUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "platformAgent"    # Ljava/lang/String;

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    const-string v1, "Firebase/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 279
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private ensureAppTokenProvider()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->appCheckTokenProvider:Lcom/google/firebase/database/core/TokenProvider;

    const-string v1, "You must register an appCheckTokenProvider before initializing Context."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    return-void
.end method

.method private ensureAuthTokenProvider()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->authTokenProvider:Lcom/google/firebase/database/core/TokenProvider;

    const-string v1, "You must register an authTokenProvider before initializing Context."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    return-void
.end method

.method private ensureEventTarget()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->eventTarget:Lcom/google/firebase/database/core/EventTarget;

    if-nez v0, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getPlatform()Lcom/google/firebase/database/core/Platform;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/firebase/database/core/Platform;->newEventTarget(Lcom/google/firebase/database/core/Context;)Lcom/google/firebase/database/core/EventTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/Context;->eventTarget:Lcom/google/firebase/database/core/EventTarget;

    .line 245
    :cond_0
    return-void
.end method

.method private ensureLogger()V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->logger:Lcom/google/firebase/database/logging/Logger;

    if-nez v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getPlatform()Lcom/google/firebase/database/core/Platform;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/core/Context;->logLevel:Lcom/google/firebase/database/logging/Logger$Level;

    iget-object v2, p0, Lcom/google/firebase/database/core/Context;->loggedComponents:Ljava/util/List;

    invoke-interface {v0, p0, v1, v2}, Lcom/google/firebase/database/core/Platform;->newLogger(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/logging/Logger$Level;Ljava/util/List;)Lcom/google/firebase/database/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/Context;->logger:Lcom/google/firebase/database/logging/Logger;

    .line 233
    :cond_0
    return-void
.end method

.method private ensureRunLoop()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->runLoop:Lcom/google/firebase/database/core/RunLoop;

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->platform:Lcom/google/firebase/database/core/Platform;

    invoke-interface {v0, p0}, Lcom/google/firebase/database/core/Platform;->newRunLoop(Lcom/google/firebase/database/core/Context;)Lcom/google/firebase/database/core/RunLoop;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/Context;->runLoop:Lcom/google/firebase/database/core/RunLoop;

    .line 239
    :cond_0
    return-void
.end method

.method private ensureSessionIdentifier()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->persistenceKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 266
    const-string v0, "default"

    iput-object v0, p0, Lcom/google/firebase/database/core/Context;->persistenceKey:Ljava/lang/String;

    .line 268
    :cond_0
    return-void
.end method

.method private ensureUserAgent()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getPlatform()Lcom/google/firebase/database/core/Platform;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/firebase/database/core/Platform;->getUserAgent(Lcom/google/firebase/database/core/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/database/core/Context;->buildUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/Context;->userAgent:Ljava/lang/String;

    .line 251
    :cond_0
    return-void
.end method

.method private getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    .line 220
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->getRunLoop()Lcom/google/firebase/database/core/RunLoop;

    move-result-object v0

    .line 221
    .local v0, "loop":Lcom/google/firebase/database/core/RunLoop;
    instance-of v1, v0, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;

    if-eqz v1, :cond_0

    .line 226
    move-object v1, v0

    check-cast v1, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    return-object v1

    .line 224
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Custom run loops are not supported!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getPlatform()Lcom/google/firebase/database/core/Platform;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->platform:Lcom/google/firebase/database/core/Platform;

    if-nez v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->initializeAndroidPlatform()V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->platform:Lcom/google/firebase/database/core/Platform;

    return-object v0
.end method

.method private initServices()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->ensureLogger()V

    .line 94
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getPlatform()Lcom/google/firebase/database/core/Platform;

    .line 95
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->ensureUserAgent()V

    .line 97
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->ensureEventTarget()V

    .line 98
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->ensureRunLoop()V

    .line 99
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->ensureSessionIdentifier()V

    .line 100
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->ensureAuthTokenProvider()V

    .line 101
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->ensureAppTokenProvider()V

    .line 102
    return-void
.end method

.method private declared-synchronized initializeAndroidPlatform()V
    .locals 2

    monitor-enter p0

    .line 65
    :try_start_0
    new-instance v0, Lcom/google/firebase/database/android/AndroidPlatform;

    iget-object v1, p0, Lcom/google/firebase/database/core/Context;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-direct {v0, v1}, Lcom/google/firebase/database/android/AndroidPlatform;-><init>(Lcom/google/firebase/FirebaseApp;)V

    iput-object v0, p0, Lcom/google/firebase/database/core/Context;->platform:Lcom/google/firebase/database/core/Platform;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 64
    .end local p0    # "this":Lcom/google/firebase/database/core/Context;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic lambda$wrapTokenProvider$0(Lcom/google/firebase/database/core/TokenProvider;Ljava/util/concurrent/ScheduledExecutorService;ZLcom/google/firebase/database/connection/ConnectionTokenProvider$GetTokenCallback;)V
    .locals 1
    .param p0, "provider"    # Lcom/google/firebase/database/core/TokenProvider;
    .param p1, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p2, "forceRefresh"    # Z
    .param p3, "callback"    # Lcom/google/firebase/database/connection/ConnectionTokenProvider$GetTokenCallback;

    .line 285
    new-instance v0, Lcom/google/firebase/database/core/Context$1;

    invoke-direct {v0, p1, p3}, Lcom/google/firebase/database/core/Context$1;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/database/connection/ConnectionTokenProvider$GetTokenCallback;)V

    invoke-interface {p0, p2, v0}, Lcom/google/firebase/database/core/TokenProvider;->getToken(ZLcom/google/firebase/database/core/TokenProvider$GetTokenCompletionListener;)V

    return-void
.end method

.method private restartServices()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->eventTarget:Lcom/google/firebase/database/core/EventTarget;

    invoke-interface {v0}, Lcom/google/firebase/database/core/EventTarget;->restart()V

    .line 106
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->runLoop:Lcom/google/firebase/database/core/RunLoop;

    invoke-interface {v0}, Lcom/google/firebase/database/core/RunLoop;->restart()V

    .line 107
    return-void
.end method

.method private static wrapTokenProvider(Lcom/google/firebase/database/core/TokenProvider;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/firebase/database/connection/ConnectionTokenProvider;
    .locals 1
    .param p0, "provider"    # Lcom/google/firebase/database/core/TokenProvider;
    .param p1, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 284
    new-instance v0, Lcom/google/firebase/database/core/-$$Lambda$Context$oJIUrBNPPmMZaeC-SchzMmGluDU;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/database/core/-$$Lambda$Context$oJIUrBNPPmMZaeC-SchzMmGluDU;-><init>(Lcom/google/firebase/database/core/TokenProvider;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method


# virtual methods
.method protected assertUnfrozen()V
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    return-void

    .line 117
    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    const-string v1, "Modifications to DatabaseConfig objects must occur before they are in use"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method forcePersistenceManager(Lcom/google/firebase/database/core/persistence/PersistenceManager;)V
    .locals 0
    .param p1, "persistenceManager"    # Lcom/google/firebase/database/core/persistence/PersistenceManager;

    .line 183
    iput-object p1, p0, Lcom/google/firebase/database/core/Context;->forcedPersistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    .line 184
    return-void
.end method

.method declared-synchronized freeze()V
    .locals 1

    monitor-enter p0

    .line 77
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/database/core/Context;->frozen:Z

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/core/Context;->frozen:Z

    .line 79
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->initServices()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .end local p0    # "this":Lcom/google/firebase/database/core/Context;
    :cond_0
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAppCheckTokenProvider()Lcom/google/firebase/database/core/TokenProvider;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->appCheckTokenProvider:Lcom/google/firebase/database/core/TokenProvider;

    return-object v0
.end method

.method public getAuthTokenProvider()Lcom/google/firebase/database/core/TokenProvider;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->authTokenProvider:Lcom/google/firebase/database/core/TokenProvider;

    return-object v0
.end method

.method public getConnectionContext()Lcom/google/firebase/database/connection/ConnectionContext;
    .locals 11

    .line 143
    new-instance v10, Lcom/google/firebase/database/connection/ConnectionContext;

    .line 144
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->getLogger()Lcom/google/firebase/database/logging/Logger;

    move-result-object v1

    .line 145
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->getAuthTokenProvider()Lcom/google/firebase/database/core/TokenProvider;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/firebase/database/core/Context;->wrapTokenProvider(Lcom/google/firebase/database/core/TokenProvider;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/firebase/database/connection/ConnectionTokenProvider;

    move-result-object v2

    .line 146
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->getAppCheckTokenProvider()Lcom/google/firebase/database/core/TokenProvider;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/firebase/database/core/Context;->wrapTokenProvider(Lcom/google/firebase/database/core/TokenProvider;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/firebase/database/connection/ConnectionTokenProvider;

    move-result-object v3

    .line 147
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    .line 148
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->isPersistenceEnabled()Z

    move-result v5

    .line 149
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getSdkVersion()Ljava/lang/String;

    move-result-object v6

    .line 150
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->getUserAgent()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 151
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v8

    .line 152
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->getSSLCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/database/connection/ConnectionContext;-><init>(Lcom/google/firebase/database/logging/Logger;Lcom/google/firebase/database/connection/ConnectionTokenProvider;Lcom/google/firebase/database/connection/ConnectionTokenProvider;Ljava/util/concurrent/ScheduledExecutorService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-object v10
.end method

.method public getEventTarget()Lcom/google/firebase/database/core/EventTarget;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->eventTarget:Lcom/google/firebase/database/core/EventTarget;

    return-object v0
.end method

.method public getLogLevel()Lcom/google/firebase/database/logging/Logger$Level;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->logLevel:Lcom/google/firebase/database/logging/Logger$Level;

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;)Lcom/google/firebase/database/logging/LogWrapper;
    .locals 2
    .param p1, "component"    # Ljava/lang/String;

    .line 135
    new-instance v0, Lcom/google/firebase/database/logging/LogWrapper;

    iget-object v1, p0, Lcom/google/firebase/database/core/Context;->logger:Lcom/google/firebase/database/logging/Logger;

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/database/logging/LogWrapper;-><init>(Lcom/google/firebase/database/logging/Logger;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/logging/LogWrapper;
    .locals 2
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 139
    new-instance v0, Lcom/google/firebase/database/logging/LogWrapper;

    iget-object v1, p0, Lcom/google/firebase/database/core/Context;->logger:Lcom/google/firebase/database/logging/Logger;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/firebase/database/logging/LogWrapper;-><init>(Lcom/google/firebase/database/logging/Logger;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLogger()Lcom/google/firebase/database/logging/Logger;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->logger:Lcom/google/firebase/database/logging/Logger;

    return-object v0
.end method

.method public getOptDebugLogComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->loggedComponents:Ljava/util/List;

    return-object v0
.end method

.method public getPersistenceCacheSizeBytes()J
    .locals 2

    .line 178
    iget-wide v0, p0, Lcom/google/firebase/database/core/Context;->cacheSize:J

    return-wide v0
.end method

.method getPersistenceManager(Ljava/lang/String;)Lcom/google/firebase/database/core/persistence/PersistenceManager;
    .locals 3
    .param p1, "firebaseId"    # Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->forcedPersistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;

    if-eqz v0, :cond_0

    .line 158
    return-object v0

    .line 160
    :cond_0
    iget-boolean v0, p0, Lcom/google/firebase/database/core/Context;->persistenceEnabled:Z

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->platform:Lcom/google/firebase/database/core/Platform;

    invoke-interface {v0, p0, p1}, Lcom/google/firebase/database/core/Platform;->createPersistenceManager(Lcom/google/firebase/database/core/Context;Ljava/lang/String;)Lcom/google/firebase/database/core/persistence/PersistenceManager;

    move-result-object v0

    .line 162
    .local v0, "cache":Lcom/google/firebase/database/core/persistence/PersistenceManager;
    if-eqz v0, :cond_1

    .line 167
    return-object v0

    .line 163
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You have enabled persistence, but persistence is not supported on this platform."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    .end local v0    # "cache":Lcom/google/firebase/database/core/persistence/PersistenceManager;
    :cond_2
    new-instance v0, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;

    invoke-direct {v0}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;-><init>()V

    return-object v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    .line 199
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getPlatform()Lcom/google/firebase/database/core/Platform;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/core/Platform;->getPlatformVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRunLoop()Lcom/google/firebase/database/core/RunLoop;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->runLoop:Lcom/google/firebase/database/core/RunLoop;

    return-object v0
.end method

.method public getSSLCacheDirectory()Ljava/io/File;
    .locals 1

    .line 301
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getPlatform()Lcom/google/firebase/database/core/Platform;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/core/Platform;->getSSLCacheDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getSessionPersistenceKey()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->persistenceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public isFrozen()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/google/firebase/database/core/Context;->frozen:Z

    return v0
.end method

.method public isPersistenceEnabled()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/google/firebase/database/core/Context;->persistenceEnabled:Z

    return v0
.end method

.method public isStopped()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/google/firebase/database/core/Context;->stopped:Z

    return v0
.end method

.method public newPersistentConnection(Lcom/google/firebase/database/connection/HostInfo;Lcom/google/firebase/database/connection/PersistentConnection$Delegate;)Lcom/google/firebase/database/connection/PersistentConnection;
    .locals 2
    .param p1, "info"    # Lcom/google/firebase/database/connection/HostInfo;
    .param p2, "delegate"    # Lcom/google/firebase/database/connection/PersistentConnection$Delegate;

    .line 216
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->getPlatform()Lcom/google/firebase/database/core/Platform;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/database/core/Context;->getConnectionContext()Lcom/google/firebase/database/connection/ConnectionContext;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1, p2}, Lcom/google/firebase/database/core/Platform;->newPersistentConnection(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/connection/ConnectionContext;Lcom/google/firebase/database/connection/HostInfo;Lcom/google/firebase/database/connection/PersistentConnection$Delegate;)Lcom/google/firebase/database/connection/PersistentConnection;

    move-result-object v0

    return-object v0
.end method

.method public requireStarted()V
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/google/firebase/database/core/Context;->stopped:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/google/firebase/database/core/Context;->restartServices()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/database/core/Context;->stopped:Z

    .line 88
    :cond_0
    return-void
.end method

.method stop()V
    .locals 1

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/core/Context;->stopped:Z

    .line 111
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->eventTarget:Lcom/google/firebase/database/core/EventTarget;

    invoke-interface {v0}, Lcom/google/firebase/database/core/EventTarget;->shutdown()V

    .line 112
    iget-object v0, p0, Lcom/google/firebase/database/core/Context;->runLoop:Lcom/google/firebase/database/core/RunLoop;

    invoke-interface {v0}, Lcom/google/firebase/database/core/RunLoop;->shutdown()V

    .line 113
    return-void
.end method
