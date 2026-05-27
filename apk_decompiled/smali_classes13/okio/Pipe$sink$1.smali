.class public final Lokio/Pipe$sink$1;
.super Ljava/lang/Object;
.source "Pipe.kt"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Pipe;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipe.kt\nokio/Pipe$sink$1\n+ 2 -Platform.kt\nokio/-Platform\n+ 3 Pipe.kt\nokio/Pipe\n+ 4 Timeout.kt\nokio/Timeout\n*L\n1#1,216:1\n28#2:217\n28#2:250\n28#2:283\n199#3:218\n200#3:249\n199#3:251\n200#3:282\n199#3:284\n200#3:315\n186#4,30:219\n186#4,30:252\n186#4,30:285\n*E\n*S KotlinDebug\n*F\n+ 1 Pipe.kt\nokio/Pipe$sink$1\n*L\n53#1:217\n82#1:250\n100#1:283\n77#1:218\n77#1:249\n95#1:251\n95#1:282\n113#1:284\n113#1:315\n77#1,30:219\n95#1,30:252\n113#1,30:285\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "okio/Pipe$sink$1",
        "Lokio/Sink;",
        "timeout",
        "Lokio/Timeout;",
        "close",
        "",
        "flush",
        "write",
        "source",
        "Lokio/Buffer;",
        "byteCount",
        "",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lokio/Pipe;

