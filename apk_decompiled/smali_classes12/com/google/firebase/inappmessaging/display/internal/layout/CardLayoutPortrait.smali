.class public Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;
.super Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;
.source "CardLayoutPortrait.java"


# static fields
.field private static IMAGE_MAX_HEIGHT_PCT:D


# instance fields
.field private actionBarChild:Landroid/view/View;

.field private imageChild:Landroid/view/View;

.field private scrollChild:Landroid/view/View;

.field private titleChild:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-wide v0, 0x3fe999999999999aL    # 0.8

    sput-wide v0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->IMAGE_MAX_HEIGHT_PCT:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 95
    invoke-super/range {p0 .. p5}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->onLayout(ZIIII)V

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "x":I
    const/4 v1, 0x0

    .line 100
    .local v1, "y":I
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->getVisibleChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 101
    .local v2, "numVisible":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->getVisibleChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 104
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 105
    .local v5, "childHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 107
    .local v6, "childWidth":I
    move v7, v1

    .line 108
    .local v7, "childTop":I
    add-int v8, v1, v5

    .line 110
    .local v8, "childBottom":I
    move v9, v0

    .line 111
    .local v9, "childLeft":I
    add-int v10, v0, v6

    .line 113
    .local v10, "childRight":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Layout child "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 114
    int-to-float v11, v7

    int-to-float v12, v8

    const-string v13, "\t(top, bottom)"

    invoke-static {v13, v11, v12}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 115
    int-to-float v11, v9

    int-to-float v12, v10

    const-string v13, "\t(left, right)"

    invoke-static {v13, v11, v12}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 116
    invoke-virtual {v4, v9, v7, v10, v8}, Landroid/view/View;->layout(IIII)V

    .line 119
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Child "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " wants to be "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 120
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    .line 119
    invoke-static {v11, v12, v13}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 121
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v1, v11

    .line 101
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childHeight":I
    .end local v6    # "childWidth":I
    .end local v7    # "childTop":I
    .end local v8    # "childBottom":I
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 44
    invoke-super {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->onMeasure(II)V

    .line 46
    sget v0, Lcom/google/firebase/inappmessaging/display/R$id;->image_view:I

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->findChildById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->imageChild:Landroid/view/View;

    .line 47
    sget v0, Lcom/google/firebase/inappmessaging/display/R$id;->message_title:I

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->findChildById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->titleChild:Landroid/view/View;

    .line 48
    sget v0, Lcom/google/firebase/inappmessaging/display/R$id;->body_scroll:I

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->findChildById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->scrollChild:Landroid/view/View;

    .line 49
    sget v0, Lcom/google/firebase/inappmessaging/display/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->findChildById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->actionBarChild:Landroid/view/View;

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->calculateBaseWidth(I)I

    move-result v0

    .line 52
    .local v0, "baseLayoutWidth":I
    invoke-virtual {p0, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->calculateBaseHeight(I)I

    move-result v1

    .line 53
    .local v1, "baseLayoutHeight":I
    sget-wide v2, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->IMAGE_MAX_HEIGHT_PCT:D

    int-to-double v4, v1

    mul-double v2, v2, v4

    double-to-int v2, v2

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->roundToNearest(II)I

    move-result v2

    .line 56
    .local v2, "maxImageHeight":I
    const-string v3, "Measuring image"

    invoke-static {v3}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 57
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->imageChild:Landroid/view/View;

    invoke-static {v3, v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measureFullWidth(Landroid/view/View;II)V

    .line 60
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->imageChild:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->getDesiredHeight(Landroid/view/View;)I

    move-result v3

    if-le v3, v2, :cond_0

    .line 61
    const-string v3, "Image exceeded maximum height, remeasuring image"

    invoke-static {v3}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 62
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->imageChild:Landroid/view/View;

    invoke-static {v3, v0, v2}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measureFullHeight(Landroid/view/View;II)V

    .line 66
    :cond_0
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->imageChild:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->getDesiredWidth(Landroid/view/View;)I

    move-result v3

    .line 70
    .local v3, "imageWidth":I
    const-string v4, "Measuring title"

    invoke-static {v4}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 71
    iget-object v4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->titleChild:Landroid/view/View;

    invoke-static {v4, v3, v1}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measureFullWidth(Landroid/view/View;II)V

    .line 73
    const-string v4, "Measuring action bar"

    invoke-static {v4}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 74
    iget-object v4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->actionBarChild:Landroid/view/View;

    invoke-static {v4, v3, v1}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measureFullWidth(Landroid/view/View;II)V

    .line 76
    const-string v4, "Measuring scroll view"

    invoke-static {v4}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 77
    iget-object v4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->imageChild:Landroid/view/View;

    .line 79
    invoke-virtual {p0, v4}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->getDesiredHeight(Landroid/view/View;)I

    move-result v4

    sub-int v4, v1, v4

    iget-object v5, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->titleChild:Landroid/view/View;

    .line 80
    invoke-virtual {p0, v5}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->getDesiredHeight(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->actionBarChild:Landroid/view/View;

    .line 81
    invoke-virtual {p0, v5}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->getDesiredHeight(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 82
    .local v4, "maximumScrollHeight":I
    iget-object v5, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->scrollChild:Landroid/view/View;

    invoke-static {v5, v3, v4}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measureFullWidth(Landroid/view/View;II)V

    .line 84
    const/4 v5, 0x0

    .line 85
    .local v5, "totalHeight":I
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->getVisibleChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 86
    .local v6, "numVisible":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->getVisibleChildren()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 88
    .local v8, "child":Landroid/view/View;
    invoke-virtual {p0, v8}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->getDesiredHeight(Landroid/view/View;)I

    move-result v9

    add-int/2addr v5, v9

    .line 86
    .end local v8    # "child":Landroid/view/View;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 90
    .end local v7    # "i":I
    :cond_1
    invoke-virtual {p0, v3, v5}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->setMeasuredDimension(II)V

    .line 91
    return-void
.end method
