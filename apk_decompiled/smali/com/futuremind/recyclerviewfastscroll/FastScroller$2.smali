.class Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuremind/recyclerviewfastscroll/FastScroller;->initHandleMovement()V
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

    .line 186
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 189
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->requestDisallowInterceptTouchEvent(Z)V

    .line 190
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 198
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {v0, v2}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->access$302(Lcom/futuremind/recyclerviewfastscroll/FastScroller;Z)Z

    .line 199
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->access$100(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)Lcom/futuremind/recyclerviewfastscroll/SectionTitleProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->access$200(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->onHandleReleased()V

    .line 200
    :cond_1
    return v1

    .line 202
    :cond_2
    return v2

    .line 191
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->access$100(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)Lcom/futuremind/recyclerviewfastscroll/SectionTitleProvider;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->access$200(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/futuremind/recyclerviewfastscroll/viewprovider/ScrollerViewProvider;->onHandleGrabbed()V

    .line 192
    :cond_4
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {v0, v1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->access$302(Lcom/futuremind/recyclerviewfastscroll/FastScroller;Z)Z

    .line 193
    iget-object v0, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {v0, p2}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->access$400(Lcom/futuremind/recyclerviewfastscroll/FastScroller;Landroid/view/MotionEvent;)F

    move-result v0

    .line 194
    .local v0, "relativePos":F
    iget-object v2, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-virtual {v2, v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setScrollerPosition(F)V

    .line 195
    iget-object v2, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$2;->this$0:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {v2, v0}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->access$500(Lcom/futuremind/recyclerviewfastscroll/FastScroller;F)V

    .line 196
    return v1
.end method
