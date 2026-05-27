.class public Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;
.super Ljava/lang/Object;
.source "VerticalViewGroupMeasure.java"


# instance fields
.field private h:I

.field private vms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;",
            ">;"
        }
    .end annotation
.end field

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->vms:Ljava/util/List;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->w:I

    .line 49
    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->h:I

    .line 50
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->vms:Ljava/util/List;

    .line 42
    iput p1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->w:I

    .line 43
    iput p2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->h:I

    .line 44
    return-void
.end method


# virtual methods
.method public add(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flex"    # Z

    .line 59
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;-><init>(Landroid/view/View;Z)V

    .line 60
    .local v0, "vm":Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;
    iget v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->w:I

    iget v2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->setMaxDimens(II)V

    .line 61
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->vms:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public allocateSpace(I)V
    .locals 12
    .param p1, "flexAvail"    # I

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, "flexVms":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;>;"
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->vms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;

    .line 96
    .local v2, "vm":Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;
    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->isFlex()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v2    # "vm":Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;
    :cond_0
    goto :goto_0

    .line 102
    :cond_1
    new-instance v1, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure$1;

    invoke-direct {v1, p0}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure$1;-><init>(Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 118
    const/4 v1, 0x0

    .line 119
    .local v1, "flexSum":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;

    .line 120
    .local v3, "vm":Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;
    invoke-virtual {v3}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->getDesiredHeight()I

    move-result v4

    add-int/2addr v1, v4

    .line 121
    .end local v3    # "vm":Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;
    goto :goto_1

    .line 128
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 129
    .local v2, "flexCount":I
    const/4 v3, 0x6

    if-ge v2, v3, :cond_6

    .line 132
    const v3, 0x3e4ccccd    # 0.2f

    .line 133
    .local v3, "minFrac":F
    const/high16 v4, 0x3f800000    # 1.0f

    add-int/lit8 v5, v2, -0x1

    int-to-float v5, v5

    mul-float v5, v5, v3

    sub-float/2addr v4, v5

    .line 135
    .local v4, "maxFrac":F
    const-string v5, "VVGM (minFrac, maxFrac)"

    invoke-static {v5, v3, v4}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 138
    const/4 v5, 0x0

    .line 139
    .local v5, "extraFracPool":F
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;

    .line 140
    .local v7, "vm":Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;
    invoke-virtual {v7}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->getDesiredHeight()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v1

    div-float/2addr v8, v9

    .line 141
    .local v8, "desiredFrac":F
    move v9, v8

    .line 145
    .local v9, "grantedFrac":F
    cmpl-float v10, v8, v4

    if-lez v10, :cond_3

    .line 146
    sub-float v10, v9, v4

    add-float/2addr v5, v10

    .line 147
    move v9, v4

    .line 152
    :cond_3
    cmpg-float v10, v8, v3

    if-gez v10, :cond_4

    .line 153
    sub-float v10, v3, v8

    .line 154
    .local v10, "remainder":F
    invoke-static {v10, v5}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 156
    .local v11, "addOn":F
    add-float v9, v8, v11

    .line 157
    sub-float/2addr v5, v11

    .line 160
    .end local v10    # "remainder":F
    .end local v11    # "addOn":F
    :cond_4
    const-string v10, "\t(desired, granted)"

    invoke-static {v10, v8, v9}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logdPair(Ljava/lang/String;FF)V

    .line 161
    int-to-float v10, p1

    mul-float v10, v10, v9

    float-to-int v10, v10

    .line 162
    .local v10, "maxHeight":I
    iget v11, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->w:I

    invoke-virtual {v7, v11, v10}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->setMaxDimens(II)V

    .line 163
    .end local v7    # "vm":Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;
    .end local v8    # "desiredFrac":F
    .end local v9    # "grantedFrac":F
    .end local v10    # "maxHeight":I
    goto :goto_2

    .line 164
    :cond_5
    return-void

    .line 130
    .end local v3    # "minFrac":F
    .end local v4    # "maxFrac":F
    .end local v5    # "extraFracPool":F
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "VerticalViewGroupMeasure only supports up to 5 children"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getTotalFixedHeight()I
    .locals 4

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "sum":I
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->vms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;

    .line 81
    .local v2, "vm":Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;
    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->isFlex()Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->getDesiredHeight()I

    move-result v3

    add-int/2addr v0, v3

    .line 84
    .end local v2    # "vm":Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;
    :cond_0
    goto :goto_0

    .line 86
    :cond_1
    return v0
.end method

.method public getTotalHeight()I
    .locals 4

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "sum":I
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->vms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;

    .line 71
    .local v2, "vm":Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;
    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;->getDesiredHeight()I

    move-result v3

    add-int/2addr v0, v3

    .line 72
    .end local v2    # "vm":Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;
    goto :goto_0

    .line 74
    :cond_0
    return v0
.end method

.method public getViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/inappmessaging/display/internal/layout/util/ViewMeasure;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->vms:Ljava/util/List;

    return-object v0
.end method

.method public reset(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 53
    iput p1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->w:I

    .line 54
    iput p2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->h:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/util/VerticalViewGroupMeasure;->vms:Ljava/util/List;

    .line 56
    return-void
.end method
