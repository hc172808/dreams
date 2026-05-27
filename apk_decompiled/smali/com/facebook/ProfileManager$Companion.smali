.class public final Lcom/facebook/ProfileManager$Companion;
.super Ljava/lang/Object;
.source "ProfileManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/facebook/ProfileManager$Companion;",
        "",
        "()V",
        "ACTION_CURRENT_PROFILE_CHANGED",
        "",
        "EXTRA_NEW_PROFILE",
        "EXTRA_OLD_PROFILE",
        "instance",
        "Lcom/facebook/ProfileManager;",
        "getInstance",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 69
    invoke-direct {p0}, Lcom/facebook/ProfileManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/facebook/ProfileManager;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 77
    invoke-static {}, Lcom/facebook/ProfileManager;->access$getInstance$cp()Lcom/facebook/ProfileManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 78
    monitor-enter p0

    const/4 v0, 0x0

    .line 79
    .local v0, "$i$a$-synchronized-ProfileManager$Companion$getInstance$1":I
    :try_start_0
    invoke-static {}, Lcom/facebook/ProfileManager;->access$getInstance$cp()Lcom/facebook/ProfileManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 80
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 81
    .local v1, "applicationContext":Landroid/content/Context;
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    const-string v3, "LocalBroadcastManager.ge\u2026tance(applicationContext)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .local v2, "localBroadcastManager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    new-instance v3, Lcom/facebook/ProfileManager;

    new-instance v4, Lcom/facebook/ProfileCache;

    invoke-direct {v4}, Lcom/facebook/ProfileCache;-><init>()V

    invoke-direct {v3, v2, v4}, Lcom/facebook/ProfileManager;-><init>(Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Lcom/facebook/ProfileCache;)V

    invoke-static {v3}, Lcom/facebook/ProfileManager;->access$setInstance$cp(Lcom/facebook/ProfileManager;)V

    .line 84
    .end local v1    # "applicationContext":Landroid/content/Context;
    .end local v2    # "localBroadcastManager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    :cond_0
    nop

    .end local v0    # "$i$a$-synchronized-ProfileManager$Companion$getInstance$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 86
    :cond_1
    :goto_0
    invoke-static {}, Lcom/facebook/ProfileManager;->access$getInstance$cp()Lcom/facebook/ProfileManager;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    const-string v0, "Required value was null."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method
