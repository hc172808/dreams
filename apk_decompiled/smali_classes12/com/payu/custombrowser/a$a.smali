.class public Lcom/payu/custombrowser/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:F

.field b:Z

.field c:I

.field final synthetic d:Lcom/payu/custombrowser/a;


# direct methods
.method public constructor <init>(Lcom/payu/custombrowser/a;)V
    .locals 0

    .line 986
    iput-object p1, p0, Lcom/payu/custombrowser/a$a;->d:Lcom/payu/custombrowser/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 989
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/payu/custombrowser/a$a;->b:Z

    .line 990
    const/4 p1, 0x0

    iput p1, p0, Lcom/payu/custombrowser/a$a;->c:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 994
    iget-object v0, p0, Lcom/payu/custombrowser/a$a;->d:Lcom/payu/custombrowser/a;

    iget-boolean v0, v0, Lcom/payu/custombrowser/a;->p:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 995
    iget-object v0, p0, Lcom/payu/custombrowser/a$a;->d:Lcom/payu/custombrowser/a;

    invoke-virtual {v0}, Lcom/payu/custombrowser/a;->f()V

    .line 996
    iget-boolean v0, p0, Lcom/payu/custombrowser/a$a;->b:Z

    if-nez v0, :cond_0

    .line 997
    return v1

    .line 998
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 999
    iget-object v2, p0, Lcom/payu/custombrowser/a$a;->d:Lcom/payu/custombrowser/a;

    iget-object v2, v2, Lcom/payu/custombrowser/a;->J:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/payu/custombrowser/a$a;->d:Lcom/payu/custombrowser/a;

    iget-object v0, v0, Lcom/payu/custombrowser/a;->J:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1001
    iget-object v0, p0, Lcom/payu/custombrowser/a$a;->d:Lcom/payu/custombrowser/a;

    iget-object v0, v0, Lcom/payu/custombrowser/a;->J:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1003
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/payu/custombrowser/a$a;->c:I

    int-to-float v2, v2

    invoke-direct {v0, v6, v6, v2, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1004
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1005
    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 1006
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1007
    iget-object v0, p0, Lcom/payu/custombrowser/a$a;->d:Lcom/payu/custombrowser/a;

    iget-object v0, v0, Lcom/payu/custombrowser/a;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1008
    iput-boolean v1, p0, Lcom/payu/custombrowser/a$a;->b:Z

    .line 1009
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1010
    new-instance v1, Lcom/payu/custombrowser/a$a$1;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/a$a$1;-><init>(Lcom/payu/custombrowser/a$a;)V

    const-wide/16 v6, 0x14

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1018
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1019
    new-instance v1, Lcom/payu/custombrowser/a$a$2;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/a$a$2;-><init>(Lcom/payu/custombrowser/a$a;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1031
    goto :goto_0

    .line 1033
    :cond_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1082
    :pswitch_0
    goto :goto_0

    .line 1038
    :pswitch_1
    goto :goto_0

    .line 1042
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 1051
    iget v2, p0, Lcom/payu/custombrowser/a$a;->a:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_3

    .line 1052
    iget-object v2, p0, Lcom/payu/custombrowser/a$a;->d:Lcom/payu/custombrowser/a;

    iget-object v2, v2, Lcom/payu/custombrowser/a;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/payu/custombrowser/a$a;->a:F

    sub-float/2addr v0, v2

    cmpl-float v0, v0, v6

    if-lez v0, :cond_3

    .line 1053
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/a$a;->c:I

    .line 1054
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1e

    int-to-float v2, v2

    invoke-direct {v0, v6, v6, v6, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1055
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1056
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 1057
    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 1058
    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setZAdjustment(I)V

    .line 1059
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1060
    iget-object v0, p0, Lcom/payu/custombrowser/a$a;->d:Lcom/payu/custombrowser/a;

    iget-object v0, v0, Lcom/payu/custombrowser/a;->K:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1061
    iget-object v0, p0, Lcom/payu/custombrowser/a$a;->d:Lcom/payu/custombrowser/a;

    iget-object v0, v0, Lcom/payu/custombrowser/a;->K:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1062
    :cond_2
    iput-boolean v1, p0, Lcom/payu/custombrowser/a$a;->b:Z

    .line 1063
    iput-boolean v5, p0, Lcom/payu/custombrowser/a$a;->b:Z

    .line 1064
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1065
    new-instance v1, Lcom/payu/custombrowser/a$a$3;

    invoke-direct {v1, p0}, Lcom/payu/custombrowser/a$a$3;-><init>(Lcom/payu/custombrowser/a$a;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1075
    goto :goto_0

    .line 1035
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/a$a;->a:F

    .line 1036
    nop

    .line 1088
    :cond_3
    :goto_0
    return v5

    .line 1091
    :cond_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
