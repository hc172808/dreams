.class Lcom/payu/custombrowser/a$a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/a$a;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/a$a;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/a$a;)V
    .locals 0

    .line 1065
    iput-object p1, p0, Lcom/payu/custombrowser/a$a$3;->a:Lcom/payu/custombrowser/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1068
    iget-object v0, p0, Lcom/payu/custombrowser/a$a$3;->a:Lcom/payu/custombrowser/a$a;

    iget-object v0, v0, Lcom/payu/custombrowser/a$a;->d:Lcom/payu/custombrowser/a;

    iget-object v0, v0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/a$a$3;->a:Lcom/payu/custombrowser/a$a;

    iget-object v0, v0, Lcom/payu/custombrowser/a$a;->d:Lcom/payu/custombrowser/a;

    iget-object v0, v0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/payu/custombrowser/a$a$3;->a:Lcom/payu/custombrowser/a$a;

    iget-object v0, v0, Lcom/payu/custombrowser/a$a;->d:Lcom/payu/custombrowser/a;

    const/4 v1, 0x1

    iput v1, v0, Lcom/payu/custombrowser/a;->y:I

    .line 1070
    iget-object v0, p0, Lcom/payu/custombrowser/a$a$3;->a:Lcom/payu/custombrowser/a$a;

    iget-object v0, v0, Lcom/payu/custombrowser/a$a;->d:Lcom/payu/custombrowser/a;

    iget-object v0, v0, Lcom/payu/custombrowser/a;->I:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1071
    iget-object v0, p0, Lcom/payu/custombrowser/a$a$3;->a:Lcom/payu/custombrowser/a$a;

    iget-object v0, v0, Lcom/payu/custombrowser/a$a;->d:Lcom/payu/custombrowser/a;

    iget-object v0, v0, Lcom/payu/custombrowser/a;->J:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1073
    :cond_0
    return-void
.end method
