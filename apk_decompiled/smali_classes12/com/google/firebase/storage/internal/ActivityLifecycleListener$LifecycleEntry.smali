.class Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;
.super Ljava/lang/Object;
.source "ActivityLifecycleListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/internal/ActivityLifecycleListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LifecycleEntry"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final cookie:Ljava/lang/Object;

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "cookie"    # Ljava/lang/Object;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->activity:Landroid/app/Activity;

    .line 76
    iput-object p2, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->runnable:Ljava/lang/Runnable;

    .line 77
    iput-object p3, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->cookie:Ljava/lang/Object;

    .line 78
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 87
    instance-of v0, p1, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 88
    return v1

    .line 90
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;

    .line 91
    .local v0, "other":Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;
    iget-object v2, v0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->cookie:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->cookie:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->runnable:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->runnable:Ljava/lang/Runnable;

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->activity:Landroid/app/Activity;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCookie()Ljava/lang/Object;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->cookie:Ljava/lang/Object;

    return-object v0
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->cookie:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
