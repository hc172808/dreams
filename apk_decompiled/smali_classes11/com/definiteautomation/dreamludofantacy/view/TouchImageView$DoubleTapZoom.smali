.class Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapZoom"
.end annotation


# static fields
.field private static final ZOOM_TIME:F = 500.0f


# instance fields
.field private final bitmapX:F

.field private final bitmapY:F

.field private final endTouch:Landroid/graphics/PointF;

.field private final interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private final startTime:J

.field private final startTouch:Landroid/graphics/PointF;

.field private final startZoom:F

.field private final stretchImageToSuper:Z

.field private final targetZoom:F

.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;FFFZ)V
    .locals 3
    .param p2, "targetZoom"    # F
    .param p3, "focusX"    # F
    .param p4, "focusY"    # F
    .param p5, "stretchImageToSuper"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "targetZoom",
            "focusX",
            "focusY",
            "stretchImageToSuper"
        }
    .end annotation

    .line 965
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 961
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 966
    sget-object v0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$State;->ANIMATE_ZOOM:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$State;

    invoke-static {p1, v0}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$1200(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$State;)V

    .line 967
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->startTime:J

    .line 968
    invoke-static {p1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$700(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)F

    move-result v0

    iput v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->startZoom:F

    .line 969
    iput p2, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->targetZoom:F

    .line 970
    iput-boolean p5, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->stretchImageToSuper:Z

    .line 971
    const/4 v0, 0x0

    invoke-static {p1, p3, p4, v0}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$2300(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;FFZ)Landroid/graphics/PointF;

    move-result-object v0

    .line 972
    .local v0, "bitmapPoint":Landroid/graphics/PointF;
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->bitmapX:F

    .line 973
    iget v2, v0, Landroid/graphics/PointF;->y:F

    iput v2, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->bitmapY:F

    .line 978
    invoke-static {p1, v1, v2}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$2400(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;FF)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    .line 979
    new-instance v1, Landroid/graphics/PointF;

    invoke-static {p1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$1300(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {p1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$1600(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->endTouch:Landroid/graphics/PointF;

    .line 980
    return-void
.end method

.method private calculateDeltaScale(F)D
    .locals 4
    .param p1, "t"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 1044
    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->startZoom:F

    iget v1, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->targetZoom:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 1045
    .local v0, "zoom":D
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-static {v2}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$700(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)F

    move-result v2

    float-to-double v2, v2

    div-double v2, v0, v2

    return-wide v2
.end method

.method private interpolate()F
    .locals 4

    .line 1031
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1032
    .local v0, "currTime":J
    iget-wide v2, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->startTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x43fa0000    # 500.0f

    div-float/2addr v2, v3

    .line 1033
    .local v2, "elapsed":F
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1034
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v3, v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v3

    return v3
.end method

.method private translateImageToCenterTouchPosition(F)V
    .locals 6
    .param p1, "t"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 1020
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->endTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 1021
    .local v0, "targetX":F
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->endTouch:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    .line 1022
    .local v1, "targetY":F
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    iget v3, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->bitmapX:F

    iget v4, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->bitmapY:F

    invoke-static {v2, v3, v4}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$2400(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;FF)Landroid/graphics/PointF;

    move-result-object v2

    .line 1023
    .local v2, "curr":Landroid/graphics/PointF;
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-static {v3}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$1800(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, v2, Landroid/graphics/PointF;->x:F

    sub-float v4, v0, v4

    iget v5, v2, Landroid/graphics/PointF;->y:F

    sub-float v5, v1, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1024
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 984
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->interpolate()F

    move-result v0

    .line 985
    .local v0, "t":F
    invoke-direct {p0, v0}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->calculateDeltaScale(F)D

    move-result-wide v7

    .line 986
    .local v7, "deltaScale":D
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    iget v4, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->bitmapX:F

    iget v5, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->bitmapY:F

    iget-boolean v6, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->stretchImageToSuper:Z

    move-wide v2, v7

    invoke-static/range {v1 .. v6}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$2200(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;DFFZ)V

    .line 987
    invoke-direct {p0, v0}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->translateImageToCenterTouchPosition(F)V

    .line 988
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$2500(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)V

    .line 989
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$1800(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 995
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$2100(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$OnTouchImageViewListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 996
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$2100(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$OnTouchImageViewListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$OnTouchImageViewListener;->onMove()V

    .line 999
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 1003
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-static {v1, p0}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$500(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1009
    :cond_1
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$DoubleTapZoom;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    sget-object v2, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$State;->NONE:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$State;

    invoke-static {v1, v2}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$1200(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$State;)V

    .line 1011
    :goto_0
    return-void
.end method
