.class Landroidx/databinding/ViewDataBinding$WeakPropertyListener;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/databinding/ViewDataBinding$ObservableReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakPropertyListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/Observable$OnPropertyChangedCallback;",
        "Landroidx/databinding/ViewDataBinding$ObservableReference<",
        "Landroidx/databinding/Observable;",
        ">;"
    }
.end annotation


# instance fields
.field final mListener:Landroidx/databinding/ViewDataBinding$WeakListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ViewDataBinding$WeakListener<",
            "Landroidx/databinding/Observable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;I)V
    .locals 1
    .param p1, "binder"    # Landroidx/databinding/ViewDataBinding;
    .param p2, "localFieldId"    # I

    .line 1433
    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    .line 1434
    new-instance v0, Landroidx/databinding/ViewDataBinding$WeakListener;

    invoke-direct {v0, p1, p2, p0}, Landroidx/databinding/ViewDataBinding$WeakListener;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ViewDataBinding$ObservableReference;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$WeakPropertyListener;->mListener:Landroidx/databinding/ViewDataBinding$WeakListener;

    .line 1435
    return-void
.end method


# virtual methods
.method public addListener(Landroidx/databinding/Observable;)V
    .locals 0
    .param p1, "target"    # Landroidx/databinding/Observable;

    .line 1444
    invoke-interface {p1, p0}, Landroidx/databinding/Observable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 1445
    return-void
.end method

.method public bridge synthetic addListener(Ljava/lang/Object;)V
    .locals 0

    .line 1429
    check-cast p1, Landroidx/databinding/Observable;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$WeakPropertyListener;->addListener(Landroidx/databinding/Observable;)V

    return-void
.end method

.method public getListener()Landroidx/databinding/ViewDataBinding$WeakListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ViewDataBinding$WeakListener<",
            "Landroidx/databinding/Observable;",
            ">;"
        }
    .end annotation

    .line 1439
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$WeakPropertyListener;->mListener:Landroidx/databinding/ViewDataBinding$WeakListener;

    return-object v0
.end method

.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 3
    .param p1, "sender"    # Landroidx/databinding/Observable;
    .param p2, "propertyId"    # I

    .line 1458
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$WeakPropertyListener;->mListener:Landroidx/databinding/ViewDataBinding$WeakListener;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding$WeakListener;->getBinder()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    .line 1459
    .local v0, "binder":Landroidx/databinding/ViewDataBinding;
    if-nez v0, :cond_0

    .line 1460
    return-void

    .line 1462
    :cond_0
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$WeakPropertyListener;->mListener:Landroidx/databinding/ViewDataBinding$WeakListener;

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding$WeakListener;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/databinding/Observable;

    .line 1463
    .local v1, "obj":Landroidx/databinding/Observable;
    if-eq v1, p1, :cond_1

    .line 1464
    return-void

    .line 1466
    :cond_1
    iget-object v2, p0, Landroidx/databinding/ViewDataBinding$WeakPropertyListener;->mListener:Landroidx/databinding/ViewDataBinding$WeakListener;

    iget v2, v2, Landroidx/databinding/ViewDataBinding$WeakListener;->mLocalFieldId:I

    invoke-static {v0, v2, p1, p2}, Landroidx/databinding/ViewDataBinding;->access$800(Landroidx/databinding/ViewDataBinding;ILjava/lang/Object;I)V

    .line 1467
    return-void
.end method

.method public removeListener(Landroidx/databinding/Observable;)V
    .locals 0
    .param p1, "target"    # Landroidx/databinding/Observable;

    .line 1449
    invoke-interface {p1, p0}, Landroidx/databinding/Observable;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 1450
    return-void
.end method

.method public bridge synthetic removeListener(Ljava/lang/Object;)V
    .locals 0

    .line 1429
    check-cast p1, Landroidx/databinding/Observable;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$WeakPropertyListener;->removeListener(Landroidx/databinding/Observable;)V

    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;

    .line 1454
    return-void
.end method
