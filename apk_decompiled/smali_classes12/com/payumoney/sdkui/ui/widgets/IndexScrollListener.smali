.class public Lcom/payumoney/sdkui/ui/widgets/IndexScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/sdkui/ui/widgets/Publisher;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/payumoney/sdkui/ui/widgets/Subscriber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/IndexScrollListener;->a:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 46
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 47
    return-void
.end method

.method public notifySubscribers(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4
    .param p1, "rv"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 39
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/IndexScrollListener;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/payumoney/sdkui/ui/widgets/Subscriber;

    .line 40
    int-to-float v2, p2

    int-to-float v3, p3

    invoke-interface {v1, p1, v2, v3}, Lcom/payumoney/sdkui/ui/widgets/Subscriber;->update(Landroidx/recyclerview/widget/RecyclerView;FF)V

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1, "rv"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lcom/payumoney/sdkui/ui/widgets/IndexScrollListener;->notifySubscribers(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 24
    return-void
.end method

.method public register(Lcom/payumoney/sdkui/ui/widgets/Subscriber;)V
    .locals 1
    .param p1, "newObserver"    # Lcom/payumoney/sdkui/ui/widgets/Subscriber;

    .line 29
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/IndexScrollListener;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public unregister(Lcom/payumoney/sdkui/ui/widgets/Subscriber;)V
    .locals 1
    .param p1, "existentObserver"    # Lcom/payumoney/sdkui/ui/widgets/Subscriber;

    .line 34
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/IndexScrollListener;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method
