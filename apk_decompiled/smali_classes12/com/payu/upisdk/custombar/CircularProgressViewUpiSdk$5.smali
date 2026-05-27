.class final Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;


# direct methods
.method constructor <init>(Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$5;->b:Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 354
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$5;->a:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 358
    nop

    .end local p0    # "this":Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$5;
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$5;->a:Z

    .line 359
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 363
    iget-boolean p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$5;->a:Z

    if-nez p1, :cond_0

    .line 364
    nop

    .end local p0    # "this":Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$5;
    iget-object p1, p0, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk$5;->b:Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;

    invoke-static {p1}, Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;->a(Lcom/payu/upisdk/custombar/CircularProgressViewUpiSdk;)V

    .line 365
    :cond_0
    return-void
.end method
