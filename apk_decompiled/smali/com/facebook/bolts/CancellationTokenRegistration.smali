.class public final Lcom/facebook/bolts/CancellationTokenRegistration;
.super Ljava/lang/Object;
.source "CancellationTokenRegistration.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCancellationTokenRegistration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellationTokenRegistration.kt\ncom/facebook/bolts/CancellationTokenRegistration\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,62:1\n1#2:63\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0007J\u0008\u0010\u000c\u001a\u00020\nH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/facebook/bolts/CancellationTokenRegistration;",
        "Ljava/io/Closeable;",
        "tokenSource",
        "Lcom/facebook/bolts/CancellationTokenSource;",
        "action",
        "Ljava/lang/Runnable;",
        "(Lcom/facebook/bolts/CancellationTokenSource;Ljava/lang/Runnable;)V",
        "closed",
        "",
        "close",
        "",
        "runAction",
        "throwIfClosed",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private action:Ljava/lang/Runnable;

.field private closed:Z

.field private tokenSource:Lcom/facebook/bolts/CancellationTokenSource;


# direct methods
.method public constructor <init>(Lcom/facebook/bolts/CancellationTokenSource;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "tokenSource"    # Lcom/facebook/bolts/CancellationTokenSource;
    .param p2, "action"    # Ljava/lang/Runnable;

    const-string/jumbo v0, "tokenSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/bolts/CancellationTokenRegistration;->action:Ljava/lang/Runnable;

    .line 34
    iput-object p1, p0, Lcom/facebook/bolts/CancellationTokenRegistration;->tokenSource:Lcom/facebook/bolts/CancellationTokenSource;

    return-void
.end method

.method private final throwIfClosed()V
    .locals 2

    .line 59
    iget-boolean v0, p0, Lcom/facebook/bolts/CancellationTokenRegistration;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 60
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 59
    .local v0, "$i$a$-check-CancellationTokenRegistration$throwIfClosed$1":I
    nop

    .end local v0    # "$i$a$-check-CancellationTokenRegistration$throwIfClosed$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object already closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 38
    monitor-enter p0

    const/4 v0, 0x0

    .line 39
    .local v0, "$i$a$-synchronized-CancellationTokenRegistration$close$1":I
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/bolts/CancellationTokenRegistration;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 40
    .end local v0    # "$i$a$-synchronized-CancellationTokenRegistration$close$1":I
    monitor-exit p0

    return-void

    .line 42
    .restart local v0    # "$i$a$-synchronized-CancellationTokenRegistration$close$1":I
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/facebook/bolts/CancellationTokenRegistration;->closed:Z

    .line 43
    iget-object v1, p0, Lcom/facebook/bolts/CancellationTokenRegistration;->tokenSource:Lcom/facebook/bolts/CancellationTokenSource;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Lcom/facebook/bolts/CancellationTokenSource;->unregister(Lcom/facebook/bolts/CancellationTokenRegistration;)V

    .line 44
    :cond_1
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lcom/facebook/bolts/CancellationTokenSource;

    iput-object v2, p0, Lcom/facebook/bolts/CancellationTokenRegistration;->tokenSource:Lcom/facebook/bolts/CancellationTokenSource;

    .line 45
    check-cast v1, Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/facebook/bolts/CancellationTokenRegistration;->action:Ljava/lang/Runnable;

    .line 46
    .end local v0    # "$i$a$-synchronized-CancellationTokenRegistration$close$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    monitor-exit p0

    .line 47
    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final runAction()V
    .locals 2

    .line 51
    monitor-enter p0

    const/4 v0, 0x0

    .line 52
    .local v0, "$i$a$-synchronized-CancellationTokenRegistration$runAction$1":I
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/bolts/CancellationTokenRegistration;->throwIfClosed()V

    .line 53
    iget-object v1, p0, Lcom/facebook/bolts/CancellationTokenRegistration;->action:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/bolts/CancellationTokenRegistration;->close()V

    .line 55
    .end local v0    # "$i$a$-synchronized-CancellationTokenRegistration$runAction$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    .line 56
    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
