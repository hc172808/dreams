.class Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$3;
.super Ljava/lang/Object;
.source "ExpandableLinearLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->notifyListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;


# direct methods
.method constructor <init>(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    .line 546
    iput-object p1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$3;->this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 549
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$3;->this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$3;->this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-static {v1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->access$600(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$3;->this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-virtual {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$3;->this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-static {v1}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->access$600(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 555
    :goto_0
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$3;->this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onAnimationEnd()V

    .line 556
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$3;->this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->access$500(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$3;->this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onOpened()V

    goto :goto_1

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout$3;->this$0:Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;

    invoke-static {v0}, Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;->access$200(Lcom/github/aakira/expandablelayout/ExpandableLinearLayout;)Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListener;->onClosed()V

    .line 561
    :goto_1
    return-void
.end method