.field private final timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokio/Pipe;)V
    .locals 1
    .param p1, "$outer"    # Lokio/Pipe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lokio/Timeout;

    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    iput-object v0, p0, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 15

    .line 99
    const/4 v0, 0x0

    check-cast v0, Lokio/Sink;

    .line 100
    .local v0, "delegate":Ljava/lang/Object;
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v1

    .local v1, "lock$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 283
    .local v2, "$i$f$synchronized":I
    monitor-enter v1

    const/4 v3, 0x0

    .line 101
    .local v3, "$i$a$-synchronized-Pipe$sink$1$close$1":I
    :try_start_0
    iget-object v4, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v4}, Lokio/Pipe;->getSinkClosed$okio()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v4, :cond_0

    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    .end local v3    # "$i$a$-synchronized-Pipe$sink$1$close$1":I
    monitor-exit v1

    return-void

    .line 103
    .restart local v1    # "lock$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    .restart local v3    # "$i$a$-synchronized-Pipe$sink$1$close$1":I
    :cond_0
    :try_start_1
    iget-object v4, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v4}, Lokio/Pipe;->getFoldedSink$okio()Lokio/Sink;

    move-result-object v4

    if-eqz v4, :cond_1

    .local v4, "it":Lokio/Sink;
    const/4 v5, 0x0

    .line 104
    .local v5, "$i$a$-let-Pipe$sink$1$close$1$1":I
    move-object v0, v4

    .line 105
    goto :goto_1

    .line 108
    .end local v4    # "it":Lokio/Sink;
    .end local v5    # "$i$a$-let-Pipe$sink$1$close$1$1":I
    :cond_1
    iget-object v4, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v4}, Lokio/Pipe;->getSourceClosed$okio()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v4}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gtz v8, :cond_2

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "source is closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    .end local v0    # "delegate":Ljava/lang/Object;
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    throw v4

    .line 109
    .restart local v0    # "delegate":Ljava/lang/Object;
    .restart local v1    # "lock$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    :cond_3
    :goto_0
    iget-object v4, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lokio/Pipe;->setSinkClosed$okio(Z)V

    .line 110
    iget-object v4, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v4}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v4

    if-eqz v4, :cond_c

    check-cast v4, Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 111
    .end local v3    # "$i$a$-synchronized-Pipe$sink$1$close$1":I
    :goto_1
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v1

    .line 113
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    if-eqz v0, :cond_b

    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .local v1, "this_$iv":Lokio/Pipe;
    move-object v2, v0

    .local v2, "$this$forward$iv":Lokio/Sink;
    const/4 v3, 0x0

    .line 284
    .local v3, "$i$f$forward":I
    invoke-interface {v2}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v4

    .local v4, "this_$iv$iv":Lokio/Timeout;
    invoke-virtual {v1}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v5

    invoke-interface {v5}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v5

    .local v5, "other$iv$iv":Lokio/Timeout;
    const/4 v6, 0x0

    .line 285
    .local v6, "$i$f$intersectWith":I
    invoke-virtual {v4}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v7

    .line 286
    .local v7, "originalTimeout$iv$iv":J
    sget-object v9, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {v5}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v10

    invoke-virtual {v4}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v12

    invoke-virtual {v9, v10, v11, v12, v13}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v9

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v9, v10, v11}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 288
    invoke-virtual {v4}, Lokio/Timeout;->hasDeadline()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 289
    invoke-virtual {v4}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v9

    .line 290
    .local v9, "originalDeadline$iv$iv":J
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 291
    invoke-virtual {v4}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v11

    invoke-virtual {v5}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 293
    :cond_4
    nop

    .line 294
    const/4 v11, 0x0

    .line 284
    .local v11, "$i$a$-intersectWith-Pipe$forward$1$iv":I
    move-object v12, v2

    .local v12, "$this$forward":Lokio/Sink;
    const/4 v13, 0x0

    .line 113
    .local v13, "$i$a$-forward-Pipe$sink$1$close$2":I
    :try_start_2
    invoke-interface {v12}, Lokio/Sink;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    .end local v11    # "$i$a$-intersectWith-Pipe$forward$1$iv":I
    .end local v12    # "$this$forward":Lokio/Sink;
    .end local v13    # "$i$a$-forward-Pipe$sink$1$close$2":I
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v11}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 297
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 298
    invoke-virtual {v4, v9, v10}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 300
    :cond_5
    goto :goto_2

    :catchall_0
    move-exception v11

    .line 296
    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v12}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 297
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 298
    invoke-virtual {v4, v9, v10}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_6
    throw v11

    .line 302
    .end local v9    # "originalDeadline$iv$iv":J
    :cond_7
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 303
    invoke-virtual {v5}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 305
    :cond_8
    nop

    .line 306
    const/4 v9, 0x0

    .line 284
    .local v9, "$i$a$-intersectWith-Pipe$forward$1$iv":I
    move-object v10, v2

    .local v10, "$this$forward":Lokio/Sink;
    const/4 v11, 0x0

    .line 113
    .local v11, "$i$a$-forward-Pipe$sink$1$close$2":I
    :try_start_3
    invoke-interface {v10}, Lokio/Sink;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 308
    .end local v9    # "$i$a$-intersectWith-Pipe$forward$1$iv":I
    .end local v10    # "$this$forward":Lokio/Sink;
    .end local v11    # "$i$a$-forward-Pipe$sink$1$close$2":I
    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v9}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 309
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 310
    invoke-virtual {v4}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 312
    :cond_9
    nop

    .line 313
    :goto_2
    nop

    .line 314
    nop

    .line 315
    .end local v4    # "this_$iv$iv":Lokio/Timeout;
    .end local v5    # "other$iv$iv":Lokio/Timeout;
    .end local v6    # "$i$f$intersectWith":I
    .end local v7    # "originalTimeout$iv$iv":J
    nop

    .end local v1    # "this_$iv":Lokio/Pipe;
    .end local v2    # "$this$forward$iv":Lokio/Sink;
    .end local v3    # "$i$f$forward":I
    goto :goto_3

    .line 312
    .restart local v1    # "this_$iv":Lokio/Pipe;
    .restart local v2    # "$this$forward$iv":Lokio/Sink;
    .restart local v3    # "$i$f$forward":I
    .restart local v4    # "this_$iv$iv":Lokio/Timeout;
    .restart local v5    # "other$iv$iv":Lokio/Timeout;
    .restart local v6    # "$i$f$intersectWith":I
    .restart local v7    # "originalTimeout$iv$iv":J
    :catchall_1
    move-exception v9

    .line 308
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v10}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 309
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 310
    invoke-virtual {v4}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_a
    throw v9

    .line 315
    .end local v1    # "this_$iv":Lokio/Pipe;
    .end local v2    # "$this$forward$iv":Lokio/Sink;
    .end local v3    # "$i$f$forward":I
    .end local v4    # "this_$iv$iv":Lokio/Timeout;
    .end local v5    # "other$iv$iv":Lokio/Timeout;
    .end local v6    # "$i$f$intersectWith":I
    .end local v7    # "originalTimeout$iv$iv":J
    :cond_b
    nop

    .line 114
    :goto_3
    return-void

    .line 110
    .local v1, "lock$iv":Ljava/lang/Object;
    .local v2, "$i$f$synchronized":I
    .local v3, "$i$a$-synchronized-Pipe$sink$1$close$1":I
    :cond_c
    :try_start_4
    new-instance v4, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .end local v0    # "delegate":Ljava/lang/Object;
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 111
    .end local v3    # "$i$a$-synchronized-Pipe$sink$1$close$1":I
    .restart local v0    # "delegate":Ljava/lang/Object;
    .restart local v1    # "lock$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    :catchall_2
    move-exception v3

    monitor-exit v1

    throw v3
