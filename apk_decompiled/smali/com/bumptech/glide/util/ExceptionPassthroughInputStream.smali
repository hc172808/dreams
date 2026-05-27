.class public final Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;
.super Ljava/io/InputStream;
.source "ExceptionPassthroughInputStream.java"


# static fields
.field private static final POOL:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private exception:Ljava/io/IOException;

.field private wrapped:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->POOL:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 56
    return-void
.end method

.method static clearQueue()V
    .locals 3

    .line 47
    sget-object v0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->POOL:Ljava/util/Queue;

    monitor-enter v0

    .line 48
    :goto_0
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->POOL:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 51
    :cond_0
    monitor-exit v0

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static obtain(Ljava/io/InputStream;)Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;
    .locals 2
    .param p0, "toWrap"    # Ljava/io/InputStream;

    .line 35
    sget-object v0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->POOL:Ljava/util/Queue;

    monitor-enter v0

    .line 36
    :try_start_0
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;

    .line 37
    .local v1, "result":Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    if-nez v1, :cond_0

    .line 39
    new-instance v0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;

    invoke-direct {v0}, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;-><init>()V

    move-object v1, v0

    .line 41
    :cond_0
    invoke-virtual {v1, p0}, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->setInputStream(Ljava/io/InputStream;)V

    .line 42
    return-object v1

    .line 37
    .end local v1    # "result":Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 70
    return-void
.end method

.method public getException()Ljava/io/IOException;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->exception:Ljava/io/IOException;

    return-object v0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readLimit"    # I

    .line 74
    iget-object v0, p0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 75
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->exception:Ljava/io/IOException;

    .line 88
    throw v0
.end method

.method public read([B)I
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->exception:Ljava/io/IOException;

    .line 98
    throw v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->exception:Ljava/io/IOException;

    .line 108
    throw v0
.end method

.method public release()V
    .locals 2

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->exception:Ljava/io/IOException;

    .line 134
    iput-object v0, p0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->wrapped:Ljava/io/InputStream;

    .line 135
    sget-object v0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->POOL:Ljava/util/Queue;

    monitor-enter v0

    .line 136
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 137
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 113
    .end local p0    # "this":Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "toWrap"    # Ljava/io/InputStream;

    .line 59
    iput-object p1, p0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->wrapped:Ljava/io/InputStream;

    .line 60
    return-void
.end method

.method public skip(J)J
    .locals 2
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/bumptech/glide/util/ExceptionPassthroughInputStream;->exception:Ljava/io/IOException;

    .line 123
    throw v0
.end method
