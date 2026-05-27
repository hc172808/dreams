.class public Lio/grpc/Context;
.super Ljava/lang/Object;
.source "Context.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/Context$CanIgnoreReturnValue;,
        Lio/grpc/Context$CheckReturnValue;,
        Lio/grpc/Context$DirectExecutor;,
        Lio/grpc/Context$ParentListener;,
        Lio/grpc/Context$ExecutableListener;,
        Lio/grpc/Context$Storage;,
        Lio/grpc/Context$Key;,
        Lio/grpc/Context$CancellationListener;,
        Lio/grpc/Context$CancellableContext;,
        Lio/grpc/Context$LazyStorage;
    }
.end annotation


# static fields
.field static final CONTEXT_DEPTH_WARN_THRESH:I = 0x3e8

.field private static final EMPTY_ENTRIES:Lio/grpc/PersistentHashArrayMappedTrie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/PersistentHashArrayMappedTrie<",
            "Lio/grpc/Context$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROOT:Lio/grpc/Context;

.field static final log:Ljava/util/logging/Logger;


# instance fields
.field final cancellableAncestor:Lio/grpc/Context$CancellableContext;

.field final generation:I

.field final keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/PersistentHashArrayMappedTrie<",
            "Lio/grpc/Context$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/grpc/Context$ExecutableListener;",
            ">;"
        }
    .end annotation
.end field

.field private parentListener:Lio/grpc/Context$CancellationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 100
    const-class v0, Lio/grpc/Context;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/Context;->log:Ljava/util/logging/Logger;

    .line 102
    new-instance v0, Lio/grpc/PersistentHashArrayMappedTrie;

    invoke-direct {v0}, Lio/grpc/PersistentHashArrayMappedTrie;-><init>()V

    sput-object v0, Lio/grpc/Context;->EMPTY_ENTRIES:Lio/grpc/PersistentHashArrayMappedTrie;

    .line 117
    new-instance v1, Lio/grpc/Context;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie;)V

    sput-object v1, Lio/grpc/Context;->ROOT:Lio/grpc/Context;

    return-void
.end method

.method private constructor <init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie;)V
    .locals 2
    .param p1, "parent"    # Lio/grpc/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Context;",
            "Lio/grpc/PersistentHashArrayMappedTrie<",
            "Lio/grpc/Context$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 209
    .local p2, "keyValueEntries":Lio/grpc/PersistentHashArrayMappedTrie;, "Lio/grpc/PersistentHashArrayMappedTrie<Lio/grpc/Context$Key<*>;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Lio/grpc/Context$ParentListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/Context$ParentListener;-><init>(Lio/grpc/Context;Lio/grpc/Context$1;)V

    iput-object v0, p0, Lio/grpc/Context;->parentListener:Lio/grpc/Context$CancellationListener;

    .line 210
    invoke-static {p1}, Lio/grpc/Context;->cancellableAncestor(Lio/grpc/Context;)Lio/grpc/Context$CancellableContext;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    .line 211
    iput-object p2, p0, Lio/grpc/Context;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie;

    .line 212
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p1, Lio/grpc/Context;->generation:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lio/grpc/Context;->generation:I

    .line 213
    invoke-static {v0}, Lio/grpc/Context;->validateGeneration(I)V

    .line 214
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie;Lio/grpc/Context$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/Context;
    .param p2, "x1"    # Lio/grpc/PersistentHashArrayMappedTrie;
    .param p3, "x2"    # Lio/grpc/Context$1;

    .line 98
    invoke-direct {p0, p1, p2}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie;)V

    return-void
.end method

.method private constructor <init>(Lio/grpc/PersistentHashArrayMappedTrie;I)V
    .locals 2
    .param p2, "generation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/PersistentHashArrayMappedTrie<",
            "Lio/grpc/Context$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 198
    .local p1, "keyValueEntries":Lio/grpc/PersistentHashArrayMappedTrie;, "Lio/grpc/PersistentHashArrayMappedTrie<Lio/grpc/Context$Key<*>;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Lio/grpc/Context$ParentListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/Context$ParentListener;-><init>(Lio/grpc/Context;Lio/grpc/Context$1;)V

    iput-object v0, p0, Lio/grpc/Context;->parentListener:Lio/grpc/Context$CancellationListener;

    .line 199
    iput-object v1, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    .line 200
    iput-object p1, p0, Lio/grpc/Context;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie;

    .line 201
    iput p2, p0, Lio/grpc/Context;->generation:I

    .line 202
    invoke-static {p2}, Lio/grpc/Context;->validateGeneration(I)V

    .line 203
    return-void
