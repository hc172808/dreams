.class Lcom/futuremind/recyclerviewfastscroll/FastScroller$1;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;


# direct methods
.method constructor <init>(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    .line 94
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$1;->this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$1;->this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->access$000(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V

    .line 98
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$1;->this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->access$000(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V

    .line 103
    return-void
.end method
