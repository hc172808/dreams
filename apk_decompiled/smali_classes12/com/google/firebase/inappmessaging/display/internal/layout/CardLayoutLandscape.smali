.class public Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;
.super Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;
.source "CardLayoutLandscape.java"


# static fields
.field private static IMAGE_MAX_WIDTH_PCT:D


# instance fields
.field private actionBarChild:Landroid/view/View;

.field private imageChild:Landroid/view/View;

.field private scrollChild:Landroid/view/View;

.field private titleChild:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const-wide v0, 0x3fe3333333333333L    # 0.6

    sput-wide v0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->IMAGE_MAX_WIDTH_PCT:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 26
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 103
    move-object/from16 v15, p0

    invoke-super/range {p0 .. p5}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->onLayout(ZIIII)V

    .line 105
    const/16 v20, 0x0

    .line 106
    .local v20, "CONTAINER_LEFT":I
    const/16 v21, 0x0

    .line 107
    .local v21, "CONTAINER_TOP":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->getMeasuredWidth()I

    move-result v22

    .line 108
    .local v22, "CONTAINER_RIGHT":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->getMeasuredHeight()I

    move-result v23

    .line 110
    .local v23, "CONTAINER_BOTTOM":I
    const-string v0, "Layout image"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 112
    move/from16 v2, v20

    .line 113
    .local v2, "imageLeft":I
    move/from16 v3, v21

    .line 114
    .local v3, "imageTop":I
    iget-object v0, v15, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->imageChild:Landroid/view/View;

    invoke-virtual {v15, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->getDesiredWidth(Landroid/view/View;)I

    move-result v24

    .line 115
    .local v24, "imageRight":I
    iget-object v0, v15, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->imageChild:Landroid/view/View;

    invoke-virtual {v15, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->getDesiredHeight(Landroid/view/View;)I

    move-result v25

    .line 116
    .local v25, "imageBottom":I
    iget-object v1, v15, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->imageChild:Landroid/view/View;

    move-object/from16 v0, p0

    move/from16 v4, v24

    move/from16 v5, v25

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->layoutChild(Landroid/view/View;IIII)V

    .line 119
    move/from16 v0, v24

    .line 121
    .local v0, "rightColLeft":I
    const-string v1, "Layout title"

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 124
    move v6, v0

    .line 125
    .local v6, "titleLeft":I
    move/from16 v7, v21

    .line 126
    .local v7, "titleTop":I
    move/from16 v8, v22

    .line 127
    .local v8, "titleRight":I
    iget-object v1, v15, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->titleChild:Landroid/view/View;

    invoke-virtual {v15, v1}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->getDesiredHeight(Landroid/view/View;)I

    move-result v1

    .line 128
    .local v1, "titleBottom":I
    iget-object v5, v15, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->titleChild:Landroid/view/View;

    move-object/from16 v4, p0

    move v9, v1

    invoke-virtual/range {v4 .. v9}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->layoutChild(Landroid/view/View;IIII)V

    .line 130
    const-string v4, "Layout scroll"

    invoke-static {v4}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 133
    move v11, v0

    .line 134
    .local v11, "scrollLeft":I
    move v4, v1

    .line 135
    .local v4, "scrollTop":I
    iget-object v5, v15, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->scrollChild:Landroid/view/View;

    invoke-virtual {v15, v5}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->getDesiredHeight(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v4

    .line 136
    .local v5, "scrollBottom":I
    move/from16 v13, v22

    .line 137
    .local v13, "scrollRight":I
    iget-object v10, v15, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->scrollChild:Landroid/view/View;

    move-object/from16 v9, p0

    move v12, v4

    move v14, v5

    invoke-virtual/range {v9 .. v14}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->layoutChild(Landroid/view/View;IIII)V

    .line 139
    const-string v9, "Layout action bar"

    invoke-static {v9}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 143
    move/from16 v16, v0

    .line 144
    .local v16, "actionBarLeft":I
    iget-object v9, v15, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->actionBarChild:Landroid/view/View;

    invoke-virtual {v15, v9}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->getDesiredHeight(Landroid/view/View;)I

    move-result v9

    sub-int v9, v23, v9

    .line 145
    .local v9, "actionBarTop":I
    move/from16 v18, v22

    .line 146
    .local v18, "actionBarRight":I
    move/from16 v19, v23

    .line 147
    .local v19, "actionBarBottom":I
    iget-object v10, v15, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->actionBarChild:Landroid/view/View;

    move-object/from16 v14, p0

    move-object v15, v10

    move/from16 v17, v9

    invoke-virtual/range {v14 .. v19}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->layoutChild(Landroid/view/View;IIII)V

    .line 148
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 42
    invoke-super {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->onMeasure(II)V

    .line 44
    sget v0, Lcom/google/firebase/inappmessaging/display/R$id;->image_view:I

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->findChildById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->imageChild:Landroid/view/View;

    .line 45
    sget v0, Lcom/google/firebase/inappmessaging/display/R$id;->message_title:I

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->findChildById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->titleChild:Landroid/view/View;

    .line 46
    sget v0, Lcom/google/firebase/inappmessaging/display/R$id;->body_scroll:I

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->findChildById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->scrollChild:Landroid/view/View;

    .line 47
    sget v0, Lcom/google/firebase/inappmessaging/display/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->findChildById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->actionBarChild:Landroid/view/View;

    .line 49
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->titleChild:Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->scrollChild:Landroid/view/View;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 51
    .local v0, "rightCol":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->calculateBaseWidth(I)I

    move-result v1

    .line 52
    .local v1, "baseLayoutWidth":I
    invoke-virtual {p0, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->calculateBaseHeight(I)I

    move-result v2

    .line 53
    .local v2, "baseLayoutHeight":I
    sget-wide v3, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->IMAGE_MAX_WIDTH_PCT:D

    int-to-double v5, v1

    mul-double v3, v3, v5

    double-to-int v3, v3

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->roundToNearest(II)I

    move-result v3

    .line 56
    .local v3, "maxImageWidth":I
    const-string v4, "Measuring image"

    invoke-static {v4}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 57
    iget-object v4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->imageChild:Landroid/view/View;

    invoke-static {v4, v1, v2}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measureFullHeight(Landroid/view/View;II)V

    .line 60
    iget-object v4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->imageChild:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->getDesiredWidth(Landroid/view/View;)I

    move-result v4

    if-le v4, v3, :cond_0

    .line 61
    const-string v4, "Image exceeded maximum width, remeasuring image"

    invoke-static {v4}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 62
    iget-object v4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->imageChild:Landroid/view/View;

    invoke-static {v4, v3, v2}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measureFullWidth(Landroid/view/View;II)V

    .line 66
    :cond_0
    iget-object v4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->imageChild:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->getDesiredHeight(Landroid/view/View;)I

    move-result v4

    .line 69
    .local v4, "imageHeight":I
    iget-object v5, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->imageChild:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->getDesiredWidth(Landroid/view/View;)I

    move-result v5

    .line 70
    .local v5, "leftColumnWidth":I
    sub-int v6, v1, v5

    .line 71
    .local v6, "rightColumnMaxWidth":I
    int-to-float v7, v5

    int-to-float v8, v6

    const-string v9, "Max col widths (l, r)"

    invoke-static {v9, v7, v8}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 75
    const-string v7, "Measuring title"

    invoke-static {v7}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 76
    iget-object v7, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->titleChild:Landroid/view/View;

    invoke-static {v7, v6, v4}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measureAtMost(Landroid/view/View;II)V

    .line 78
    const-string v7, "Measuring action bar"

    invoke-static {v7}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 79
    iget-object v7, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->actionBarChild:Landroid/view/View;

    invoke-static {v7, v6, v4}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measureAtMost(Landroid/view/View;II)V

    .line 82
    const-string v7, "Measuring scroll view"

    invoke-static {v7}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 83
    iget-object v7, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->titleChild:Landroid/view/View;

    .line 84
    invoke-virtual {p0, v7}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->getDesiredHeight(Landroid/view/View;)I

    move-result v7

    sub-int v7, v4, v7

    iget-object v8, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->actionBarChild:Landroid/view/View;

    invoke-virtual {p0, v8}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->getDesiredHeight(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    .line 85
    .local v7, "scrollHeight":I
    iget-object v8, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->scrollChild:Landroid/view/View;

    invoke-static {v8, v6, v7}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measureFullHeight(Landroid/view/View;II)V

    .line 88
    const/4 v8, 0x0

    .line 89
    .local v8, "rightColumnWidth":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 90
    .local v10, "view":Landroid/view/View;
    invoke-virtual {p0, v10}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->getDesiredWidth(Landroid/view/View;)I

    move-result v11

    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 91
    .end local v10    # "view":Landroid/view/View;
    goto :goto_0

    .line 93
    :cond_1
    int-to-float v9, v5

    int-to-float v10, v8

    const-string v11, "Measured columns (l, r)"

    invoke-static {v11, v9, v10}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 94
    add-int v9, v5, v8

    .line 97
    .local v9, "totalWidth":I
    int-to-float v10, v9

    int-to-float v11, v4

    const-string v12, "Measured dims"

    invoke-static {v12, v10, v11}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 98
    invoke-virtual {p0, v9, v4}, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->setMeasuredDimension(II)V

    .line 99
    return-void
.end method