.end method

.method static cancellableAncestor(Lio/grpc/Context;)Lio/grpc/Context$CancellableContext;
    .locals 1
    .param p0, "parent"    # Lio/grpc/Context;

    .line 1075
    if-nez p0, :cond_0

    .line 1076
    const/4 v0, 0x0

    return-object v0

    .line 1078
    :cond_0
    instance-of v0, p0, Lio/grpc/Context$CancellableContext;

    if-eqz v0, :cond_1

    .line 1079
    move-object v0, p0

    check-cast v0, Lio/grpc/Context$CancellableContext;

    return-object v0

    .line 1083
    :cond_1
    iget-object v0, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    return-object v0
.end method

.method static checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1050
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 1053
    return-object p0

    .line 1051
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static current()Lio/grpc/Context;
    .locals 2

    .line 181
    invoke-static {}, Lio/grpc/Context;->storage()Lio/grpc/Context$Storage;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Context$Storage;->current()Lio/grpc/Context;

    move-result-object v0

    .line 182
    .local v0, "current":Lio/grpc/Context;
    if-nez v0, :cond_0

    .line 183
    sget-object v1, Lio/grpc/Context;->ROOT:Lio/grpc/Context;

    return-object v1

    .line 185
    :cond_0
    return-object v0
.end method

.method public static currentContextExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "e"    # Ljava/util/concurrent/Executor;

    .line 693
    new-instance v0, Lio/grpc/Context$1CurrentContextExecutor;

    invoke-direct {v0, p0}, Lio/grpc/Context$1CurrentContextExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static key(Ljava/lang/String;)Lio/grpc/Context$Key;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/Context$Key<",
            "TT;>;"
        }
    .end annotation

    .line 162
    new-instance v0, Lio/grpc/Context$Key;

    invoke-direct {v0, p0}, Lio/grpc/Context$Key;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static keyWithDefault(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/Context$Key;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lio/grpc/Context$Key<",
            "TT;>;"
        }
    .end annotation

    .line 170
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/grpc/Context$Key;

    invoke-direct {v0, p0, p1}, Lio/grpc/Context$Key;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method static storage()Lio/grpc/Context$Storage;
    .locals 1

    .line 121
    sget-object v0, Lio/grpc/Context$LazyStorage;->storage:Lio/grpc/Context$Storage;

    return-object v0
.end method

