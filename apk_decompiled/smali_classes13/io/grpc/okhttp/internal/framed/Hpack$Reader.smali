.class final Lio/grpc/okhttp/internal/framed/Hpack$Reader;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/internal/framed/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

.field dynamicTableByteCount:I

.field dynamicTableHeaderCount:I

.field private final headerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field private headerTableSizeSetting:I

.field private maxDynamicTableByteCount:I

.field nextDynamicTableIndex:I

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(IILokio/Source;)V
    .locals 1
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "maxDynamicTableByteCount"    # I
    .param p3, "source"    # Lokio/Source;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    .line 136
    const/16 v0, 0x8

    new-array v0, v0, [Lio/grpc/okhttp/internal/framed/Header;

    iput-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    .line 138
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->nextDynamicTableIndex:I

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableHeaderCount:I

    .line 140
    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    .line 148
    iput p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->headerTableSizeSetting:I

    .line 149
    iput p2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 150
    invoke-static {p3}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->source:Lokio/BufferedSource;

    .line 151
    return-void
.end method

.method constructor <init>(ILokio/Source;)V
    .locals 0
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "source"    # Lokio/Source;

    .line 143
    invoke-direct {p0, p1, p1, p2}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;-><init>(IILokio/Source;)V

    .line 144
    return-void
.end method

.method private adjustDynamicTableByteCount()V
    .locals 2

    .line 171
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    iget v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    if-ge v0, v1, :cond_1

    .line 172
    if-nez v0, :cond_0

    .line 173
    invoke-direct {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->clearDynamicTable()V

    goto :goto_0

    .line 175
    :cond_0
    sub-int/2addr v1, v0

    invoke-direct {p0, v1}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->evictToRecoverBytes(I)I

    .line 178
    :cond_1
    :goto_0
    return-void
.end method

.method private clearDynamicTable()V
    .locals 2

    .line 181
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->nextDynamicTableIndex:I

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableHeaderCount:I

    .line 184
    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    .line 185
    return-void
.end method

.method private dynamicTableIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 259
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->nextDynamicTableIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private evictToRecoverBytes(I)I
    .locals 5
    .param p1, "bytesToRecover"    # I

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "entriesToEvict":I
    if-lez p1, :cond_1

    .line 192
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_0
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->nextDynamicTableIndex:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 193
    iget-object v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    aget-object v2, v2, v1

    iget v2, v2, Lio/grpc/okhttp/internal/framed/Header;->hpackSize:I

    sub-int/2addr p1, v2

    .line 194
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    iget-object v3, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    aget-object v3, v3, v1

    iget v3, v3, Lio/grpc/okhttp/internal/framed/Header;->hpackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    .line 195
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableHeaderCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableHeaderCount:I

    .line 196
    add-int/lit8 v0, v0, 0x1

    .line 192
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 198
    .end local v1    # "j":I
    :cond_0
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v4, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableHeaderCount:I

    invoke-static {v1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->nextDynamicTableIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->nextDynamicTableIndex:I

    .line 202
    :cond_1
    return v0
.end method

.method private getName(I)Lokio/ByteString;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-direct {p0, p1}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Hpack;->access$000()[Lio/grpc/okhttp/internal/framed/Header;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    return-object v0

    .line 291
    :cond_0
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Hpack;->access$000()[Lio/grpc/okhttp/internal/framed/Header;

    move-result-object v0

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v0

    .line 292
    .local v0, "dynamicTableIndex":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 295
    aget-object v1, v1, v0

    iget-object v1, v1, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    return-object v1

    .line 293
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Header index too large "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private insertIntoDynamicTable(ILio/grpc/okhttp/internal/framed/Header;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "entry"    # Lio/grpc/okhttp/internal/framed/Header;

    .line 305
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    iget v0, p2, Lio/grpc/okhttp/internal/framed/Header;->hpackSize:I

    .line 308
    .local v0, "delta":I
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 309
    iget-object v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    invoke-direct {p0, p1}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Lio/grpc/okhttp/internal/framed/Header;->hpackSize:I

    sub-int/2addr v0, v2

    .line 313
    :cond_0
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    if-le v0, v2, :cond_1

    .line 314
    invoke-direct {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->clearDynamicTable()V

    .line 315
    return-void

    .line 319
    :cond_1
    iget v3, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    .line 320
    .local v3, "bytesToRecover":I
    invoke-direct {p0, v3}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->evictToRecoverBytes(I)I

    move-result v2

    .line 322
    .local v2, "entriesEvicted":I
    if-ne p1, v1, :cond_3

    .line 323
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableHeaderCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    array-length v5, v4

    if-le v1, v5, :cond_2

    .line 324
    array-length v1, v4

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lio/grpc/okhttp/internal/framed/Header;

    .line 325
    .local v1, "doubled":[Lio/grpc/okhttp/internal/framed/Header;
    const/4 v5, 0x0

    array-length v6, v4

    array-length v7, v4

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    iget-object v4, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->nextDynamicTableIndex:I

    .line 327
    iput-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    .line 329
    .end local v1    # "doubled":[Lio/grpc/okhttp/internal/framed/Header;
    :cond_2
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->nextDynamicTableIndex:I

    add-int/lit8 v4, v1, -0x1

    iput v4, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->nextDynamicTableIndex:I

    move p1, v1

    .line 330
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    aput-object p2, v1, p1

    .line 331
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableHeaderCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableHeaderCount:I

    goto :goto_0

    .line 333
    :cond_3
    invoke-direct {p0, p1}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 334
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    aput-object p2, v1, p1

    .line 336
    :goto_0
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableByteCount:I

    .line 337
    return-void
.end method

.method private isStaticHeader(I)Z
    .locals 2
    .param p1, "index"    # I

    .line 300
    const/4 v0, 0x1

    if-ltz p1, :cond_0

    invoke-static {}, Lio/grpc/okhttp/internal/framed/Hpack;->access$000()[Lio/grpc/okhttp/internal/framed/Header;

    move-result-object v1

    array-length v1, v1

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private readIndexedHeader(I)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-direct {p0, p1}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Hpack;->access$000()[Lio/grpc/okhttp/internal/framed/Header;

    move-result-object v0

    aget-object v0, v0, p1

    .line 247
    .local v0, "staticEntry":Lio/grpc/okhttp/internal/framed/Header;
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v0    # "staticEntry":Lio/grpc/okhttp/internal/framed/Header;
    goto :goto_0

    .line 249
    :cond_0
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Hpack;->access$000()[Lio/grpc/okhttp/internal/framed/Header;

    move-result-object v0

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v0

    .line 250
    .local v0, "dynamicTableIndex":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_1

    .line 253
    iget-object v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    aget-object v1, v1, v0

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    .end local v0    # "dynamicTableIndex":I
    :goto_0
    return-void

    .line 251
    .restart local v0    # "dynamicTableIndex":I
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Header index too large "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readLiteralHeaderWithIncrementalIndexingIndexedName(I)V
    .locals 4
    .param p1, "nameIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-direct {p0, p1}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->getName(I)Lokio/ByteString;

    move-result-object v0

    .line 277
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 278
    .local v1, "value":Lokio/ByteString;
    new-instance v2, Lio/grpc/okhttp/internal/framed/Header;

    invoke-direct {v2, v0, v1}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    const/4 v3, -0x1

    invoke-direct {p0, v3, v2}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->insertIntoDynamicTable(ILio/grpc/okhttp/internal/framed/Header;)V

    .line 279
    return-void
.end method

.method private readLiteralHeaderWithIncrementalIndexingNewName()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/okhttp/internal/framed/Hpack;->access$100(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    .line 283
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 284
    .local v1, "value":Lokio/ByteString;
    new-instance v2, Lio/grpc/okhttp/internal/framed/Header;

    invoke-direct {v2, v0, v1}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    const/4 v3, -0x1

    invoke-direct {p0, v3, v2}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->insertIntoDynamicTable(ILio/grpc/okhttp/internal/framed/Header;)V

    .line 285
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingIndexedName(I)V
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    invoke-direct {p0, p1}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->getName(I)Lokio/ByteString;

    move-result-object v0

    .line 264
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 265
    .local v1, "value":Lokio/ByteString;
    iget-object v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v3, Lio/grpc/okhttp/internal/framed/Header;

    invoke-direct {v3, v0, v1}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingNewName()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/okhttp/internal/framed/Hpack;->access$100(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    .line 270
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 271
    .local v1, "value":Lokio/ByteString;
    iget-object v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v3, Lio/grpc/okhttp/internal/framed/Header;

    invoke-direct {v3, v0, v1}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    return-void
.end method


# virtual methods
.method public getAndResetHeaderList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 240
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 241
    return-object v0
.end method

.method headerTableSizeSetting(I)V
    .locals 0
    .param p1, "headerTableSizeSetting"    # I

    .line 165
    iput p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->headerTableSizeSetting:I

    .line 166
    iput p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 167
    invoke-direct {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->adjustDynamicTableByteCount()V

    .line 168
    return-void
.end method

.method maxDynamicTableByteCount()I
    .locals 1

    .line 154
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    return v0
.end method

.method readByteString()Lokio/ByteString;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    invoke-direct {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readByte()I

    move-result v0

    .line 368
    .local v0, "firstByte":I
    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 369
    .local v1, "huffmanDecode":Z
    :goto_0
    const/16 v2, 0x7f

    invoke-virtual {p0, v0, v2}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readInt(II)I

    move-result v2

    .line 371
    .local v2, "length":I
    if-eqz v1, :cond_1

    .line 372
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Huffman;->get()Lio/grpc/okhttp/internal/framed/Huffman;

    move-result-object v3

    iget-object v4, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->source:Lokio/BufferedSource;

    int-to-long v5, v2

    invoke-interface {v4, v5, v6}, Lokio/BufferedSource;->readByteArray(J)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/grpc/okhttp/internal/framed/Huffman;->decode([B)[B

    move-result-object v3

    invoke-static {v3}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v3

    return-object v3

    .line 374
    :cond_1
    iget-object v3, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->source:Lokio/BufferedSource;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v3

    return-object v3
.end method

.method readHeaders()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    :goto_0
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 211
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 212
    .local v0, "b":I
    const/16 v1, 0x80

    if-eq v0, v1, :cond_7

    .line 214
    and-int/lit16 v2, v0, 0x80

    if-ne v2, v1, :cond_0

    .line 215
    const/16 v1, 0x7f

    invoke-virtual {p0, v0, v1}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readInt(II)I

    move-result v1

    .line 216
    .local v1, "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readIndexedHeader(I)V

    .line 217
    .end local v1    # "index":I
    goto :goto_2

    :cond_0
    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 218
    invoke-direct {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingNewName()V

    goto :goto_2

    .line 219
    :cond_1
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v1, :cond_2

    .line 220
    const/16 v1, 0x3f

    invoke-virtual {p0, v0, v1}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readInt(II)I

    move-result v1

    .line 221
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingIndexedName(I)V

    .line 222
    .end local v1    # "index":I
    goto :goto_2

    :cond_2
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    .line 223
    const/16 v1, 0x1f

    invoke-virtual {p0, v0, v1}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readInt(II)I

    move-result v1

    iput v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 224
    if-ltz v1, :cond_3

    iget v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->headerTableSizeSetting:I

    if-gt v1, v2, :cond_3

    .line 228
    invoke-direct {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->adjustDynamicTableByteCount()V

    goto :goto_2

    .line 226
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dynamic table size update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->maxDynamicTableByteCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_4
    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    if-nez v0, :cond_5

    goto :goto_1

    .line 232
    :cond_5
    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readInt(II)I

    move-result v1

    .line 233
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readLiteralHeaderWithoutIndexingIndexedName(I)V

    goto :goto_2

    .line 230
    .end local v1    # "index":I
    :cond_6
    :goto_1
    invoke-direct {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readLiteralHeaderWithoutIndexingNewName()V

    .line 235
    .end local v0    # "b":I
    :goto_2
    goto/16 :goto_0

    .line 213
    .restart local v0    # "b":I
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "index == 0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    .end local v0    # "b":I
    :cond_8
    return-void
.end method

.method readInt(II)I
    .locals 5
    .param p1, "firstByte"    # I
    .param p2, "prefixMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    and-int v0, p1, p2

    .line 345
    .local v0, "prefix":I
    if-ge v0, p2, :cond_0

    .line 346
    return v0

    .line 350
    :cond_0
    move v1, p2

    .line 351
    .local v1, "result":I
    const/4 v2, 0x0

    .line 353
    .local v2, "shift":I
    :goto_0
    invoke-direct {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Reader;->readByte()I

    move-result v3

    .line 354
    .local v3, "b":I
    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_1

    .line 355
    and-int/lit8 v4, v3, 0x7f

    shl-int/2addr v4, v2

    add-int/2addr v1, v4

    .line 356
    add-int/lit8 v2, v2, 0x7

    .line 361
    .end local v3    # "b":I
    goto :goto_0

    .line 358
    .restart local v3    # "b":I
    :cond_1
    shl-int v4, v3, v2

    add-int/2addr v1, v4

    .line 359
    nop

    .line 362
    .end local v3    # "b":I
    return v1
.end method
