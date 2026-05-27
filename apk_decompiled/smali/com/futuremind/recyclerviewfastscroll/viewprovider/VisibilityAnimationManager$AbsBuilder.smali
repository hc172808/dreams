.class public abstract Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;
.super Ljava/lang/Object;
.source "VisibilityAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbsBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected hideAnimatorResource:I

.field protected hideDelay:I

.field protected pivotX:F

.field protected pivotY:F

.field protected showAnimatorResource:I

.field protected final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 85
    .local p0, "this":Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;, "Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget v0, Lcom/futuremind/recyclerviewfastscroll/R$animator;->fastscroll__default_show:I

    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;->showAnimatorResource:I

    .line 80
    sget v0, Lcom/futuremind/recyclerviewfastscroll/R$animator;->fastscroll__default_hide:I

    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;->hideAnimatorResource:I

    .line 81
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;->hideDelay:I

    .line 82
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;->pivotX:F

    .line 83
    iput v0, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;->pivotY:F

    .line 86
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;->view:Landroid/view/View;

    .line 87
    return-void
.end method


# virtual methods
.method public abstract build()Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public withHideAnimator(I)Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;
    .locals 0
    .param p1, "hideAnimatorResource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;, "Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder<TT;>;"
    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;->hideAnimatorResource:I

    .line 96
    return-object p0
.end method

.method public withHideDelay(I)Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;
    .locals 0
    .param p1, "hideDelay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;, "Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder<TT;>;"
    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;->hideDelay:I

    .line 101
    return-object p0
.end method

.method public withPivotX(F)Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;
    .locals 0
    .param p1, "pivotX"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;, "Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder<TT;>;"
    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;->pivotX:F

    .line 106
    return-object p0
.end method

.method public withPivotY(F)Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;
    .locals 0
    .param p1, "pivotY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;, "Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder<TT;>;"
    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;->pivotY:F

    .line 111
    return-object p0
.end method

.method public withShowAnimator(I)Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;
    .locals 0
    .param p1, "showAnimatorResource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;, "Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder<TT;>;"
    iput p1, p0, Lcom/futuremind/recyclerviewfastscroll/viewprovider/VisibilityAnimationManager$AbsBuilder;->showAnimatorResource:I

    .line 91
    return-object p0
.end method
