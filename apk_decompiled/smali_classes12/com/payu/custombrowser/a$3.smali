.class Lcom/payu/custombrowser/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/a;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/a;)V
    .locals 0

    .line 704
    iput-object p1, p0, Lcom/payu/custombrowser/a$3;->a:Lcom/payu/custombrowser/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 707
    iget-object v0, p0, Lcom/payu/custombrowser/a$3;->a:Lcom/payu/custombrowser/a;

    const/16 v1, 0x8

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/a;->a(ILjava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/payu/custombrowser/a$3;->a:Lcom/payu/custombrowser/a;

    iget-object v0, v0, Lcom/payu/custombrowser/a;->x:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/payu/custombrowser/a$3;->a:Lcom/payu/custombrowser/a;

    iget-object v0, v0, Lcom/payu/custombrowser/a;->x:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 712
    :cond_0
    return-void
.end method
