.class Landroidx/databinding/ViewDataBinding$WeakListener;
.super Ljava/lang/ref/WeakReference;
.source "ViewDataBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "Landroidx/databinding/ViewDataBinding;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mLocalFieldId:I

.field private final mObservable:Landroidx/databinding/ViewDataBinding$ObservableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ViewDataBinding$ObservableReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mTarget:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ViewDataBinding$ObservableReference;)V
    .locals 1
    .param p1, "binder"    # Landroidx/databinding/ViewDataBinding;
    .param p2, "localFieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Landroidx/databinding/ViewDataBinding$ObservableReference<",
            "TT;>;)V"
        }
    .end annotation

    .line 1389
    .local p0, "this":Landroidx/databinding/ViewDataBinding$WeakListener;, "Landroidx/databinding/ViewDataBinding$WeakListener<TT;>;"
    .local p3, "observable":Landroidx/databinding/ViewDataBinding$ObservableReference;, "Landroidx/databinding/ViewDataBinding$ObservableReference<TT;>;"
    invoke-static {}, Landroidx/databinding/ViewDataBinding;->access$700()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1390
    iput p2, p0, Landroidx/databinding/ViewDataBinding$WeakListener;->mLocalFieldId:I

    .line 1391
    iput-object p3, p0, Landroidx/databinding/ViewDataBinding$WeakListener;->mObservable:Landroidx/databinding/ViewDataBinding$ObservableReference;

    .line 1392
    return-void
.end method


# virtual methods
.method protected getBinder()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1421
    .local p0, "this":Landroidx/databinding/ViewDataBinding$WeakListener;, "Landroidx/databinding/ViewDataBinding$WeakListener<TT;>;"
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding$WeakListener;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/databinding/ViewDataBinding;

    .line 1422
    .local v0, "binder":Landroidx/databinding/ViewDataBinding;
    if-nez v0, :cond_0

    .line 1423
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding$WeakListener;->unregister()Z

    .line 1425
    :cond_0
    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1417
    .local p0, "this":Landroidx/databinding/ViewDataBinding$WeakListener;, "Landroidx/databinding/ViewDataBinding$WeakListener<TT;>;"
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$WeakListener;->mTarget:Ljava/lang/Object;

    return-object v0
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;

    .line 1395
    .local p0, "this":Landroidx/databinding/ViewDataBinding$WeakListener;, "Landroidx/databinding/ViewDataBinding$WeakListener<TT;>;"
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$WeakListener;->mObservable:Landroidx/databinding/ViewDataBinding$ObservableReference;

    invoke-interface {v0, p1}, Landroidx/databinding/ViewDataBinding$ObservableReference;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 1396
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1399
    .local p0, "this":Landroidx/databinding/ViewDataBinding$WeakListener;, "Landroidx/databinding/ViewDataBinding$WeakListener<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding$WeakListener;->unregister()Z

    .line 1400
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding$WeakListener;->mTarget:Ljava/lang/Object;

    .line 1401
    if-eqz p1, :cond_0

    .line 1402
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$WeakListener;->mObservable:Landroidx/databinding/ViewDataBinding$ObservableReference;

    invoke-interface {v0, p1}, Landroidx/databinding/ViewDataBinding$ObservableReference;->addListener(Ljava/lang/Object;)V

    .line 1404
    :cond_0
    return-void
.end method

.method public unregister()Z
    .locals 3

    .line 1407
    .local p0, "this":Landroidx/databinding/ViewDataBinding$WeakListener;, "Landroidx/databinding/ViewDataBinding$WeakListener<TT;>;"
    const/4 v0, 0x0

    .line 1408
    .local v0, "unregistered":Z
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$WeakListener;->mTarget:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1409
    iget-object v2, p0, Landroidx/databinding/ViewDataBinding$WeakListener;->mObservable:Landroidx/databinding/ViewDataBinding$ObservableReference;

    invoke-interface {v2, v1}, Landroidx/databinding/ViewDataBinding$ObservableReference;->removeListener(Ljava/lang/Object;)V

    .line 1410
    const/4 v0, 0x1

    .line 1412
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/databinding/ViewDataBinding$WeakListener;->mTarget:Ljava/lang/Object;

    .line 1413
    return v0
.end method
