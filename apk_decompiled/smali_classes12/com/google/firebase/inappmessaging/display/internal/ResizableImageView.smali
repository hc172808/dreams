.class public Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ResizableImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;
    }
.end annotation


# instance fields
.field private mDensityDpi:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->init(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 46
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->init(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method private bound(II)Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;
    .locals 4
    .param p1, "targetW"    # I
    .param p2, "targetH"    # I

    .line 130
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->getMaxWidth()I

    move-result v0

    .line 131
    .local v0, "maxWidth":I
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->getMaxHeight()I

    move-result v1

    .line 133
    .local v1, "maxHeight":I
    if-le p1, v0, :cond_0

    .line 134
    int-to-float v2, v0

    const-string v3, "Image: capping width"

    invoke-static {v3, v2}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdNumber(Ljava/lang/String;F)V

    .line 135
    mul-int v2, p2, v0

    div-int p2, v2, p1

    .line 136
    move p1, v0

    .line 139
    :cond_0
    if-le p2, v1, :cond_1

    .line 140
    int-to-float v2, v1

    const-string v3, "Image: capping height"

    invoke-static {v3, v2}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdNumber(Ljava/lang/String;F)V

    .line 141
    mul-int v2, p1, v1

    div-int p1, v2, p2

    .line 142
    move p2, v1

    .line 145
    :cond_1
    new-instance v2, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;-><init>(IILcom/google/firebase/inappmessaging/display/internal/ResizableImageView$1;)V

    return-object v2
.end method

.method private checkMinDim()V
    .locals 12

    .line 75
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->getMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 76
    .local v0, "minWidth":I
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->getMinimumHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 77
    .local v1, "minHeight":I
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->getMeasuredWidth()I

    move-result v2

    .line 78
    .local v2, "widthSpec":I
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->getMeasuredHeight()I

    move-result v3

    .line 80
    .local v3, "heightSpec":I
    int-to-float v4, v0

    int-to-float v5, v1

    const-string v6, "Image: min width, height"

    invoke-static {v6, v4, v5}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 81
    int-to-float v4, v2

    int-to-float v5, v3

    const-string v6, "Image: actual width, height"

    invoke-static {v6, v4, v5}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 84
    const/high16 v4, 0x3f800000    # 1.0f

    .line 85
    .local v4, "scaleW":F
    const/high16 v5, 0x3f800000    # 1.0f

    .line 87
    .local v5, "scaleH":F
    if-ge v2, v0, :cond_0

    .line 88
    int-to-float v6, v0

    int-to-float v7, v2

    div-float v4, v6, v7

    .line 90
    :cond_0
    if-ge v3, v1, :cond_1

    .line 91
    int-to-float v6, v1

    int-to-float v7, v3

    div-float v5, v6, v7

    .line 94
    :cond_1
    cmpl-float v6, v4, v5

    if-lez v6, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    move v6, v5

    .line 96
    .local v6, "scale":F
    :goto_0
    float-to-double v7, v6

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v7, v9

    if-lez v11, :cond_3

    .line 97
    int-to-float v7, v2

    mul-float v7, v7, v6

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    .line 98
    .local v7, "targetW":I
    int-to-float v8, v3

    mul-float v8, v8, v6

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 99
    .local v8, "targetH":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Measured dimension ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") too small.  Resizing to "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, v7, v8}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->bound(II)Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;

    move-result-object v9

    .line 109
    .local v9, "t":Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;
    iget v10, v9, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;->w:I

    iget v11, v9, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;->h:I

    invoke-virtual {p0, v10, v11}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->setMeasuredDimension(II)V

    .line 111
    .end local v7    # "targetW":I
    .end local v8    # "targetH":I
    .end local v9    # "t":Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;
    :cond_3
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 57
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->mDensityDpi:I

    .line 58
    return-void
.end method

.method private scalePxToDp(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 114
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 115
    .local v0, "widthSpec":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 117
    .local v1, "heightSpec":I
    int-to-float v2, v0

    int-to-float v3, v1

    const-string v4, "Image: intrinsic width, height"

    invoke-static {v4, v2, v3}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 120
    iget v2, p0, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->mDensityDpi:I

    mul-int v2, v2, v0

    div-int/lit16 v2, v2, 0xa0

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 121
    .local v2, "targetW":I
    iget v3, p0, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->mDensityDpi:I

    mul-int v3, v3, v1

    div-int/lit16 v3, v3, 0xa0

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 123
    .local v3, "targetH":I
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->bound(II)Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;

    move-result-object v4

    .line 125
    .local v4, "t":Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;
    iget v5, v4, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;->w:I

    int-to-float v5, v5

    iget v6, v4, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;->h:I

    int-to-float v6, v6

    const-string v7, "Image: new target dimensions"

    invoke-static {v7, v5, v6}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 126
    iget v5, v4, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;->w:I

    iget v6, v4, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView$Dimensions;->h:I

    invoke-virtual {p0, v5, v6}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->setMeasuredDimension(II)V

    .line 127
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 62
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onMeasure(II)V

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 65
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->getAdjustViewBounds()Z

    move-result v1

    .line 67
    .local v1, "adjustViewBounds":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 68
    invoke-direct {p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->scalePxToDp(Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->checkMinDim()V

    .line 72
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "adjustViewBounds":Z
    :cond_0
    return-void
.end method
