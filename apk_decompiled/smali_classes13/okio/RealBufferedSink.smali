.class public final Lokio/RealBufferedSink;
.super Ljava/lang/Object;
.source "RealBufferedSink.kt"

# interfaces
.implements Lokio/BufferedSink;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealBufferedSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealBufferedSink.kt\nokio/RealBufferedSink\n+ 2 RealBufferedSink.kt\nokio/internal/RealBufferedSinkKt\n*L\n1#1,141:1\n50#1:144\n50#1:149\n50#1:153\n50#1:157\n50#1:161\n50#1:165\n50#1:167\n50#1:168\n50#1:171\n50#1:175\n50#1:177\n50#1:181\n50#1:190\n50#1:198\n50#1:202\n50#1:206\n50#1:210\n50#1:214\n50#1:218\n50#1:222\n50#1:226\n50#1:230\n50#1:234\n50#1:236\n50#1:240\n50#1:242\n50#1:246\n50#1:248\n50#1:249\n50#1:259\n50#1:261\n50#1:262\n31#2,2:142\n33#2,2:145\n37#2,2:147\n39#2:150\n47#2,2:151\n49#2:154\n53#2,2:155\n55#2:158\n63#2,2:159\n65#2:162\n69#2,2:163\n71#2:166\n75#2,2:169\n77#2:172\n85#2,2:173\n87#2:176\n91#2,3:178\n94#2,5:182\n102#2,3:187\n105#2,5:191\n113#2,2:196\n115#2:199\n119#2,2:200\n121#2:203\n125#2,2:204\n127#2:207\n131#2,2:208\n133#2:211\n137#2,2:212\n139#2:215\n143#2,2:216\n145#2:219\n149#2,2:220\n151#2:223\n155#2,2:224\n157#2:227\n161#2,2:228\n163#2:231\n167#2,2:232\n169#2:235\n170#2:237\n174#2,2:238\n176#2:241\n177#2:243\n181#2,2:244\n183#2:247\n185#2,2:250\n189#2,7:252\n196#2:260\n198#2,14:263\n213#2:277\n215#2:278\n*E\n*S KotlinDebug\n*F\n+ 1 RealBufferedSink.kt\nokio/RealBufferedSink\n*L\n54#1:144\n55#1:149\n57#1:153\n58#1:157\n60#1:161\n62#1:165\n66#1:167\n77#1:168\n81#1:171\n83#1:175\n87#1:177\n92#1:181\n93#1:190\n94#1:198\n95#1:202\n96#1:206\n97#1:210\n98#1:214\n99#1:218\n100#1:222\n101#1:226\n102#1:230\n103#1:234\n103#1:236\n104#1:240\n104#1:242\n133#1:246\n133#1:248\n133#1:249\n137#1:259\n137#1:261\n137#1:262\n54#1,2:142\n54#1,2:145\n55#1,2:147\n55#1:150\n57#1,2:151\n57#1:154\n58#1,2:155\n58#1:158\n60#1,2:159\n60#1:162\n62#1,2:163\n62#1:166\n81#1,2:169\n81#1:172\n83#1,2:173\n83#1:176\n92#1,3:178\n92#1,5:182\n93#1,3:187\n93#1,5:191\n94#1,2:196\n94#1:199\n95#1,2:200\n95#1:203\n96#1,2:204\n96#1:207\n97#1,2:208\n97#1:211\n98#1,2:212\n98#1:215\n99#1,2:216\n99#1:219\n100#1,2:220\n100#1:223\n101#1,2:224\n101#1:227\n102#1,2:228\n102#1:231\n103#1,2:232\n103#1:235\n103#1:237\n104#1,2:238\n104#1:241\n104#1:243\n133#1,2:244\n133#1:247\n133#1,2:250\n137#1,7:252\n137#1:260\n137#1,14:263\n138#1:277\n139#1:278\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0001H\u0016J\u0008\u0010\u0011\u001a\u00020\u0001H\u0016J\u0008\u0010\u0012\u001a\u00020\u000fH\u0016J\u0008\u0010\u0013\u001a\u00020\rH\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u001eH\u0016J \u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001bH\u0016J\u0018\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010\u001a\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020#H\u0016J \u0010\u001a\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001bH\u0016J\u0018\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020$2\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010%\u001a\u00020!2\u0006\u0010\u001c\u001a\u00020$H\u0016J\u0010\u0010&\u001a\u00020\u00012\u0006\u0010\'\u001a\u00020\u001bH\u0016J\u0010\u0010(\u001a\u00020\u00012\u0006\u0010)\u001a\u00020!H\u0016J\u0010\u0010*\u001a\u00020\u00012\u0006\u0010)\u001a\u00020!H\u0016J\u0010\u0010+\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\u001bH\u0016J\u0010\u0010-\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\u001bH\u0016J\u0010\u0010.\u001a\u00020\u00012\u0006\u0010)\u001a\u00020!H\u0016J\u0010\u0010/\u001a\u00020\u00012\u0006\u0010)\u001a\u00020!H\u0016J\u0010\u00100\u001a\u00020\u00012\u0006\u00101\u001a\u00020\u001bH\u0016J\u0010\u00102\u001a\u00020\u00012\u0006\u00101\u001a\u00020\u001bH\u0016J\u0018\u00103\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u00192\u0006\u00105\u001a\u000206H\u0016J(\u00103\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u00192\u0006\u00107\u001a\u00020\u001b2\u0006\u00108\u001a\u00020\u001b2\u0006\u00105\u001a\u000206H\u0016J\u0010\u00109\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u0019H\u0016J \u00109\u001a\u00020\u00012\u0006\u00104\u001a\u00020\u00192\u0006\u00107\u001a\u00020\u001b2\u0006\u00108\u001a\u00020\u001bH\u0016J\u0010\u0010:\u001a\u00020\u00012\u0006\u0010;\u001a\u00020\u001bH\u0016R\u001b\u0010\u0005\u001a\u00020\u00068\u00d6\u0002X\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0010\u0010\u000b\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006<"
    }
    d2 = {
        "Lokio/RealBufferedSink;",
        "Lokio/BufferedSink;",
        "sink",
        "Lokio/Sink;",
        "(Lokio/Sink;)V",
        "buffer",
        "Lokio/Buffer;",
        "buffer$annotations",
        "()V",
        "getBuffer",
        "()Lokio/Buffer;",
        "bufferField",
        "closed",
        "",
        "close",
        "",
        "emit",
        "emitCompleteSegments",
        "flush",
        "isOpen",
        "outputStream",
        "Ljava/io/OutputStream;",
        "timeout",
        "Lokio/Timeout;",
        "toString",
        "",
        "write",
        "",
        "source",
        "Ljava/nio/ByteBuffer;",
        "",
        "offset",
        "byteCount",
        "",
        "byteString",
        "Lokio/ByteString;",
        "Lokio/Source;",
        "writeAll",
        "writeByte",
        "b",
        "writeDecimalLong",
        "v",
        "writeHexadecimalUnsignedLong",
        "writeInt",
        "i",
        "writeIntLe",
        "writeLong",
        "writeLongLe",
        "writeShort",
        "s",
        "writeShortLe",
        "writeString",
        "string",
        "charset",
        "Ljava/nio/charset/Charset;",
        "beginIndex",
        "endIndex",
        "writeUtf8",
        "writeUtf8CodePoint",
        "codePoint",
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
.field public final bufferField:Lokio/Buffer;

.field public closed:Z

.field public final sink:Lokio/Sink;


# direct methods
.method public constructor <init>(Lokio/Sink;)V
    .locals 1
    .param p1, "sink"    # Lokio/Sink;

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    .line 45
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    return-void
.end method

.method public static synthetic buffer$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public buffer()Lokio/Buffer;
    .locals 1

    .line 52
    iget-object v0, p0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    return-object v0
.end method

.method public close()V
    .locals 8

    .line 137
    move-object v0, p0

    .local v0, "$this$commonClose$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 252
    .local v1, "$i$f$commonClose":I
    iget-boolean v2, v0, Lokio/RealBufferedSink;->closed:Z

    if-eqz v2, :cond_0

    goto :goto_2

    .line 256
    :cond_0
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Throwable;

    .line 257
    .local v2, "thrown$iv":Ljava/lang/Throwable;
    nop

    .line 258
    move-object v3, v0

    .local v3, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v4, 0x0

    .line 259
    .local v4, "$i$f$getBuffer":I
    :try_start_0
    iget-object v5, v3, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .end local v3    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v4    # "$i$f$getBuffer":I
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 260
    iget-object v3, v0, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    move-object v4, v0

    .local v4, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v5, 0x0

    .line 261
    .local v5, "$i$f$getBuffer":I
    iget-object v6, v4, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 260
    .end local v4    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v5    # "$i$f$getBuffer":I
    move-object v4, v0

    .restart local v4    # "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v5, 0x0

    .line 262
    .restart local v5    # "$i$f$getBuffer":I
    iget-object v7, v4, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .end local v4    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v5    # "$i$f$getBuffer":I
    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v4

    .line 260
    invoke-interface {v3, v6, v4, v5}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v3

    .line 264
    .local v3, "e$iv":Ljava/lang/Throwable;
    move-object v2, v3

    .line 265
    .end local v3    # "e$iv":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    nop

    .line 267
    nop

    .line 268
    :try_start_1
    iget-object v3, v0, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    invoke-interface {v3}, Lokio/Sink;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 269
    :catchall_1
    move-exception v3

    .line 270
    .restart local v3    # "e$iv":Ljava/lang/Throwable;
    if-nez v2, :cond_2

    move-object v2, v3

    .line 271
    .end local v3    # "e$iv":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    nop

    .line 273
    const/4 v3, 0x1

    iput-boolean v3, v0, Lokio/RealBufferedSink;->closed:Z

    .line 275
    if-nez v2, :cond_3

    .line 276
    nop

    .line 137
    .end local v0    # "$this$commonClose$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$commonClose":I
    .end local v2    # "thrown$iv":Ljava/lang/Throwable;
    :goto_2
    return-void

    .line 275
    .restart local v0    # "$this$commonClose$iv":Lokio/RealBufferedSink;
    .restart local v1    # "$i$f$commonClose":I
    .restart local v2    # "thrown$iv":Ljava/lang/Throwable;
    :cond_3
    throw v2
.end method

.method public emit()Lokio/BufferedSink;
    .locals 7

    .line 104
    move-object v0, p0

    .local v0, "$this$commonEmit$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 238
    .local v1, "$i$f$commonEmit":I
    iget-boolean v2, v0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 239
    move-object v2, v0

    .local v2, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v3, 0x0

    .line 240
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .end local v2    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v3    # "$i$f$getBuffer":I
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 239
    nop

    .line 241
    .local v2, "byteCount$iv":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    iget-object v4, v0, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    move-object v5, v0

    .local v5, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v6, 0x0

    .line 242
    .local v6, "$i$f$getBuffer":I
    iget-object v5, v5, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 241
    .end local v5    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v6    # "$i$f$getBuffer":I
    invoke-interface {v4, v5, v2, v3}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 243
    :cond_0
    check-cast v0, Lokio/BufferedSink;

    .line 104
    .end local v0    # "$this$commonEmit$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$commonEmit":I
    .end local v2    # "byteCount$iv":J
    return-object v0

    .line 238
    .restart local v0    # "$this$commonEmit$iv":Lokio/RealBufferedSink;
    .restart local v1    # "$i$f$commonEmit":I
    :cond_1
    const/4 v2, 0x0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public emitCompleteSegments()Lokio/BufferedSink;
    .locals 7

    .line 103
    move-object v0, p0

    .local v0, "$this$commonEmitCompleteSegments$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 232
    .local v1, "$i$f$commonEmitCompleteSegments":I
    iget-boolean v2, v0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 233
    move-object v2, v0

    .local v2, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v3, 0x0

    .line 234
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 233
    .end local v2    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v3    # "$i$f$getBuffer":I
    invoke-virtual {v2}, Lokio/Buffer;->completeSegmentByteCount()J

    move-result-wide v2

    .line 235
    .local v2, "byteCount$iv":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    iget-object v4, v0, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    move-object v5, v0

    .local v5, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v6, 0x0

    .line 236
    .local v6, "$i$f$getBuffer":I
    iget-object v5, v5, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 235
    .end local v5    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v6    # "$i$f$getBuffer":I
    invoke-interface {v4, v5, v2, v3}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 237
    :cond_0
    check-cast v0, Lokio/BufferedSink;

    .line 103
    .end local v0    # "$this$commonEmitCompleteSegments$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$commonEmitCompleteSegments":I
    .end local v2    # "byteCount$iv":J
    return-object v0

    .line 232
    .restart local v0    # "$this$commonEmitCompleteSegments$iv":Lokio/RealBufferedSink;
    .restart local v1    # "$i$f$commonEmitCompleteSegments":I
    :cond_1
    const/4 v2, 0x0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public flush()V
    .locals 7

    .line 133
    move-object v0, p0

    .local v0, "$this$commonFlush$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 244
    .local v1, "$i$f$commonFlush":I
    iget-boolean v2, v0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 245
    move-object v2, v0

    .local v2, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v3, 0x0

    .line 246
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .end local v2    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v3    # "$i$f$getBuffer":I
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 247
    iget-object v2, v0, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    move-object v3, v0

    .local v3, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v4, 0x0

    .line 248
    .local v4, "$i$f$getBuffer":I
    iget-object v3, v3, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 247
    .end local v3    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v4    # "$i$f$getBuffer":I
    move-object v4, v0

    .local v4, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v5, 0x0

    .line 249
    .local v5, "$i$f$getBuffer":I
    iget-object v4, v4, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .end local v4    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v5    # "$i$f$getBuffer":I
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    .line 247
    invoke-interface {v2, v3, v4, v5}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 250
    :cond_0
    iget-object v2, v0, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    invoke-interface {v2}, Lokio/Sink;->flush()V

    .line 251
    nop

    .line 133
    .end local v0    # "$this$commonFlush$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$commonFlush":I
    return-void

    .line 244
    .restart local v0    # "$this$commonFlush$iv":Lokio/RealBufferedSink;
    .restart local v1    # "$i$f$commonFlush":I
    :cond_1
    const/4 v2, 0x0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public getBuffer()Lokio/Buffer;
    .locals 2

    const/4 v0, 0x0

    .line 50
    .local v0, "$i$f$getBuffer":I
    iget-object v1, p0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    return-object v1
.end method

.method public isOpen()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    .line 107
    new-instance v0, Lokio/RealBufferedSink$outputStream$1;

    invoke-direct {v0, p0}, Lokio/RealBufferedSink$outputStream$1;-><init>(Lokio/RealBufferedSink;)V

    check-cast v0, Ljava/io/OutputStream;

    return-object v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 3

    .line 138
    move-object v0, p0

    .local v0, "$this$commonTimeout$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 277
    .local v1, "$i$f$commonTimeout":I
    iget-object v2, v0, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    invoke-interface {v2}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    .line 138
    .end local v0    # "$this$commonTimeout$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$commonTimeout":I
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 139
    move-object v0, p0

    .local v0, "$this$commonToString$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 278
    .local v1, "$i$f$commonToString":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buffer("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lokio/RealBufferedSink;->sink:Lokio/Sink;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .end local v0    # "$this$commonToString$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$commonToString":I
    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "source"    # Ljava/nio/ByteBuffer;

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 87
    move-object v0, p0

    .local v0, "this_$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 177
    .local v1, "$i$f$getBuffer":I
    iget-object v0, v0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 87
    .end local v0    # "this_$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$getBuffer":I
    invoke-virtual {v0, p1}, Lokio/Buffer;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 88
    .local v0, "result":I
    invoke-virtual {p0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    .line 89
    return v0

    .line 86
    .end local v0    # "result":I
    :cond_0
    const/4 v0, 0x0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public write(Lokio/ByteString;)Lokio/BufferedSink;
    .locals 4
    .param p1, "byteString"    # Lokio/ByteString;

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    move-object v0, p0

    .local v0, "$this$commonWrite$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 147
    .local v1, "$i$f$commonWrite":I
    iget-boolean v2, v0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 148
    move-object v2, v0

    .local v2, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v3, 0x0

    .line 149
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 148
    .end local v2    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v3    # "$i$f$getBuffer":I
    invoke-virtual {v2, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 150
    invoke-virtual {v0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v0

    .line 55
    .end local v0    # "$this$commonWrite$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$commonWrite":I
    return-object v0

    .line 147
    .restart local v0    # "$this$commonWrite$iv":Lokio/RealBufferedSink;
    .restart local v1    # "$i$f$commonWrite":I
    :cond_0
    const/4 v2, 0x0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public write(Lokio/ByteString;II)Lokio/BufferedSink;
    .locals 4
    .param p1, "byteString"    # Lokio/ByteString;
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    move-object v0, p0

    .local v0, "$this$commonWrite$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 151
    .local v1, "$i$f$commonWrite":I
    iget-boolean v2, v0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 152
    move-object v2, v0

    .local v2, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v3, 0x0

    .line 153
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 152
    .end local v2    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v3    # "$i$f$getBuffer":I
    invoke-virtual {v2, p1, p2, p3}, Lokio/Buffer;->write(Lokio/ByteString;II)Lokio/Buffer;

    .line 154
    invoke-virtual {v0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v0

    .line 57
    .end local v0    # "$this$commonWrite$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$commonWrite":I
    return-object v0

    .line 151
    .restart local v0    # "$this$commonWrite$iv":Lokio/RealBufferedSink;
    .restart local v1    # "$i$f$commonWrite":I
    :cond_0
    const/4 v2, 0x0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public write(Lokio/Source;J)Lokio/BufferedSink;
    .locals 9
    .param p1, "source"    # Lokio/Source;
    .param p2, "byteCount"    # J

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    move-object v0, p0

    .local v0, "$this$commonWrite$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 187
    .local v1, "$i$f$commonWrite":I
    move-wide v2, p2

    .line 188
    .local v2, "byteCount$iv":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 189
    move-object v4, v0

    .local v4, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v5, 0x0

    .line 190
    .local v5, "$i$f$getBuffer":I
    iget-object v4, v4, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 189
    .end local v4    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v5    # "$i$f$getBuffer":I
    invoke-interface {p1, v4, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    .line 191
    .local v4, "read$iv":J
    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 192
    sub-long/2addr v2, v4

    .line 193
    invoke-virtual {v0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    .line 188
    .end local v4    # "read$iv":J
    goto :goto_0

    .line 191
    .restart local v4    # "read$iv":J
    :cond_0
    new-instance v6, Ljava/io/EOFException;

    invoke-direct {v6}, Ljava/io/EOFException;-><init>()V

    check-cast v6, Ljava/lang/Throwable;

    throw v6

    .line 195
    .end local v4    # "read$iv":J
    :cond_1
    check-cast v0, Lokio/BufferedSink;

    .line 93
    .end local v0    # "$this$commonWrite$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$commonWrite":I
    .end local v2    # "byteCount$iv":J
    return-object v0
.end method

.method public write([B)Lokio/BufferedSink;
    .locals 4
    .param p1, "source"    # [B

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    move-object v0, p0

    .local v0, "$this$commonWrite$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 169
    .local v1, "$i$f$commonWrite":I
    iget-boolean v2, v0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 170
    move-object v2, v0

    .local v2, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v3, 0x0

    .line 171
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 170
    .end local v2    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v3    # "$i$f$getBuffer":I
    invoke-virtual {v2, p1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    .line 172
    invoke-virtual {v0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v0

    .line 81
    .end local v0    # "$this$commonWrite$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$commonWrite":I
    return-object v0

    .line 169
    .restart local v0    # "$this$commonWrite$iv":Lokio/RealBufferedSink;
    .restart local v1    # "$i$f$commonWrite":I
    :cond_0
    const/4 v2, 0x0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public write([BII)Lokio/BufferedSink;
    .locals 4
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    move-object v0, p0

    .local v0, "$this$commonWrite$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 173
    .local v1, "$i$f$commonWrite":I
    iget-boolean v2, v0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 174
    move-object v2, v0

    .local v2, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v3, 0x0

    .line 175
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 174
    .end local v2    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v3    # "$i$f$getBuffer":I
    invoke-virtual {v2, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    .line 176
    invoke-virtual {v0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v0

    .line 83
    .end local v0    # "$this$commonWrite$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$commonWrite":I
    return-object v0

    .line 173
    .restart local v0    # "$this$commonWrite$iv":Lokio/RealBufferedSink;
    .restart local v1    # "$i$f$commonWrite":I
    :cond_0
    const/4 v2, 0x0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public write(Lokio/Buffer;J)V
    .locals 4
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    move-object v0, p0

    .local v0, "$this$commonWrite$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 142
    .local v1, "$i$f$commonWrite":I
    iget-boolean v2, v0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 143
    move-object v2, v0

    .local v2, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v3, 0x0

    .line 144
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 143
    .end local v2    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v3    # "$i$f$getBuffer":I
    invoke-virtual {v2, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 145
    invoke-virtual {v0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    .line 146
    nop

    .line 54
    .end local v0    # "$this$commonWrite$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$commonWrite":I
    return-void

    .line 142
    .restart local v0    # "$this$commonWrite$iv":Lokio/RealBufferedSink;
    .restart local v1    # "$i$f$commonWrite":I
    :cond_0
    const/4 v2, 0x0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public writeAll(Lokio/Source;)J
    .locals 9
    .param p1, "source"    # Lokio/Source;

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    move-object v0, p0

    .local v0, "$this$commonWriteAll$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 178
    .local v1, "$i$f$commonWriteAll":I
    const-wide/16 v2, 0x0

    .line 179
    .local v2, "totalBytesRead$iv":J
    :goto_0
    nop

    .line 180
    move-object v4, v0

    .local v4, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v5, 0x0

    .line 181
    .local v5, "$i$f$getBuffer":I
    iget-object v4, v4, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 180
    .end local v4    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v5    # "$i$f$getBuffer":I
    const/16 v5, 0x2000

    int-to-long v5, v5

    invoke-interface {p1, v4, v5, v6}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    .line 182
    .local v4, "readCount$iv":J
    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 186
    .end local v4    # "readCount$iv":J
    nop

    .line 92
    .end local v0    # "$this$commonWriteAll$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$commonWriteAll":I
    .end local v2    # "totalBytesRead$iv":J
    return-wide v2

    .line 183
    .restart local v0    # "$this$commonWriteAll$iv":Lokio/RealBufferedSink;
    .restart local v1    # "$i$f$commonWriteAll":I
    .restart local v2    # "totalBytesRead$iv":J
    .restart local v4    # "readCount$iv":J
    :cond_0
    add-long/2addr v2, v4

    .line 184
    invoke-virtual {v0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    .line 179
    .end local v4    # "readCount$iv":J
    goto :goto_0
.end method

.method public writeByte(I)Lokio/BufferedSink;
    .locals 4
    .param p1, "b"    # I

    .line 94
    move-object v0, p0

    .local v0, "$this$commonWriteByte$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 196
    .local v1, "$i$f$commonWriteByte":I
    iget-boolean v2, v0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 197
    move-object v2, v0

    .local v2, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v3, 0x0

    .line 198
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 197
    .end local v2    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v3    # "$i$f$getBuffer":I
    invoke-virtual {v2, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 199
    invoke-virtual {v0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v0

    .line 94
    .end local v0    # "$this$commonWriteByte$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$commonWriteByte":I
    return-object v0

    .line 196
    .restart local v0    # "$this$commonWriteByte$iv":Lokio/RealBufferedSink;
    .restart local v1    # "$i$f$commonWriteByte":I
    :cond_0
    const/4 v2, 0x0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public writeDecimalLong(J)Lokio/BufferedSink;
    .locals 4
    .param p1, "v"    # J

    .line 101
    move-object v0, p0

    .local v0, "$this$commonWriteDecimalLong$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 224
    .local v1, "$i$f$commonWriteDecimalLong":I
    iget-boolean v2, v0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 225
    move-object v2, v0

    .local v2, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v3, 0x0

    .line 226
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 225
    .end local v2    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v3    # "$i$f$getBuffer":I
    invoke-virtual {v2, p1, p2}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    .line 227
    invoke-virtual {v0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v0

    .line 101
    .end local v0    # "$this$commonWriteDecimalLong$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$commonWriteDecimalLong":I
    return-object v0

    .line 224
    .restart local v0    # "$this$commonWriteDecimalLong$iv":Lokio/RealBufferedSink;
    .restart local v1    # "$i$f$commonWriteDecimalLong":I
    :cond_0
    const/4 v2, 0x0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;
    .locals 4
    .param p1, "v"    # J

    .line 102
    move-object v0, p0

    .local v0, "$this$commonWriteHexadecimalUnsignedLong$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 228
    .local v1, "$i$f$commonWriteHexadecimalUnsignedLong":I
    iget-boolean v2, v0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 229
    move-object v2, v0

    .local v2, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v3, 0x0

    .line 230
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 229
    .end local v2    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v3    # "$i$f$getBuffer":I
    invoke-virtual {v2, p1, p2}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    .line 231
    invoke-virtual {v0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v0

    .line 102
    .end local v0    # "$this$commonWriteHexadecimalUnsignedLong$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$commonWriteHexadecimalUnsignedLong":I
    return-object v0

    .line 228
    .restart local v0    # "$this$commonWriteHexadecimalUnsignedLong$iv":Lokio/RealBufferedSink;
    .restart local v1    # "$i$f$commonWriteHexadecimalUnsignedLong":I
    :cond_0
    const/4 v2, 0x0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public writeInt(I)Lokio/BufferedSink;
    .locals 4
    .param p1, "i"    # I

    .line 97
    move-object v0, p0

    .local v0, "$this$commonWriteInt$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 208
    .local v1, "$i$f$commonWriteInt":I
    iget-boolean v2, v0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 209
    move-object v2, v0

    .local v2, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v3, 0x0

    .line 210
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 209
    .end local v2    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v3    # "$i$f$getBuffer":I
    invoke-virtual {v2, p1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 211
    invoke-virtual {v0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v0

    .line 97
    .end local v0    # "$this$commonWriteInt$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$commonWriteInt":I
    return-object v0

    .line 208
    .restart local v0    # "$this$commonWriteInt$iv":Lokio/RealBufferedSink;
    .restart local v1    # "$i$f$commonWriteInt":I
    :cond_0
    const/4 v2, 0x0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public writeIntLe(I)Lokio/BufferedSink;
    .locals 4
    .param p1, "i"    # I

    .line 98
    move-object v0, p0

    .local v0, "$this$commonWriteIntLe$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 212
    .local v1, "$i$f$commonWriteIntLe":I
    iget-boolean v2, v0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 213
    move-object v2, v0

    .local v2, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v3, 0x0

    .line 214
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 213
    .end local v2    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v3    # "$i$f$getBuffer":I
    invoke-virtual {v2, p1}, Lokio/Buffer;->writeIntLe(I)Lokio/Buffer;

    .line 215
    invoke-virtual {v0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v0

    .line 98
    .end local v0    # "$this$commonWriteIntLe$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$commonWriteIntLe":I
    return-object v0

    .line 212
    .restart local v0    # "$this$commonWriteIntLe$iv":Lokio/RealBufferedSink;
    .restart local v1    # "$i$f$commonWriteIntLe":I
    :cond_0
    const/4 v2, 0x0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public writeLong(J)Lokio/BufferedSink;
    .locals 4
    .param p1, "v"    # J

    .line 99
    move-object v0, p0

    .local v0, "$this$commonWriteLong$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 216
    .local v1, "$i$f$commonWriteLong":I
    iget-boolean v2, v0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 217
    move-object v2, v0

    .local v2, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v3, 0x0

    .line 218
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 217
    .end local v2    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v3    # "$i$f$getBuffer":I
    invoke-virtual {v2, p1, p2}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    .line 219
    invoke-virtual {v0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v0

    .line 99
    .end local v0    # "$this$commonWriteLong$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$commonWriteLong":I
    return-object v0

    .line 216
    .restart local v0    # "$this$commonWriteLong$iv":Lokio/RealBufferedSink;
    .restart local v1    # "$i$f$commonWriteLong":I
    :cond_0
    const/4 v2, 0x0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public writeLongLe(J)Lokio/BufferedSink;
    .locals 4
    .param p1, "v"    # J

    .line 100
    move-object v0, p0

    .local v0, "$this$commonWriteLongLe$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 220
    .local v1, "$i$f$commonWriteLongLe":I
    iget-boolean v2, v0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 221
    move-object v2, v0

    .local v2, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v3, 0x0

    .line 222
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 221
    .end local v2    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v3    # "$i$f$getBuffer":I
    invoke-virtual {v2, p1, p2}, Lokio/Buffer;->writeLongLe(J)Lokio/Buffer;

    .line 223
    invoke-virtual {v0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v0

    .line 100
    .end local v0    # "$this$commonWriteLongLe$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$commonWriteLongLe":I
    return-object v0

    .line 220
    .restart local v0    # "$this$commonWriteLongLe$iv":Lokio/RealBufferedSink;
    .restart local v1    # "$i$f$commonWriteLongLe":I
    :cond_0
    const/4 v2, 0x0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public writeShort(I)Lokio/BufferedSink;
    .locals 4
    .param p1, "s"    # I

    .line 95
    move-object v0, p0

    .local v0, "$this$commonWriteShort$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 200
    .local v1, "$i$f$commonWriteShort":I
    iget-boolean v2, v0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 201
    move-object v2, v0

    .local v2, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v3, 0x0

    .line 202
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 201
    .end local v2    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v3    # "$i$f$getBuffer":I
    invoke-virtual {v2, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    .line 203
    invoke-virtual {v0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v0

    .line 95
    .end local v0    # "$this$commonWriteShort$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$commonWriteShort":I
    return-object v0

    .line 200
    .restart local v0    # "$this$commonWriteShort$iv":Lokio/RealBufferedSink;
    .restart local v1    # "$i$f$commonWriteShort":I
    :cond_0
    const/4 v2, 0x0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public writeShortLe(I)Lokio/BufferedSink;
    .locals 4
    .param p1, "s"    # I

    .line 96
    move-object v0, p0

    .local v0, "$this$commonWriteShortLe$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 204
    .local v1, "$i$f$commonWriteShortLe":I
    iget-boolean v2, v0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 205
    move-object v2, v0

    .local v2, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v3, 0x0

    .line 206
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 205
    .end local v2    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v3    # "$i$f$getBuffer":I
    invoke-virtual {v2, p1}, Lokio/Buffer;->writeShortLe(I)Lokio/Buffer;

    .line 207
    invoke-virtual {v0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v0

    .line 96
    .end local v0    # "$this$commonWriteShortLe$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$commonWriteShortLe":I
    return-object v0

    .line 204
    .restart local v0    # "$this$commonWriteShortLe$iv":Lokio/RealBufferedSink;
    .restart local v1    # "$i$f$commonWriteShortLe":I
    :cond_0
    const/4 v2, 0x0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 77
    move-object v0, p0

    .local v0, "this_$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 168
    .local v1, "$i$f$getBuffer":I
    iget-object v0, v0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 77
    .end local v0    # "this_$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$getBuffer":I
    invoke-virtual {v0, p1, p2, p3, p4}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    .line 78
    invoke-virtual {p0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    const/4 v0, 0x0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-boolean v0, p0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 66
    move-object v0, p0

    .local v0, "this_$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 167
    .local v1, "$i$f$getBuffer":I
    iget-object v0, v0, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 66
    .end local v0    # "this_$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$getBuffer":I
    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;

    .line 67
    invoke-virtual {p0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    move-object v0, p0

    .local v0, "$this$commonWriteUtf8$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 155
    .local v1, "$i$f$commonWriteUtf8":I
    iget-boolean v2, v0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 156
    move-object v2, v0

    .local v2, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v3, 0x0

    .line 157
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 156
    .end local v2    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v3    # "$i$f$getBuffer":I
    invoke-virtual {v2, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    .line 158
    invoke-virtual {v0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v0

    .line 58
    .end local v0    # "$this$commonWriteUtf8$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$commonWriteUtf8":I
    return-object v0

    .line 155
    .restart local v0    # "$this$commonWriteUtf8$iv":Lokio/RealBufferedSink;
    .restart local v1    # "$i$f$commonWriteUtf8":I
    :cond_0
    const/4 v2, 0x0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    move-object v0, p0

    .local v0, "$this$commonWriteUtf8$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 159
    .local v1, "$i$f$commonWriteUtf8":I
    iget-boolean v2, v0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 160
    move-object v2, v0

    .local v2, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v3, 0x0

    .line 161
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 160
    .end local v2    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v3    # "$i$f$getBuffer":I
    invoke-virtual {v2, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    .line 162
    invoke-virtual {v0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v0

    .line 60
    .end local v0    # "$this$commonWriteUtf8$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$commonWriteUtf8":I
    return-object v0

    .line 159
    .restart local v0    # "$this$commonWriteUtf8$iv":Lokio/RealBufferedSink;
    .restart local v1    # "$i$f$commonWriteUtf8":I
    :cond_0
    const/4 v2, 0x0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public writeUtf8CodePoint(I)Lokio/BufferedSink;
    .locals 4
    .param p1, "codePoint"    # I

    .line 62
    move-object v0, p0

    .local v0, "$this$commonWriteUtf8CodePoint$iv":Lokio/RealBufferedSink;
    const/4 v1, 0x0

    .line 163
    .local v1, "$i$f$commonWriteUtf8CodePoint":I
    iget-boolean v2, v0, Lokio/RealBufferedSink;->closed:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 164
    move-object v2, v0

    .local v2, "this_$iv$iv":Lokio/RealBufferedSink;
    const/4 v3, 0x0

    .line 165
    .local v3, "$i$f$getBuffer":I
    iget-object v2, v2, Lokio/RealBufferedSink;->bufferField:Lokio/Buffer;

    .line 164
    .end local v2    # "this_$iv$iv":Lokio/RealBufferedSink;
    .end local v3    # "$i$f$getBuffer":I
    invoke-virtual {v2, p1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    .line 166
    invoke-virtual {v0}, Lokio/RealBufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    move-result-object v0

    .line 62
    .end local v0    # "$this$commonWriteUtf8CodePoint$iv":Lokio/RealBufferedSink;
    .end local v1    # "$i$f$commonWriteUtf8CodePoint":I
    return-object v0

    .line 163
    .restart local v0    # "$this$commonWriteUtf8CodePoint$iv":Lokio/RealBufferedSink;
    .restart local v1    # "$i$f$commonWriteUtf8CodePoint":I
    :cond_0
    const/4 v2, 0x0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method
