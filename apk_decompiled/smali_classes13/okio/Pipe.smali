.class public final Lokio/Pipe;
.super Ljava/lang/Object;
.source "Pipe.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipe.kt\nokio/Pipe\n+ 2 -Platform.kt\nokio/-Platform\n+ 3 Timeout.kt\nokio/Timeout\n*L\n1#1,216:1\n28#2:217\n28#2:218\n28#2:219\n186#3,30:220\n*E\n*S KotlinDebug\n*F\n+ 1 Pipe.kt\nokio/Pipe\n*L\n163#1:217\n189#1:218\n189#1:219\n199#1,30:220\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0011\u001a\u00020\nJ\r\u0010\u0011\u001a\u00020\nH\u0007\u00a2\u0006\u0002\u0008 J\r\u0010\u0018\u001a\u00020\u0019H\u0007\u00a2\u0006\u0002\u0008!J&\u0010\"\u001a\u00020\u001f*\u00020\n2\u0017\u0010#\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u001f0$\u00a2\u0006\u0002\u0008%H\u0082\u0008R\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u00020\n8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000cR\u001a\u0010\u0012\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\u0018\u001a\u00020\u00198G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0015\"\u0004\u0008\u001d\u0010\u0017\u00a8\u0006&"
    }
    d2 = {
        "Lokio/Pipe;",
        "",
        "maxBufferSize",
        "",
        "(J)V",
        "buffer",
        "Lokio/Buffer;",
        "getBuffer$okio",
        "()Lokio/Buffer;",
        "foldedSink",
        "Lokio/Sink;",
        "getFoldedSink$okio",
        "()Lokio/Sink;",
        "setFoldedSink$okio",
        "(Lokio/Sink;)V",
        "getMaxBufferSize$okio",
        "()J",
        "sink",
        "sinkClosed",
        "",
        "getSinkClosed$okio",
        "()Z",
        "setSinkClosed$okio",
        "(Z)V",
        "source",
        "Lokio/Source;",
        "()Lokio/Source;",
        "sourceClosed",
        "getSourceClosed$okio",
        "setSourceClosed$okio",
        "fold",
        "",
        "-deprecated_sink",
        "-deprecated_source",
        "forward",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
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
.field private final buffer:Lokio/Buffer;

.field private foldedSink:Lokio/Sink;

.field private final maxBufferSize:J

.field private final sink:Lokio/Sink;

.field private sinkClosed:Z

.field private final source:Lokio/Source;

.field private sourceClosed:Z


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "maxBufferSize"    # J

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lokio/Pipe;->maxBufferSize:J

    .line 37
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    .line 43
    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 44
    nop

    .line 47
    new-instance v0, Lokio/Pipe$sink$1;

    invoke-direct {v0, p0}, Lokio/Pipe$sink$1;-><init>(Lokio/Pipe;)V

    check-cast v0, Lokio/Sink;

    iput-object v0, p0, Lokio/Pipe;->sink:Lokio/Sink;

    .line 120
    new-instance v0, Lokio/Pipe$source$1;

    invoke-direct {v0, p0}, Lokio/Pipe$source$1;-><init>(Lokio/Pipe;)V

    check-cast v0, Lokio/Source;

    iput-object v0, p0, Lokio/Pipe;->source:Lokio/Source;

    return-void

    .line 43
    :cond_1
    const/4 v0, 0x0

    .local v0, "$i$a$-require-Pipe$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxBufferSize < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Pipe$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final synthetic access$forward(Lokio/Pipe;Lokio/Sink;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p0, "$this"    # Lokio/Pipe;
    .param p1, "$this$access_u24forward"    # Lokio/Sink;
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;

    .line 36
    invoke-direct {p0, p1, p2}, Lokio/Pipe;->forward(Lokio/Sink;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final forward(Lokio/Sink;Lkotlin/jvm/functions/Function1;)V
    .locals 16
    .param p1, "$this$forward"    # Lokio/Sink;
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Sink;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokio/Sink;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 199
    .local v3, "$i$f$forward":I
    invoke-interface/range {p1 .. p1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v4

    .local v4, "this_$iv":Lokio/Timeout;
    invoke-virtual/range {p0 .. p0}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    .local v0, "other$iv":Lokio/Timeout;
    move-object v5, v0

    .end local v0    # "other$iv":Lokio/Timeout;
    .local v5, "other$iv":Lokio/Timeout;
    const/4 v6, 0x0

    .line 220
    .local v6, "$i$f$intersectWith":I
    invoke-virtual {v4}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v7

    .line 221
    .local v7, "originalTimeout$iv":J
    sget-object v0, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {v5}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v9

    invoke-virtual {v4}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v11

    invoke-virtual {v0, v9, v10, v11, v12}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v9

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v9, v10, v0}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 223
    invoke-virtual {v4}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_3

    .line 224
    invoke-virtual {v4}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v10

    .line 225
    .local v10, "originalDeadline$iv":J
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v4}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v12

    invoke-virtual {v5}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 228
    :cond_0
    nop

    .line 229
    const/4 v0, 0x0

    .line 199
    .local v0, "$i$a$-intersectWith-Pipe$forward$1":I
    :try_start_0
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "$i$a$-intersectWith-Pipe$forward$1":I
    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 231
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v0}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 232
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {v4, v10, v11}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_1
    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 235
    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v12, v0

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 231
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v0}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 232
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    invoke-virtual {v4, v10, v11}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_2
    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v12

    .line 237
    .end local v10    # "originalDeadline$iv":J
    :cond_3
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 238
    invoke-virtual {v5}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 240
    :cond_4
    nop

    .line 241
    const/4 v0, 0x0

    .line 199
    .restart local v0    # "$i$a$-intersectWith-Pipe$forward$1":I
    :try_start_1
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0    # "$i$a$-intersectWith-Pipe$forward$1":I
    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 243
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v0}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 244
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 245
    invoke-virtual {v4}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_5
    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 247
    nop

    .line 248
    :goto_0
    nop

    .line 249
    nop

    .line 200
    .end local v4    # "this_$iv":Lokio/Timeout;
    .end local v5    # "other$iv":Lokio/Timeout;
    .end local v6    # "$i$f$intersectWith":I
    .end local v7    # "originalTimeout$iv":J
    return-void

    .line 247
    .restart local v4    # "this_$iv":Lokio/Timeout;
    .restart local v5    # "other$iv":Lokio/Timeout;
    .restart local v6    # "$i$f$intersectWith":I
    .restart local v7    # "originalTimeout$iv":J
    :catchall_1
    move-exception v0

    move-object v10, v0

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 243
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v0}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 244
    invoke-virtual {v5}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 245
    invoke-virtual {v4}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_6
    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v10
