.class final Lcom/payu/socketverification/widgets/PayUProgressDialog$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/socketverification/widgets/PayUProgressDialog;->setPayUDialogSettings(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:[Landroid/graphics/drawable/Drawable;

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Lcom/payu/socketverification/widgets/PayUProgressDialog;


# direct methods
.method constructor <init>(Lcom/payu/socketverification/widgets/PayUProgressDialog;[Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/payu/socketverification/widgets/PayUProgressDialog$1;->d:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    iput-object p2, p0, Lcom/payu/socketverification/widgets/PayUProgressDialog$1;->b:[Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/payu/socketverification/widgets/PayUProgressDialog$1;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 98
    const/4 p1, -0x1

    iput p1, p0, Lcom/payu/socketverification/widgets/PayUProgressDialog$1;->a:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized run()V
    .locals 2

    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/payu/socketverification/widgets/PayUProgressDialog$1;->d:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    invoke-static {v0}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->a(Lcom/payu/socketverification/widgets/PayUProgressDialog;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/socketverification/widgets/PayUProgressDialog$1;->d:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    invoke-static {v0}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->a(Lcom/payu/socketverification/widgets/PayUProgressDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/payu/socketverification/widgets/PayUProgressDialog$1;->d:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    invoke-static {v0}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->a(Lcom/payu/socketverification/widgets/PayUProgressDialog;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/payu/socketverification/widgets/PayUProgressDialog$1$1;

    invoke-direct {v1, p0}, Lcom/payu/socketverification/widgets/PayUProgressDialog$1$1;-><init>(Lcom/payu/socketverification/widgets/PayUProgressDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
