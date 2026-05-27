.class final Lcom/payu/socketverification/socket/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/socketverification/socket/b;->a(I)Lio/socket/emitter/Emitter$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/payu/socketverification/socket/b;


# direct methods
.method constructor <init>(Lcom/payu/socketverification/socket/b;I)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/payu/socketverification/socket/b$3;->b:Lcom/payu/socketverification/socket/b;

    iput p2, p0, Lcom/payu/socketverification/socket/b$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs call([Ljava/lang/Object;)V
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .line 285
    invoke-static {}, Lcom/payu/socketverification/socket/b;->c()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/payu/socketverification/socket/b;->c()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    invoke-static {}, Lcom/payu/socketverification/socket/b;->c()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/payu/socketverification/socket/b$3$1;

    .end local p0    # "this":Lcom/payu/socketverification/socket/b$3;
    .end local p1    # "args":[Ljava/lang/Object;
    invoke-direct {v1, p0, p1}, Lcom/payu/socketverification/socket/b$3$1;-><init>(Lcom/payu/socketverification/socket/b$3;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 369
    :cond_0
    return-void
.end method
