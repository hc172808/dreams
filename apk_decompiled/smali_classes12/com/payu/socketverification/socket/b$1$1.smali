.class final Lcom/payu/socketverification/socket/b$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/socketverification/socket/b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/socketverification/socket/b$1;


# direct methods
.method constructor <init>(Lcom/payu/socketverification/socket/b$1;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/payu/socketverification/socket/b$1$1;->a:Lcom/payu/socketverification/socket/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 183
    iget-object v0, p0, Lcom/payu/socketverification/socket/b$1$1;->a:Lcom/payu/socketverification/socket/b$1;

    iget-object v0, v0, Lcom/payu/socketverification/socket/b$1;->a:Lcom/payu/socketverification/socket/b;

    invoke-static {v0}, Lcom/payu/socketverification/socket/b;->a(Lcom/payu/socketverification/socket/b;)Lio/socket/client/Socket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/payu/socketverification/socket/b$1$1;->a:Lcom/payu/socketverification/socket/b$1;

    iget-object v0, v0, Lcom/payu/socketverification/socket/b$1;->a:Lcom/payu/socketverification/socket/b;

    invoke-static {v0}, Lcom/payu/socketverification/socket/b;->a(Lcom/payu/socketverification/socket/b;)Lio/socket/client/Socket;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/payu/socketverification/socket/b$1$1;->a:Lcom/payu/socketverification/socket/b$1;

    iget-object v3, v3, Lcom/payu/socketverification/socket/b$1;->a:Lcom/payu/socketverification/socket/b;

    invoke-static {v3}, Lcom/payu/socketverification/socket/b;->b(Lcom/payu/socketverification/socket/b;)Lcom/payu/socketverification/socket/SocketPaymentResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payu/socketverification/socket/SocketPaymentResponse;->getReferenceId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "upi-verification"

    invoke-virtual {v0, v2, v1}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/payu/socketverification/socket/b$1$1;->a:Lcom/payu/socketverification/socket/b$1;

    iget-object v0, v0, Lcom/payu/socketverification/socket/b$1;->a:Lcom/payu/socketverification/socket/b;

    invoke-static {v0}, Lcom/payu/socketverification/socket/b;->c(Lcom/payu/socketverification/socket/b;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payu/socketverification/socket/b$1$1;->a:Lcom/payu/socketverification/socket/b$1;

    iget-object v0, v0, Lcom/payu/socketverification/socket/b$1;->a:Lcom/payu/socketverification/socket/b;

    invoke-static {v0}, Lcom/payu/socketverification/socket/b;->d(Lcom/payu/socketverification/socket/b;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/payu/socketverification/socket/b$1$1;->a:Lcom/payu/socketverification/socket/b$1;

    iget-object v0, v0, Lcom/payu/socketverification/socket/b$1;->a:Lcom/payu/socketverification/socket/b;

    invoke-static {v0}, Lcom/payu/socketverification/socket/b;->c(Lcom/payu/socketverification/socket/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/payu/socketverification/socket/b$1$1;->a:Lcom/payu/socketverification/socket/b$1;

    iget-object v1, v1, Lcom/payu/socketverification/socket/b$1;->a:Lcom/payu/socketverification/socket/b;

    invoke-static {v1}, Lcom/payu/socketverification/socket/b;->d(Lcom/payu/socketverification/socket/b;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lcom/payu/socketverification/socket/b$b;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    :cond_1
    return-void
.end method