.end method


# virtual methods
.method public final -deprecated_sink()Lokio/Sink;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "sink"
            imports = {}
        .end subannotation
    .end annotation

    .line 207
    iget-object v0, p0, Lokio/Pipe;->sink:Lokio/Sink;

    return-object v0
.end method

.method public final -deprecated_source()Lokio/Source;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "source"
            imports = {}
        .end subannotation
    .end annotation

    .line 214
    iget-object v0, p0, Lokio/Pipe;->source:Lokio/Source;

    return-object v0
.end method

.method public final fold(Lokio/Sink;)V
    .locals 9
    .param p1, "sink"    # Lokio/Sink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    :goto_0
    nop

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "closed":Z
    const/4 v1, 0x0

    .line 163
    .local v1, "sinkBuffer":Ljava/lang/Object;
    iget-object v2, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    .local v2, "lock$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 217
    .local v3, "$i$f$synchronized":I
    monitor-enter v2

    const/4 v4, 0x0

    .line 164
    .local v4, "$i$a$-synchronized-Pipe$fold$1":I
    :try_start_0
    iget-object v5, p0, Lokio/Pipe;->foldedSink:Lokio/Sink;

    const/4 v6, 0x1

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_5

    .line 166
    iget-object v5, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->exhausted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 167
    iput-boolean v6, p0, Lokio/Pipe;->sourceClosed:Z

    .line 168
    iput-object p1, p0, Lokio/Pipe;->foldedSink:Lokio/Sink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 169
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    .end local v4    # "$i$a$-synchronized-Pipe$fold$1":I
    monitor-exit v2

    return-void

    .line 172
    .restart local v2    # "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    .restart local v4    # "$i$a$-synchronized-Pipe$fold$1":I
    :cond_1
    :try_start_1
    iget-boolean v5, p0, Lokio/Pipe;->sinkClosed:Z

    move v0, v5

    .line 173
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    move-object v1, v5

    .line 174
    iget-object v5, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v7

    invoke-virtual {v1, v5, v7, v8}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 175
    iget-object v5, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    if-eqz v5, :cond_4

    check-cast v5, Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 176
    .end local v4    # "$i$a$-synchronized-Pipe$fold$1":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v2

    .line 178
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    const/4 v2, 0x0

    .line 179
    .local v2, "success":Z
    nop

    .line 180
    :try_start_2
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-interface {p1, v1, v3, v4}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 181
    if-eqz v0, :cond_2

    .line 182
    invoke-interface {p1}, Lokio/Sink;->close()V

    goto :goto_2

    .line 184
    :cond_2
    invoke-interface {p1}, Lokio/Sink;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    :goto_2
    nop

    .line 186
    const/4 v2, 0x1

    .line 188
    nop

    .line 194
    nop

    .end local v0    # "closed":Z
    .end local v1    # "sinkBuffer":Ljava/lang/Object;
    .end local v2    # "success":Z
    nop

    .line 158
    goto :goto_0

    .line 194
    .restart local v0    # "closed":Z
    .restart local v1    # "sinkBuffer":Ljava/lang/Object;
    .restart local v2    # "success":Z
    :catchall_0
    move-exception v3

    .line 188
    nop

    .line 189
    iget-object v4, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    .local v4, "lock$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 219
    .local v5, "$i$f$synchronized":I
    monitor-enter v4

    const/4 v7, 0x0

    .line 190
    .local v7, "$i$a$-synchronized-Pipe$fold$2":I
    :try_start_3
    iput-boolean v6, p0, Lokio/Pipe;->sourceClosed:Z

    .line 191
    iget-object v6, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    if-nez v6, :cond_3

    new-instance v3, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v3, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .end local v0    # "closed":Z
    .end local v1    # "sinkBuffer":Ljava/lang/Object;
    .end local v2    # "success":Z
    .end local v4    # "lock$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$synchronized":I
    .end local p1    # "sink":Lokio/Sink;
    throw v3

    .restart local v0    # "closed":Z
    .restart local v1    # "sinkBuffer":Ljava/lang/Object;
    .restart local v2    # "success":Z
    .restart local v4    # "lock$iv":Ljava/lang/Object;
    .restart local v5    # "$i$f$synchronized":I
    .restart local p1    # "sink":Lokio/Sink;
    :cond_3
    check-cast v6, Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 192
    .end local v7    # "$i$a$-synchronized-Pipe$fold$2":I
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v4

    .end local v4    # "lock$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$synchronized":I
    throw v3

    .restart local v4    # "lock$iv":Ljava/lang/Object;
    .restart local v5    # "$i$f$synchronized":I
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 175
    .end local v5    # "$i$f$synchronized":I
    .local v2, "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    .local v4, "$i$a$-synchronized-Pipe$fold$1":I
    :cond_4
    :try_start_4
    new-instance v5, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .end local v0    # "closed":Z
    .end local v1    # "sinkBuffer":Ljava/lang/Object;
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    .end local p1    # "sink":Lokio/Sink;
    throw v5

    .line 164
    .restart local v0    # "closed":Z
    .restart local v1    # "sinkBuffer":Ljava/lang/Object;
    .restart local v2    # "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    .restart local p1    # "sink":Lokio/Sink;
    :cond_5
    const/4 v5, 0x0

    .local v5, "$i$a$-check-Pipe$fold$1$1":I
    const-string v6, "sink already folded"

    .end local v5    # "$i$a$-check-Pipe$fold$1$1":I
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    .end local v0    # "closed":Z
    .end local v1    # "sinkBuffer":Ljava/lang/Object;
    .end local v2    # "lock$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$synchronized":I
    .end local p1    # "sink":Lokio/Sink;
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 176
    .end local v4    # "$i$a$-synchronized-Pipe$fold$1":I
    .restart local v0    # "closed":Z
    .restart local v1    # "sinkBuffer":Ljava/lang/Object;
    .restart local v2    # "lock$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$synchronized":I
    .restart local p1    # "sink":Lokio/Sink;
    :catchall_2
    move-exception v4

    monitor-exit v2

    throw v4
