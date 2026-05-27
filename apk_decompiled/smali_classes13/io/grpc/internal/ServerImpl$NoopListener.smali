.class final Lio/grpc/internal/ServerImpl$NoopListener;
.super Ljava/lang/Object;
.source "ServerImpl.java"

# interfaces
.implements Lio/grpc/internal/ServerStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ServerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoopListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/ServerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/internal/ServerImpl$1;

    .line 686
    invoke-direct {p0}, Lio/grpc/internal/ServerImpl$NoopListener;-><init>()V

    return-void
.end method


# virtual methods
.method public closed(Lio/grpc/Status;)V
    .locals 0
    .param p1, "status"    # Lio/grpc/Status;

    .line 712
    return-void
.end method

.method public halfClosed()V
    .locals 0

    .line 709
    return-void
.end method

.method public messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V
    .locals 6
    .param p1, "producer"    # Lio/grpc/internal/StreamListener$MessageProducer;

    .line 690
    :goto_0
    invoke-interface {p1}, Lio/grpc/internal/StreamListener$MessageProducer;->next()Ljava/io/InputStream;

    move-result-object v0

    move-object v1, v0

    .local v1, "message":Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 692
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    goto :goto_0

    .line 693
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-interface {p1}, Lio/grpc/internal/StreamListener$MessageProducer;->next()Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_0

    .line 697
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 701
    :goto_2
    goto :goto_1

    .line 698
    :catch_1
    move-exception v2

    .line 700
    .local v2, "ioException":Ljava/io/IOException;
    invoke-static {}, Lio/grpc/internal/ServerImpl;->access$2600()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Exception closing stream"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "ioException":Ljava/io/IOException;
    goto :goto_2

    .line 703
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 706
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    return-void
.end method

.method public onReady()V
    .locals 0

    .line 715
    return-void
.end method
