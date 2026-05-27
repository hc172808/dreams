.class Lcom/payu/custombrowser/util/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/util/g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/util/g;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/util/g;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/payu/custombrowser/util/g$1;->a:Lcom/payu/custombrowser/util/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 180
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$1;->a:Lcom/payu/custombrowser/util/g;

    invoke-static {v0}, Lcom/payu/custombrowser/util/g;->a(Lcom/payu/custombrowser/util/g;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/payu/custombrowser/util/g$1;->a:Lcom/payu/custombrowser/util/g;

    invoke-virtual {v1, v0}, Lcom/payu/custombrowser/util/g;->a(Ljava/net/Socket;)V

    .line 182
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 183
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 184
    iget-object v2, p0, Lcom/payu/custombrowser/util/g$1;->a:Lcom/payu/custombrowser/util/g;

    invoke-static {v2}, Lcom/payu/custombrowser/util/g;->c(Lcom/payu/custombrowser/util/g;)Lcom/payu/custombrowser/util/g$a;

    move-result-object v2

    new-instance v3, Lcom/payu/custombrowser/util/g$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/payu/custombrowser/util/g$1$1;-><init>(Lcom/payu/custombrowser/util/g$1;Ljava/net/Socket;Ljava/io/InputStream;)V

    invoke-interface {v2, v3}, Lcom/payu/custombrowser/util/g$a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    goto :goto_1

    .line 209
    :catch_0
    move-exception v0

    .line 211
    :goto_1
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$1;->a:Lcom/payu/custombrowser/util/g;

    invoke-static {v0}, Lcom/payu/custombrowser/util/g;->a(Lcom/payu/custombrowser/util/g;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    return-void

    .line 211
    :cond_0
    goto :goto_0
.end method
