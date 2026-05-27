.class Landroidx/databinding/ViewDataBinding$WeakListListener;
.super Landroidx/databinding/ObservableList$OnListChangedCallback;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/databinding/ViewDataBinding$ObservableReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakListListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/ObservableList$OnListChangedCallback;",
        "Landroidx/databinding/ViewDataBinding$ObservableReference<",
        "Landroidx/databinding/ObservableList;",
        ">;"
    }
.end annotation


# instance fields
.field final mListener:Landroidx/databinding/ViewDataBinding$WeakListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ViewDataBinding$WeakListener<",
            "Landroidx/databinding/ObservableList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;I)V
    .locals 1
    .param p1, "binder"    # Landroidx/databinding/ViewDataBinding;
    .param p2, "localFieldId"    # I

    .line 1474
    invoke-direct {p0}, Landroidx/databinding/ObservableList$OnListChangedCallback;-><init>()V

    .line 1475
    new-instance v0, Landroidx/databinding/ViewDataBinding$WeakListener;

    invoke-direct {v0, p1, p2, p0}, Landroidx/databinding/ViewDataBinding$WeakListener;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ViewDataBinding$ObservableReference;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$WeakListListener;->mListener:Landroidx/databinding/ViewDataBinding$WeakListener;

    .line 1476
    return-void
.end method


# virtual methods
.method public addListener(Landroidx/databinding/ObservableList;)V
    .locals 0
    .param p1, "target"    # Landroidx/databinding/ObservableList;

    .line 1489
    invoke-interface {p1, p0}, Landroidx/databinding/ObservableList;->addOnListChangedCallback(Landroidx/databinding/ObservableList$OnListChangedCallback;)V

    .line 1490
    return-void
.end method

.method public bridge synthetic addListener(Ljava/lang/Object;)V
    .locals 0

    .line 1470
    check-cast p1, Landroidx/databinding/ObservableList;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$WeakListListener;->addListener(Landroidx/databinding/ObservableList;)V

    return-void
.end method

.method public getListener()Landroidx/databinding/ViewDataBinding$WeakListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ViewDataBinding$WeakListener<",
            "Landroidx/databinding/ObservableList;",
            ">;"
        }
    .end annotation

    .line 1484
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$WeakListListener;->mListener:Landroidx/databinding/ViewDataBinding$WeakListener;

    return-object v0
.end method

.method public onChanged(Landroidx/databinding/ObservableList;)V
    .locals 4
    .param p1, "sender"    # Landroidx/databinding/ObservableList;

    .line 1499
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$WeakListListener;->mListener:Landroidx/databinding/ViewDataBinding$WeakListener;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding$WeakListener;->getBinder()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    .line 1500
    .local v0, "binder":Landroidx/databinding/ViewDataBinding;
    if-nez v0, :cond_0

    .line 1501
    return-void

    .line 1503
    :cond_0
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding$WeakListListener;->mListener:Landroidx/databinding/ViewDataBinding$WeakListener;

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding$WeakListener;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/databinding/ObservableList;

    .line 1504
    .local v1, "target":Landroidx/databinding/ObservableList;
    if-eq v1, p1, :cond_1

    .line 1505
    return-void

    .line 1507
    :cond_1
    iget-object v2, p0, Landroidx/databinding/ViewDataBinding$WeakListListener;->mListener:Landroidx/databinding/ViewDataBinding$WeakListener;

    iget v2, v2, Landroidx/databinding/ViewDataBinding$WeakListener;->mLocalFieldId:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroidx/databinding/ViewDataBinding;->access$800(Landroidx/databinding/ViewDataBinding;ILjava/lang/Object;I)V

    .line 1508
    return-void
.end method

.method public onItemRangeChanged(Landroidx/databinding/ObservableList;II)V
    .locals 0
    .param p1, "sender"    # Landroidx/databinding/ObservableList;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 1512
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$WeakListListener;->onChanged(Landroidx/databinding/ObservableList;)V

    .line 1513
    return-void
.end method

.method public onItemRangeInserted(Landroidx/databinding/ObservableList;II)V
    .locals 0
    .param p1, "sender"    # Landroidx/databinding/ObservableList;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 1517
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$WeakListListener;->onChanged(Landroidx/databinding/ObservableList;)V

    .line 1518
    return-void
.end method

.method public onItemRangeMoved(Landroidx/databinding/ObservableList;III)V
    .locals 0
    .param p1, "sender"    # Landroidx/databinding/ObservableList;
    .param p2, "fromPosition"    # I
    .param p3, "toPosition"    # I
    .param p4, "itemCount"    # I

    .line 1523
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$WeakListListener;->onChanged(Landroidx/databinding/ObservableList;)V

    .line 1524
    return-void
.end method

.method public onItemRangeRemoved(Landroidx/databinding/ObservableList;II)V
    .locals 0
    .param p1, "sender"    # Landroidx/databinding/ObservableList;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 1528
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$WeakListListener;->onChanged(Landroidx/databinding/ObservableList;)V

    .line 1529
    return-void
.end method

.method public removeListener(Landroidx/databinding/ObservableList;)V
    .locals 0
    .param p1, "target"    # Landroidx/databinding/ObservableList;

    .line 1494
    invoke-interface {p1, p0}, Landroidx/databinding/ObservableList;->removeOnListChangedCallback(Landroidx/databinding/ObservableList$OnListChangedCallback;)V

    .line 1495
    return-void
.end method

.method public bridge synthetic removeListener(Ljava/lang/Object;)V
    .locals 0

    .line 1470
    check-cast p1, Landroidx/databinding/ObservableList;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding$WeakListListener;->removeListener(Landroidx/databinding/ObservableList;)V

    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;

    .line 1480
    return-void
.end method
