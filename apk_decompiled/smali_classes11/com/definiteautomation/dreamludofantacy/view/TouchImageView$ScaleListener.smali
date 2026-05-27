.class Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 878
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$ScaleListener;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;
    .param p2, "x1"    # Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$1;

    .line 878
    invoke-direct {p0, p1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$ScaleListener;-><init>(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    .line 887
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$ScaleListener;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$2200(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;DFFZ)V

    .line 892
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$ScaleListener;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$2100(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$OnTouchImageViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$ScaleListener;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$2100(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$OnTouchImageViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$OnTouchImageViewListener;->onMove()V

    .line 895
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    .line 881
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$ScaleListener;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    sget-object v1, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$State;->ZOOM:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$State;

    invoke-static {v0, v1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$1200(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$State;)V

    .line 882
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 9
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detector"
        }
    .end annotation

    .line 900
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 901
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$ScaleListener;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    sget-object v1, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$State;->NONE:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$State;

    invoke-static {v0, v1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$1200(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$State;)V

    .line 902
    const/4 v0, 0x0

    .line 903
    .local v0, "animateToZoomBoundary":Z
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$ScaleListener;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$700(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)F

    move-result v1

    .line 904
    .local v1, "targetZoom":F
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$ScaleListener;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$700(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)F

    move-result v2

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$ScaleListener;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$900(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 905
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$ScaleListener;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$900(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)F

    move-result v1

    .line 906
    const/4 v0, 0x1

    move v7, v1

    goto :goto_0

    .line 908
    :cond_0
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$ScaleListener;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$700(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)F

    move-result v2

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$ScaleListener;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$800(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 909
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$ScaleListener;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$800(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)F

    move-result v1

    .line 910
    const/4 v0, 0x1

    move v7, v1

    goto :goto_0

    .line 908
    :cond_1
    move v7, v1

    .line 913
    .end local v1    # "targetZoom":F
    .local v7, "targetZoom":F
    :goto_0
    if-eqz v0, :cond_2

    .line 914
    new-instance v8, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$ScaleListener;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$1300(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v4, v1

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$ScaleListener;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$1600(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    const/4 v6, 0x1

    move-object v1, v8

    move v3, v7

    invoke-direct/range {v1 .. v6}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;-><init>(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;FFFZ)V

    .line 915
    .local v1, "doubleTap":Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$ScaleListener;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-static {v2, v1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$500(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;Ljava/lang/Runnable;)V

    .line 917
    .end local v1    # "doubleTap":Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;
    :cond_2
    return-void
.end method
