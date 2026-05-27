.class public Lcom/payumoney/sdkui/ui/widgets/FlipImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;,
        Lcom/payumoney/sdkui/ui/widgets/FlipImageView$OnFlipListener;
    }
.end annotation


# static fields
.field private static final a:Landroid/view/animation/Interpolator;


# instance fields
.field private b:Lcom/payumoney/sdkui/ui/widgets/FlipImageView$OnFlipListener;

.field private c:Z

.field private d:Z

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/payumoney/sdkui/R$integer;->default_fiv_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/payumoney/sdkui/R$integer;->default_fiv_rotations:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/payumoney/sdkui/R$bool;->default_fiv_isAnimated:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/payumoney/sdkui/R$bool;->default_fiv_isFlipped:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/payumoney/sdkui/R$bool;->default_fiv_isRotationReversed:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 69
    sget-object v5, Lcom/payumoney/sdkui/R$styleable;->FlipImageView:[I

    const/4 v6, 0x0

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 70
    sget p3, Lcom/payumoney/sdkui/R$styleable;->FlipImageView_isAnimated:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->d:Z

    .line 71
    sget p3, Lcom/payumoney/sdkui/R$styleable;->FlipImageView_isFlipped:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->c:Z

    .line 72
    sget p3, Lcom/payumoney/sdkui/R$styleable;->FlipImageView_flipDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->f:Landroid/graphics/drawable/Drawable;

    .line 73
    sget p3, Lcom/payumoney/sdkui/R$styleable;->FlipImageView_flipDuration:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 74
    sget v0, Lcom/payumoney/sdkui/R$styleable;->FlipImageView_flipInterpolator:I

    invoke-virtual {p2, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 75
    if-lez v0, :cond_0

    .line 76
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->a:Landroid/view/animation/Interpolator;

    .line 77
    :goto_0
    sget v0, Lcom/payumoney/sdkui/R$styleable;->FlipImageView_flipRotations:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 78
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->h:Z

    .line 79
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->i:Z

    .line 80
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->j:Z

    .line 82
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->e:Landroid/graphics/drawable/Drawable;

    .line 83
    sget v0, Lcom/payumoney/sdkui/R$styleable;->FlipImageView_reverseRotation:I

    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->l:Z

    .line 85
    new-instance v0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;

    invoke-direct {v0, p0}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;-><init>(Lcom/payumoney/sdkui/ui/widgets/FlipImageView;)V

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->g:Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;

    .line 86
    invoke-virtual {v0, p0}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 87
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->g:Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;

    invoke-virtual {v0, p1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 88
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->g:Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;

    int-to-long v0, p3

    invoke-virtual {p1, v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->setDuration(J)V

    .line 90
    invoke-virtual {p0, p0}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-boolean p1, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->c:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->f:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->e:Landroid/graphics/drawable/Drawable;

    :goto_4
    invoke-virtual {p0, p1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iput-boolean v6, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->k:Z

    .line 95
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    return-void
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/widgets/FlipImageView;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->l:Z

    return p0
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/widgets/FlipImageView;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->h:Z

    return p0
.end method

.method static synthetic c(Lcom/payumoney/sdkui/ui/widgets/FlipImageView;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->i:Z

    return p0
.end method

.method static synthetic d(Lcom/payumoney/sdkui/ui/widgets/FlipImageView;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->j:Z

    return p0
.end method


# virtual methods
.method public getFlipAnimation()Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->g:Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;

    return-object v0
.end method

.method public isAnimated()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->d:Z

    return v0
.end method

.method public isFlipped()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->c:Z

    return v0
.end method

.method public isFlipping()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->k:Z

    return v0
.end method

.method public isRotationReversed()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->l:Z

    return v0
.end method

.method public isRotationXEnabled()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->h:Z

    return v0
.end method

.method public isRotationYEnabled()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->i:Z

    return v0
.end method

.method public isRotationZEnabled()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->j:Z

    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 214
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->b:Lcom/payumoney/sdkui/ui/widgets/FlipImageView$OnFlipListener;

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0, p0}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$OnFlipListener;->onFlipEnd(Lcom/payumoney/sdkui/ui/widgets/FlipImageView;)V

    .line 217
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->k:Z

    .line 218
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 222
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 206
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->b:Lcom/payumoney/sdkui/ui/widgets/FlipImageView$OnFlipListener;

    if-eqz v0, :cond_0

    .line 207
    invoke-interface {v0, p0}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$OnFlipListener;->onFlipStart(Lcom/payumoney/sdkui/ui/widgets/FlipImageView;)V

    .line 209
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->k:Z

    .line 210
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 198
    invoke-virtual {p0}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->toggleFlip()V

    .line 199
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->b:Lcom/payumoney/sdkui/ui/widgets/FlipImageView$OnFlipListener;

    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0, p0}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$OnFlipListener;->onClick(Lcom/payumoney/sdkui/ui/widgets/FlipImageView;)V

    .line 202
    :cond_0
    return-void
.end method

.method public setAnimated(Z)V
    .locals 0
    .param p1, "animated"    # Z

    .line 169
    iput-boolean p1, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->d:Z

    .line 170
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 104
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->e:Landroid/graphics/drawable/Drawable;

    .line 105
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :cond_0
    return-void
.end method

.method public setDuration(I)V
    .locals 3
    .param p1, "duration"    # I

    .line 141
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->g:Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->setDuration(J)V

    .line 142
    return-void
.end method

.method public setFlipped(Z)V
    .locals 1
    .param p1, "flipped"    # Z

    .line 149
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->d:Z

    invoke-virtual {p0, p1, v0}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setFlipped(ZZ)V

    .line 150
    return-void
.end method

.method public setFlipped(ZZ)V
    .locals 1
    .param p1, "flipped"    # Z
    .param p2, "animated"    # Z

    .line 173
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->c:Z

    if-eq p1, v0, :cond_0

    .line 174
    invoke-virtual {p0, p2}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->toggleFlip(Z)V

    .line 176
    :cond_0
    return-void
.end method

.method public setFlippedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "flippedDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 99
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->f:Landroid/graphics/drawable/Drawable;

    .line 100
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    :cond_0
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 137
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->g:Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;

    invoke-virtual {v0, p1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 138
    return-void
.end method

.method public setOnFlipListener(Lcom/payumoney/sdkui/ui/widgets/FlipImageView$OnFlipListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/payumoney/sdkui/ui/widgets/FlipImageView$OnFlipListener;

    .line 193
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->b:Lcom/payumoney/sdkui/ui/widgets/FlipImageView$OnFlipListener;

    .line 194
    return-void
.end method

.method public setRotationReversed(Z)V
    .locals 0
    .param p1, "rotationReversed"    # Z

    .line 161
    iput-boolean p1, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->l:Z

    .line 162
    return-void
.end method

.method public setRotationXEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 113
    iput-boolean p1, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->h:Z

    .line 114
    return-void
.end method

.method public setRotationYEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 121
    iput-boolean p1, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->i:Z

    .line 122
    return-void
.end method

.method public setRotationZEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 129
    iput-boolean p1, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->j:Z

    .line 130
    return-void
.end method

.method public toggleFlip()V
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->d:Z

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->toggleFlip(Z)V

    .line 180
    return-void
.end method

.method public toggleFlip(Z)V
    .locals 2
    .param p1, "animated"    # Z

    .line 183
    if-eqz p1, :cond_1

    .line 184
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->g:Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;

    iget-boolean v1, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->f:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;->setToDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->g:Lcom/payumoney/sdkui/ui/widgets/FlipImageView$FlipAnimator;

    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 187
    :cond_1
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->f:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    :goto_2
    iget-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->c:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/payumoney/sdkui/ui/widgets/FlipImageView;->c:Z

    .line 190
    return-void
.end method
