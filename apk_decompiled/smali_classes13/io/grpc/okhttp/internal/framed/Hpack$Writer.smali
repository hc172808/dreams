.class final Lio/grpc/okhttp/internal/framed/Hpack$Writer;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/internal/framed/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

.field private dynamicTableByteCount:I

.field dynamicTableHeaderCount:I

.field private emitDynamicTableSizeUpdate:Z

.field headerTableSizeSetting:I

.field private maxDynamicTableByteCount:I

.field private nextDynamicTableIndex:I

.field private final out:Lokio/Buffer;

.field private smallestHeaderTableSizeSetting:I

.field private useCompression:Z


# direct methods
.method constructor <init>(IZLokio/Buffer;)V
    .locals 1
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "useCompression"    # Z
    .param p3, "out"    # Lokio/Buffer;

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    const v0, 0x7fffffff

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    .line 407
    const/16 v0, 0x8

    new-array v0, v0, [Lio/grpc/okhttp/internal/framed/Header;

    iput-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    .line 412
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->nextDynamicTableIndex:I

    .line 422
    iput p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->headerTableSizeSetting:I

    .line 423
    iput p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    .line 424
    iput-boolean p2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->useCompression:Z

    .line 425
    iput-object p3, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    .line 426
    return-void
.end method

.method constructor <init>(Lokio/Buffer;)V
    .locals 2
    .param p1, "out"    # Lokio/Buffer;

    .line 417
    const/16 v0, 0x1000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;-><init>(IZLokio/Buffer;)V

    .line 418
    return-void
.end method

.method private adjustDynamicTableByteCount()V
    .locals 2

    .line 606
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    iget v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    if-ge v0, v1, :cond_1

    .line 607
    if-nez v0, :cond_0

    .line 608
    invoke-direct {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->clearDynamicTable()V

    goto :goto_0

    .line 610
    :cond_0
    sub-int/2addr v1, v0

    invoke-direct {p0, v1}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->evictToRecoverBytes(I)I

    .line 613
    :cond_1
    :goto_0
    return-void
.end method

.method private clearDynamicTable()V
    .locals 2

    .line 539
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 540
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->nextDynamicTableIndex:I

    .line 541
    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableHeaderCount:I

    .line 542
    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    .line 543
    return-void
.end method

.method private evictToRecoverBytes(I)I
    .locals 5
    .param p1, "bytesToRecover"    # I

    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, "entriesToEvict":I
    if-lez p1, :cond_1

    .line 550
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_0
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->nextDynamicTableIndex:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 551
    iget-object v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    aget-object v2, v2, v1

    iget v2, v2, Lio/grpc/okhttp/internal/framed/Header;->hpackSize:I

    sub-int/2addr p1, v2

    .line 552
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    iget-object v3, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    aget-object v3, v3, v1

    iget v3, v3, Lio/grpc/okhttp/internal/framed/Header;->hpackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    .line 553
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableHeaderCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableHeaderCount:I

    .line 554
    add-int/lit8 v0, v0, 0x1

    .line 550
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 556
    .end local v1    # "j":I
    :cond_0
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v4, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableHeaderCount:I

    invoke-static {v1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->nextDynamicTableIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->nextDynamicTableIndex:I

    .line 560
    :cond_1
    return v0
.end method

.method private insertIntoDynamicTable(Lio/grpc/okhttp/internal/framed/Header;)V
    .locals 7
    .param p1, "entry"    # Lio/grpc/okhttp/internal/framed/Header;

    .line 564
    iget v0, p1, Lio/grpc/okhttp/internal/framed/Header;->hpackSize:I

    .line 567
    .local v0, "delta":I
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    if-le v0, v1, :cond_0

    .line 568
    invoke-direct {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->clearDynamicTable()V

    .line 569
    return-void

    .line 573
    :cond_0
    iget v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    .line 574
    .local v2, "bytesToRecover":I
    invoke-direct {p0, v2}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->evictToRecoverBytes(I)I

    .line 576
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableHeaderCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    array-length v4, v3

    if-le v1, v4, :cond_1

    .line 577
    array-length v1, v3

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lio/grpc/okhttp/internal/framed/Header;

    .line 578
    .local v1, "doubled":[Lio/grpc/okhttp/internal/framed/Header;
    const/4 v4, 0x0

    array-length v5, v3

    array-length v6, v3

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 579
    iget-object v3, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->nextDynamicTableIndex:I

    .line 580
    iput-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    .line 582
    .end local v1    # "doubled":[Lio/grpc/okhttp/internal/framed/Header;
    :cond_1
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->nextDynamicTableIndex:I

    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->nextDynamicTableIndex:I

    .line 583
    .local v1, "index":I
    iget-object v3, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    aput-object p1, v3, v1

    .line 584
    iget v3, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableHeaderCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableHeaderCount:I

    .line 585
    iget v3, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr v3, v0

    iput v3, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    .line 586
    return-void
.end method


# virtual methods
.method maxDynamicTableByteCount()I
    .locals 1

    .line 535
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    return v0
.end method

.method resizeHeaderTable(I)V
    .locals 2
    .param p1, "headerTableSizeSetting"    # I

    .line 589
    iput p1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->headerTableSizeSetting:I

    .line 590
    const/16 v0, 0x4000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 592
    .local v0, "effectiveHeaderTableSize":I
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    if-ne v1, v0, :cond_0

    .line 593
    return-void

    .line 596
    :cond_0
    if-ge v0, v1, :cond_1

    .line 597
    iget v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    .line 598
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    .line 600
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    .line 601
    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    .line 602
    invoke-direct {p0}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->adjustDynamicTableByteCount()V

    .line 603
    return-void
.end method

.method writeByteString(Lokio/ByteString;)V
    .locals 5
    .param p1, "data"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->useCompression:Z

    const/16 v1, 0x7f

    if-eqz v0, :cond_0

    invoke-static {}, Lio/grpc/okhttp/internal/framed/Huffman;->get()Lio/grpc/okhttp/internal/framed/Huffman;

    move-result-object v0

    invoke-virtual {p1}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/okhttp/internal/framed/Huffman;->encodedLength([B)I

    move-result v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 523
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 524
    .local v0, "huffmanBuffer":Lokio/Buffer;
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Huffman;->get()Lio/grpc/okhttp/internal/framed/Huffman;

    move-result-object v2

    invoke-virtual {p1}, Lokio/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0}, Lokio/Buffer;->outputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lio/grpc/okhttp/internal/framed/Huffman;->encode([BLjava/io/OutputStream;)V

    .line 525
    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v2

    .line 526
    .local v2, "huffmanBytes":Lokio/ByteString;
    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v3

    const/16 v4, 0x80

    invoke-virtual {p0, v3, v1, v4}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 527
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v1, v2}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 528
    .end local v0    # "huffmanBuffer":Lokio/Buffer;
    .end local v2    # "huffmanBytes":Lokio/ByteString;
    goto :goto_0

    .line 529
    :cond_0
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 530
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 532
    :goto_0
    return-void
.end method

.method writeHeaders(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    .local p1, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    iget-boolean v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 432
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    iget v2, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    const/16 v3, 0x20

    const/16 v4, 0x1f

    if-ge v0, v2, :cond_0

    .line 434
    invoke-virtual {p0, v0, v4, v3}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 436
    :cond_0
    iput-boolean v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    .line 437
    const v0, 0x7fffffff

    iput v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    .line 438
    iget v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    invoke-virtual {p0, v0, v4, v3}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 441
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_a

    .line 442
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/okhttp/internal/framed/Header;

    .line 443
    .local v3, "header":Lio/grpc/okhttp/internal/framed/Header;
    iget-object v4, v3, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v4

    .line 444
    .local v4, "name":Lokio/ByteString;
    iget-object v5, v3, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    .line 445
    .local v5, "value":Lokio/ByteString;
    const/4 v6, -0x1

    .line 446
    .local v6, "headerIndex":I
    const/4 v7, -0x1

    .line 448
    .local v7, "headerNameIndex":I
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Hpack;->access$200()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 449
    .local v8, "staticIndex":Ljava/lang/Integer;
    if-eqz v8, :cond_3

    .line 450
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v7, v9, 0x1

    .line 451
    const/4 v9, 0x2

    if-lt v7, v9, :cond_3

    const/4 v9, 0x7

    if-gt v7, v9, :cond_3

    .line 456
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Hpack;->access$000()[Lio/grpc/okhttp/internal/framed/Header;

    move-result-object v9

    add-int/lit8 v10, v7, -0x1

    aget-object v9, v9, v10

    iget-object v9, v9, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    invoke-virtual {v9, v5}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 457
    move v6, v7

    goto :goto_1

    .line 458
    :cond_2
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Hpack;->access$000()[Lio/grpc/okhttp/internal/framed/Header;

    move-result-object v9

    aget-object v9, v9, v7

    iget-object v9, v9, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    invoke-virtual {v9, v5}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 459
    add-int/lit8 v6, v7, 0x1

    .line 464
    :cond_3
    :goto_1
    const/4 v9, -0x1

    if-ne v6, v9, :cond_6

    .line 465
    iget v10, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->nextDynamicTableIndex:I

    add-int/lit8 v10, v10, 0x1

    .local v10, "j":I
    :goto_2
    iget-object v11, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    array-length v12, v11

    if-ge v10, v12, :cond_6

    .line 466
    aget-object v11, v11, v10

    iget-object v11, v11, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v11, v4}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 467
    iget-object v11, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->dynamicTable:[Lio/grpc/okhttp/internal/framed/Header;

    aget-object v11, v11, v10

    iget-object v11, v11, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    invoke-virtual {v11, v5}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 468
    iget v11, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->nextDynamicTableIndex:I

    sub-int v11, v10, v11

    invoke-static {}, Lio/grpc/okhttp/internal/framed/Hpack;->access$000()[Lio/grpc/okhttp/internal/framed/Header;

    move-result-object v12

    array-length v12, v12

    add-int v6, v11, v12

    .line 469
    goto :goto_3

    .line 470
    :cond_4
    if-ne v7, v9, :cond_5

    .line 471
    iget v11, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->nextDynamicTableIndex:I

    sub-int v11, v10, v11

    invoke-static {}, Lio/grpc/okhttp/internal/framed/Hpack;->access$000()[Lio/grpc/okhttp/internal/framed/Header;

    move-result-object v12

    array-length v12, v12

    add-int/2addr v11, v12

    move v7, v11

    .line 465
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 477
    .end local v10    # "j":I
    :cond_6
    :goto_3
    if-eq v6, v9, :cond_7

    .line 479
    const/16 v9, 0x7f

    const/16 v10, 0x80

    invoke-virtual {p0, v6, v9, v10}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->writeInt(III)V

    goto :goto_4

    .line 480
    :cond_7
    const/16 v10, 0x40

    if-ne v7, v9, :cond_8

    .line 482
    iget-object v9, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v9, v10}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 483
    invoke-virtual {p0, v4}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    .line 484
    invoke-virtual {p0, v5}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    .line 485
    invoke-direct {p0, v3}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->insertIntoDynamicTable(Lio/grpc/okhttp/internal/framed/Header;)V

    goto :goto_4

    .line 486
    :cond_8
    invoke-static {}, Lio/grpc/okhttp/internal/framed/Hpack;->access$300()Lokio/ByteString;

    move-result-object v9

    invoke-virtual {v4, v9}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v9

    if-eqz v9, :cond_9

    sget-object v9, Lio/grpc/okhttp/internal/framed/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    invoke-virtual {v9, v4}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 489
    const/16 v9, 0xf

    invoke-virtual {p0, v7, v9, v1}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 490
    invoke-virtual {p0, v5}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    goto :goto_4

    .line 493
    :cond_9
    const/16 v9, 0x3f

    invoke-virtual {p0, v7, v9, v10}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->writeInt(III)V

    .line 494
    invoke-virtual {p0, v5}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    .line 495
    invoke-direct {p0, v3}, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->insertIntoDynamicTable(Lio/grpc/okhttp/internal/framed/Header;)V

    .line 441
    .end local v3    # "header":Lio/grpc/okhttp/internal/framed/Header;
    .end local v4    # "name":Lokio/ByteString;
    .end local v5    # "value":Lokio/ByteString;
    .end local v6    # "headerIndex":I
    .end local v7    # "headerNameIndex":I
    .end local v8    # "staticIndex":Ljava/lang/Integer;
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 498
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_a
    return-void
.end method

.method writeInt(III)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "prefixMask"    # I
    .param p3, "bits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    if-ge p1, p2, :cond_0

    .line 504
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    or-int v1, p3, p1

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 505
    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    or-int v1, p3, p2

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 510
    sub-int/2addr p1, p2

    .line 513
    :goto_0
    const/16 v0, 0x80

    if-lt p1, v0, :cond_1

    .line 514
    and-int/lit8 v0, p1, 0x7f

    .line 515
    .local v0, "b":I
    iget-object v1, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    or-int/lit16 v2, v0, 0x80

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 516
    ushr-int/lit8 p1, p1, 0x7

    .line 517
    .end local v0    # "b":I
    goto :goto_0

    .line 518
    :cond_1
    iget-object v0, p0, Lio/grpc/okhttp/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 519
    return-void
.end method