.end method

.method public final getBuffer$okio()Lokio/Buffer;
    .locals 1

    .line 37
    iget-object v0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    return-object v0
.end method

.method public final getFoldedSink$okio()Lokio/Sink;
    .locals 1

    .line 40
    iget-object v0, p0, Lokio/Pipe;->foldedSink:Lokio/Sink;

    return-object v0
.end method

.method public final getMaxBufferSize$okio()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lokio/Pipe;->maxBufferSize:J

    return-wide v0
.end method

.method public final getSinkClosed$okio()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lokio/Pipe;->sinkClosed:Z

    return v0
.end method

.method public final getSourceClosed$okio()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lokio/Pipe;->sourceClosed:Z

    return v0
.end method

.method public final setFoldedSink$okio(Lokio/Sink;)V
    .locals 0
    .param p1, "<set-?>"    # Lokio/Sink;

    .line 40
    iput-object p1, p0, Lokio/Pipe;->foldedSink:Lokio/Sink;

    return-void
.end method

.method public final setSinkClosed$okio(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 38
    iput-boolean p1, p0, Lokio/Pipe;->sinkClosed:Z

    return-void
.end method

.method public final setSourceClosed$okio(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 39
    iput-boolean p1, p0, Lokio/Pipe;->sourceClosed:Z

    return-void
.end method

.method public final sink()Lokio/Sink;
    .locals 1

    .line 47
    iget-object v0, p0, Lokio/Pipe;->sink:Lokio/Sink;

    return-object v0
.end method

.method public final source()Lokio/Source;
    .locals 1

    .line 120
    iget-object v0, p0, Lokio/Pipe;->source:Lokio/Source;

    return-object v0
.end method
