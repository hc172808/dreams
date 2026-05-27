.class Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;
.super Lcom/google/android/gms/common/api/internal/LifecycleCallback;
.source "ActivityLifecycleListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/internal/ActivityLifecycleListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnStopCallback"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StorageOnStopCallback"


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V
    .locals 2
    .param p1, "fragment"    # Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    .line 117
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;->listeners:Ljava/util/List;

    .line 118
    iget-object v0, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    const-string v1, "StorageOnStopCallback"

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->addCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    .line 119
    return-void
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 122
    new-instance v0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/LifecycleActivity;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;->getFragment(Lcom/google/android/gms/common/api/internal/LifecycleActivity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    move-result-object v0

    .line 123
    .local v0, "fragment":Lcom/google/android/gms/common/api/internal/LifecycleFragment;
    const-class v1, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;

    const-string v2, "StorageOnStopCallback"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;

    .line 124
    .local v1, "callback":Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;
    if-nez v1, :cond_0

    .line 125
    new-instance v2, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;

    invoke-direct {v2, v0}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    move-object v1, v2

    .line 127
    :cond_0
    return-object v1
.end method


# virtual methods
.method public addEntry(Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;)V
    .locals 2
    .param p1, "entry"    # Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;

    .line 131
    iget-object v0, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStop()V
    .locals 5

    .line 146
    iget-object v0, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 147
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;->listeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 148
    .local v1, "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;>;"
    iget-object v2, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 149
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;

    .line 151
    .local v2, "entry":Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;
    if-eqz v2, :cond_0

    .line 152
    const-string v3, "StorageOnStopCallback"

    const-string v4, "removing subscription from activity."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v2}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->getRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 155
    invoke-static {}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;->getInstance()Lcom/google/firebase/storage/internal/ActivityLifecycleListener;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;->getCookie()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/storage/internal/ActivityLifecycleListener;->removeCookie(Ljava/lang/Object;)V

    .line 157
    .end local v2    # "entry":Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;
    :cond_0
    goto :goto_0

    .line 158
    :cond_1
    return-void

    .line 149
    .end local v1    # "copy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeEntry(Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/firebase/storage/internal/ActivityLifecycleListener$LifecycleEntry;

    .line 137
    iget-object v0, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/storage/internal/ActivityLifecycleListener$OnStopCallback;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 139
    monitor-exit v0

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
