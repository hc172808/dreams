.class public Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;
.super Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;
.source "ModalLayoutPortrait.java"


# static fields
.field private static final ITEM_SPACING_DP:I = 0x18


# instance fields
.field private vertItemSpacing:I

.field private vgm:Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->vgm:Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;

    .line 45
    return-void
.end method

.method private isFlex(Landroid/view/View;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->body_scroll:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->image_view:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 16
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 110
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p5}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->onLayout(ZIIII)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getPaddingTop()I

    move-result v1

    .line 113
    .local v1, "y":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getPaddingLeft()I

    move-result v2

    .line 115
    .local v2, "x":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getVisibleChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 116
    .local v3, "numVisible":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getVisibleChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 118
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v0, v5}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getLayoutParams(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    .line 120
    .local v6, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 121
    .local v7, "childHeight":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 123
    .local v8, "childWidth":I
    move v9, v1

    .line 124
    .local v9, "childTop":I
    add-int v10, v1, v7

    .line 130
    .local v10, "childBottom":I
    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v12, 0x1

    and-int/2addr v11, v12

    if-ne v11, v12, :cond_0

    .line 131
    sub-int v11, p4, p2

    div-int/lit8 v11, v11, 0x2

    .line 132
    .local v11, "centerOffset":I
    div-int/lit8 v12, v8, 0x2

    .line 134
    .local v12, "halfWidth":I
    sub-int v13, v11, v12

    .line 135
    .local v13, "childLeft":I
    add-int/2addr v11, v12

    .line 136
    .end local v12    # "halfWidth":I
    .local v11, "childRight":I
    goto :goto_1

    .line 137
    .end local v11    # "childRight":I
    .end local v13    # "childLeft":I
    :cond_0
    move v13, v2

    .line 138
    .restart local v13    # "childLeft":I
    add-int v11, v2, v8

    .line 141
    .restart local v11    # "childRight":I
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Layout child "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 142
    int-to-float v12, v9

    int-to-float v14, v10

    const-string v15, "\t(top, bottom)"

    invoke-static {v15, v12, v14}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 143
    int-to-float v12, v13

    int-to-float v14, v11

    const-string v15, "\t(left, right)"

    invoke-static {v15, v12, v14}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 144
    invoke-virtual {v5, v13, v9, v11, v10}, Landroid/view/View;->layout(IIII)V

    .line 147
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v1, v12

    .line 150
    add-int/lit8 v12, v3, -0x1

    if-ge v4, v12, :cond_1

    .line 151
    iget v12, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->vertItemSpacing:I

    add-int/2addr v1, v12

    .line 116
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "childHeight":I
    .end local v8    # "childWidth":I
    .end local v9    # "childTop":I
    .end local v10    # "childBottom":I
    .end local v11    # "childRight":I
    .end local v13    # "childLeft":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 154
    .end local v4    # "i":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 49
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->onMeasure(II)V

    .line 51
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->dpToPixels(I)I

    move-result v1

    iput v1, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->vertItemSpacing:I

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getPaddingRight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    .line 54
    .local v1, "horizPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getPaddingBottom()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 56
    .local v2, "vertPadding":I
    invoke-virtual/range {p0 .. p1}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->calculateBaseWidth(I)I

    move-result v3

    .line 57
    .local v3, "baseLayoutWidth":I
    move/from16 v4, p2

    invoke-virtual {v0, v4}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->calculateBaseHeight(I)I

    move-result v5

    .line 59
    .local v5, "baseLayoutHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getVisibleChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iget v8, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->vertItemSpacing:I

    mul-int v6, v6, v8

    .line 60
    .local v6, "totalVerticalSpacing":I
    add-int v8, v2, v6

    .line 62
    .local v8, "reservedHeight":I
    iget-object v9, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->vgm:Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;

    invoke-virtual {v9, v3, v5}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->reset(II)V

    .line 63
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 64
    invoke-virtual {v0, v9}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 65
    .local v10, "child":Landroid/view/View;
    iget-object v11, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->vgm:Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;

    invoke-direct {v0, v10}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->isFlex(Landroid/view/View;)Z

    move-result v12

    invoke-virtual {v11, v10, v12}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->add(Landroid/view/View;Z)V

    .line 63
    .end local v10    # "child":Landroid/view/View;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 68
    .end local v9    # "i":I
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Screen dimens: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getMaxWidthPct()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getMaxHeightPct()F

    move-result v10

    const-string v11, "Max pct"

    invoke-static {v11, v9, v10}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 70
    int-to-float v9, v3

    int-to-float v10, v5

    const-string v11, "Base dimens"

    invoke-static {v11, v9, v10}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 74
    move v9, v8

    .line 75
    .local v9, "totalDesiredHeight":I
    iget-object v10, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->vgm:Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;

    invoke-virtual {v10}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->getViews()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;

    .line 76
    .local v11, "vm":Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;
    const-string v12, "Pre-measure child"

    invoke-static {v12}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v11, v3, v5}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->preMeasure(II)V

    .line 78
    .end local v11    # "vm":Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;
    goto :goto_1

    .line 79
    :cond_1
    iget-object v10, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->vgm:Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;

    invoke-virtual {v10}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->getTotalHeight()I

    move-result v10

    add-int/2addr v9, v10

    .line 81
    int-to-float v10, v8

    const-string v11, "Total reserved height"

    invoke-static {v11, v10}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdNumber(Ljava/lang/String;F)V

    .line 82
    int-to-float v10, v9

    const-string v11, "Total desired height"

    invoke-static {v11, v10}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdNumber(Ljava/lang/String;F)V

    .line 86
    if-le v9, v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 87
    .local v7, "isHeightConstrained":Z
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Total height constrained: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 89
    if-eqz v7, :cond_3

    .line 90
    sub-int v10, v5, v8

    .line 91
    .local v10, "vertSpaceAvail":I
    iget-object v11, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->vgm:Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;

    invoke-virtual {v11}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->getTotalFixedHeight()I

    move-result v11

    sub-int v11, v10, v11

    .line 92
    .local v11, "flexAvail":I
    iget-object v12, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->vgm:Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;

    invoke-virtual {v12, v11}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->allocateSpace(I)V

    .line 96
    .end local v10    # "vertSpaceAvail":I
    .end local v11    # "flexAvail":I
    :cond_3
    move v10, v8

    .line 97
    .local v10, "heightUsed":I
    sub-int v11, v3, v1

    .line 98
    .local v11, "maxChildWidth":I
    iget-object v12, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->vgm:Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;

    invoke-virtual {v12}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->getViews()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;

    .line 99
    .local v13, "vm":Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;
    const-string v14, "Measuring child"

    invoke-static {v14}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v13}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->getView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v13}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->getMaxHeight()I

    move-result v15

    invoke-static {v14, v11, v15}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measureAtMost(Landroid/view/View;II)V

    .line 101
    invoke-virtual {v13}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->getView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->getDesiredHeight(Landroid/view/View;)I

    move-result v14

    add-int/2addr v10, v14

    .line 102
    .end local v13    # "vm":Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;
    goto :goto_3

    .line 104
    :cond_4
    int-to-float v12, v3

    int-to-float v13, v10

    const-string v14, "Measured dims"

    invoke-static {v14, v12, v13}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 105
    invoke-virtual {v0, v3, v10}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutPortrait;->setMeasuredDimension(II)V

    .line 106
    return-void
.end method
