.class public Lcom/github/aakira/expandablelayout/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final ACCELERATE_DECELERATE_INTERPOLATOR:I = 0x0

.field public static final ACCELERATE_INTERPOLATOR:I = 0x1

.field public static final ANTICIPATE_INTERPOLATOR:I = 0x2

.field public static final ANTICIPATE_OVERSHOOT_INTERPOLATOR:I = 0x3

.field public static final BOUNCE_INTERPOLATOR:I = 0x4

.field public static final DECELERATE_INTERPOLATOR:I = 0x5

.field public static final FAST_OUT_LINEAR_IN_INTERPOLATOR:I = 0x6

.field public static final FAST_OUT_SLOW_IN_INTERPOLATOR:I = 0x7

.field public static final LINEAR_INTERPOLATOR:I = 0x8

.field public static final LINEAR_OUT_SLOW_IN_INTERPOLATOR:I = 0x9

.field public static final OVERSHOOT_INTERPOLATOR:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInterpolator(I)Landroid/animation/TimeInterpolator;
    .locals 1
    .param p0, "interpolatorType"    # I

    .line 38
    packed-switch p0, :pswitch_data_0

    .line 62
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-object v0

    .line 60
    :pswitch_0
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    return-object v0

    .line 58
    :pswitch_1
    new-instance v0, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    return-object v0

    .line 56
    :pswitch_2
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-object v0

    .line 54
    :pswitch_3
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    return-object v0

    .line 52
    :pswitch_4
    new-instance v0, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    return-object v0

    .line 50
    :pswitch_5
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object v0

    .line 48
    :pswitch_6
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    return-object v0

    .line 46
    :pswitch_7
    new-instance v0, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    return-object v0

    .line 44
    :pswitch_8
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    return-object v0

    .line 42
    :pswitch_9
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-object v0

    .line 40
    :pswitch_a
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
