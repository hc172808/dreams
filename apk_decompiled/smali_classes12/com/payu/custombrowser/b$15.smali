.class Lcom/payu/custombrowser/b$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/b;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/b;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/b;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/payu/custombrowser/b$15;->a:Lcom/payu/custombrowser/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 478
    iget-object v0, p0, Lcom/payu/custombrowser/b$15;->a:Lcom/payu/custombrowser/b;

    invoke-static {v0}, Lcom/payu/custombrowser/b;->c(Lcom/payu/custombrowser/b;)V

    .line 481
    iget-object v0, p0, Lcom/payu/custombrowser/b$15;->a:Lcom/payu/custombrowser/b;

    iget-object v0, v0, Lcom/payu/custombrowser/b;->K:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/payu/custombrowser/b$15;->a:Lcom/payu/custombrowser/b;

    iget-object v0, v0, Lcom/payu/custombrowser/b;->K:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/b$15;->a:Lcom/payu/custombrowser/b;

    iget v0, v0, Lcom/payu/custombrowser/b;->y:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 484
    iget-object v0, p0, Lcom/payu/custombrowser/b$15;->a:Lcom/payu/custombrowser/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/b;->g()V

    .line 486
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
