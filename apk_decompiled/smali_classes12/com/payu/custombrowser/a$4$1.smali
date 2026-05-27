.class Lcom/payu/custombrowser/a$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/a$4;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/a$4;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/a$4;)V
    .locals 0

    .line 897
    iput-object p1, p0, Lcom/payu/custombrowser/a$4$1;->a:Lcom/payu/custombrowser/a$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/payu/custombrowser/a$4$1;->a:Lcom/payu/custombrowser/a$4;

    iget-object v0, v0, Lcom/payu/custombrowser/a$4;->a:Lcom/payu/custombrowser/a;

    iget-object v0, v0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/a$4$1;->a:Lcom/payu/custombrowser/a$4;

    iget-object v0, v0, Lcom/payu/custombrowser/a$4;->a:Lcom/payu/custombrowser/a;

    iget-object v0, v0, Lcom/payu/custombrowser/a;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/a$4$1;->a:Lcom/payu/custombrowser/a$4;

    iget-object v0, v0, Lcom/payu/custombrowser/a$4;->a:Lcom/payu/custombrowser/a;

    invoke-virtual {v0}, Lcom/payu/custombrowser/a;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/payu/custombrowser/a$4$1;->a:Lcom/payu/custombrowser/a$4;

    iget-object v0, v0, Lcom/payu/custombrowser/a$4;->a:Lcom/payu/custombrowser/a;

    invoke-virtual {v0}, Lcom/payu/custombrowser/a;->l()V

    .line 905
    :cond_0
    return-void
.end method
