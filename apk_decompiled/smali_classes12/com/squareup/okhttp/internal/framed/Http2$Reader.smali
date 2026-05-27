.class final Lcom/squareup/okhttp/internal/framed/Http2$Reader;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/framed/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/framed/Http2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field private final continuation:Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;

.field final hpackReader:Lcom/squareup/okhttp/internal/framed/Hpack$Reader;

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokio/BufferedSource;IZ)V
    .locals 2
    .param p1, "source"    # Lokio/BufferedSource;
    .param p2, "headerTableSize"    # I
    .param p3, "client"    # Z

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    .line 97
    iput-boolean p3, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->client:Z

    .line 98
    new-instance v0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;

    invoke-direct {v0, p1}, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;-><init>(Lokio/BufferedSource;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;

    .line 99
    new-instance v1, Lcom/squareup/okhttp/internal/framed/Hpack$Reader;

    invoke-direct {v1, p2, v0}, Lcom/squareup/okhttp/internal/framed/Hpack$Reader;-><init>(ILokio/Source;)V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->hpackReader:Lcom/squareup/okhttp/internal/framed/Hpack$Reader;

    .line 100
    return-void
.end method

.method private readData(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 6
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 220
    .local v0, "inFinished":Z
    :goto_0
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 221
    .local v1, "gzipped":Z
    :goto_1
    if-nez v1, :cond_3

    .line 225
    and-int/lit8 v3, p3, 0x8

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    .line 226
    .local v2, "padding":S
    :cond_2
    invoke-static {p2, p3, v2}, Lcom/squareup/okhttp/internal/framed/Http2;->access$400(IBS)I

    move-result p2

    .line 228
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p1, v0, p4, v3, p2}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->data(ZILokio/BufferedSource;I)V

    .line 229
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->skip(J)V

    .line 230
    return-void

    .line 222
    .end local v2    # "padding":S
    :cond_3
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-static {v3, v2}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method private readGoAway(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 8
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lt p2, v1, :cond_3

    .line 335
    if-nez p4, :cond_2

    .line 336
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 337
    .local v1, "lastStreamId":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    .line 338
    .local v3, "errorCodeInt":I
    add-int/lit8 v4, p2, -0x8

    .line 339
    .local v4, "opaqueDataLength":I
    invoke-static {v3}, Lcom/squareup/okhttp/internal/framed/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object v5

    .line 340
    .local v5, "errorCode":Lcom/squareup/okhttp/internal/framed/ErrorCode;
    if-eqz v5, :cond_1

    .line 343
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 344
    .local v0, "debugData":Lokio/ByteString;
    if-lez v4, :cond_0

    .line 345
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    int-to-long v6, v4

    invoke-interface {v2, v6, v7}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    .line 347
    :cond_0
    invoke-interface {p1, v1, v5, v0}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->goAway(ILcom/squareup/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V

    .line 348
    return-void

    .line 341
    .end local v0    # "debugData":Lokio/ByteString;
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v2

    const-string v2, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {v2, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 335
    .end local v1    # "lastStreamId":I
    .end local v3    # "errorCodeInt":I
    .end local v4    # "opaqueDataLength":I
    .end local v5    # "errorCode":Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "TYPE_GOAWAY streamId != 0"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 334
    :cond_3
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "TYPE_GOAWAY length < 8: %s"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readHeaderBlock(ISBI)Ljava/util/List;
    .locals 1
    .param p1, "length"    # I
    .param p2, "padding"    # S
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;

    iput p1, v0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->left:I

    iput p1, v0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->length:I

    .line 206
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;

    iput-short p2, v0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->padding:S

    .line 207
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;

    iput-byte p3, v0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->flags:B

    .line 208
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->continuation:Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;

    iput p4, v0, Lcom/squareup/okhttp/internal/framed/Http2$ContinuationSource;->streamId:I

    .line 212
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->hpackReader:Lcom/squareup/okhttp/internal/framed/Hpack$Reader;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/Hpack$Reader;->readHeaders()V

    .line 213
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->hpackReader:Lcom/squareup/okhttp/internal/framed/Hpack$Reader;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/Hpack$Reader;->getAndResetHeaderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readHeaders(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 9
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    const/4 v0, 0x0

    if-eqz p4, :cond_3

    .line 187
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 189
    .local v4, "endStream":Z
    :goto_0
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 191
    .local v0, "padding":S
    :cond_1
    and-int/lit8 v1, p3, 0x20

    if-eqz v1, :cond_2

    .line 192
    invoke-direct {p0, p1, p4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readPriority(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;I)V

    .line 193
    add-int/lit8 p2, p2, -0x5

    .line 196
    :cond_2
    invoke-static {p2, p3, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$400(IBS)I

    move-result p2

    .line 198
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v1

    .line 200
    .local v1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    const/4 v3, 0x0

    const/4 v6, -0x1

    sget-object v8, Lcom/squareup/okhttp/internal/framed/HeadersMode;->HTTP_20_HEADERS:Lcom/squareup/okhttp/internal/framed/HeadersMode;

    move-object v2, p1

    move v5, p4

    move-object v7, v1

    invoke-interface/range {v2 .. v8}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V

    .line 201
    return-void

    .line 185
    .end local v0    # "padding":S
    .end local v1    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    .end local v4    # "endStream":Z
    :cond_3
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readPing(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 5
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p2, v2, :cond_2

    .line 325
    if-nez p4, :cond_1

    .line 326
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 327
    .local v2, "payload1":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readInt()I

    move-result v3

    .line 328
    .local v3, "payload2":I
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 329
    .local v0, "ack":Z
    :cond_0
    invoke-interface {p1, v0, v2, v3}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->ping(ZII)V

    .line 330
    return-void

    .line 325
    .end local v0    # "ack":Z
    .end local v2    # "payload1":I
    .end local v3    # "payload2":I
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TYPE_PING streamId != 0"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 324
    :cond_2
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_PING length != 8: %s"

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readPriority(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;I)V
    .locals 5
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 241
    .local v0, "w1":I
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 242
    .local v1, "exclusive":Z
    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v3, v0

    .line 243
    .local v3, "streamDependency":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v2

    .line 244
    .local v4, "weight":I
    invoke-interface {p1, p2, v3, v4, v1}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->priority(IIIZ)V

    .line 245
    return-void
.end method

.method private readPriority(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 3
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    .line 235
    if-eqz p4, :cond_0

    .line 236
    invoke-direct {p0, p1, p4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readPriority(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;I)V

    .line 237
    return-void

    .line 235
    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TYPE_PRIORITY streamId == 0"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 234
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_PRIORITY length: %d != 5"

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readPushPromise(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 3
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 314
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 315
    .local v0, "padding":S
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 316
    .local v1, "promisedStreamId":I
    add-int/lit8 p2, p2, -0x4

    .line 317
    invoke-static {p2, p3, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$400(IBS)I

    move-result p2

    .line 318
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object v2

    .line 319
    .local v2, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    invoke-interface {p1, p4, v1, v2}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->pushPromise(IILjava/util/List;)V

    .line 320
    return-void

    .line 312
    .end local v0    # "padding":S
    .end local v1    # "promisedStreamId":I
    .end local v2    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readRstStream(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 5
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p2, v2, :cond_2

    .line 250
    if-eqz p4, :cond_1

    .line 251
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 252
    .local v2, "errorCodeInt":I
    invoke-static {v2}, Lcom/squareup/okhttp/internal/framed/ErrorCode;->fromHttp2(I)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object v3

    .line 253
    .local v3, "errorCode":Lcom/squareup/okhttp/internal/framed/ErrorCode;
    if-eqz v3, :cond_0

    .line 256
    invoke-interface {p1, p4, v3}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 257
    return-void

    .line 254
    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v1, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 250
    .end local v2    # "errorCodeInt":I
    .end local v3    # "errorCode":Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "TYPE_RST_STREAM streamId == 0"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 249
    :cond_2
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readSettings(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 7
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    const/4 v0, 0x0

    if-nez p4, :cond_9

    .line 262
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_1

    .line 263
    if-nez p2, :cond_0

    .line 264
    invoke-interface {p1}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->ackSettings()V

    .line 265
    return-void

    .line 263
    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 268
    :cond_1
    rem-int/lit8 v1, p2, 0x6

    const/4 v2, 0x1

    if-nez v1, :cond_8

    .line 269
    new-instance v1, Lcom/squareup/okhttp/internal/framed/Settings;

    invoke-direct {v1}, Lcom/squareup/okhttp/internal/framed/Settings;-><init>()V

    .line 270
    .local v1, "settings":Lcom/squareup/okhttp/internal/framed/Settings;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_6

    .line 271
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readShort()S

    move-result v4

    .line 272
    .local v4, "id":S
    iget-object v5, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v5

    .line 274
    .local v5, "value":I
    packed-switch v4, :pswitch_data_0

    .line 299
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v2, v0

    const-string v0, "PROTOCOL_ERROR invalid settings id: %s"

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 297
    :pswitch_0
    goto :goto_1

    .line 292
    :pswitch_1
    const/16 v6, 0x4000

    if-lt v5, v6, :cond_2

    const v6, 0xffffff

    if-gt v5, v6, :cond_2

    goto :goto_1

    .line 293
    :cond_2
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v0

    const-string v0, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 286
    :pswitch_2
    const/4 v4, 0x7

    .line 287
    if-ltz v5, :cond_3

    goto :goto_1

    .line 288
    :cond_3
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-static {v2, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 283
    :pswitch_3
    const/4 v4, 0x4

    .line 284
    goto :goto_1

    .line 278
    :pswitch_4
    if-eqz v5, :cond_5

    if-ne v5, v2, :cond_4

    goto :goto_1

    .line 279
    :cond_4
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-static {v2, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 276
    :pswitch_5
    nop

    .line 301
    :cond_5
    :goto_1
    invoke-virtual {v1, v4, v0, v5}, Lcom/squareup/okhttp/internal/framed/Settings;->set(III)Lcom/squareup/okhttp/internal/framed/Settings;

    .line 270
    .end local v4    # "id":S
    .end local v5    # "value":I
    add-int/lit8 v3, v3, 0x6

    goto :goto_0

    .line 303
    .end local v3    # "i":I
    :cond_6
    invoke-interface {p1, v0, v1}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->settings(ZLcom/squareup/okhttp/internal/framed/Settings;)V

    .line 304
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/Settings;->getHeaderTableSize()I

    move-result v0

    if-ltz v0, :cond_7

    .line 305
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->hpackReader:Lcom/squareup/okhttp/internal/framed/Hpack$Reader;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/Settings;->getHeaderTableSize()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/internal/framed/Hpack$Reader;->headerTableSizeSetting(I)V

    .line 307
    :cond_7
    return-void

    .line 268
    .end local v1    # "settings":Lcom/squareup/okhttp/internal/framed/Settings;
    :cond_8
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 261
    :cond_9
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TYPE_SETTINGS streamId != 0"

    invoke-static {v1, v0}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readWindowUpdate(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V
    .locals 7
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # B
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    .line 353
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    .line 354
    .local v2, "increment":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 355
    invoke-interface {p1, p4, v2, v3}, Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;->windowUpdate(IJ)V

    .line 356
    return-void

    .line 354
    :cond_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v0

    const-string v0, "windowSizeIncrement was 0"

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 352
    .end local v2    # "increment":J
    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    .line 360
    return-void
.end method

.method public nextFrame(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;)Z
    .locals 8
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    const-wide/16 v2, 0x9

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->require(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    nop

    .line 130
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$300(Lokio/BufferedSource;)I

    move-result v1

    .line 131
    .local v1, "length":I
    const/4 v2, 0x1

    if-ltz v1, :cond_1

    const/16 v3, 0x4000

    if-gt v1, v3, :cond_1

    .line 134
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 135
    .local v0, "type":B
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 136
    .local v3, "flags":B
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    .line 137
    .local v4, "streamId":I
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v5

    invoke-static {v2, v4, v1, v0, v3}, Lcom/squareup/okhttp/internal/framed/Http2$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 139
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 178
    iget-object v5, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    int-to-long v6, v1

    invoke-interface {v5, v6, v7}, Lokio/BufferedSource;->skip(J)V

    goto :goto_0

    .line 173
    :pswitch_0
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readWindowUpdate(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 174
    goto :goto_0

    .line 169
    :pswitch_1
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readGoAway(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 170
    goto :goto_0

    .line 165
    :pswitch_2
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readPing(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 166
    goto :goto_0

    .line 161
    :pswitch_3
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readPushPromise(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 162
    goto :goto_0

    .line 157
    :pswitch_4
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readSettings(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 158
    goto :goto_0

    .line 153
    :pswitch_5
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readRstStream(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 154
    goto :goto_0

    .line 149
    :pswitch_6
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readPriority(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 150
    goto :goto_0

    .line 145
    :pswitch_7
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readHeaders(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 146
    goto :goto_0

    .line 141
    :pswitch_8
    invoke-direct {p0, p1, v1, v3, v4}, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->readData(Lcom/squareup/okhttp/internal/framed/FrameReader$Handler;IBI)V

    .line 142
    nop

    .line 180
    :goto_0
    return v2

    .line 132
    .end local v0    # "type":B
    .end local v3    # "flags":B
    .end local v4    # "streamId":I
    :cond_1
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "FRAME_SIZE_ERROR: %s"

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 114
    .end local v1    # "length":I
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/io/IOException;
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->client:Z

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/Http2$Reader;->source:Lokio/BufferedSource;

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$000()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    .line 105
    .local v0, "connectionPreface":Lokio/ByteString;
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "<< CONNECTION %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 106
    :cond_1
    invoke-static {}, Lcom/squareup/okhttp/internal/framed/Http2;->access$000()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    return-void

    .line 107
    :cond_2
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Expected a connection header but was %s"

    invoke-static {v2, v1}, Lcom/squareup/okhttp/internal/framed/Http2;->access$200(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method
