.class final Lcom/payu/upisdk/upiintent/c$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/upisdk/upiintent/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/upisdk/upiintent/c;


# direct methods
.method constructor <init>(Lcom/payu/upisdk/upiintent/c;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/payu/upisdk/upiintent/c$1;->a:Lcom/payu/upisdk/upiintent/c;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/c$1;->a:Lcom/payu/upisdk/upiintent/c;

    invoke-static {v0}, Lcom/payu/upisdk/upiintent/c;->a(Lcom/payu/upisdk/upiintent/c;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/upisdk/upiintent/c$1;->a:Lcom/payu/upisdk/upiintent/c;

    invoke-static {v0}, Lcom/payu/upisdk/upiintent/c;->a(Lcom/payu/upisdk/upiintent/c;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/c$1;->a:Lcom/payu/upisdk/upiintent/c;

    invoke-static {v0}, Lcom/payu/upisdk/upiintent/c;->a(Lcom/payu/upisdk/upiintent/c;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/payu/upisdk/upiintent/c$1$1;

    invoke-direct {v1, p0}, Lcom/payu/upisdk/upiintent/c$1$1;-><init>(Lcom/payu/upisdk/upiintent/c$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 256
    :cond_0
    return-void
.end method
