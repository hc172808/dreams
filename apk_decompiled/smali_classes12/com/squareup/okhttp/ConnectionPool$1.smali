.class Lcom/squareup/okhttp/ConnectionPool$1;
.super Ljava/lang/Object;
.source "ConnectionPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/ConnectionPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/ConnectionPool;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/ConnectionPool;)V
    .locals 0
    .param p1, "this$0"    # Lcom/squareup/okhttp/ConnectionPool;

    .line 91
    iput-object p1, p0, Lcom/squareup/okhttp/ConnectionPool$1;->this$0:Lcom/squareup/okhttp/ConnectionPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/squareup/okhttp/ConnectionPool$1;->this$0:Lcom/squareup/okhttp/ConnectionPool;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/ConnectionPool;->cleanup(J)J

    move-result-wide v0

    .line 95
    .local v0, "waitNanos":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 96
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 97
    const-wide/32 v2, 0xf4240

    div-long v4, v0, v2

    .line 98
    .local v4, "waitMillis":J
    mul-long v2, v2, v4

    sub-long v2, v0, v2

    .line 99
    .end local v0    # "waitNanos":J
    .local v2, "waitNanos":J
    iget-object v6, p0, Lcom/squareup/okhttp/ConnectionPool$1;->this$0:Lcom/squareup/okhttp/ConnectionPool;

    monitor-enter v6

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/ConnectionPool$1;->this$0:Lcom/squareup/okhttp/ConnectionPool;

    long-to-int v1, v2

    invoke-virtual {v0, v4, v5, v1}, Ljava/lang/Object;->wait(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    goto :goto_1

    .line 104
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 102
    :catch_0
    move-exception v0

    .line 104
    :goto_1
    :try_start_1
    monitor-exit v6

    goto :goto_3

    :goto_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 106
    .end local v2    # "waitNanos":J
    .end local v4    # "waitMillis":J
    :cond_1
    :goto_3
    goto :goto_0
.end method
