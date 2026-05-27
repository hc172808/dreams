.class public abstract Lcom/payu/socketverification/socket/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/payu/socketverification/widgets/PayUProgressDialog;


# instance fields
.field l:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/payu/socketverification/socket/a;->a:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    .line 50
    sget-object p0, Lcom/payu/socketverification/socket/a;->a:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    invoke-virtual {p0}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->dismiss()V

    .line 52
    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcom/payu/socketverification/socket/a;->a:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    .line 53
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 23
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 24
    sget-object v0, Lcom/payu/socketverification/socket/a;->a:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/payu/socketverification/widgets/PayUProgressDialog;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/payu/socketverification/socket/a;->l:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/payu/socketverification/widgets/PayUProgressDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    sput-object v0, Lcom/payu/socketverification/socket/a;->a:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    .line 26
    :cond_0
    sget-object v0, Lcom/payu/socketverification/socket/a;->a:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->setCancelable(Z)V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Progress Dialog "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/payu/socketverification/socket/a;->a:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PayU"

    invoke-static {v1, v0}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/payu/socketverification/socket/a;->l:Landroid/view/View;

    if-nez v0, :cond_1

    .line 29
    sget-object v0, Lcom/payu/socketverification/socket/a;->a:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->setPayUDialogSettings(Landroid/content/Context;)V

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Progress Dialog showing"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/payu/socketverification/socket/a;->a:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/payu/socketverification/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/payu/socketverification/socket/a;->a:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    invoke-virtual {v0}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 32
    sget-object v0, Lcom/payu/socketverification/socket/a;->a:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    invoke-virtual {v0}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->show()V

    .line 33
    :cond_2
    sget-object v0, Lcom/payu/socketverification/socket/a;->a:Lcom/payu/socketverification/widgets/PayUProgressDialog;

    new-instance v1, Lcom/payu/socketverification/socket/a$1;

    invoke-direct {v1, p0, p1}, Lcom/payu/socketverification/socket/a$1;-><init>(Lcom/payu/socketverification/socket/a;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v1}, Lcom/payu/socketverification/widgets/PayUProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 44
    :cond_3
    return-void
.end method

.method public abstract b()V
.end method
