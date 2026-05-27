.class public Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RecyclerViewScrollListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener$ScrollerListener;
    }
.end annotation


# instance fields
.field listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener$ScrollerListener;",
            ">;"
        }
    .end annotation
.end field

.field oldScrollState:I

.field private final scroller:Lcom/futuremind/recyclerviewfastscroll/FastScroller;


# direct methods
.method public constructor <init>(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V
    .locals 1
    .param p1, "scroller"    # Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    .line 18
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener;->listeners:Ljava/util/List;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener;->oldScrollState:I

    .line 19
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener;->scroller:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    .line 20
    return-void
.end method


# virtual methods
.method public addScrollerListener(Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener$ScrollerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener$ScrollerListener;

    .line 23
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public notifyListeners(F)V
    .locals 2
    .param p1, "relativePos"    # F

    .line 62
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener$ScrollerListener;

    .local v1, "listener":Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener$ScrollerListener;
    invoke-interface {v1, p1}, Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener$ScrollerListener;->onScroll(F)V

    .end local v1    # "listener":Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener$ScrollerListener;
    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "newScrollState"    # I

    .line 28
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 29
    if-nez p2, :cond_0

    iget v0, p0, Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener;->oldScrollState:I

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener;->scroller:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getViewProvider()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->onScrollFinished()V

    goto :goto_0

    .line 31
    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener;->oldScrollState:I

    if-nez v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener;->scroller:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->getViewProvider()Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->onScrollStarted()V

    .line 34
    :cond_1
    :goto_0
    iput p2, p0, Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener;->oldScrollState:I

    .line 35
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1
    .param p1, "rv"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 39
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener;->scroller:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->shouldUpdateHandlePosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0, p1}, Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener;->updateHandlePosition(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 42
    :cond_0
    return-void
.end method

.method updateHandlePosition(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5
    .param p1, "rv"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener;->scroller:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    .line 48
    .local v0, "offset":I
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v1

    .line 49
    .local v1, "extent":I
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v2

    .line 50
    .local v2, "range":I
    int-to-float v3, v0

    sub-int v4, v2, v1

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 51
    .end local v0    # "offset":I
    .end local v1    # "extent":I
    .end local v2    # "range":I
    .local v3, "relativePos":F
    goto :goto_0

    .line 52
    .end local v3    # "relativePos":F
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 53
    .restart local v0    # "offset":I
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollExtent()I

    move-result v1

    .line 54
    .restart local v1    # "extent":I
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v2

    .line 55
    .restart local v2    # "range":I
    int-to-float v3, v0

    sub-int v4, v2, v1

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 57
    .end local v0    # "offset":I
    .end local v1    # "extent":I
    .end local v2    # "range":I
    .restart local v3    # "relativePos":F
    :goto_0
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener;->scroller:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {v0, v3}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setScrollerPosition(F)V

    .line 58
    invoke-virtual {p0, v3}, Lcom/futuremind/recyclerviewfastscroll/RecyclerViewScrollListener;->notifyListeners(F)V

    .line 59
    return-void
.end method
