.class public abstract Lcom/facebook/FacebookButtonBase;
.super Landroid/widget/Button;
.source "FacebookButtonBase.java"


# instance fields
.field private analyticsButtonCreatedEventName:Ljava/lang/String;

.field private analyticsButtonTappedEventName:Ljava/lang/String;

.field private externalOnClickListener:Landroid/view/View$OnClickListener;

.field private internalOnClickListener:Landroid/view/View$OnClickListener;

.field private overrideCompoundPadding:Z

.field private overrideCompoundPaddingLeft:I

.field private overrideCompoundPaddingRight:I

.field private parentFragment:Lcom/facebook/internal/FragmentWrapper;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "analyticsButtonCreatedEventName"    # Ljava/lang/String;
    .param p6, "analyticsButtonTappedEventName"    # Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    if-nez p4, :cond_0

    invoke-virtual {p0}, Lcom/facebook/FacebookButtonBase;->getDefaultStyleResource()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p4

    :goto_0
    move p4, v0

    .line 63
    if-nez p4, :cond_1

    sget v0, Lcom/facebook/common/R$style;->com_facebook_button:I

    goto :goto_1

    :cond_1
    move v0, p4

    :goto_1
    move p4, v0

    .line 64
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    iput-object p5, p0, Lcom/facebook/FacebookButtonBase;->analyticsButtonCreatedEventName:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Lcom/facebook/FacebookButtonBase;->analyticsButtonTappedEventName:Ljava/lang/String;

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/FacebookButtonBase;->setClickable(Z)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/facebook/FacebookButtonBase;->setFocusable(Z)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/FacebookButtonBase;Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/facebook/FacebookButtonBase;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 44
    .local p0, "x0":Lcom/facebook/FacebookButtonBase;
    .local p1, "x1":Landroid/content/Context;
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/FacebookButtonBase;->logButtonTapped(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .end local p0    # "x0":Lcom/facebook/FacebookButtonBase;
    .end local p1    # "x1":Landroid/content/Context;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;
    .locals 3

    const-class v0, Lcom/facebook/FacebookButtonBase;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 44
    .local p0, "x0":Lcom/facebook/FacebookButtonBase;
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->internalOnClickListener:Landroid/view/View$OnClickListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local p0    # "x0":Lcom/facebook/FacebookButtonBase;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static synthetic access$200(Lcom/facebook/FacebookButtonBase;)Landroid/view/View$OnClickListener;
    .locals 3

    const-class v0, Lcom/facebook/FacebookButtonBase;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 44
    .local p0, "x0":Lcom/facebook/FacebookButtonBase;
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/FacebookButtonBase;->externalOnClickListener:Landroid/view/View$OnClickListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local p0    # "x0":Lcom/facebook/FacebookButtonBase;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private logButtonCreated(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 220
    .local v0, "this":Lcom/facebook/FacebookButtonBase;
    .local p1, "context":Landroid/content/Context;
    :try_start_0
    new-instance v1, Lcom/facebook/appevents/InternalAppEventsLogger;

    invoke-direct {v1, p1}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Landroid/content/Context;)V

    .line 221
    .local v1, "logger":Lcom/facebook/appevents/InternalAppEventsLogger;
    iget-object v2, v0, Lcom/facebook/FacebookButtonBase;->analyticsButtonCreatedEventName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEventImplicitly(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    return-void

    .end local v0    # "this":Lcom/facebook/FacebookButtonBase;
    .end local v1    # "logger":Lcom/facebook/appevents/InternalAppEventsLogger;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private logButtonTapped(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 225
    .local v0, "this":Lcom/facebook/FacebookButtonBase;
    .local p1, "context":Landroid/content/Context;
    :try_start_0
    new-instance v1, Lcom/facebook/appevents/InternalAppEventsLogger;

    invoke-direct {v1, p1}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Landroid/content/Context;)V

    .line 226
    .local v1, "logger":Lcom/facebook/appevents/InternalAppEventsLogger;
    iget-object v2, v0, Lcom/facebook/FacebookButtonBase;->analyticsButtonTappedEventName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEventImplicitly(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    return-void

    .end local v0    # "this":Lcom/facebook/FacebookButtonBase;
    .end local v1    # "logger":Lcom/facebook/appevents/InternalAppEventsLogger;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private parseBackgroundAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 235
    .local v0, "this":Lcom/facebook/FacebookButtonBase;
    .local p1, "context":Landroid/content/Context;
    .local p2, "attrs":Landroid/util/AttributeSet;
    .local p3, "defStyleAttr":I
    .local p4, "defStyleRes":I
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/FacebookButtonBase;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    return-void

    .line 239
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100d4

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 242
    .local v1, "attrsResources":[I
    nop

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 245
    .local v2, "a":Landroid/content/res/TypedArray;
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_3

    .line 246
    :try_start_2
    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 247
    .local v4, "backgroundResource":I
    if-eqz v4, :cond_2

    .line 248
    invoke-virtual {v0, v4}, Lcom/facebook/FacebookButtonBase;->setBackgroundResource(I)V

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/facebook/FacebookButtonBase;->setBackgroundColor(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    .end local v4    # "backgroundResource":I
    :goto_0
    goto :goto_1

    .line 257
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 254
    :cond_3
    :try_start_3
    sget v3, Lcom/facebook/common/R$color;->com_facebook_blue:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/facebook/FacebookButtonBase;->setBackgroundColor(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 257
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 258
    nop

    .line 259
    return-void

    .line 257
    .end local v0    # "this":Lcom/facebook/FacebookButtonBase;
    :catchall_1
    move-exception v3

    :goto_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 258
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 259
    .end local v1    # "attrsResources":[I
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    :catchall_2
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private parseCompoundDrawableAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 267
    .local v0, "this":Lcom/facebook/FacebookButtonBase;
    .local p1, "context":Landroid/content/Context;
    .local p2, "attrs":Landroid/util/AttributeSet;
    .local p3, "defStyleAttr":I
    .local p4, "defStyleRes":I
    const/4 v1, 0x5

    :try_start_0
    new-array v1, v1, [I

    const v2, 0x101016f

    const/4 v3, 0x0

    aput v2, v1, v3

    const v2, 0x101016d

    const/4 v4, 0x1

    aput v2, v1, v4

    const v2, 0x1010170

    const/4 v5, 0x2

    aput v2, v1, v5

    const v2, 0x101016e

    const/4 v6, 0x3

    aput v2, v1, v6

    const v2, 0x1010171

    const/4 v7, 0x4

    aput v2, v1, v7

    .line 274
    .local v1, "attrsResources":[I
    nop

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 277
    .local v2, "a":Landroid/content/res/TypedArray;
    nop

    .line 278
    :try_start_1
    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 279
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 280
    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 281
    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 277
    invoke-virtual {v0, v8, v4, v5, v6}, Lcom/facebook/FacebookButtonBase;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 282
    invoke-virtual {v2, v7, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/facebook/FacebookButtonBase;->setCompoundDrawablePadding(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :try_start_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 286
    nop

    .line 287
    return-void

    .line 285
    .end local v0    # "this":Lcom/facebook/FacebookButtonBase;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 286
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 287
    .end local v1    # "attrsResources":[I
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    :catchall_1
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private parseContentAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 295
    .local v0, "this":Lcom/facebook/FacebookButtonBase;
    .local p1, "context":Landroid/content/Context;
    .local p2, "attrs":Landroid/util/AttributeSet;
    .local p3, "defStyleAttr":I
    .local p4, "defStyleRes":I
    const/4 v1, 0x4

    :try_start_0
    new-array v1, v1, [I

    const v2, 0x10100d6

    const/4 v3, 0x0

    aput v2, v1, v3

    const v2, 0x10100d7

    const/4 v4, 0x1

    aput v2, v1, v4

    const v2, 0x10100d8

    const/4 v5, 0x2

    aput v2, v1, v5

    const v2, 0x10100d9

    const/4 v6, 0x3

    aput v2, v1, v6

    .line 301
    .local v1, "attrsResources":[I
    nop

    .line 302
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 304
    .local v2, "a":Landroid/content/res/TypedArray;
    nop

    .line 305
    :try_start_1
    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 306
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 307
    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 308
    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 304
    invoke-virtual {v0, v7, v4, v5, v3}, Lcom/facebook/FacebookButtonBase;->setPadding(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    :try_start_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 311
    nop

    .line 312
    return-void

    .line 310
    .end local v0    # "this":Lcom/facebook/FacebookButtonBase;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 311
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 312
    .end local v1    # "attrsResources":[I
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    :catchall_1
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private parseTextAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 320
    .local v0, "this":Lcom/facebook/FacebookButtonBase;
    .local p1, "context":Landroid/content/Context;
    .local p2, "attrs":Landroid/util/AttributeSet;
    .local p3, "defStyleAttr":I
    .local p4, "defStyleRes":I
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [I

    const v3, 0x1010098

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 323
    .local v2, "colorResources":[I
    nop

    .line 324
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, p2, v2, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 326
    .local v3, "colorAttrs":Landroid/content/res/TypedArray;
    :try_start_1
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/facebook/FacebookButtonBase;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 328
    :try_start_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 329
    nop

    .line 330
    new-array v5, v1, [I

    const v6, 0x10100af

    aput v6, v5, v4

    .line 333
    .local v5, "gravityResources":[I
    nop

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    .line 336
    invoke-virtual {v6, p2, v5, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 338
    .local v6, "gravityAttrs":Landroid/content/res/TypedArray;
    const/16 v7, 0x11

    :try_start_3
    invoke-virtual {v6, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/facebook/FacebookButtonBase;->setGravity(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 340
    :try_start_4
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 341
    nop

    .line 342
    const/4 v7, 0x3

    new-array v7, v7, [I

    const v8, 0x1010095

    aput v8, v7, v4

    const v8, 0x1010097

    aput v8, v7, v1

    const v8, 0x101014f

    const/4 v9, 0x2

    aput v8, v7, v9

    .line 345
    .local v7, "attrsResources":[I
    nop

    .line 346
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, p2, v7, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 348
    .local v8, "a":Landroid/content/res/TypedArray;
    :try_start_5
    invoke-virtual {v8, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0, v4, v10}, Lcom/facebook/FacebookButtonBase;->setTextSize(IF)V

    .line 349
    invoke-virtual {v8, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/FacebookButtonBase;->setTypeface(Landroid/graphics/Typeface;)V

    .line 350
    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/FacebookButtonBase;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 352
    :try_start_6
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 353
    nop

    .line 354
    return-void

    .line 352
    .end local v0    # "this":Lcom/facebook/FacebookButtonBase;
    :catchall_0
    move-exception v1

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 353
    throw v1

    .line 340
    .end local v7    # "attrsResources":[I
    .end local v8    # "a":Landroid/content/res/TypedArray;
    :catchall_1
    move-exception v1

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 341
    throw v1

    .line 328
    .end local v5    # "gravityResources":[I
    .end local v6    # "gravityAttrs":Landroid/content/res/TypedArray;
    :catchall_2
    move-exception v1

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 329
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 354
    .end local v2    # "colorResources":[I
    .end local v3    # "colorAttrs":Landroid/content/res/TypedArray;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    :catchall_3
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private setupOnClickListener()V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 359
    .local v0, "this":Lcom/facebook/FacebookButtonBase;
    :try_start_0
    new-instance v1, Lcom/facebook/FacebookButtonBase$1;

    invoke-direct {v1, v0}, Lcom/facebook/FacebookButtonBase$1;-><init>(Lcom/facebook/FacebookButtonBase;)V

    invoke-super {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    return-void

    .end local v0    # "this":Lcom/facebook/FacebookButtonBase;
    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected callExternalOnClickListener(Landroid/view/View;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 210
    .local v0, "this":Lcom/facebook/FacebookButtonBase;
    .local p1, "v":Landroid/view/View;
    :try_start_0
    iget-object v1, v0, Lcom/facebook/FacebookButtonBase;->externalOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_1

    .line 211
    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .end local v0    # "this":Lcom/facebook/FacebookButtonBase;
    :cond_1
    return-void

    .end local p1    # "v":Landroid/view/View;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method protected configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 202
    .local v0, "this":Lcom/facebook/FacebookButtonBase;
    .local p1, "context":Landroid/content/Context;
    .local p2, "attrs":Landroid/util/AttributeSet;
    .local p3, "defStyleAttr":I
    .local p4, "defStyleRes":I
    :try_start_0
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->parseBackgroundAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 203
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->parseCompoundDrawableAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 204
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->parseContentAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 205
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->parseTextAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 206
    invoke-direct {v0}, Lcom/facebook/FacebookButtonBase;->setupOnClickListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    return-void

    .end local v0    # "this":Lcom/facebook/FacebookButtonBase;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 5

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    move-object v0, p0

    .line 178
    .local v0, "this":Lcom/facebook/FacebookButtonBase;
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/FacebookButtonBase;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 179
    .local v2, "context":Landroid/content/Context;
    :goto_0
    instance-of v3, v2, Landroid/app/Activity;

    if-nez v3, :cond_1

    instance-of v3, v2, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    .line 180
    move-object v3, v2

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 183
    .end local v0    # "this":Lcom/facebook/FacebookButtonBase;
    :cond_1
    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 184
    move-object v3, v2

    check-cast v3, Landroid/app/Activity;

    return-object v3

    .line 186
    :cond_2
    new-instance v3, Lcom/facebook/FacebookException;

    const-string v4, "Unable to get Activity."

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v2

    invoke-static {v2, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move-object v0, p0

    .line 165
    .local v0, "this":Lcom/facebook/FacebookButtonBase;
    :try_start_0
    iget-boolean v2, v0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPadding:Z

    if-eqz v2, :cond_1

    iget v1, v0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPaddingLeft:I

    goto :goto_0

    .line 167
    .end local v0    # "this":Lcom/facebook/FacebookButtonBase;
    :cond_1
    invoke-super {v0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :goto_0
    return v1

    :catchall_0
    move-exception v2

    invoke-static {v2, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move-object v0, p0

    .line 172
    .local v0, "this":Lcom/facebook/FacebookButtonBase;
    :try_start_0
    iget-boolean v2, v0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPadding:Z

    if-eqz v2, :cond_1

    iget v1, v0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPaddingRight:I

    goto :goto_0

    .line 174
    .end local v0    # "this":Lcom/facebook/FacebookButtonBase;
    :cond_1
    invoke-super {v0}, Landroid/widget/Button;->getCompoundPaddingRight()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :goto_0
    return v1

    :catchall_0
    move-exception v2

    invoke-static {v2, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method protected abstract getDefaultRequestCode()I
.end method

.method protected getDefaultStyleResource()I
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move-object v0, p0

    .line 190
    .local v0, "this":Lcom/facebook/FacebookButtonBase;
    return v1
.end method

.method public getFragment()Landroidx/fragment/app/Fragment;
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    move-object v0, p0

    .line 101
    .local v0, "this":Lcom/facebook/FacebookButtonBase;
    :try_start_0
    iget-object v2, v0, Lcom/facebook/FacebookButtonBase;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/facebook/internal/FragmentWrapper;->getSupportFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/FacebookButtonBase;
    :cond_1
    return-object v1

    :catchall_0
    move-exception v2

    invoke-static {v2, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public getNativeFragment()Landroid/app/Fragment;
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    move-object v0, p0

    .line 110
    .local v0, "this":Lcom/facebook/FacebookButtonBase;
    :try_start_0
    iget-object v2, v0, Lcom/facebook/FacebookButtonBase;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/facebook/internal/FragmentWrapper;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/FacebookButtonBase;
    :cond_1
    return-object v1

    :catchall_0
    move-exception v2

    invoke-static {v2, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public getRequestCode()I
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move-object v0, p0

    .line 124
    .local v0, "this":Lcom/facebook/FacebookButtonBase;
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/FacebookButtonBase;->getDefaultRequestCode()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .end local v0    # "this":Lcom/facebook/FacebookButtonBase;
    :catchall_0
    move-exception v2

    invoke-static {v2, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method protected measureTextWidth(Ljava/lang/String;)I
    .locals 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move-object v0, p0

    .line 194
    .local v0, "this":Lcom/facebook/FacebookButtonBase;
    .local p1, "text":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/FacebookButtonBase;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    double-to-int v1, v1

    return v1

    .end local v0    # "this":Lcom/facebook/FacebookButtonBase;
    .end local p1    # "text":Ljava/lang/String;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 129
    .local v0, "this":Lcom/facebook/FacebookButtonBase;
    :try_start_0
    invoke-super {v0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 130
    invoke-virtual {v0}, Lcom/facebook/FacebookButtonBase;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    invoke-virtual {v0}, Lcom/facebook/FacebookButtonBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/FacebookButtonBase;->logButtonCreated(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .end local v0    # "this":Lcom/facebook/FacebookButtonBase;
    :cond_1
    return-void

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 137
    .local v0, "this":Lcom/facebook/FacebookButtonBase;
    .local p1, "canvas":Landroid/graphics/Canvas;
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/FacebookButtonBase;->getGravity()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 138
    .local v1, "centered":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 146
    invoke-virtual {v0}, Lcom/facebook/FacebookButtonBase;->getCompoundPaddingLeft()I

    move-result v4

    .line 147
    .local v4, "compoundPaddingLeft":I
    invoke-virtual {v0}, Lcom/facebook/FacebookButtonBase;->getCompoundPaddingRight()I

    move-result v5

    .line 148
    .local v5, "compoundPaddingRight":I
    invoke-virtual {v0}, Lcom/facebook/FacebookButtonBase;->getCompoundDrawablePadding()I

    move-result v6

    .line 149
    .local v6, "compoundDrawablePadding":I
    add-int v7, v4, v6

    .line 150
    .local v7, "textX":I
    invoke-virtual {v0}, Lcom/facebook/FacebookButtonBase;->getWidth()I

    move-result v8

    sub-int/2addr v8, v7

    sub-int/2addr v8, v5

    .line 151
    .local v8, "textContentWidth":I
    invoke-virtual {v0}, Lcom/facebook/FacebookButtonBase;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/facebook/FacebookButtonBase;->measureTextWidth(Ljava/lang/String;)I

    move-result v9

    .line 152
    .local v9, "textWidth":I
    sub-int v10, v8, v9

    div-int/lit8 v10, v10, 0x2

    .line 153
    .local v10, "textPaddingWidth":I
    invoke-virtual {v0}, Lcom/facebook/FacebookButtonBase;->getPaddingLeft()I

    move-result v11

    sub-int v11, v4, v11

    div-int/lit8 v11, v11, 0x2

    .line 154
    .local v11, "imagePaddingWidth":I
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 155
    .local v12, "inset":I
    sub-int v13, v4, v12

    iput v13, v0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPaddingLeft:I

    .line 156
    add-int v13, v5, v12

    iput v13, v0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPaddingRight:I

    .line 157
    iput-boolean v2, v0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPadding:Z

    .line 159
    .end local v0    # "this":Lcom/facebook/FacebookButtonBase;
    .end local v4    # "compoundPaddingLeft":I
    .end local v5    # "compoundPaddingRight":I
    .end local v6    # "compoundDrawablePadding":I
    .end local v7    # "textX":I
    .end local v8    # "textContentWidth":I
    .end local v9    # "textWidth":I
    .end local v10    # "textPaddingWidth":I
    .end local v11    # "imagePaddingWidth":I
    .end local v12    # "inset":I
    :cond_2
    invoke-super {v0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 160
    iput-boolean v3, v0, Lcom/facebook/FacebookButtonBase;->overrideCompoundPadding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    return-void

    .end local v1    # "centered":Z
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 92
    .local v0, "this":Lcom/facebook/FacebookButtonBase;
    .local p1, "fragment":Landroid/app/Fragment;
    :try_start_0
    new-instance v1, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v1, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    iput-object v1, v0, Lcom/facebook/FacebookButtonBase;->parentFragment:Lcom/facebook/internal/FragmentWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    return-void

    .end local v0    # "this":Lcom/facebook/FacebookButtonBase;
    .end local p1    # "fragment":Landroid/app/Fragment;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 81
    .local v0, "this":Lcom/facebook/FacebookButtonBase;
    .local p1, "fragment":Landroidx/fragment/app/Fragment;
    :try_start_0
    new-instance v1, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v1, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v1, v0, Lcom/facebook/FacebookButtonBase;->parentFragment:Lcom/facebook/internal/FragmentWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    return-void

    .end local v0    # "this":Lcom/facebook/FacebookButtonBase;
    .end local p1    # "fragment":Landroidx/fragment/app/Fragment;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method protected setInternalOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 216
    .local v0, "this":Lcom/facebook/FacebookButtonBase;
    .local p1, "l":Landroid/view/View$OnClickListener;
    :try_start_0
    iput-object p1, v0, Lcom/facebook/FacebookButtonBase;->internalOnClickListener:Landroid/view/View$OnClickListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    return-void

    .end local v0    # "this":Lcom/facebook/FacebookButtonBase;
    .end local p1    # "l":Landroid/view/View$OnClickListener;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 115
    .local v0, "this":Lcom/facebook/FacebookButtonBase;
    .local p1, "l":Landroid/view/View$OnClickListener;
    :try_start_0
    iput-object p1, v0, Lcom/facebook/FacebookButtonBase;->externalOnClickListener:Landroid/view/View$OnClickListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    return-void

    .end local v0    # "this":Lcom/facebook/FacebookButtonBase;
    .end local p1    # "l":Landroid/view/View$OnClickListener;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
