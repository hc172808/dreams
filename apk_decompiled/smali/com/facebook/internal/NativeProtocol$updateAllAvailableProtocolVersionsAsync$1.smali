.class final Lcom/facebook/internal/NativeProtocol$updateAllAvailableProtocolVersionsAsync$1;
.super Ljava/lang/Object;
.source "NativeProtocol.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/NativeProtocol;->updateAllAvailableProtocolVersionsAsync()V
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


# static fields
.field public static final INSTANCE:Lcom/facebook/internal/NativeProtocol$updateAllAvailableProtocolVersionsAsync$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/internal/NativeProtocol$updateAllAvailableProtocolVersionsAsync$1;

    invoke-direct {v0}, Lcom/facebook/internal/NativeProtocol$updateAllAvailableProtocolVersionsAsync$1;-><init>()V

    sput-object v0, Lcom/facebook/internal/NativeProtocol$updateAllAvailableProtocolVersionsAsync$1;->INSTANCE:Lcom/facebook/internal/NativeProtocol$updateAllAvailableProtocolVersionsAsync$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v0, :cond_1

    return-void

    :cond_1
    move-object v0, p0

    .line 673
    .local v0, "this":Lcom/facebook/internal/NativeProtocol$updateAllAvailableProtocolVersionsAsync$1;
    nop

    .line 674
    const/4 v1, 0x0

    :try_start_1
    sget-object v2, Lcom/facebook/internal/NativeProtocol;->INSTANCE:Lcom/facebook/internal/NativeProtocol;

    invoke-static {v2}, Lcom/facebook/internal/NativeProtocol;->access$getFacebookAppInfoList$p(Lcom/facebook/internal/NativeProtocol;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_2

    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 675
    .local v3, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->fetchAvailableVersions(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v3    # "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    goto :goto_0

    .line 679
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 678
    :cond_2
    :try_start_3
    sget-object v2, Lcom/facebook/internal/NativeProtocol;->INSTANCE:Lcom/facebook/internal/NativeProtocol;

    invoke-static {v2}, Lcom/facebook/internal/NativeProtocol;->access$getProtocolVersionsAsyncUpdating$p(Lcom/facebook/internal/NativeProtocol;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 679
    nop

    .line 680
    return-void

    .line 679
    .end local v0    # "this":Lcom/facebook/internal/NativeProtocol$updateAllAvailableProtocolVersionsAsync$1;
    :catchall_1
    move-exception v2

    .line 678
    :goto_1
    sget-object v3, Lcom/facebook/internal/NativeProtocol;->INSTANCE:Lcom/facebook/internal/NativeProtocol;

    invoke-static {v3}, Lcom/facebook/internal/NativeProtocol;->access$getProtocolVersionsAsyncUpdating$p(Lcom/facebook/internal/NativeProtocol;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 680
    :catchall_2
    move-exception v1

    :try_start_4
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    return-void

    :catchall_3
    move-exception v1

    goto :goto_2

    :catchall_4
    move-exception v1

    move-object v0, p0

    :goto_2
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
