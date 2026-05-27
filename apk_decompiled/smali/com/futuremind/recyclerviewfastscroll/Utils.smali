.class public Lcom/futuremind/recyclerviewfastscroll/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValueInRange(FFF)F
    .locals 2
    .param p0, "min"    # F
    .param p1, "max"    # F
    .param p2, "value"    # F

    .line 29
    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 30
    .local v0, "minimum":F
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method public static getViewRawX(Landroid/view/View;)F
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 22
    .local v0, "location":[I
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 23
    const/4 v1, 0x1

    aput v2, v0, v1

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 25
    aget v1, v0, v2

    int-to-float v1, v1

    return v1
.end method

.method public static getViewRawY(Landroid/view/View;)F
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 14
    .local v0, "location":[I
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 17
    aget v1, v0, v2

    int-to-float v1, v1

    return v1
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 35
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    :goto_0
    return-void
.end method
