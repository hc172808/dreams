.class public Landroidx/databinding/adapters/ListenerUtil;
.super Ljava/lang/Object;
.source "ListenerUtil.java"


# static fields
.field private static final sListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/ref/WeakReference<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroidx/databinding/adapters/ListenerUtil;->sListeners:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getListener(Landroid/view/View;I)Ljava/lang/Object;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "listenerResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 101
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    sget-object v0, Landroidx/databinding/adapters/ListenerUtil;->sListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 104
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashMap;

    .line 105
    .local v1, "listeners":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Landroid/view/View;Ljava/lang/ref/WeakReference<*>;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 106
    monitor-exit v0

    return-object v2

    .line 109
    :cond_1
    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 110
    .local v3, "oldValue":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    if-nez v3, :cond_2

    .line 111
    monitor-exit v0

    return-object v2

    .line 113
    :cond_2
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 115
    .end local v1    # "listeners":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Landroid/view/View;Ljava/lang/ref/WeakReference<*>;>;"
    .end local v3    # "oldValue":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static trackListener(Landroid/view/View;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p2, "listenerResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "TT;I)TT;"
        }
    .end annotation

    .line 61
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 62
    invoke-virtual {p0, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 63
    .local v0, "oldValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 64
    return-object v0

    .line 66
    .end local v0    # "oldValue":Ljava/lang/Object;, "TT;"
    :cond_0
    sget-object v0, Landroidx/databinding/adapters/ListenerUtil;->sListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 67
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashMap;

    .line 68
    .local v1, "listeners":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Landroid/view/View;Ljava/lang/ref/WeakReference<*>;>;"
    if-nez v1, :cond_1

    .line 69
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    move-object v1, v2

    .line 70
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    :cond_1
    if-nez p1, :cond_2

    .line 74
    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .local v2, "oldValue":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    goto :goto_0

    .line 76
    .end local v2    # "oldValue":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :cond_2
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 78
    .restart local v2    # "oldValue":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :goto_0
    if-nez v2, :cond_3

    .line 79
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 81
    :cond_3
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 83
    .end local v1    # "listeners":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Landroid/view/View;Ljava/lang/ref/WeakReference<*>;>;"
    .end local v2    # "oldValue":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
