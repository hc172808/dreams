.class Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$Fling;
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
    name = "Fling"
.end annotation


# instance fields
.field currX:I

.field currY:I

.field scroller:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;

.field final synthetic this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;


# direct methods
.method constructor <init>(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;II)V
    .locals 16
    .param p2, "velocityX"    # I
    .param p3, "velocityY"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 1105
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$Fling;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1106
    sget-object v2, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$State;->FLING:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$State;

    invoke-static {v1, v2}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$1200(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$State;)V

    .line 1107
    new-instance v2, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;

    invoke-static/range {p1 .. p1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$2600(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$Fling;->scroller:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;

    .line 1108
    invoke-static/range {p1 .. p1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$1800(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$2700(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)[F

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1110
    invoke-static/range {p1 .. p1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$2700(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)[F

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    float-to-int v2, v2

    .line 1111
    .local v2, "startX":I
    invoke-static/range {p1 .. p1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$2700(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)[F

    move-result-object v3

    const/4 v4, 0x5

    aget v3, v3, v4

    float-to-int v12, v3

    .line 1114
    .local v12, "startY":I
    invoke-static/range {p1 .. p1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$1400(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)F

    move-result v3

    invoke-static/range {p1 .. p1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$1300(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 1115
    invoke-static/range {p1 .. p1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$1300(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)I

    move-result v3

    invoke-static/range {p1 .. p1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$1400(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    .line 1116
    .local v3, "minX":I
    const/4 v4, 0x0

    move v13, v3

    move v14, v4

    .local v4, "maxX":I
    goto :goto_0

    .line 1119
    .end local v3    # "minX":I
    .end local v4    # "maxX":I
    :cond_0
    move v4, v2

    .restart local v4    # "maxX":I
    move v3, v2

    move v13, v3

    move v14, v4

    .line 1122
    .end local v4    # "maxX":I
    .local v13, "minX":I
    .local v14, "maxX":I
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$1700(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)F

    move-result v3

    invoke-static/range {p1 .. p1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$1600(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 1123
    invoke-static/range {p1 .. p1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$1600(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)I

    move-result v3

    invoke-static/range {p1 .. p1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$1700(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v3, v1

    .line 1124
    .local v3, "minY":I
    const/4 v1, 0x0

    move v15, v3

    .local v1, "maxY":I
    goto :goto_1

    .line 1127
    .end local v1    # "maxY":I
    .end local v3    # "minY":I
    :cond_1
    move v1, v12

    .restart local v1    # "maxY":I
    move v3, v12

    move v15, v3

    .line 1130
    .local v15, "minY":I
    :goto_1
    iget-object v3, v0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$Fling;->scroller:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;

    move v4, v2

    move v5, v12

    move/from16 v6, p2

    move/from16 v7, p3

    move v8, v13

    move v9, v14

    move v10, v15

    move v11, v1

    invoke-virtual/range {v3 .. v11}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->fling(IIIIIIII)V

    .line 1132
    iput v2, v0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$Fling;->currX:I

    .line 1133
    iput v12, v0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$Fling;->currY:I

    .line 1134
    return-void
.end method


# virtual methods
.method public cancelFling()V
    .locals 2

    .line 1137
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$Fling;->scroller:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$Fling;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    sget-object v1, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$State;->NONE:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$State;

    invoke-static {v0, v1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$1200(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$State;)V

    .line 1139
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$Fling;->scroller:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->forceFinished(Z)V

    .line 1141
    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .line 1150
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$Fling;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$2100(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$OnTouchImageViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$Fling;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-static {v0}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$2100(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$OnTouchImageViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$OnTouchImageViewListener;->onMove()V

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$Fling;->scroller:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$Fling;->scroller:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;

    .line 1156
    return-void

    .line 1159
    :cond_1
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$Fling;->scroller:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1160
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$Fling;->scroller:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;

    invoke-virtual {v0}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->getCurrX()I

    move-result v0

    .line 1161
    .local v0, "newX":I
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$Fling;->scroller:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;

    invoke-virtual {v1}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->getCurrY()I

    move-result v1

    .line 1162
    .local v1, "newY":I
    iget v2, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$Fling;->currX:I

    sub-int v2, v0, v2

    .line 1163
    .local v2, "transX":I
    iget v3, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$Fling;->currY:I

    sub-int v3, v1, v3

    .line 1164
    .local v3, "transY":I
    iput v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$Fling;->currX:I

    .line 1165
    iput v1, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$Fling;->currY:I

    .line 1166
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$Fling;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$1800(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v4

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1167
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$Fling;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$1900(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)V

    .line 1168
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$Fling;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-static {v4}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$1800(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1169
    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$Fling;->this$0:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-static {v4, p0}, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;->access$500(Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;Ljava/lang/Runnable;)V

    .line 1171
    .end local v0    # "newX":I
    .end local v1    # "newY":I
    .end local v2    # "transX":I
    .end local v3    # "transY":I
    :cond_2
    return-void
.end method
