.class public Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener$OnItemClickListener;
    }
.end annotation


# instance fields
.field private a:Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener$OnItemClickListener;

.field private b:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener$OnItemClickListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener$OnItemClickListener;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p2, p0, Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener;->a:Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener$OnItemClickListener;

    .line 15
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener$1;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener$1;-><init>(Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener;->b:Landroid/view/GestureDetector;

    .line 21
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .line 25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener;->a:Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener$OnItemClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener;->b:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener;->a:Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/payumoney/sdkui/ui/utils/RecyclerViewOnItemClickListener$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 29
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .line 39
    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "view"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 34
    return-void
.end method
