.class public final Lio/grpc/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/Metadata$TrustedAsciiMarshaller;,
        Lio/grpc/Metadata$TrustedAsciiKey;,
        Lio/grpc/Metadata$AsciiKey;,
        Lio/grpc/Metadata$LazyValue;,
        Lio/grpc/Metadata$LazyStreamBinaryKey;,
        Lio/grpc/Metadata$BinaryKey;,
        Lio/grpc/Metadata$Key;,
        Lio/grpc/Metadata$BinaryStreamMarshaller;,
        Lio/grpc/Metadata$AsciiMarshaller;,
        Lio/grpc/Metadata$BinaryMarshaller;,
        Lio/grpc/Metadata$IterableAt;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$AsciiMarshaller<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final BASE64_ENCODING_OMIT_PADDING:Lcom/google/common/io/BaseEncoding;

.field public static final BINARY_BYTE_MARSHALLER:Lio/grpc/Metadata$BinaryMarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$BinaryMarshaller<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final BINARY_HEADER_SUFFIX:Ljava/lang/String; = "-bin"


# instance fields
.field private namesAndValues:[Ljava/lang/Object;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    nop

    .line 76
    new-instance v0, Lio/grpc/Metadata$1;

    invoke-direct {v0}, Lio/grpc/Metadata$1;-><init>()V

    sput-object v0, Lio/grpc/Metadata;->BINARY_BYTE_MARSHALLER:Lio/grpc/Metadata$BinaryMarshaller;

    .line 97
    new-instance v0, Lio/grpc/Metadata$2;

    invoke-direct {v0}, Lio/grpc/Metadata$2;-><init>()V

    sput-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 111
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->omitPadding()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    sput-object v0, Lio/grpc/Metadata;->BASE64_ENCODING_OMIT_PADDING:Lcom/google/common/io/BaseEncoding;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "usedNames"    # I
    .param p2, "namesAndValues"    # [Ljava/lang/Object;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    array-length v0, p2

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 143
    iput p1, p0, Lio/grpc/Metadata;->size:I

    .line 144
    iput-object p2, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    .line 145
    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Odd number of key-value pairs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method varargs constructor <init>(I[[B)V
    .locals 1
    .param p1, "usedNames"    # I
    .param p2, "binaryValues"    # [[B

    .line 128
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lio/grpc/Metadata;-><init>(I[Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method varargs constructor <init>([[B)V
    .locals 1
    .param p1, "binaryValues"    # [[B

    .line 118
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0, p1}, Lio/grpc/Metadata;-><init>(I[[B)V

    .line 119
    return-void
.end method

.method static synthetic access$100(Lio/grpc/Metadata;)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/Metadata;

    .line 56
    iget v0, p0, Lio/grpc/Metadata;->size:I

    return v0
.end method

.method static synthetic access$1200(Ljava/io/InputStream;)[B
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;

    .line 56
    invoke-static {p0}, Lio/grpc/Metadata;->streamToBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/Metadata;I)[B
    .locals 1
    .param p0, "x0"    # Lio/grpc/Metadata;
    .param p1, "x1"    # I

    .line 56
    invoke-direct {p0, p1}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lio/grpc/Metadata;[B[B)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/Metadata;
    .param p1, "x1"    # [B
    .param p2, "x2"    # [B

    .line 56
    invoke-direct {p0, p1, p2}, Lio/grpc/Metadata;->bytesEqual([B[B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lio/grpc/Metadata;ILio/grpc/Metadata$Key;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lio/grpc/Metadata;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lio/grpc/Metadata$Key;

    .line 56
    invoke-direct {p0, p1, p2}, Lio/grpc/Metadata;->valueAsT(ILio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private bytesEqual([B[B)Z
    .locals 1
    .param p1, "left"    # [B
    .param p2, "right"    # [B

    .line 561
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method private cap()I
    .locals 1

    .line 203
    iget-object v0, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private expand(I)V
    .locals 4
    .param p1, "newCapacity"    # I

    .line 360
    new-array v0, p1, [Ljava/lang/Object;

    .line 361
    .local v0, "newNamesAndValues":[Ljava/lang/Object;
    invoke-direct {p0}, Lio/grpc/Metadata;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    iget-object v1, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    :cond_0
    iput-object v0, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    .line 365
    return-void
.end method

.method private isEmpty()Z
    .locals 1

    .line 213
    iget v0, p0, Lio/grpc/Metadata;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private len()I
    .locals 1

    .line 208
    iget v0, p0, Lio/grpc/Metadata;->size:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private maybeExpand()V
    .locals 2

    .line 353
    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v0

    invoke-direct {p0}, Lio/grpc/Metadata;->cap()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 354
    :cond_0
    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lio/grpc/Metadata;->expand(I)V

    .line 356
    :cond_1
    return-void
.end method

.method private name(I[B)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "name"    # [B

    .line 156
    iget-object v0, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    mul-int/lit8 v1, p1, 0x2

    aput-object p2, v0, v1

    .line 157
    return-void
.end method

.method private name(I)[B
    .locals 2
    .param p1, "i"    # I

    .line 152
    iget-object v0, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    mul-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    check-cast v0, [B

    return-object v0
.end method

.method private static streamToBytes(Ljava/io/InputStream;)[B
    .locals 3
    .param p0, "stream"    # Ljava/io/InputStream;

    .line 1031
    :try_start_0
    invoke-static {p0}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "failure reading serialized stream"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private value(I)Ljava/lang/Object;
    .locals 2
    .param p1, "i"    # I

    .line 160
    iget-object v0, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private value(ILjava/lang/Object;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    instance-of v0, v0, [[B

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lio/grpc/Metadata;->cap()I

    move-result v0

    invoke-direct {p0, v0}, Lio/grpc/Metadata;->expand(I)V

    .line 172
    :cond_0
    iget-object v0, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    .line 173
    return-void
.end method

.method private value(I[B)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # [B

    .line 164
    iget-object v0, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    .line 165
    return-void
.end method

.method private valueAsBytes(I)[B
    .locals 2
    .param p1, "i"    # I

    .line 176
    invoke-direct {p0, p1}, Lio/grpc/Metadata;->value(I)Ljava/lang/Object;

    move-result-object v0

    .line 177
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 178
    move-object v1, v0

    check-cast v1, [B

    return-object v1

    .line 180
    :cond_0
    move-object v1, v0

    check-cast v1, Lio/grpc/Metadata$LazyValue;

    invoke-virtual {v1}, Lio/grpc/Metadata$LazyValue;->toBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private valueAsBytesOrStream(I)Ljava/lang/Object;
    .locals 2
    .param p1, "i"    # I

    .line 185
    invoke-direct {p0, p1}, Lio/grpc/Metadata;->value(I)Ljava/lang/Object;

    move-result-object v0

    .line 186
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 187
    return-object v0

    .line 189
    :cond_0
    move-object v1, v0

    check-cast v1, Lio/grpc/Metadata$LazyValue;

    invoke-virtual {v1}, Lio/grpc/Metadata$LazyValue;->toStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method private valueAsT(ILio/grpc/Metadata$Key;)Ljava/lang/Object;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lio/grpc/Metadata$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 194
    .local p2, "key":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<TT;>;"
    invoke-direct {p0, p1}, Lio/grpc/Metadata;->value(I)Ljava/lang/Object;

    move-result-object v0

    .line 195
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 196
    move-object v1, v0

    check-cast v1, [B

    invoke-virtual {p2, v1}, Lio/grpc/Metadata$Key;->parseBytes([B)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 198
    :cond_0
    move-object v1, v0

    check-cast v1, Lio/grpc/Metadata$LazyValue;

    invoke-virtual {v1, p2}, Lio/grpc/Metadata$LazyValue;->toObject(Lio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public containsKey(Lio/grpc/Metadata$Key;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Metadata$Key<",
            "*>;)Z"
        }
    .end annotation

    .line 231
    .local p1, "key":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lio/grpc/Metadata;->size:I

    if-ge v0, v1, :cond_1

    .line 232
    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->asciiName()[B

    move-result-object v1

    invoke-direct {p0, v0}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lio/grpc/Metadata;->bytesEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    const/4 v1, 0x1

    return v1

    .line 231
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public discardAll(Lio/grpc/Metadata$Key;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$Key<",
            "TT;>;)V"
        }
    .end annotation

    .line 429
    .local p1, "key":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<TT;>;"
    invoke-direct {p0}, Lio/grpc/Metadata;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    return-void

    .line 432
    :cond_0
    const/4 v0, 0x0

    .line 433
    .local v0, "writeIdx":I
    const/4 v1, 0x0

    .line 434
    .local v1, "readIdx":I
    :goto_0
    iget v2, p0, Lio/grpc/Metadata;->size:I

    if-ge v1, v2, :cond_2

    .line 435
    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->asciiName()[B

    move-result-object v2

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lio/grpc/Metadata;->bytesEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 436
    goto :goto_1

    .line 438
    :cond_1
    invoke-direct {p0, v1}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lio/grpc/Metadata;->name(I[B)V

    .line 439
    invoke-direct {p0, v1}, Lio/grpc/Metadata;->value(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lio/grpc/Metadata;->value(ILjava/lang/Object;)V

    .line 440
    add-int/lit8 v0, v0, 0x1

    .line 434
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    :cond_2
    move v2, v0

    .line 444
    .local v2, "newSize":I
    iget-object v3, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    mul-int/lit8 v4, v0, 0x2

    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 445
    iput v2, p0, Lio/grpc/Metadata;->size:I

    .line 446
    return-void
.end method

.method public get(Lio/grpc/Metadata$Key;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 246
    .local p1, "key":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<TT;>;"
    iget v0, p0, Lio/grpc/Metadata;->size:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 247
    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->asciiName()[B

    move-result-object v1

    invoke-direct {p0, v0}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lio/grpc/Metadata;->bytesEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    invoke-direct {p0, v0, p1}, Lio/grpc/Metadata;->valueAsT(ILio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 246
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 251
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAll(Lio/grpc/Metadata$Key;)Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$Key<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 307
    .local p1, "key":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lio/grpc/Metadata;->size:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 308
    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->asciiName()[B

    move-result-object v1

    invoke-direct {p0, v0}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lio/grpc/Metadata;->bytesEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    new-instance v1, Lio/grpc/Metadata$IterableAt;

    invoke-direct {v1, p0, p1, v0, v2}, Lio/grpc/Metadata$IterableAt;-><init>(Lio/grpc/Metadata;Lio/grpc/Metadata$Key;ILio/grpc/Metadata$1;)V

    return-object v1

    .line 307
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    .end local v0    # "i":I
    :cond_1
    return-object v2
.end method

.method headerCount()I
    .locals 1

    .line 221
    iget v0, p0, Lio/grpc/Metadata;->size:I

    return v0
.end method

.method public keys()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 322
    invoke-direct {p0}, Lio/grpc/Metadata;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 325
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget v1, p0, Lio/grpc/Metadata;->size:I

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 326
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lio/grpc/Metadata;->size:I

    if-ge v1, v2, :cond_1

    .line 327
    new-instance v2, Ljava/lang/String;

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BI)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    .end local v1    # "i":I
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public merge(Lio/grpc/Metadata;)V
    .locals 6
    .param p1, "other"    # Lio/grpc/Metadata;

    .line 505
    invoke-direct {p1}, Lio/grpc/Metadata;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    return-void

    .line 508
    :cond_0
    invoke-direct {p0}, Lio/grpc/Metadata;->cap()I

    move-result v0

    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v1

    sub-int/2addr v0, v1

    .line 509
    .local v0, "remaining":I
    invoke-direct {p0}, Lio/grpc/Metadata;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p1}, Lio/grpc/Metadata;->len()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 510
    :cond_1
    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v1

    invoke-direct {p1}, Lio/grpc/Metadata;->len()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->expand(I)V

    .line 512
    :cond_2
    iget-object v1, p1, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v4

    invoke-direct {p1}, Lio/grpc/Metadata;->len()I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 513
    iget v1, p0, Lio/grpc/Metadata;->size:I

    iget v2, p1, Lio/grpc/Metadata;->size:I

    add-int/2addr v1, v2

    iput v1, p0, Lio/grpc/Metadata;->size:I

    .line 514
    return-void
.end method

.method public merge(Lio/grpc/Metadata;Ljava/util/Set;)V
    .locals 5
    .param p1, "other"    # Lio/grpc/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Metadata;",
            "Ljava/util/Set<",
            "Lio/grpc/Metadata$Key<",
            "*>;>;)V"
        }
    .end annotation

    .line 524
    .local p2, "keys":Ljava/util/Set;, "Ljava/util/Set<Lio/grpc/Metadata$Key<*>;>;"
    const-string v0, "other"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 527
    .local v0, "asciiKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/ByteBuffer;Lio/grpc/Metadata$Key<*>;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/Metadata$Key;

    .line 528
    .local v2, "key":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<*>;"
    invoke-virtual {v2}, Lio/grpc/Metadata$Key;->asciiName()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .end local v2    # "key":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<*>;"
    goto :goto_0

    .line 530
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p1, Lio/grpc/Metadata;->size:I

    if-ge v1, v2, :cond_2

    .line 531
    invoke-direct {p1, v1}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 532
    .local v2, "wrappedNamed":Ljava/nio/ByteBuffer;
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 533
    invoke-direct {p0}, Lio/grpc/Metadata;->maybeExpand()V

    .line 534
    iget v3, p0, Lio/grpc/Metadata;->size:I

    invoke-direct {p1, v1}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lio/grpc/Metadata;->name(I[B)V

    .line 535
    iget v3, p0, Lio/grpc/Metadata;->size:I

    invoke-direct {p1, v1}, Lio/grpc/Metadata;->value(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lio/grpc/Metadata;->value(ILjava/lang/Object;)V

    .line 536
    iget v3, p0, Lio/grpc/Metadata;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lio/grpc/Metadata;->size:I

    .line 530
    .end local v2    # "wrappedNamed":Ljava/nio/ByteBuffer;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 539
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 340
    .local p1, "key":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-direct {p0}, Lio/grpc/Metadata;->maybeExpand()V

    .line 343
    iget v0, p0, Lio/grpc/Metadata;->size:I

    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->asciiName()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/grpc/Metadata;->name(I[B)V

    .line 344
    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->serializesToStreams()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget v0, p0, Lio/grpc/Metadata;->size:I

    invoke-static {p1, p2}, Lio/grpc/Metadata$LazyValue;->create(Lio/grpc/Metadata$Key;Ljava/lang/Object;)Lio/grpc/Metadata$LazyValue;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/grpc/Metadata;->value(ILjava/lang/Object;)V

    goto :goto_0

    .line 347
    :cond_0
    iget v0, p0, Lio/grpc/Metadata;->size:I

    invoke-virtual {p1, p2}, Lio/grpc/Metadata$Key;->toBytes(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/grpc/Metadata;->value(I[B)V

    .line 349
    :goto_0
    iget v0, p0, Lio/grpc/Metadata;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/Metadata;->size:I

    .line 350
    return-void
.end method

.method public remove(Lio/grpc/Metadata$Key;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$Key<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 376
    .local p1, "key":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lio/grpc/Metadata;->size:I

    if-ge v0, v1, :cond_2

    .line 379
    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->asciiName()[B

    move-result-object v1

    invoke-direct {p0, v0}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lio/grpc/Metadata;->bytesEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    goto :goto_1

    .line 382
    :cond_0
    invoke-direct {p0, v0, p1}, Lio/grpc/Metadata;->valueAsT(ILio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object v1

    .line 383
    .local v1, "stored":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 384
    nop

    .line 378
    .end local v1    # "stored":Ljava/lang/Object;, "TT;"
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    .restart local v1    # "stored":Ljava/lang/Object;, "TT;"
    :cond_1
    mul-int/lit8 v2, v0, 0x2

    .line 387
    .local v2, "writeIdx":I
    add-int/lit8 v3, v0, 0x1

    mul-int/lit8 v3, v3, 0x2

    .line 388
    .local v3, "readIdx":I
    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v4

    sub-int/2addr v4, v3

    .line 389
    .local v4, "readLen":I
    iget-object v5, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    invoke-static {v5, v3, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    iget v5, p0, Lio/grpc/Metadata;->size:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iput v5, p0, Lio/grpc/Metadata;->size:I

    .line 391
    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Lio/grpc/Metadata;->name(I[B)V

    .line 392
    iget v5, p0, Lio/grpc/Metadata;->size:I

    check-cast v7, [B

    invoke-direct {p0, v5, v7}, Lio/grpc/Metadata;->value(I[B)V

    .line 393
    return v6

    .line 395
    .end local v0    # "i":I
    .end local v1    # "stored":Ljava/lang/Object;, "TT;"
    .end local v2    # "writeIdx":I
    .end local v3    # "readIdx":I
    .end local v4    # "readLen":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Lio/grpc/Metadata$Key;)Ljava/lang/Iterable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$Key<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 400
    .local p1, "key":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<TT;>;"
    invoke-direct {p0}, Lio/grpc/Metadata;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 401
    return-object v1

    .line 403
    :cond_0
    const/4 v0, 0x0

    .line 404
    .local v0, "writeIdx":I
    const/4 v2, 0x0

    .line 405
    .local v2, "readIdx":I
    const/4 v3, 0x0

    .line 406
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    iget v4, p0, Lio/grpc/Metadata;->size:I

    if-ge v2, v4, :cond_3

    .line 407
    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->asciiName()[B

    move-result-object v4

    invoke-direct {p0, v2}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lio/grpc/Metadata;->bytesEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 408
    if-eqz v3, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    move-object v3, v4

    .line 409
    invoke-direct {p0, v2, p1}, Lio/grpc/Metadata;->valueAsT(ILio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    goto :goto_2

    .line 412
    :cond_2
    invoke-direct {p0, v2}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lio/grpc/Metadata;->name(I[B)V

    .line 413
    invoke-direct {p0, v2}, Lio/grpc/Metadata;->value(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lio/grpc/Metadata;->value(ILjava/lang/Object;)V

    .line 414
    add-int/lit8 v0, v0, 0x1

    .line 406
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 416
    :cond_3
    move v4, v0

    .line 418
    .local v4, "newSize":I
    iget-object v5, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    mul-int/lit8 v6, v0, 0x2

    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v7

    invoke-static {v5, v6, v7, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 419
    iput v4, p0, Lio/grpc/Metadata;->size:I

    .line 420
    return-object v3
.end method

.method serialize()[[B
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 465
    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v0

    new-array v0, v0, [[B

    .line 466
    .local v0, "serialized":[[B
    iget-object v1, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    instance-of v2, v1, [[B

    if-eqz v2, :cond_0

    .line 467
    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 469
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lio/grpc/Metadata;->size:I

    if-ge v1, v2, :cond_1

    .line 470
    mul-int/lit8 v2, v1, 0x2

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v3

    aput-object v3, v0, v2

    .line 471
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->valueAsBytes(I)[B

    move-result-object v3

    aput-object v3, v0, v2

    .line 469
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method serializePartial()[Ljava/lang/Object;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 490
    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 491
    .local v0, "serialized":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lio/grpc/Metadata;->size:I

    if-ge v1, v2, :cond_0

    .line 492
    mul-int/lit8 v2, v1, 0x2

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v3

    aput-object v3, v0, v2

    .line 493
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->valueAsBytesOrStream(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    .line 491
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 495
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Metadata("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 544
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lio/grpc/Metadata;->size:I

    if-ge v1, v2, :cond_2

    .line 545
    if-eqz v1, :cond_0

    .line 546
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 548
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v3

    sget-object v4, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 549
    .local v2, "headerName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 550
    const-string v3, "-bin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 551
    sget-object v3, Lio/grpc/Metadata;->BASE64_ENCODING_OMIT_PADDING:Lcom/google/common/io/BaseEncoding;

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->valueAsBytes(I)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 553
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->valueAsBytes(I)[B

    move-result-object v4

    sget-object v5, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 554
    .local v3, "headerValue":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .end local v2    # "headerName":Ljava/lang/String;
    .end local v3    # "headerValue":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 557
    .end local v1    # "i":I
    :cond_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
