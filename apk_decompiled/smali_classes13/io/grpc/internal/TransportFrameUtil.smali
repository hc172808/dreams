.class public final Lio/grpc/internal/TransportFrameUtil;
.super Ljava/lang/Object;
.source "TransportFrameUtil.java"


# static fields
.field private static final binaryHeaderSuffixBytes:[B

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const-class v0, Lio/grpc/internal/TransportFrameUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/TransportFrameUtil;->logger:Ljava/util/logging/Logger;

    .line 40
    sget-object v0, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 41
    const-string v1, "-bin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lio/grpc/internal/TransportFrameUtil;->binaryHeaderSuffixBytes:[B

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static endsWith([B[B)Z
    .locals 5
    .param p0, "subject"    # [B
    .param p1, "suffix"    # [B

    .line 154
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    .line 155
    .local v0, "start":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 156
    return v1

    .line 158
    :cond_0
    move v2, v0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 159
    aget-byte v3, p0, v2

    sub-int v4, v2, v0

    aget-byte v4, p1, v4

    if-eq v3, v4, :cond_1

    .line 160
    return v1

    .line 158
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private static isSpecCompliantAscii([B)Z
    .locals 5
    .param p0, "subject"    # [B

    .line 171
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-byte v3, p0, v2

    .line 172
    .local v3, "b":B
    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7e

    if-le v3, v4, :cond_0

    goto :goto_1

    .line 171
    .end local v3    # "b":B
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .restart local v3    # "b":B
    :cond_1
    :goto_1
    return v1

    .line 176
    .end local v3    # "b":B
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static serializeHeadersWithCommasInBin([[BI)[[B
    .locals 10
    .param p0, "http2Headers"    # [[B
    .param p1, "resumeFrom"    # I

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    .local v0, "headerList":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 124
    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "i":I
    :cond_0
    move v1, p1

    .restart local v1    # "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 127
    aget-object v2, p0, v1

    .line 128
    .local v2, "key":[B
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    .line 129
    .local v3, "value":[B
    sget-object v4, Lio/grpc/internal/TransportFrameUtil;->binaryHeaderSuffixBytes:[B

    invoke-static {v2, v4}, Lio/grpc/internal/TransportFrameUtil;->endsWith([B[B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 130
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    goto :goto_4

    .line 135
    :cond_1
    const/4 v4, 0x0

    .line 136
    .local v4, "prevIdx":I
    const/4 v5, 0x0

    .local v5, "idx":I
    :goto_2
    array-length v6, v3

    if-gt v5, v6, :cond_3

    .line 137
    array-length v6, v3

    if-eq v5, v6, :cond_2

    aget-byte v6, v3, v5

    const/16 v7, 0x2c

    if-eq v6, v7, :cond_2

    .line 138
    goto :goto_3

    .line 141
    :cond_2
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    sub-int v8, v5, v4

    sget-object v9, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v7, v3, v4, v8, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v6, v7}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object v6

    .line 142
    .local v6, "decodedVal":[B
    add-int/lit8 v4, v5, 0x1

    .line 143
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .end local v6    # "decodedVal":[B
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 126
    .end local v2    # "key":[B
    .end local v3    # "value":[B
    .end local v4    # "prevIdx":I
    .end local v5    # "idx":I
    :cond_3
    :goto_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 147
    .end local v1    # "i":I
    :cond_4
    const/4 v1, 0x0

    new-array v1, v1, [[B

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    return-object v1
.end method

.method public static toHttp2Headers(Lio/grpc/Metadata;)[[B
    .locals 10
    .param p0, "headers"    # Lio/grpc/Metadata;

    .line 51
    invoke-static {p0}, Lio/grpc/InternalMetadata;->serialize(Lio/grpc/Metadata;)[[B

    move-result-object v0

    .line 53
    .local v0, "serializedHeaders":[[B
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 54
    new-array v1, v1, [[B

    return-object v1

    .line 56
    :cond_0
    const/4 v2, 0x0

    .line 57
    .local v2, "k":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 58
    aget-object v4, v0, v3

    .line 59
    .local v4, "key":[B
    add-int/lit8 v5, v3, 0x1

    aget-object v5, v0, v5

    .line 60
    .local v5, "value":[B
    sget-object v6, Lio/grpc/internal/TransportFrameUtil;->binaryHeaderSuffixBytes:[B

    invoke-static {v4, v6}, Lio/grpc/internal/TransportFrameUtil;->endsWith([B[B)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 62
    aput-object v4, v0, v2

    .line 63
    add-int/lit8 v6, v2, 0x1

    sget-object v7, Lio/grpc/InternalMetadata;->BASE64_ENCODING_OMIT_PADDING:Lcom/google/common/io/BaseEncoding;

    .line 64
    invoke-virtual {v7, v5}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    aput-object v7, v0, v6

    .line 65
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 70
    :cond_1
    invoke-static {v5}, Lio/grpc/internal/TransportFrameUtil;->isSpecCompliantAscii([B)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 71
    aput-object v4, v0, v2

    .line 72
    add-int/lit8 v6, v2, 0x1

    aput-object v5, v0, v6

    .line 73
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 75
    :cond_2
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v6, v4, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 76
    .local v6, "keyString":Ljava/lang/String;
    sget-object v7, Lio/grpc/internal/TransportFrameUtil;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Metadata key="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " contains invalid ASCII characters"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 57
    .end local v4    # "key":[B
    .end local v5    # "value":[B
    .end local v6    # "keyString":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 82
    .end local v3    # "i":I
    :cond_3
    array-length v3, v0

    if-ne v2, v3, :cond_4

    .line 83
    return-object v0

    .line 85
    :cond_4
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    return-object v1
.end method

.method public static toRawSerializedHeaders([[B)[[B
    .locals 6
    .param p0, "http2Headers"    # [[B
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 102
    aget-object v1, p0, v0

    .line 103
    .local v1, "key":[B
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p0, v2

    .line 104
    .local v2, "value":[B
    sget-object v3, Lio/grpc/internal/TransportFrameUtil;->binaryHeaderSuffixBytes:[B

    invoke-static {v1, v3}, Lio/grpc/internal/TransportFrameUtil;->endsWith([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 107
    aget-byte v4, v2, v3

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_0

    .line 108
    invoke-static {p0, v0}, Lio/grpc/internal/TransportFrameUtil;->serializeHeadersWithCommasInBin([[BI)[[B

    move-result-object v4

    return-object v4

    .line 106
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 111
    .end local v3    # "idx":I
    :cond_1
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v4}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object v3

    .line 112
    .local v3, "decodedVal":[B
    add-int/lit8 v4, v0, 0x1

    aput-object v3, p0, v4

    .line 101
    .end local v1    # "key":[B
    .end local v2    # "value":[B
    .end local v3    # "decodedVal":[B
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 118
    .end local v0    # "i":I
    :cond_3
    return-object p0
.end method
