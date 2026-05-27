.class public Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;
.super Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;
.source "ModalLayoutLandscape.java"


# static fields
.field private static final ITEM_SPACING_DP:I = 0x18

.field private static final MAX_IMG_WIDTH_PCT:F = 0.4f


# instance fields
.field private barrierWidth:I

.field private buttonChild:Landroid/view/View;

.field private imageChild:Landroid/view/View;

.field private leftContentHeight:I

.field private rightContentHeight:I

.field private scrollChild:Landroid/view/View;

.field private titleChild:Landroid/view/View;

.field private vertItemSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected layoutCenterHorizontal(Landroid/view/View;IIII)V
    .locals 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 188
    sub-int v0, p4, p2

    div-int/lit8 v0, v0, 0x2

    .line 189
    .local v0, "centerOffset":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 191
    .local v1, "halfWidth":I
    add-int v2, p2, v0

    sub-int/2addr v2, v1

    .line 192
    .local v2, "childLeft":I
    add-int v3, p2, v0

    add-int v9, v3, v1

    .line 194
    .local v9, "childRight":I
    move-object v3, p0

    move-object v4, p1

    move v5, v2

    move v6, p3

    move v7, v9

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->layoutChild(Landroid/view/View;IIII)V

    .line 195
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 26
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 138
    move-object/from16 v11, p0

    invoke-super/range {p0 .. p5}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->onLayout(ZIIII)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getPaddingLeft()I

    move-result v12

    .line 142
    .local v12, "childrenLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getPaddingTop()I

    move-result v13

    .line 143
    .local v13, "childrenTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getMeasuredWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getPaddingRight()I

    move-result v1

    sub-int v14, v0, v1

    .line 147
    .local v14, "childrenRight":I
    const/4 v0, 0x0

    .line 148
    .local v0, "leftTopOffset":I
    const/4 v1, 0x0

    .line 150
    .local v1, "rightTopOffset":I
    iget v2, v11, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->leftContentHeight:I

    iget v3, v11, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->rightContentHeight:I

    if-ge v2, v3, :cond_0

    .line 151
    sub-int/2addr v3, v2

    div-int/lit8 v0, v3, 0x2

    move v15, v0

    move/from16 v16, v1

    goto :goto_0

    .line 153
    :cond_0
    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    move v15, v0

    move/from16 v16, v1

    .line 156
    .end local v0    # "leftTopOffset":I
    .end local v1    # "rightTopOffset":I
    .local v15, "leftTopOffset":I
    .local v16, "rightTopOffset":I
    :goto_0
    const-string v0, "Layout image"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 157
    move/from16 v17, v12

    .line 158
    .local v17, "imageLeft":I
    add-int v18, v13, v15

    .line 159
    .local v18, "imageTop":I
    iget-object v0, v11, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->imageChild:Landroid/view/View;

    invoke-virtual {v11, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getDesiredWidth(Landroid/view/View;)I

    move-result v0

    add-int v19, v17, v0

    .line 160
    .local v19, "imageRight":I
    iget-object v0, v11, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->imageChild:Landroid/view/View;

    invoke-virtual {v11, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getDesiredHeight(Landroid/view/View;)I

    move-result v0

    add-int v20, v18, v0

    .line 161
    .local v20, "imageBottom":I
    iget-object v1, v11, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->imageChild:Landroid/view/View;

    move-object/from16 v0, p0

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->layoutChild(Landroid/view/View;IIII)V

    .line 163
    iget v0, v11, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->barrierWidth:I

    add-int v21, v19, v0

    .line 165
    .local v21, "rightColLeft":I
    const-string v0, "Layout getTitle"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 166
    move/from16 v2, v21

    .line 167
    .local v2, "titleLeft":I
    add-int v22, v13, v16

    .line 168
    .local v22, "titleTop":I
    move v4, v14

    .line 169
    .local v4, "titleRight":I
    iget-object v0, v11, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->titleChild:Landroid/view/View;

    invoke-virtual {v11, v0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getDesiredHeight(Landroid/view/View;)I

    move-result v0

    add-int v23, v22, v0

    .line 170
    .local v23, "titleBottom":I
    iget-object v1, v11, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->titleChild:Landroid/view/View;

    move-object/from16 v0, p0

    move/from16 v3, v22

    move/from16 v5, v23

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->layoutChild(Landroid/view/View;IIII)V

    .line 172
    const-string v0, "Layout getBody"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 173
    iget-object v0, v11, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->titleChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget v0, v11, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->vertItemSpacing:I

    .line 174
    .local v0, "scrollMarginTop":I
    :goto_1
    move/from16 v7, v21

    .line 175
    .local v7, "scrollLeft":I
    add-int v24, v23, v0

    .line 176
    .local v24, "scrollTop":I
    iget-object v5, v11, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->scrollChild:Landroid/view/View;

    invoke-virtual {v11, v5}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getDesiredHeight(Landroid/view/View;)I

    move-result v5

    add-int v25, v24, v5

    .line 177
    .local v25, "scrollBottom":I
    move v9, v14

    .line 178
    .local v9, "scrollRight":I
    iget-object v6, v11, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->scrollChild:Landroid/view/View;

    move-object/from16 v5, p0

    move/from16 v8, v24

    move/from16 v10, v25

    invoke-virtual/range {v5 .. v10}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->layoutChild(Landroid/view/View;IIII)V

    .line 180
    const-string v5, "Layout button"

    invoke-static {v5}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 181
    iget-object v5, v11, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->scrollChild:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v3, :cond_2

    goto :goto_2

    :cond_2
    iget v1, v11, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->vertItemSpacing:I

    .line 182
    .local v1, "buttonMarginTop":I
    :goto_2
    move/from16 v3, v21

    .line 183
    .local v3, "buttonLeft":I
    add-int v5, v25, v1

    .line 184
    .local v5, "buttonTop":I
    iget-object v6, v11, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->buttonChild:Landroid/view/View;

    invoke-virtual {v11, v6, v3, v5}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->layoutChild(Landroid/view/View;II)V

    .line 185
    return-void
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 50
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/BaseModalLayout;->onMeasure(II)V

    .line 52
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->image_view:I

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->findChildById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->imageChild:Landroid/view/View;

    .line 54
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->message_title:I

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->findChildById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->titleChild:Landroid/view/View;

    .line 55
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->body_scroll:I

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->findChildById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->scrollChild:Landroid/view/View;

    .line 56
    sget v1, Lcom/google/firebase/inappmessaging/display/R$id;->button:I

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->findChildById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->buttonChild:Landroid/view/View;

    .line 58
    iget-object v1, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->imageChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x18

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->dpToPixels(I)I

    move-result v1

    :goto_0
    iput v1, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->barrierWidth:I

    .line 59
    invoke-virtual {v0, v2}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->dpToPixels(I)I

    move-result v1

    iput v1, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->vertItemSpacing:I

    .line 61
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->titleChild:Landroid/view/View;

    aput-object v2, v1, v4

    iget-object v2, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->scrollChild:Landroid/view/View;

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const/4 v2, 0x2

    iget-object v5, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->buttonChild:Landroid/view/View;

    aput-object v5, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 63
    .local v1, "rightCol":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getPaddingRight()I

    move-result v5

    add-int/2addr v2, v5

    .line 64
    .local v2, "horizPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getPaddingBottom()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    .line 66
    .local v5, "vertPadding":I
    invoke-virtual/range {p0 .. p1}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->calculateBaseWidth(I)I

    move-result v6

    .line 67
    .local v6, "baseLayoutWidth":I
    move/from16 v7, p2

    invoke-virtual {v0, v7}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->calculateBaseHeight(I)I

    move-result v8

    .line 69
    .local v8, "baseLayoutHeight":I
    sub-int v9, v8, v5

    .line 70
    .local v9, "innerHeight":I
    sub-int v10, v6, v2

    .line 73
    .local v10, "innerWidth":I
    const-string v11, "Measuring image"

    invoke-static {v11}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 74
    iget-object v11, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->imageChild:Landroid/view/View;

    int-to-float v12, v10

    const v13, 0x3ecccccd    # 0.4f

    mul-float v12, v12, v13

    float-to-int v12, v12

    invoke-static {v11, v12, v9}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measureAtMost(Landroid/view/View;II)V

    .line 78
    iget-object v11, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->imageChild:Landroid/view/View;

    invoke-virtual {v0, v11}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getDesiredWidth(Landroid/view/View;)I

    move-result v11

    .line 79
    .local v11, "leftColumnWidth":I
    iget v12, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->barrierWidth:I

    add-int/2addr v12, v11

    sub-int v12, v10, v12

    .line 80
    .local v12, "rightColumnMaxWidth":I
    int-to-float v13, v11

    int-to-float v14, v12

    const-string v15, "Max col widths (l, r)"

    invoke-static {v15, v13, v14}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 85
    const/4 v13, 0x0

    .line 86
    .local v13, "rightVisible":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 87
    .local v15, "view":Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_1

    .line 88
    add-int/lit8 v13, v13, 0x1

    .line 90
    .end local v15    # "view":Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 92
    :cond_2
    add-int/lit8 v3, v13, -0x1

    iget v4, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->vertItemSpacing:I

    mul-int v3, v3, v4

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 93
    .local v3, "rightSpacingTotal":I
    sub-int v4, v9, v3

    .line 97
    .local v4, "rightHeightAvail":I
    const-string v14, "Measuring getTitle"

    invoke-static {v14}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 98
    iget-object v14, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->titleChild:Landroid/view/View;

    invoke-static {v14, v12, v4}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measureAtMost(Landroid/view/View;II)V

    .line 100
    const-string v14, "Measuring button"

    invoke-static {v14}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 101
    iget-object v14, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->buttonChild:Landroid/view/View;

    invoke-static {v14, v12, v4}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measureAtMost(Landroid/view/View;II)V

    .line 103
    const-string v14, "Measuring scroll view"

    invoke-static {v14}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 104
    iget-object v14, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->titleChild:Landroid/view/View;

    .line 105
    invoke-virtual {v0, v14}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getDesiredHeight(Landroid/view/View;)I

    move-result v14

    sub-int v14, v4, v14

    iget-object v15, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->buttonChild:Landroid/view/View;

    invoke-virtual {v0, v15}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getDesiredHeight(Landroid/view/View;)I

    move-result v15

    sub-int/2addr v14, v15

    .line 106
    .local v14, "scrollHeight":I
    iget-object v15, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->scrollChild:Landroid/view/View;

    invoke-static {v15, v12, v14}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/MeasureUtils;->measureAtMost(Landroid/view/View;II)V

    .line 111
    iget-object v15, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->imageChild:Landroid/view/View;

    invoke-virtual {v0, v15}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getDesiredHeight(Landroid/view/View;)I

    move-result v15

    iput v15, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->leftContentHeight:I

    .line 112
    iput v3, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->rightContentHeight:I

    .line 113
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v3

    .end local v3    # "rightSpacingTotal":I
    .local v17, "rightSpacingTotal":I
    move-object/from16 v3, v16

    check-cast v3, Landroid/view/View;

    .line 114
    .local v3, "view":Landroid/view/View;
    move/from16 v16, v4

    .end local v4    # "rightHeightAvail":I
    .local v16, "rightHeightAvail":I
    iget v4, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->rightContentHeight:I

    invoke-virtual {v0, v3}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getDesiredHeight(Landroid/view/View;)I

    move-result v18

    add-int v4, v4, v18

    iput v4, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->rightContentHeight:I

    .line 115
    .end local v3    # "view":Landroid/view/View;
    move/from16 v4, v16

    move/from16 v3, v17

    goto :goto_2

    .line 117
    .end local v16    # "rightHeightAvail":I
    .end local v17    # "rightSpacingTotal":I
    .local v3, "rightSpacingTotal":I
    .restart local v4    # "rightHeightAvail":I
    :cond_3
    move/from16 v17, v3

    move/from16 v16, v4

    .end local v3    # "rightSpacingTotal":I
    .end local v4    # "rightHeightAvail":I
    .restart local v16    # "rightHeightAvail":I
    .restart local v17    # "rightSpacingTotal":I
    iget v3, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->leftContentHeight:I

    add-int/2addr v3, v5

    .line 118
    .local v3, "leftHeight":I
    iget v4, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->rightContentHeight:I

    add-int/2addr v4, v5

    .line 120
    .local v4, "rightHeight":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 123
    .local v15, "totalHeight":I
    const/16 v18, 0x0

    .line 124
    .local v18, "rightColumnWidth":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move-object/from16 v20, v1

    move/from16 v1, v18

    .end local v18    # "rightColumnWidth":I
    .local v1, "rightColumnWidth":I
    .local v20, "rightCol":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move/from16 v21, v3

    .end local v3    # "leftHeight":I
    .local v21, "leftHeight":I
    move-object/from16 v3, v18

    check-cast v3, Landroid/view/View;

    .line 125
    .local v3, "view":Landroid/view/View;
    move/from16 v18, v4

    .end local v4    # "rightHeight":I
    .local v18, "rightHeight":I
    invoke-virtual {v0, v3}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->getDesiredWidth(Landroid/view/View;)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 126
    .end local v3    # "view":Landroid/view/View;
    move/from16 v4, v18

    move/from16 v3, v21

    goto :goto_3

    .line 128
    .end local v18    # "rightHeight":I
    .end local v21    # "leftHeight":I
    .local v3, "leftHeight":I
    .restart local v4    # "rightHeight":I
    :cond_4
    move/from16 v21, v3

    move/from16 v18, v4

    .end local v3    # "leftHeight":I
    .end local v4    # "rightHeight":I
    .restart local v18    # "rightHeight":I
    .restart local v21    # "leftHeight":I
    int-to-float v3, v11

    int-to-float v4, v1

    move/from16 v19, v5

    .end local v5    # "vertPadding":I
    .local v19, "vertPadding":I
    const-string v5, "Measured columns (l, r)"

    invoke-static {v5, v3, v4}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 129
    add-int v3, v11, v1

    iget v4, v0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->barrierWidth:I

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    .line 132
    .local v3, "totalWidth":I
    int-to-float v4, v3

    int-to-float v5, v15

    move/from16 v22, v1

    .end local v1    # "rightColumnWidth":I
    .local v22, "rightColumnWidth":I
    const-string v1, "Measured dims"

    invoke-static {v1, v4, v5}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 133
    invoke-virtual {v0, v3, v15}, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->setMeasuredDimension(II)V

    .line 134
    return-void
.end method
