.class Lcom/payu/custombrowser/custombar/DotsProgressBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/custombar/DotsProgressBar;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/custombar/DotsProgressBar;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/custombar/DotsProgressBar;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->a:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->a:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    invoke-static {v0}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->a(Lcom/payu/custombrowser/custombar/DotsProgressBar;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->a(Lcom/payu/custombrowser/custombar/DotsProgressBar;I)I

    .line 111
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->a:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    invoke-static {v0}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->b(Lcom/payu/custombrowser/custombar/DotsProgressBar;)I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->a:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    invoke-static {v0, v1}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->b(Lcom/payu/custombrowser/custombar/DotsProgressBar;I)I

    .line 113
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->a:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    invoke-static {v0, v1}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->c(Lcom/payu/custombrowser/custombar/DotsProgressBar;I)I

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->a:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    invoke-static {v0}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->b(Lcom/payu/custombrowser/custombar/DotsProgressBar;)I

    move-result v0

    iget-object v2, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->a:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    invoke-static {v2}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->c(Lcom/payu/custombrowser/custombar/DotsProgressBar;)I

    move-result v2

    sub-int/2addr v2, v1

    if-le v0, v2, :cond_1

    .line 116
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->a:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->b(Lcom/payu/custombrowser/custombar/DotsProgressBar;I)I

    .line 117
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->a:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    invoke-static {v0, v1}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->c(Lcom/payu/custombrowser/custombar/DotsProgressBar;I)I

    .line 120
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->a:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    invoke-static {v0}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->d(Lcom/payu/custombrowser/custombar/DotsProgressBar;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->a:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    invoke-virtual {v0}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->invalidate()V

    .line 122
    iget-object v0, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->a:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    invoke-static {v0}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->f(Lcom/payu/custombrowser/custombar/DotsProgressBar;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/custombrowser/custombar/DotsProgressBar$1;->a:Lcom/payu/custombrowser/custombar/DotsProgressBar;

    invoke-static {v1}, Lcom/payu/custombrowser/custombar/DotsProgressBar;->e(Lcom/payu/custombrowser/custombar/DotsProgressBar;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    :cond_2
    return-void
.end method
