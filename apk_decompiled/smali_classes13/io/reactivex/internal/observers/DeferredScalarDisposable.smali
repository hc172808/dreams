.class public Lio/reactivex/internal/observers/DeferredScalarDisposable;
.super Lio/reactivex/internal/observers/BasicIntQueueDisposable;
.source "DeferredScalarDisposable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/BasicIntQueueDisposable<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final DISPOSED:I = 0x4

.field static final FUSED_CONSUMED:I = 0x20

.field static final FUSED_EMPTY:I = 0x8

.field static final FUSED_READY:I = 0x10

.field static final TERMINATED:I = 0x2

.field private static final serialVersionUID:J = -0x4c5c90f80ed9d471L


# instance fields
.field protected final actual:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field protected value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lio/reactivex/internal/observers/DeferredScalarDisposable;, "Lio/reactivex/internal/observers/DeferredScalarDisposable<TT;>;"
    .local p1, "actual":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    invoke-direct {p0}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;-><init>()V

    .line 53
    iput-object p1, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->actual:Lio/reactivex/Observer;

    .line 54
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 134
    .local p0, "this":Lio/reactivex/internal/observers/DeferredScalarDisposable;, "Lio/reactivex/internal/observers/DeferredScalarDisposable<TT;>;"
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->value:Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public final complete()V
    .locals 2

    .line 107
    .local p0, "this":Lio/reactivex/internal/observers/DeferredScalarDisposable;, "Lio/reactivex/internal/observers/DeferredScalarDisposable<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    move-result v0

    .line 108
    .local v0, "state":I
    and-int/lit8 v1, v0, 0x36

    if-eqz v1, :cond_0

    .line 109
    return-void

    .line 111
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    .line 112
    iget-object v1, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->actual:Lio/reactivex/Observer;

    invoke-interface {v1}, Lio/reactivex/Observer;->onComplete()V

    .line 113
    return-void
.end method

.method public final complete(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lio/reactivex/internal/observers/DeferredScalarDisposable;, "Lio/reactivex/internal/observers/DeferredScalarDisposable<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    move-result v0

    .line 72
    .local v0, "state":I
    and-int/lit8 v1, v0, 0x36

    if-eqz v1, :cond_0

    .line 73
    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->actual:Lio/reactivex/Observer;

    .line 76
    .local v1, "a":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 77
    iput-object p1, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->value:Ljava/lang/Object;

    .line 78
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    .line 79
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    .line 82
    invoke-interface {v1, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 84
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 85
    invoke-interface {v1}, Lio/reactivex/Observer;->onComplete()V

    .line 87
    :cond_2
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 140
    .local p0, "this":Lio/reactivex/internal/observers/DeferredScalarDisposable;, "Lio/reactivex/internal/observers/DeferredScalarDisposable<TT;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->set(I)V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->value:Ljava/lang/Object;

    .line 142
    return-void
.end method

.method public final error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 94
    .local p0, "this":Lio/reactivex/internal/observers/DeferredScalarDisposable;, "Lio/reactivex/internal/observers/DeferredScalarDisposable<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    move-result v0

    .line 95
    .local v0, "state":I
    and-int/lit8 v1, v0, 0x36

    if-eqz v1, :cond_0

    .line 96
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 97
    return-void

    .line 99
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    .line 100
    iget-object v1, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->actual:Lio/reactivex/Observer;

    invoke-interface {v1, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 101
    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 154
    .local p0, "this":Lio/reactivex/internal/observers/DeferredScalarDisposable;, "Lio/reactivex/internal/observers/DeferredScalarDisposable<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEmpty()Z
    .locals 2

    .line 129
    .local p0, "this":Lio/reactivex/internal/observers/DeferredScalarDisposable;, "Lio/reactivex/internal/observers/DeferredScalarDisposable<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    .local p0, "this":Lio/reactivex/internal/observers/DeferredScalarDisposable;, "Lio/reactivex/internal/observers/DeferredScalarDisposable<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->get()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    .line 119
    iget-object v0, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->value:Ljava/lang/Object;

    .line 120
    .local v0, "v":Ljava/lang/Object;, "TT;"
    iput-object v1, p0, Lio/reactivex/internal/observers/DeferredScalarDisposable;->value:Ljava/lang/Object;

    .line 121
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    .line 122
    return-object v0

    .line 124
    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v1
.end method

.method public final requestFusion(I)I
    .locals 1
    .param p1, "mode"    # I

    .line 58
    .local p0, "this":Lio/reactivex/internal/observers/DeferredScalarDisposable;, "Lio/reactivex/internal/observers/DeferredScalarDisposable<TT;>;"
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 59
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->lazySet(I)V

    .line 60
    const/4 v0, 0x2

    return v0

    .line 62
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final tryDispose()Z
    .locals 2

    .line 149
    .local p0, "this":Lio/reactivex/internal/observers/DeferredScalarDisposable;, "Lio/reactivex/internal/observers/DeferredScalarDisposable<TT;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->getAndSet(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