.method private static validateGeneration(I)V
    .locals 4
    .param p0, "generation"    # I

    .line 1091
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    .line 1092
    sget-object v0, Lio/grpc/Context;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v3, "Context ancestry chain length is abnormally long. This suggests an error in application code. Length exceeded: 1000"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1099
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lio/grpc/Context$CancellationListener;Ljava/util/concurrent/Executor;)V
    .locals 4
    .param p1, "cancellationListener"    # Lio/grpc/Context$CancellationListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 499
    const-string v0, "cancellationListener"

    invoke-static {p1, v0}, Lio/grpc/Context;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string v0, "executor"

    invoke-static {p2, v0}, Lio/grpc/Context;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-virtual {p0}, Lio/grpc/Context;->canBeCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 502
    new-instance v0, Lio/grpc/Context$ExecutableListener;

    invoke-direct {v0, p0, p2, p1}, Lio/grpc/Context$ExecutableListener;-><init>(Lio/grpc/Context;Ljava/util/concurrent/Executor;Lio/grpc/Context$CancellationListener;)V

    .line 504
    .local v0, "executableListener":Lio/grpc/Context$ExecutableListener;
    monitor-enter p0

    .line 505
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/Context;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    invoke-virtual {v0}, Lio/grpc/Context$ExecutableListener;->deliver()V

    goto :goto_0

    .line 508
    :cond_0
    iget-object v1, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 511
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    .line 512
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v1, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    if-eqz v1, :cond_2

    .line 514
    iget-object v2, p0, Lio/grpc/Context;->parentListener:Lio/grpc/Context$CancellationListener;

    sget-object v3, Lio/grpc/Context$DirectExecutor;->INSTANCE:Lio/grpc/Context$DirectExecutor;

    invoke-virtual {v1, v2, v3}, Lio/grpc/Context$CancellableContext;->addListener(Lio/grpc/Context$CancellationListener;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 517
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_2
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 522
    .end local v0    # "executableListener":Lio/grpc/Context$ExecutableListener;
    :cond_3
    :goto_1
    return-void
.end method

.method public attach()Lio/grpc/Context;
    .locals 2

    .line 425
    invoke-static {}, Lio/grpc/Context;->storage()Lio/grpc/Context$Storage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/Context$Storage;->doAttach(Lio/grpc/Context;)Lio/grpc/Context;

    move-result-object v0

    .line 426
    .local v0, "prev":Lio/grpc/Context;
    if-nez v0, :cond_0

    .line 427
    sget-object v1, Lio/grpc/Context;->ROOT:Lio/grpc/Context;

    return-object v1

    .line 429
    :cond_0
    return-object v0
.end method

.method public call(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 615
    .local p1, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-virtual {p0}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object v0

    .line 617
    .local v0, "previous":Lio/grpc/Context;
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    invoke-virtual {p0, v0}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    .line 617
    return-object v1

    .line 619
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    throw v1
.end method

.method canBeCancelled()Z
    .locals 1

    .line 402
    iget-object v0, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cancellationCause()Ljava/lang/Throwable;
    .locals 1

    .line 476
    iget-object v0, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    if-nez v0, :cond_0

    .line 477
    const/4 v0, 0x0

    return-object v0

    .line 479
    :cond_0
    invoke-virtual {v0}, Lio/grpc/Context$CancellableContext;->cancellationCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public detach(Lio/grpc/Context;)V
    .locals 1
    .param p1, "toAttach"    # Lio/grpc/Context;

    .line 447
    const-string v0, "toAttach"

    invoke-static {p1, v0}, Lio/grpc/Context;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-static {}, Lio/grpc/Context;->storage()Lio/grpc/Context$Storage;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/grpc/Context$Storage;->detach(Lio/grpc/Context;Lio/grpc/Context;)V

    .line 449
    return-void
.end method

.method public fixedContextExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p1, "e"    # Ljava/util/concurrent/Executor;

    .line 675
    new-instance v0, Lio/grpc/Context$1FixedContextExecutor;

    invoke-direct {v0, p0, p1}, Lio/grpc/Context$1FixedContextExecutor;-><init>(Lio/grpc/Context;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public fork()Lio/grpc/Context;
    .locals 3

    .line 398
    new-instance v0, Lio/grpc/Context;

    iget-object v1, p0, Lio/grpc/Context;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie;

    iget v2, p0, Lio/grpc/Context;->generation:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/grpc/Context;-><init>(Lio/grpc/PersistentHashArrayMappedTrie;I)V

    return-object v0
.end method

.method public getDeadline()Lio/grpc/Deadline;
    .locals 1

    .line 488
    iget-object v0, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    if-nez v0, :cond_0

    .line 489
    const/4 v0, 0x0

    return-object v0

    .line 491
    :cond_0
    invoke-virtual {v0}, Lio/grpc/Context$CancellableContext;->getDeadline()Lio/grpc/Deadline;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 460
    iget-object v0, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    if-nez v0, :cond_0

    .line 461
    const/4 v0, 0x0

    return v0

    .line 463
    :cond_0
    invoke-virtual {v0}, Lio/grpc/Context$CancellableContext;->isCancelled()Z

    move-result v0

    return v0
.end method

.method isCurrent()Z
    .locals 1

    .line 453
    invoke-static {}, Lio/grpc/Context;->current()Lio/grpc/Context;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method listenerCount()I
    .locals 1

    .line 590
    monitor-enter p0

    .line 591
    :try_start_0
    iget-object v0, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method lookup(Lio/grpc/Context$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Context$Key<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 700
    .local p1, "key":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<*>;"
    iget-object v0, p0, Lio/grpc/Context;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie;

    invoke-virtual {v0, p1}, Lio/grpc/PersistentHashArrayMappedTrie;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method notifyAndClearListeners()V
    .locals 3

    .line 557
    invoke-virtual {p0}, Lio/grpc/Context;->canBeCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    return-void

    .line 561
    :cond_0
    monitor-enter p0

    .line 562
    :try_start_0
    iget-object v0, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 563
    monitor-exit p0

    return-void

    .line 565
    :cond_1
    nop

    .line 566
    .local v0, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/grpc/Context$ExecutableListener;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    .line 567
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 573
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/Context$ExecutableListener;

    iget-object v2, v2, Lio/grpc/Context$ExecutableListener;->listener:Lio/grpc/Context$CancellationListener;

    instance-of v2, v2, Lio/grpc/Context$ParentListener;

    if-nez v2, :cond_2

    .line 574
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/Context$ExecutableListener;

    invoke-virtual {v2}, Lio/grpc/Context$ExecutableListener;->deliver()V

    .line 572
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 577
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 578
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/Context$ExecutableListener;

    iget-object v2, v2, Lio/grpc/Context$ExecutableListener;->listener:Lio/grpc/Context$CancellationListener;

    instance-of v2, v2, Lio/grpc/Context$ParentListener;

    if-eqz v2, :cond_4

    .line 579
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/Context$ExecutableListener;

    invoke-virtual {v2}, Lio/grpc/Context$ExecutableListener;->deliver()V

    .line 577
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 582
    .end local v1    # "i":I
    :cond_5
    iget-object v1, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    if-eqz v1, :cond_6

    .line 583
    iget-object v2, p0, Lio/grpc/Context;->parentListener:Lio/grpc/Context$CancellationListener;

    invoke-virtual {v1, v2}, Lio/grpc/Context$CancellableContext;->removeListener(Lio/grpc/Context$CancellationListener;)V

    .line 585
    :cond_6
    return-void

    .line 567
    .end local v0    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lio/grpc/Context$ExecutableListener;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeListener(Lio/grpc/Context$CancellationListener;)V
    .locals 2
    .param p1, "cancellationListener"    # Lio/grpc/Context$CancellationListener;

    .line 528
    invoke-virtual {p0}, Lio/grpc/Context;->canBeCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    return-void

    .line 531
    :cond_0
    monitor-enter p0

    .line 532
    :try_start_0
    iget-object v0, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 533
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 534
    iget-object v1, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/Context$ExecutableListener;

    iget-object v1, v1, Lio/grpc/Context$ExecutableListener;->listener:Lio/grpc/Context$CancellationListener;

    if-ne v1, p1, :cond_1

    .line 535
    iget-object v1, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 538
    goto :goto_1

    .line 533
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 542
    .end local v0    # "i":I
    :cond_2
    :goto_1
    iget-object v0, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 543
    iget-object v0, p0, Lio/grpc/Context;->cancellableAncestor:Lio/grpc/Context$CancellableContext;

    if-eqz v0, :cond_3

    .line 544
    iget-object v1, p0, Lio/grpc/Context;->parentListener:Lio/grpc/Context$CancellationListener;

    invoke-virtual {v0, v1}, Lio/grpc/Context$CancellableContext;->removeListener(Lio/grpc/Context$CancellationListener;)V

    .line 546
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/Context;->listeners:Ljava/util/ArrayList;

    .line 549
    :cond_4
    monitor-exit p0

    .line 550
    return-void

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 600
    invoke-virtual {p0}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object v0

    .line 602
    .local v0, "previous":Lio/grpc/Context;
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    invoke-virtual {p0, v0}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    .line 605
    nop

    .line 606
    return-void

    .line 604
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    throw v1
.end method

.method public withCancellation()Lio/grpc/Context$CancellableContext;
    .locals 2

    .line 241
    new-instance v0, Lio/grpc/Context$CancellableContext;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/Context$CancellableContext;-><init>(Lio/grpc/Context;Lio/grpc/Context$1;)V

    return-object v0
.end method

.method public withDeadline(Lio/grpc/Deadline;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/Context$CancellableContext;
    .locals 4
    .param p1, "newDeadline"    # Lio/grpc/Deadline;
    .param p2, "scheduler"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 300
    const-string v0, "deadline"

    invoke-static {p1, v0}, Lio/grpc/Context;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v0, "scheduler"

    invoke-static {p2, v0}, Lio/grpc/Context;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-virtual {p0}, Lio/grpc/Context;->getDeadline()Lio/grpc/Deadline;

    move-result-object v0

    .line 303
    .local v0, "existingDeadline":Lio/grpc/Deadline;
    const/4 v1, 0x1

    .line 304
    .local v1, "scheduleDeadlineCancellation":Z
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lio/grpc/Deadline;->compareTo(Lio/grpc/Deadline;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 306
    move-object p1, v0

    .line 307
    const/4 v1, 0x0

    .line 309
    :cond_0
    new-instance v2, Lio/grpc/Context$CancellableContext;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lio/grpc/Context$CancellableContext;-><init>(Lio/grpc/Context;Lio/grpc/Deadline;Lio/grpc/Context$1;)V

    .line 310
    .local v2, "newCtx":Lio/grpc/Context$CancellableContext;
    if-eqz v1, :cond_1

    .line 311
    invoke-static {v2, p1, p2}, Lio/grpc/Context$CancellableContext;->access$300(Lio/grpc/Context$CancellableContext;Lio/grpc/Deadline;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 313
    :cond_1
    return-object v2
.end method

.method public withDeadlineAfter(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/Context$CancellableContext;
    .locals 1
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 271
    invoke-static {p1, p2, p3}, Lio/grpc/Deadline;->after(JLjava/util/concurrent/TimeUnit;)Lio/grpc/Deadline;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Lio/grpc/Context;->withDeadline(Lio/grpc/Deadline;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/Context$CancellableContext;

    move-result-object v0

    return-object v0
.end method

.method public withValue(Lio/grpc/Context$Key;Ljava/lang/Object;)Lio/grpc/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Context$Key<",
            "TV;>;TV;)",
            "Lio/grpc/Context;"
        }
    .end annotation

    .line 344
    .local p1, "k1":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<TV;>;"
    .local p2, "v1":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lio/grpc/Context;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie;

    invoke-virtual {v0, p1, p2}, Lio/grpc/PersistentHashArrayMappedTrie;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/PersistentHashArrayMappedTrie;

    move-result-object v0

    .line 345
    .local v0, "newKeyValueEntries":Lio/grpc/PersistentHashArrayMappedTrie;, "Lio/grpc/PersistentHashArrayMappedTrie<Lio/grpc/Context$Key<*>;Ljava/lang/Object;>;"
    new-instance v1, Lio/grpc/Context;

    invoke-direct {v1, p0, v0}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie;)V

    return-object v1
.end method

.method public withValues(Lio/grpc/Context$Key;Ljava/lang/Object;Lio/grpc/Context$Key;Ljava/lang/Object;)Lio/grpc/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Context$Key<",
            "TV1;>;TV1;",
            "Lio/grpc/Context$Key<",
            "TV2;>;TV2;)",
            "Lio/grpc/Context;"
        }
    .end annotation

    .line 353
    .local p1, "k1":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<TV1;>;"
    .local p2, "v1":Ljava/lang/Object;, "TV1;"
    .local p3, "k2":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<TV2;>;"
    .local p4, "v2":Ljava/lang/Object;, "TV2;"
    iget-object v0, p0, Lio/grpc/Context;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie;

    .line 354
    invoke-virtual {v0, p1, p2}, Lio/grpc/PersistentHashArrayMappedTrie;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/PersistentHashArrayMappedTrie;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lio/grpc/PersistentHashArrayMappedTrie;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/PersistentHashArrayMappedTrie;

    move-result-object v0

    .line 355
    .local v0, "newKeyValueEntries":Lio/grpc/PersistentHashArrayMappedTrie;, "Lio/grpc/PersistentHashArrayMappedTrie<Lio/grpc/Context$Key<*>;Ljava/lang/Object;>;"
    new-instance v1, Lio/grpc/Context;

    invoke-direct {v1, p0, v0}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie;)V

    return-object v1
.end method

.method public withValues(Lio/grpc/Context$Key;Ljava/lang/Object;Lio/grpc/Context$Key;Ljava/lang/Object;Lio/grpc/Context$Key;Ljava/lang/Object;)Lio/grpc/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            "V3:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Context$Key<",
            "TV1;>;TV1;",
            "Lio/grpc/Context$Key<",
            "TV2;>;TV2;",
            "Lio/grpc/Context$Key<",
            "TV3;>;TV3;)",
            "Lio/grpc/Context;"
        }
    .end annotation

    .line 363
    .local p1, "k1":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<TV1;>;"
    .local p2, "v1":Ljava/lang/Object;, "TV1;"
    .local p3, "k2":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<TV2;>;"
    .local p4, "v2":Ljava/lang/Object;, "TV2;"
    .local p5, "k3":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<TV3;>;"
    .local p6, "v3":Ljava/lang/Object;, "TV3;"
    iget-object v0, p0, Lio/grpc/Context;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie;

    .line 364
    invoke-virtual {v0, p1, p2}, Lio/grpc/PersistentHashArrayMappedTrie;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/PersistentHashArrayMappedTrie;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lio/grpc/PersistentHashArrayMappedTrie;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/PersistentHashArrayMappedTrie;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Lio/grpc/PersistentHashArrayMappedTrie;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/PersistentHashArrayMappedTrie;

    move-result-object v0

    .line 365
    .local v0, "newKeyValueEntries":Lio/grpc/PersistentHashArrayMappedTrie;, "Lio/grpc/PersistentHashArrayMappedTrie<Lio/grpc/Context$Key<*>;Ljava/lang/Object;>;"
    new-instance v1, Lio/grpc/Context;

    invoke-direct {v1, p0, v0}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie;)V

    return-object v1
.end method

.method public withValues(Lio/grpc/Context$Key;Ljava/lang/Object;Lio/grpc/Context$Key;Ljava/lang/Object;Lio/grpc/Context$Key;Ljava/lang/Object;Lio/grpc/Context$Key;Ljava/lang/Object;)Lio/grpc/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            "V3:",
            "Ljava/lang/Object;",
            "V4:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Context$Key<",
            "TV1;>;TV1;",
            "Lio/grpc/Context$Key<",
            "TV2;>;TV2;",
            "Lio/grpc/Context$Key<",
            "TV3;>;TV3;",
            "Lio/grpc/Context$Key<",
            "TV4;>;TV4;)",
            "Lio/grpc/Context;"
        }
    .end annotation

    .line 388
    .local p1, "k1":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<TV1;>;"
    .local p2, "v1":Ljava/lang/Object;, "TV1;"
    .local p3, "k2":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<TV2;>;"
    .local p4, "v2":Ljava/lang/Object;, "TV2;"
    .local p5, "k3":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<TV3;>;"
    .local p6, "v3":Ljava/lang/Object;, "TV3;"
    .local p7, "k4":Lio/grpc/Context$Key;, "Lio/grpc/Context$Key<TV4;>;"
    .local p8, "v4":Ljava/lang/Object;, "TV4;"
    iget-object v0, p0, Lio/grpc/Context;->keyValueEntries:Lio/grpc/PersistentHashArrayMappedTrie;

    .line 389
    invoke-virtual {v0, p1, p2}, Lio/grpc/PersistentHashArrayMappedTrie;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/PersistentHashArrayMappedTrie;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lio/grpc/PersistentHashArrayMappedTrie;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/PersistentHashArrayMappedTrie;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Lio/grpc/PersistentHashArrayMappedTrie;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/PersistentHashArrayMappedTrie;

    move-result-object v0

    invoke-virtual {v0, p7, p8}, Lio/grpc/PersistentHashArrayMappedTrie;->put(Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/PersistentHashArrayMappedTrie;

    move-result-object v0

    .line 390
    .local v0, "newKeyValueEntries":Lio/grpc/PersistentHashArrayMappedTrie;, "Lio/grpc/PersistentHashArrayMappedTrie<Lio/grpc/Context$Key<*>;Ljava/lang/Object;>;"
    new-instance v1, Lio/grpc/Context;

    invoke-direct {v1, p0, v0}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lio/grpc/PersistentHashArrayMappedTrie;)V

    return-object v1
.end method

.method public wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 627
    new-instance v0, Lio/grpc/Context$1;

    invoke-direct {v0, p0, p1}, Lio/grpc/Context$1;-><init>(Lio/grpc/Context;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public wrap(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TC;>;)",
            "Ljava/util/concurrent/Callable<",
            "TC;>;"
        }
    .end annotation

    .line 644
    .local p1, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TC;>;"
    new-instance v0, Lio/grpc/Context$2;

    invoke-direct {v0, p0, p1}, Lio/grpc/Context$2;-><init>(Lio/grpc/Context;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
