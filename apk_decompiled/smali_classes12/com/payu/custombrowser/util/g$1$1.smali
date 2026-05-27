.class Lcom/payu/custombrowser/util/g$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/util/g$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/net/Socket;

.field final synthetic b:Ljava/io/InputStream;

.field final synthetic c:Lcom/payu/custombrowser/util/g$1;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/util/g$1;Ljava/net/Socket;Ljava/io/InputStream;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/payu/custombrowser/util/g$1$1;->c:Lcom/payu/custombrowser/util/g$1;

    iput-object p2, p0, Lcom/payu/custombrowser/util/g$1$1;->a:Ljava/net/Socket;

    iput-object p3, p0, Lcom/payu/custombrowser/util/g$1$1;->b:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 187
    nop

    .line 189
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/payu/custombrowser/util/g$1$1;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/payu/custombrowser/util/g$1$1;->c:Lcom/payu/custombrowser/util/g$1;

    iget-object v1, v1, Lcom/payu/custombrowser/util/g$1;->a:Lcom/payu/custombrowser/util/g;

    invoke-static {v1}, Lcom/payu/custombrowser/util/g;->b(Lcom/payu/custombrowser/util/g;)Lcom/payu/custombrowser/util/g$o;

    move-result-object v1

    invoke-interface {v1}, Lcom/payu/custombrowser/util/g$o;->a()Lcom/payu/custombrowser/util/g$n;

    move-result-object v4

    .line 191
    new-instance v1, Lcom/payu/custombrowser/util/g$h;

    iget-object v2, p0, Lcom/payu/custombrowser/util/g$1$1;->c:Lcom/payu/custombrowser/util/g$1;

    iget-object v3, v2, Lcom/payu/custombrowser/util/g$1;->a:Lcom/payu/custombrowser/util/g;

    iget-object v5, p0, Lcom/payu/custombrowser/util/g$1$1;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/payu/custombrowser/util/g$1$1;->a:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v7

    move-object v2, v1

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/payu/custombrowser/util/g$h;-><init>(Lcom/payu/custombrowser/util/g;Lcom/payu/custombrowser/util/g$n;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V

    .line 192
    :goto_0
    iget-object v2, p0, Lcom/payu/custombrowser/util/g$1$1;->a:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 193
    invoke-virtual {v1}, Lcom/payu/custombrowser/util/g$h;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 195
    :catch_0
    move-exception v1

    .line 198
    :try_start_1
    instance-of v2, v1, Ljava/net/SocketException;

    if-eqz v2, :cond_0

    const-string v2, "NanoHttpd Shutdown"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :cond_1
    invoke-static {v0}, Lcom/payu/custombrowser/util/g;->a(Ljava/io/Closeable;)V

    .line 203
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$1$1;->b:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/payu/custombrowser/util/g;->a(Ljava/io/Closeable;)V

    .line 204
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$1$1;->a:Ljava/net/Socket;

    invoke-static {v0}, Lcom/payu/custombrowser/util/g;->c(Ljava/net/Socket;)V

    .line 205
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$1$1;->c:Lcom/payu/custombrowser/util/g$1;

    iget-object v0, v0, Lcom/payu/custombrowser/util/g$1;->a:Lcom/payu/custombrowser/util/g;

    iget-object v1, p0, Lcom/payu/custombrowser/util/g$1$1;->a:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/util/g;->b(Ljava/net/Socket;)V

    .line 206
    nop

    .line 207
    return-void

    .line 202
    :goto_1
    invoke-static {v0}, Lcom/payu/custombrowser/util/g;->a(Ljava/io/Closeable;)V

    .line 203
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$1$1;->b:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/payu/custombrowser/util/g;->a(Ljava/io/Closeable;)V

    .line 204
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$1$1;->a:Ljava/net/Socket;

    invoke-static {v0}, Lcom/payu/custombrowser/util/g;->c(Ljava/net/Socket;)V

    .line 205
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$1$1;->c:Lcom/payu/custombrowser/util/g$1;

    iget-object v0, v0, Lcom/payu/custombrowser/util/g$1;->a:Lcom/payu/custombrowser/util/g;

    iget-object v2, p0, Lcom/payu/custombrowser/util/g$1$1;->a:Ljava/net/Socket;

    invoke-virtual {v0, v2}, Lcom/payu/custombrowser/util/g;->b(Ljava/net/Socket;)V

    .line 206
    throw v1
.end method
