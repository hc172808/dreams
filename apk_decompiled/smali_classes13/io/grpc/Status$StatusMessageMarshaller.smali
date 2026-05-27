.class final Lio/grpc/Status$StatusMessageMarshaller;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Lio/grpc/Metadata$TrustedAsciiMarshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StatusMessageMarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/Metadata$TrustedAsciiMarshaller<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final HEX:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 576
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lio/grpc/Status$StatusMessageMarshaller;->HEX:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/Status$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/Status$1;

    .line 574
    invoke-direct {p0}, Lio/grpc/Status$StatusMessageMarshaller;-><init>()V

    return-void
.end method

.method private static isEscapingChar(B)Z
    .locals 1
    .param p0, "b"    # B

    .line 593
    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7e

    if-ge p0, v0, :cond_1

    const/16 v0, 0x25

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static parseAsciiStringSlow([B)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # [B

    .line 638
    array-length v0, p0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 639
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 640
    aget-byte v2, p0, v1

    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x2

    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 642
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    sget-object v4, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    const/4 v5, 0x2

    invoke-direct {v2, p0, v3, v5, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    add-int/lit8 v1, v1, 0x3

    .line 644
    goto :goto_0

    .line 645
    :catch_0
    move-exception v2

    .line 649
    :cond_0
    aget-byte v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 650
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 652
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sget-object v5, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1
.end method

.method private static toAsciiStringSlow([BI)[B
    .locals 7
    .param p0, "valueBytes"    # [B
    .param p1, "ri"    # I

    .line 601
    array-length v0, p0

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p1

    new-array v0, v0, [B

    .line 603
    .local v0, "escapedBytes":[B
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 604
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 606
    :cond_0
    move v2, p1

    .line 607
    .local v2, "wi":I
    :goto_0
    array-length v3, p0

    if-ge p1, v3, :cond_2

    .line 608
    aget-byte v3, p0, p1

    .line 610
    .local v3, "b":B
    invoke-static {v3}, Lio/grpc/Status$StatusMessageMarshaller;->isEscapingChar(B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 611
    const/16 v4, 0x25

    aput-byte v4, v0, v2

    .line 612
    add-int/lit8 v4, v2, 0x1

    sget-object v5, Lio/grpc/Status$StatusMessageMarshaller;->HEX:[B

    shr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-byte v6, v5, v6

    aput-byte v6, v0, v4

    .line 613
    add-int/lit8 v4, v2, 0x2

    and-int/lit8 v6, v3, 0xf

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 614
    add-int/lit8 v2, v2, 0x3

    .line 615
    goto :goto_1

    .line 617
    :cond_1
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "wi":I
    .local v4, "wi":I
    aput-byte v3, v0, v2

    move v2, v4

    .line 607
    .end local v3    # "b":B
    .end local v4    # "wi":I
    .restart local v2    # "wi":I
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 619
    :cond_2
    new-array v3, v2, [B

    .line 620
    .local v3, "dest":[B
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 622
    return-object v3
.end method


# virtual methods
.method public bridge synthetic parseAsciiString([B)Ljava/lang/Object;
    .locals 0

    .line 574
    invoke-virtual {p0, p1}, Lio/grpc/Status$StatusMessageMarshaller;->parseAsciiString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseAsciiString([B)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # [B

    .line 628
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 629
    aget-byte v1, p1, v0

    .line 630
    .local v1, "b":B
    const/16 v2, 0x20

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7e

    if-ge v1, v2, :cond_1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_0

    add-int/lit8 v2, v0, 0x2

    array-length v3, p1

    if-ge v2, v3, :cond_0

    goto :goto_1

    .line 628
    .end local v1    # "b":B
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 631
    .restart local v1    # "b":B
    :cond_1
    :goto_1
    invoke-static {p1}, Lio/grpc/Status$StatusMessageMarshaller;->parseAsciiStringSlow([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 634
    .end local v0    # "i":I
    .end local v1    # "b":B
    :cond_2
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BI)V

    return-object v0
.end method

.method public bridge synthetic toAsciiString(Ljava/lang/Object;)[B
    .locals 0

    .line 574
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/grpc/Status$StatusMessageMarshaller;->toAsciiString(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public toAsciiString(Ljava/lang/String;)[B
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 581
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 582
    .local v0, "valueBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 583
    aget-byte v2, v0, v1

    .line 585
    .local v2, "b":B
    invoke-static {v2}, Lio/grpc/Status$StatusMessageMarshaller;->isEscapingChar(B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 586
    invoke-static {v0, v1}, Lio/grpc/Status$StatusMessageMarshaller;->toAsciiStringSlow([BI)[B

    move-result-object v3

    return-object v3

    .line 582
    .end local v2    # "b":B
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 589
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method
