.class Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;
.super Ljava/lang/Object;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompatScroller"
.end annotation


# instance fields
.field isPreGingerbread:Z

.field overScroller:Landroid/widget/OverScroller;

.field scroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->isPreGingerbread:Z

    .line 1182
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    .line 1183
    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 1

    .line 1210
    iget-boolean v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->isPreGingerbread:Z

    if-eqz v0, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    return v0

    .line 1213
    :cond_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 1214
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public fling(IIIIIIII)V
    .locals 12
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startX",
            "startY",
            "velocityX",
            "velocityY",
            "minX",
            "maxX",
            "minY",
            "maxY"
        }
    .end annotation

    .line 1186
    move-object v0, p0

    iget-boolean v1, v0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->isPreGingerbread:Z

    if-eqz v1, :cond_0

    .line 1187
    iget-object v2, v0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1189
    :cond_0
    iget-object v3, v0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 1191
    :goto_0
    return-void
.end method

.method public forceFinished(Z)V
    .locals 1
    .param p1, "finished"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "finished"
        }
    .end annotation

    .line 1194
    iget-boolean v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->isPreGingerbread:Z

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 1199
    :goto_0
    return-void
.end method

.method public getCurrX()I
    .locals 1

    .line 1219
    iget-boolean v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->isPreGingerbread:Z

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    return v0

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public getCurrY()I
    .locals 1

    .line 1227
    iget-boolean v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->isPreGingerbread:Z

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    return v0

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .line 1202
    iget-boolean v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->isPreGingerbread:Z

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    return v0

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView$CompatScroller;->overScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    return v0
.end method
