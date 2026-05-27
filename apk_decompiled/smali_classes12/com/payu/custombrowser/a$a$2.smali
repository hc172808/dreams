.class Lcom/payu/custombrowser/a$a$2;
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

    .line 1019
    iput-object p1, p0, Lcom/payu/custombrowser/a$a$2;->a:Lcom/payu/custombrowser/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1022
    iget-object v0, p0, Lcom/payu/custombrowser/a$a$2;->a:Lcom/payu/custombrowser/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/payu/custombrowser/a$a;->b:Z

    .line 1023
    iget-object v0, p0, Lcom/payu/custombrowser/a$a$2;->a:Lcom/payu/custombrowser/a$a;

    iget-object v0, v0, Lcom/payu/custombrowser/a$a;->d:Lcom/payu/custombrowser/a;

    const/4 v1, 0x2

    iput v1, v0, Lcom/payu/custombrowser/a;->y:I

    .line 1024
    iget-object v0, p0, Lcom/payu/custombrowser/a$a$2;->a:Lcom/payu/custombrowser/a$a;

    iget-object v0, v0, Lcom/payu/custombrowser/a$a;->d:Lcom/payu/custombrowser/a;

    iget-object v0, v0, Lcom/payu/custombrowser/a;->K:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/payu/custombrowser/a$a$2;->a:Lcom/payu/custombrowser/a$a;

    iget-object v0, v0, Lcom/payu/custombrowser/a$a;->d:Lcom/payu/custombrowser/a;

    iget-object v0, v0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/a$a$2;->a:Lcom/payu/custombrowser/a$a;

    iget-object v0, v0, Lcom/payu/custombrowser/a$a;->d:Lcom/payu/custombrowser/a;

    iget-object v0, v0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/payu/custombrowser/a$a$2;->a:Lcom/payu/custombrowser/a$a;

    iget-object v0, v0, Lcom/payu/custombrowser/a$a;->d:Lcom/payu/custombrowser/a;

    iget-object v1, p0, Lcom/payu/custombrowser/a$a$2;->a:Lcom/payu/custombrowser/a$a;

    iget-object v1, v1, Lcom/payu/custombrowser/a$a;->d:Lcom/payu/custombrowser/a;

    iget-object v1, v1, Lcom/payu/custombrowser/a;->K:Landroid/view/View;

    iget-object v2, p0, Lcom/payu/custombrowser/a$a$2;->a:Lcom/payu/custombrowser/a$a;

    iget-object v2, v2, Lcom/payu/custombrowser/a$a;->d:Lcom/payu/custombrowser/a;

    iget-object v2, v2, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/a;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 1028
    :cond_0
    return-void
.end method
