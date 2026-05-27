.class public Lcom/mikhaellopez/circularimageview/CircularImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "CircularImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;
    }
.end annotation


# static fields
.field private static final DEFAULT_BORDER_WIDTH:F = 4.0f

.field private static final DEFAULT_SHADOW_RADIUS:F = 8.0f


# instance fields
.field private borderWidth:F

.field private canvasSize:I

.field private colorFilter:Landroid/graphics/ColorFilter;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private image:Landroid/graphics/Bitmap;

.field private paint:Landroid/graphics/Paint;

.field private paintBackground:Landroid/graphics/Paint;

.field private paintBorder:Landroid/graphics/Paint;

.field private shadowColor:I

.field private shadowGravity:Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

.field private shadowRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mikhaellopez/circularimageview/CircularImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mikhaellopez/circularimageview/CircularImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowColor:I

    .line 36
    sget-object v0, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;->BOTTOM:Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    iput-object v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowGravity:Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/mikhaellopez/circularimageview/CircularImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method private drawShadow(FI)V
    .locals 4
    .param p1, "shadowRadius"    # F
    .param p2, "shadowColor"    # I

    .line 209
    iput p1, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowRadius:F

    .line 210
    iput p2, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowColor:I

    .line 211
    iget-object v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->paintBorder:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 216
    .local v1, "dy":F
    sget-object v2, Lcom/mikhaellopez/circularimageview/CircularImageView$1;->$SwitchMap$com$mikhaellopez$circularimageview$CircularImageView$ShadowGravity:[I

    iget-object v3, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowGravity:Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    invoke-virtual {v3}, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 234
    :pswitch_0
    div-float v0, p1, v3

    .line 235
    const/4 v1, 0x0

    goto :goto_0

    .line 230
    :pswitch_1
    neg-float v2, p1

    div-float v0, v2, v3

    .line 231
    const/4 v1, 0x0

    .line 232
    goto :goto_0

    .line 226
    :pswitch_2
    const/4 v0, 0x0

    .line 227
    div-float v1, p1, v3

    .line 228
    goto :goto_0

    .line 222
    :pswitch_3
    const/4 v0, 0x0

    .line 223
    neg-float v2, p1

    div-float v1, v2, v3

    .line 224
    goto :goto_0

    .line 218
    :pswitch_4
    const/4 v0, 0x0

    .line 219
    const/4 v1, 0x0

    .line 220
    nop

    .line 239
    :goto_0
    iget-object v2, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->paintBorder:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v0, v1, p2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 240
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 288
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 289
    return-object v0

    .line 290
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 291
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 296
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 297
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 298
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 299
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    return-object v1

    .line 301
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v1

    .line 302
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->paint:Landroid/graphics/Paint;

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->paintBorder:Landroid/graphics/Paint;

    .line 66
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->paintBackground:Landroid/graphics/Paint;

    .line 69
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    sget-object v0, Lcom/mikhaellopez/circularimageview/R$styleable;->CircularImageView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, "attributes":Landroid/content/res/TypedArray;
    sget v3, Lcom/mikhaellopez/circularimageview/R$styleable;->CircularImageView_civ_border:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    .line 76
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float v4, v4, v1

    .line 77
    .local v4, "defaultBorderSize":F
    sget v1, Lcom/mikhaellopez/circularimageview/R$styleable;->CircularImageView_civ_border_width:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setBorderWidth(F)V

    .line 78
    sget v1, Lcom/mikhaellopez/circularimageview/R$styleable;->CircularImageView_civ_border_color:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setBorderColor(I)V

    .line 81
    .end local v4    # "defaultBorderSize":F
    :cond_0
    sget v1, Lcom/mikhaellopez/circularimageview/R$styleable;->CircularImageView_civ_background_color:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setBackgroundColor(I)V

    .line 84
    sget v1, Lcom/mikhaellopez/circularimageview/R$styleable;->CircularImageView_civ_shadow:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    const/high16 v1, 0x41000000    # 8.0f

    iput v1, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowRadius:F

    .line 86
    sget v1, Lcom/mikhaellopez/circularimageview/R$styleable;->CircularImageView_civ_shadow_radius:I

    iget v2, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowRadius:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    sget v2, Lcom/mikhaellopez/circularimageview/R$styleable;->CircularImageView_civ_shadow_color:I

    iget v3, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowColor:I

    .line 87
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 86
    invoke-direct {p0, v1, v2}, Lcom/mikhaellopez/circularimageview/CircularImageView;->drawShadow(FI)V

    .line 88
    sget v1, Lcom/mikhaellopez/circularimageview/R$styleable;->CircularImageView_civ_shadow_gravity:I

    sget-object v2, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;->BOTTOM:Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    invoke-virtual {v2}, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 89
    .local v1, "shadowGravityIntValue":I
    invoke-static {v1}, Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;->fromValue(I)Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    move-result-object v2

    iput-object v2, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowGravity:Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    .line 92
    .end local v1    # "shadowGravityIntValue":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    return-void
.end method

.method private loadBitmap()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 193
    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 196
    invoke-direct {p0, v0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    .line 197
    invoke-direct {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->updateShader()V

    .line 198
    return-void
.end method

.method private measureHeight(I)I
    .locals 4
    .param p1, "measureSpecHeight"    # I

    .line 337
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 338
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 340
    .local v1, "specSize":I
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    .line 342
    move v2, v1

    .local v2, "result":I
    goto :goto_0

    .line 343
    .end local v2    # "result":I
    :cond_0
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 345
    move v2, v1

    .restart local v2    # "result":I
    goto :goto_0

    .line 348
    .end local v2    # "result":I
    :cond_1
    iget v2, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->canvasSize:I

    .line 351
    .restart local v2    # "result":I
    :goto_0
    add-int/lit8 v3, v2, 0x2

    return v3
.end method

.method private measureWidth(I)I
    .locals 3
    .param p1, "measureSpec"    # I

    .line 318
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 319
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 321
    .local v1, "specSize":I
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    .line 323
    move v2, v1

    .local v2, "result":I
    goto :goto_0

    .line 324
    .end local v2    # "result":I
    :cond_0
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 326
    move v2, v1

    .restart local v2    # "result":I
    goto :goto_0

    .line 329
    .end local v2    # "result":I
    :cond_1
    iget v2, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->canvasSize:I

    .line 332
    .restart local v2    # "result":I
    :goto_0
    return v2
.end method

.method private updateShader()V
    .locals 8

    .line 243
    iget-object v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 244
    return-void

    .line 247
    :cond_0
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 250
    .local v0, "shader":Landroid/graphics/BitmapShader;
    const/4 v1, 0x0

    .line 251
    .local v1, "scale":F
    const/4 v2, 0x0

    .line 252
    .local v2, "dx":F
    const/4 v3, 0x0

    .line 254
    .local v3, "dy":F
    sget-object v4, Lcom/mikhaellopez/circularimageview/CircularImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 265
    :pswitch_0
    iget-object v4, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->getHeight()I

    move-result v6

    mul-int v4, v4, v6

    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v6, v6, v7

    if-ge v4, v6, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v4, v6

    .line 267
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v1

    sub-float/2addr v4, v6

    mul-float v2, v4, v5

    goto/16 :goto_0

    .line 269
    :cond_1
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v4, v6

    .line 270
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v1

    sub-float/2addr v4, v6

    mul-float v3, v4, v5

    goto :goto_0

    .line 256
    :pswitch_1
    iget-object v4, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->getHeight()I

    move-result v6

    mul-int v4, v4, v6

    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v6, v6, v7

    if-le v4, v6, :cond_2

    .line 257
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v4, v6

    .line 258
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v1

    sub-float/2addr v4, v6

    mul-float v2, v4, v5

    goto :goto_0

    .line 260
    :cond_2
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v4, v6

    .line 261
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v1

    sub-float/2addr v4, v6

    mul-float v3, v4, v5

    .line 263
    nop

    .line 275
    :goto_0
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 276
    .local v4, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v4, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 277
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 278
    invoke-virtual {v0, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 281
    iget-object v5, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 284
    iget-object v5, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->paint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 285
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addShadow()V
    .locals 2

    .line 116
    iget v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 117
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowRadius:F

    .line 118
    :cond_0
    iget v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowRadius:F

    iget v1, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowColor:I

    invoke-direct {p0, v0, v1}, Lcom/mikhaellopez/circularimageview/CircularImageView;->drawShadow(FI)V

    .line 119
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->invalidate()V

    .line 120
    return-void
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 2

    .line 148
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    .line 149
    .local v0, "currentScaleType":Landroid/widget/ImageView$ScaleType;
    if-eqz v0, :cond_1

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_1
    return-object v1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 167
    invoke-direct {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->loadBitmap()V

    .line 170
    iget-object v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 171
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->canvasSize:I

    .line 180
    :cond_1
    iget v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->canvasSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->borderWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    sub-float/2addr v0, v3

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 181
    .local v0, "circleCenter":I
    iget v3, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowRadius:F

    mul-float v3, v3, v2

    .line 184
    .local v3, "margeWithShadowRadius":F
    int-to-float v2, v0

    add-float/2addr v2, v1

    int-to-float v4, v0

    add-float/2addr v4, v1

    int-to-float v5, v0

    add-float/2addr v5, v1

    sub-float/2addr v5, v3

    iget-object v1, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->paintBorder:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v5, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 186
    int-to-float v1, v0

    iget v2, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->borderWidth:F

    add-float/2addr v1, v2

    int-to-float v4, v0

    add-float/2addr v4, v2

    int-to-float v2, v0

    sub-float/2addr v2, v3

    iget-object v5, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->paintBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 188
    int-to-float v1, v0

    iget v2, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->borderWidth:F

    add-float/2addr v1, v2

    int-to-float v4, v0

    add-float/2addr v4, v2

    int-to-float v2, v0

    sub-float/2addr v2, v3

    iget-object v5, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 189
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 311
    invoke-direct {p0, p1}, Lcom/mikhaellopez/circularimageview/CircularImageView;->measureWidth(I)I

    move-result v0

    .line 312
    .local v0, "width":I
    invoke-direct {p0, p2}, Lcom/mikhaellopez/circularimageview/CircularImageView;->measureHeight(I)I

    move-result v1

    .line 313
    .local v1, "height":I
    invoke-virtual {p0, v0, v1}, Lcom/mikhaellopez/circularimageview/CircularImageView;->setMeasuredDimension(II)V

    .line 314
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 202
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->onSizeChanged(IIII)V

    .line 203
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->canvasSize:I

    .line 204
    iget-object v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->updateShader()V

    .line 206
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "backgroundColor"    # I

    .line 110
    iget-object v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->paintBackground:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->invalidate()V

    .line 113
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1, "borderColor"    # I

    .line 104
    iget-object v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->paintBorder:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->invalidate()V

    .line 107
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 0
    .param p1, "borderWidth"    # F

    .line 98
    iput p1, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->borderWidth:F

    .line 99
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->requestLayout()V

    .line 100
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->invalidate()V

    .line 101
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 139
    iget-object v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->colorFilter:Landroid/graphics/ColorFilter;

    if-ne v0, p1, :cond_0

    .line 140
    return-void

    .line 141
    :cond_0
    iput-object p1, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->colorFilter:Landroid/graphics/ColorFilter;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 143
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->invalidate()V

    .line 144
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 3
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .line 154
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "ScaleType %s not supported. Just ScaleType.CENTER_CROP & ScaleType.CENTER_INSIDE are available for this library."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 160
    return-void
.end method

.method public setShadowColor(I)V
    .locals 1
    .param p1, "shadowColor"    # I

    .line 128
    iget v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowRadius:F

    invoke-direct {p0, v0, p1}, Lcom/mikhaellopez/circularimageview/CircularImageView;->drawShadow(FI)V

    .line 129
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->invalidate()V

    .line 130
    return-void
.end method

.method public setShadowGravity(Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;)V
    .locals 0
    .param p1, "shadowGravity"    # Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    .line 133
    iput-object p1, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowGravity:Lcom/mikhaellopez/circularimageview/CircularImageView$ShadowGravity;

    .line 134
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->invalidate()V

    .line 135
    return-void
.end method

.method public setShadowRadius(F)V
    .locals 1
    .param p1, "shadowRadius"    # F

    .line 123
    iget v0, p0, Lcom/mikhaellopez/circularimageview/CircularImageView;->shadowColor:I

    invoke-direct {p0, p1, v0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->drawShadow(FI)V

    .line 124
    invoke-virtual {p0}, Lcom/mikhaellopez/circularimageview/CircularImageView;->invalidate()V

    .line 125
    return-void
.end method
