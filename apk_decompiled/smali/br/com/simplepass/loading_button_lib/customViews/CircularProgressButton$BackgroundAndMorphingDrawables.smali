.class Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$BackgroundAndMorphingDrawables;
.super Ljava/lang/Object;
.source "CircularProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BackgroundAndMorphingDrawables"
.end annotation


# instance fields
.field backGroundDrawable:Landroid/graphics/drawable/Drawable;

.field morphingDrawable:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method setBothDrawables(Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/GradientDrawable;

    .line 612
    iput-object p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$BackgroundAndMorphingDrawables;->backGroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 613
    iput-object p1, p0, Lbr/com/simplepass/loading_button_lib/customViews/CircularProgressButton$BackgroundAndMorphingDrawables;->morphingDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 614
    return-void
.end method