.end method

.method public flush()V
    .locals 15

    .line 81
    const/4 v0, 0x0

    check-cast v0, Lokio/Sink;

    .line 82
    .local v0, "delegate":Ljava/lang/Object;
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v1

    .local v1, "lock$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 250
    .local v2, "$i$f$synchronized":I
    monitor-enter v1

    const/4 v3, 0x0

    .line 83
    .local v3, "$i$a$-synchronized-Pipe$sink$1$flush$1":I
    :try_start_0
    iget-object v4, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v4}, Lokio/Pipe;->getSinkClosed$okio()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b

    .line 85
    iget-object v4, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v4}, Lokio/Pipe;->getFoldedSink$okio()Lokio/Sink;

    move-result-object v4

    if-eqz v4, :cond_0

    .local v4, "it":Lokio/Sink;
    const/4 v5, 0x0

    .line 86
    .local v5, "$i$a$-let-Pipe$sink$1$flush$1$2":I
    move-object v0, v4

    .line 87
    goto :goto_0

    .line 90
    .end local v4    # "it":Lokio/Sink;
    .end local v5    # "$i$a$-let-Pipe$sink$1$flush$1$2":I
    :cond_0
    iget-object v4, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v4}, Lokio/Pipe;->getSourceClosed$okio()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v4}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gtz v8, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "source is closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    .end local v0    # "delegate":Ljava/lang/Object;
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    throw v4

    .line 93
    .end local v3    # "$i$a$-synchronized-Pipe$sink$1$flush$1":I
    .restart local v0    # "delegate":Ljava/lang/Object;
    .restart local v1    # "lock$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    :cond_2
    :goto_0
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v1

    .line 95
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    if-eqz v0, :cond_a

    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .local v1, "this_$iv":Lokio/Pipe;
    move-object v2, v0

    .local v2, "$this$forward$iv":Lokio/Sink;
    const/4 v3, 0x0

    .line 251
    .local v3, "$i$f$forward":I
    invoke-interface {v2}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v4

    .local v4, "this_$iv$iv":Lokio/Timeout;
    invoke-virtual {v1}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v5

    invoke-interface {v5}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v5

    .local v5, "other$iv$iv":Lokio/Timeout;
    const/4 v6, 0x0

    .line 252
    .local v6, "$i$f$intersectWith":I
    invoke-virtual {v4}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v7

    .line 253
    .local v7, "originalTimeout$iv$iv":J
    sget-object v9, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {v5}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v10

    invoke-virtual {v4}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v12

    invoke-virtual {v9, v10, v11, v12, v13}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v9

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v9, v10, v11}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 255
    invoke-virtual {v4}, Lokio/Timeout;->hasDeadline()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 256
    invoke-virtual {v4}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v9

    .line 257
    .local v9, "originalDeadline$iv$iv":J
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 258
    invoke-virtual {v4}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v11

    invoke-virtual {v5}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    invoke-virtual {v4, v11, v12}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 260
    :cond_3
    nop

    .line 261
    const/4 v11, 0x0

    .line 251
    .local v11, "$i$a$-intersectWith-Pipe$forward$1$iv":I
    move-object v12, v2

    .local v12, "$this$forward":Lokio/Sink;
    const/4 v13, 0x0

    .line 95
    .local v13, "$i$a$-forward-Pipe$sink$1$flush$2":I
    :try_start_1
    invoke-interface {v12}, Lokio/Sink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    .end local v11    # "$i$a$-intersectWith-Pipe$forward$1$iv":I
    .end local v12    # "$this$forward":Lokio/Sink;
    .end local v13    # "$i$a$-forward-Pipe$sink$1$flush$2":I
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v11}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 264
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 265
    invoke-virtual {v4, v9, v10}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 267
    :cond_4
    goto :goto_1

    :catchall_0
    move-exception v11

    .line 263
    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v12}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 264
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 265
    invoke-virtual {v4, v9, v10}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_5
    throw v11

    .line 269
    .end local v9    # "originalDeadline$iv$iv":J
    :cond_6
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 270
    invoke-virtual {v5}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 272
    :cond_7
    nop

    .line 273
    const/4 v9, 0x0

    .line 251
    .local v9, "$i$a$-intersectWith-Pipe$forward$1$iv":I
    move-object v10, v2

    .local v10, "$this$forward":Lokio/Sink;
    const/4 v11, 0x0

    .line 95
    .local v11, "$i$a$-forward-Pipe$sink$1$flush$2":I
    :try_start_2
    invoke-interface {v10}, Lokio/Sink;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 275
    .end local v9    # "$i$a$-intersectWith-Pipe$forward$1$iv":I
    .end local v10    # "$this$forward":Lokio/Sink;
    .end local v11    # "$i$a$-forward-Pipe$sink$1$flush$2":I
    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v9}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 276
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 277
    invoke-virtual {v4}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 279
    :cond_8
    nop

    .line 280
    :goto_1
    nop

    .line 281
    nop

    .line 282
    .end local v4    # "this_$iv$iv":Lokio/Timeout;
    .end local v5    # "other$iv$iv":Lokio/Timeout;
    .end local v6    # "$i$f$intersectWith":I
    .end local v7    # "originalTimeout$iv$iv":J
    nop

    .end local v1    # "this_$iv":Lokio/Pipe;
    .end local v2    # "$this$forward$iv":Lokio/Sink;
    .end local v3    # "$i$f$forward":I
    goto :goto_2

    .line 279
    .restart local v1    # "this_$iv":Lokio/Pipe;
    .restart local v2    # "$this$forward$iv":Lokio/Sink;
    .restart local v3    # "$i$f$forward":I
    .restart local v4    # "this_$iv$iv":Lokio/Timeout;
    .restart local v5    # "other$iv$iv":Lokio/Timeout;
    .restart local v6    # "$i$f$intersectWith":I
    .restart local v7    # "originalTimeout$iv$iv":J
    :catchall_1
    move-exception v9

    .line 275
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v10}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 276
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 277
    invoke-virtual {v4}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_9
    throw v9

    .line 282
    .end local v1    # "this_$iv":Lokio/Pipe;
    .end local v2    # "$this$forward$iv":Lokio/Sink;
    .end local v3    # "$i$f$forward":I
    .end local v4    # "this_$iv$iv":Lokio/Timeout;
    .end local v5    # "other$iv$iv":Lokio/Timeout;
    .end local v6    # "$i$f$intersectWith":I
    .end local v7    # "originalTimeout$iv$iv":J
    :cond_a
    nop

    .line 96
    :goto_2
    return-void

    .line 83
    .local v1, "lock$iv":Ljava/lang/Object;
    .local v2, "$i$f$synchronized":I
    .local v3, "$i$a$-synchronized-Pipe$sink$1$flush$1":I
    :cond_b
    const/4 v4, 0x0

    .local v4, "$i$a$-check-Pipe$sink$1$flush$1$1":I
    :try_start_3
    const-string v5, "closed"

    .end local v4    # "$i$a$-check-Pipe$sink$1$flush$1$1":I
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    .end local v0    # "delegate":Ljava/lang/Object;
    .end local v1    # "lock$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 93
    .end local v3    # "$i$a$-synchronized-Pipe$sink$1$flush$1":I
    .restart local v0    # "delegate":Ljava/lang/Object;
    .restart local v1    # "lock$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    :catchall_2
    move-exception v3

    monitor-exit v1

    throw v3
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 116
    iget-object v0, p0, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 18
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "source"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    move-wide/from16 v3, p2

    .line 52
    .local v3, "byteCount":J
    const/4 v0, 0x0

    move-object v5, v0

    check-cast v5, Lokio/Sink;

    .line 53
    .local v5, "delegate":Ljava/lang/Object;
    iget-object v0, v1, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v6

    .local v6, "lock$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 217
    .local v7, "$i$f$synchronized":I
    monitor-enter v6

    const/4 v0, 0x0

    .line 54
    .local v0, "$i$a$-synchronized-Pipe$sink$1$write$1":I
    :try_start_0
    iget-object v8, v1, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v8}, Lokio/Pipe;->getSinkClosed$okio()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_d

    .line 56
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v10, v3, v8

    if-lez v10, :cond_4

    .line 57
    iget-object v10, v1, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v10}, Lokio/Pipe;->getFoldedSink$okio()Lokio/Sink;

    move-result-object v10

    if-eqz v10, :cond_0

    move-object v8, v10

    .local v8, "it":Lokio/Sink;
    const/4 v9, 0x0

    .line 58
    .local v9, "$i$a$-let-Pipe$sink$1$write$1$2":I
    move-object v5, v8

    .line 59
    goto :goto_1

    .line 62
    .end local v8    # "it":Lokio/Sink;
    .end local v9    # "$i$a$-let-Pipe$sink$1$write$1$2":I
    :cond_0
    iget-object v10, v1, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v10}, Lokio/Pipe;->getSourceClosed$okio()Z

    move-result v10

    if-nez v10, :cond_3

    .line 64
    iget-object v10, v1, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v10}, Lokio/Pipe;->getMaxBufferSize$okio()J

    move-result-wide v10

    iget-object v12, v1, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v12}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v12

    invoke-virtual {v12}, Lokio/Buffer;->size()J

    move-result-wide v12

    sub-long/2addr v10, v12

    .line 65
    .local v10, "bufferSpaceAvailable":J
    cmp-long v12, v10, v8

    if-nez v12, :cond_1

    .line 66
    iget-object v8, v1, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    iget-object v9, v1, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v9}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    .line 67
    goto :goto_0

    .line 70
    :cond_1
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 71
    .local v8, "bytesToWrite":J
    iget-object v12, v1, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v12}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v12

    invoke-virtual {v12, v2, v8, v9}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 72
    sub-long/2addr v3, v8

    .line 73
    iget-object v12, v1, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v12}, Lokio/Pipe;->getBuffer$okio()Lokio/Buffer;

    move-result-object v12

    if-eqz v12, :cond_2

    check-cast v12, Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 56
    .end local v8    # "bytesToWrite":J
    .end local v10    # "bufferSpaceAvailable":J
    goto :goto_0

    .line 73
    .restart local v8    # "bytesToWrite":J
    .restart local v10    # "bufferSpaceAvailable":J
    :cond_2
    new-instance v12, Lkotlin/TypeCastException;

    const-string v13, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v12, v13}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .end local v3    # "byteCount":J
    .end local v5    # "delegate":Ljava/lang/Object;
    .end local v6    # "lock$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$synchronized":I
    .end local p1    # "source":Lokio/Buffer;
    .end local p2    # "byteCount":J
    throw v12

    .line 62
    .end local v8    # "bytesToWrite":J
    .end local v10    # "bufferSpaceAvailable":J
    .restart local v3    # "byteCount":J
    .restart local v5    # "delegate":Ljava/lang/Object;
    .restart local v6    # "lock$iv":Ljava/lang/Object;
    .restart local v7    # "$i$f$synchronized":I
    .restart local p1    # "source":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :cond_3
    new-instance v8, Ljava/io/IOException;

    const-string v9, "source is closed"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Throwable;

    .end local v3    # "byteCount":J
    .end local v5    # "delegate":Ljava/lang/Object;
    .end local v6    # "lock$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$synchronized":I
    .end local p1    # "source":Lokio/Buffer;
    .end local p2    # "byteCount":J
    throw v8

    .line 75
    .end local v0    # "$i$a$-synchronized-Pipe$sink$1$write$1":I
    .restart local v3    # "byteCount":J
    .restart local v5    # "delegate":Ljava/lang/Object;
    .restart local v6    # "lock$iv":Ljava/lang/Object;
    .restart local v7    # "$i$f$synchronized":I
    .restart local p1    # "source":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :cond_4
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v6

    .line 77
    .end local v6    # "lock$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$synchronized":I
    if-eqz v5, :cond_c

    iget-object v0, v1, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .local v0, "this_$iv":Lokio/Pipe;
    move-object v6, v5

    .local v6, "$this$forward$iv":Lokio/Sink;
    move-object v7, v0

    .end local v0    # "this_$iv":Lokio/Pipe;
    .local v7, "this_$iv":Lokio/Pipe;
    const/4 v8, 0x0

    .line 218
    .local v8, "$i$f$forward":I
    invoke-interface {v6}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v9

    .local v9, "this_$iv$iv":Lokio/Timeout;
    invoke-virtual {v7}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    .local v0, "other$iv$iv":Lokio/Timeout;
    move-object v10, v0

    .end local v0    # "other$iv$iv":Lokio/Timeout;
    .local v10, "other$iv$iv":Lokio/Timeout;
    const/4 v11, 0x0

    .line 219
    .local v11, "$i$f$intersectWith":I
    invoke-virtual {v9}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v12

    .line 220
    .local v12, "originalTimeout$iv$iv":J
    sget-object v0, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {v10}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v14

    move-object/from16 v16, v7

    move/from16 v17, v8

    .end local v7    # "this_$iv":Lokio/Pipe;
    .end local v8    # "$i$f$forward":I
    .local v16, "this_$iv":Lokio/Pipe;
    .local v17, "$i$f$forward":I
    invoke-virtual {v9}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v7

    invoke-virtual {v0, v14, v15, v7, v8}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v7

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v7, v8, v0}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 222
    invoke-virtual {v9}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 223
    invoke-virtual {v9}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v7

    .line 224
    .local v7, "originalDeadline$iv$iv":J
    invoke-virtual {v10}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 225
    invoke-virtual {v9}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v14

    invoke-virtual {v10}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 227
    :cond_5
    nop

    .line 228
    const/4 v0, 0x0

    .line 218
    .local v0, "$i$a$-intersectWith-Pipe$forward$1$iv":I
    move-object v1, v6

    .local v1, "$this$forward":Lokio/Sink;
    const/4 v14, 0x0

    .line 77
    .local v14, "$i$a$-forward-Pipe$sink$1$write$2":I
    :try_start_1
    invoke-interface {v1, v2, v3, v4}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    .end local v0    # "$i$a$-intersectWith-Pipe$forward$1$iv":I
    .end local v1    # "$this$forward":Lokio/Sink;
    .end local v14    # "$i$a$-forward-Pipe$sink$1$write$2":I
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v12, v13, v0}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 231
    invoke-virtual {v10}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 232
    invoke-virtual {v9, v7, v8}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 234
    :cond_6
    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 230
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v12, v13, v0}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 231
    invoke-virtual {v10}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 232
    invoke-virtual {v9, v7, v8}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_7
    throw v1

    .line 236
    .end local v7    # "originalDeadline$iv$iv":J
    :cond_8
    invoke-virtual {v10}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 237
    invoke-virtual {v10}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 239
    :cond_9
    nop

    .line 240
    const/4 v0, 0x0

    .line 218
    .restart local v0    # "$i$a$-intersectWith-Pipe$forward$1$iv":I
    move-object v1, v6

    .restart local v1    # "$this$forward":Lokio/Sink;
    const/4 v7, 0x0

    .line 77
    .local v7, "$i$a$-forward-Pipe$sink$1$write$2":I
    :try_start_2
    invoke-interface {v1, v2, v3, v4}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 242
    .end local v0    # "$i$a$-intersectWith-Pipe$forward$1$iv":I
    .end local v1    # "$this$forward":Lokio/Sink;
    .end local v7    # "$i$a$-forward-Pipe$sink$1$write$2":I
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v12, v13, v0}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 243
    invoke-virtual {v10}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 244
    invoke-virtual {v9}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 246
    :cond_a
    nop

    .line 247
    :goto_2
    nop

    .line 248
    nop

    .line 249
    .end local v9    # "this_$iv$iv":Lokio/Timeout;
    .end local v10    # "other$iv$iv":Lokio/Timeout;
    .end local v11    # "$i$f$intersectWith":I
    .end local v12    # "originalTimeout$iv$iv":J
    nop

    .end local v6    # "$this$forward$iv":Lokio/Sink;
    .end local v16    # "this_$iv":Lokio/Pipe;
    .end local v17    # "$i$f$forward":I
    goto :goto_3

    .line 246
    .restart local v6    # "$this$forward$iv":Lokio/Sink;
    .restart local v9    # "this_$iv$iv":Lokio/Timeout;
    .restart local v10    # "other$iv$iv":Lokio/Timeout;
    .restart local v11    # "$i$f$intersectWith":I
    .restart local v12    # "originalTimeout$iv$iv":J
    .restart local v16    # "this_$iv":Lokio/Pipe;
    .restart local v17    # "$i$f$forward":I
    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 242
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v12, v13, v0}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 243
    invoke-virtual {v10}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 244
    invoke-virtual {v9}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_b
    throw v1

    .line 249
    .end local v6    # "$this$forward$iv":Lokio/Sink;
    .end local v9    # "this_$iv$iv":Lokio/Timeout;
    .end local v10    # "other$iv$iv":Lokio/Timeout;
    .end local v11    # "$i$f$intersectWith":I
    .end local v12    # "originalTimeout$iv$iv":J
    .end local v16    # "this_$iv":Lokio/Pipe;
    .end local v17    # "$i$f$forward":I
    :cond_c
    nop

    .line 78
    :goto_3
    return-void

    .line 54
    .local v0, "$i$a$-synchronized-Pipe$sink$1$write$1":I
    .local v6, "lock$iv":Ljava/lang/Object;
    .local v7, "$i$f$synchronized":I
    :cond_d
    const/4 v1, 0x0

    .local v1, "$i$a$-check-Pipe$sink$1$write$1$1":I
    :try_start_3
    const-string v8, "closed"

    .end local v1    # "$i$a$-check-Pipe$sink$1$write$1$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    .end local v3    # "byteCount":J
    .end local v5    # "delegate":Ljava/lang/Object;
    .end local v6    # "lock$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$synchronized":I
    .end local p1    # "source":Lokio/Buffer;
    .end local p2    # "byteCount":J
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 75
    .end local v0    # "$i$a$-synchronized-Pipe$sink$1$write$1":I
    .restart local v3    # "byteCount":J
    .restart local v5    # "delegate":Ljava/lang/Object;
    .restart local v6    # "lock$iv":Ljava/lang/Object;
    .restart local v7    # "$i$f$synchronized":I
    .restart local p1    # "source":Lokio/Buffer;
    .restart local p2    # "byteCount":J
    :catchall_2
    move-exception v0

    monitor-exit v6

    throw v0
.end method
