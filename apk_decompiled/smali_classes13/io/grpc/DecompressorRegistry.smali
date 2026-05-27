.class public final Lio/grpc/DecompressorRegistry;
.super Ljava/lang/Object;
.source "DecompressorRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/DecompressorRegistry$DecompressorInfo;
    }
.end annotation


# static fields
.field static final ACCEPT_ENCODING_JOINER:Lcom/google/common/base/Joiner;

.field private static final DEFAULT_INSTANCE:Lio/grpc/DecompressorRegistry;


# instance fields
.field private final advertisedDecompressors:[B

.field private final decompressors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/grpc/DecompressorRegistry$DecompressorInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lio/grpc/DecompressorRegistry;->ACCEPT_ENCODING_JOINER:Lcom/google/common/base/Joiner;

    .line 46
    invoke-static {}, Lio/grpc/DecompressorRegistry;->emptyInstance()Lio/grpc/DecompressorRegistry;

    move-result-object v0

    new-instance v1, Lio/grpc/Codec$Gzip;

    invoke-direct {v1}, Lio/grpc/Codec$Gzip;-><init>()V

    .line 47
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/grpc/DecompressorRegistry;->with(Lio/grpc/Decompressor;Z)Lio/grpc/DecompressorRegistry;

    move-result-object v0

    sget-object v1, Lio/grpc/Codec$Identity;->NONE:Lio/grpc/Codec;

    .line 48
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/grpc/DecompressorRegistry;->with(Lio/grpc/Decompressor;Z)Lio/grpc/DecompressorRegistry;

    move-result-object v0

    sput-object v0, Lio/grpc/DecompressorRegistry;->DEFAULT_INSTANCE:Lio/grpc/DecompressorRegistry;

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lio/grpc/DecompressorRegistry;->decompressors:Ljava/util/Map;

    .line 94
    new-array v0, v1, [B

    iput-object v0, p0, Lio/grpc/DecompressorRegistry;->advertisedDecompressors:[B

    .line 95
    return-void
.end method

.method private constructor <init>(Lio/grpc/Decompressor;ZLio/grpc/DecompressorRegistry;)V
    .locals 9
    .param p1, "d"    # Lio/grpc/Decompressor;
    .param p2, "advertised"    # Z
    .param p3, "parent"    # Lio/grpc/DecompressorRegistry;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-interface {p1}, Lio/grpc/Decompressor;->getMessageEncoding()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "encoding":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Comma is currently not allowed in message encoding"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 72
    iget-object v1, p3, Lio/grpc/DecompressorRegistry;->decompressors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 73
    .local v1, "newSize":I
    iget-object v2, p3, Lio/grpc/DecompressorRegistry;->decompressors:Ljava/util/Map;

    invoke-interface {p1}, Lio/grpc/Decompressor;->getMessageEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 76
    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 78
    .local v2, "newDecompressors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/grpc/DecompressorRegistry$DecompressorInfo;>;"
    iget-object v3, p3, Lio/grpc/DecompressorRegistry;->decompressors:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/DecompressorRegistry$DecompressorInfo;

    .line 79
    .local v4, "di":Lio/grpc/DecompressorRegistry$DecompressorInfo;
    iget-object v5, v4, Lio/grpc/DecompressorRegistry$DecompressorInfo;->decompressor:Lio/grpc/Decompressor;

    invoke-interface {v5}, Lio/grpc/Decompressor;->getMessageEncoding()Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "previousEncoding":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 81
    new-instance v6, Lio/grpc/DecompressorRegistry$DecompressorInfo;

    iget-object v7, v4, Lio/grpc/DecompressorRegistry$DecompressorInfo;->decompressor:Lio/grpc/Decompressor;

    iget-boolean v8, v4, Lio/grpc/DecompressorRegistry$DecompressorInfo;->advertised:Z

    invoke-direct {v6, v7, v8}, Lio/grpc/DecompressorRegistry$DecompressorInfo;-><init>(Lio/grpc/Decompressor;Z)V

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .end local v4    # "di":Lio/grpc/DecompressorRegistry$DecompressorInfo;
    .end local v5    # "previousEncoding":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 85
    :cond_2
    new-instance v3, Lio/grpc/DecompressorRegistry$DecompressorInfo;

    invoke-direct {v3, p1, p2}, Lio/grpc/DecompressorRegistry$DecompressorInfo;-><init>(Lio/grpc/Decompressor;Z)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/DecompressorRegistry;->decompressors:Ljava/util/Map;

    .line 88
    sget-object v3, Lio/grpc/DecompressorRegistry;->ACCEPT_ENCODING_JOINER:Lcom/google/common/base/Joiner;

    invoke-virtual {p0}, Lio/grpc/DecompressorRegistry;->getAdvertisedMessageEncodings()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 89
    const-string v4, "US-ASCII"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    iput-object v3, p0, Lio/grpc/DecompressorRegistry;->advertisedDecompressors:[B

    .line 90
    return-void
.end method

.method public static emptyInstance()Lio/grpc/DecompressorRegistry;
    .locals 1

    .line 42
    new-instance v0, Lio/grpc/DecompressorRegistry;

    invoke-direct {v0}, Lio/grpc/DecompressorRegistry;-><init>()V

    return-object v0
.end method

.method public static getDefaultInstance()Lio/grpc/DecompressorRegistry;
    .locals 1

    .line 51
    sget-object v0, Lio/grpc/DecompressorRegistry;->DEFAULT_INSTANCE:Lio/grpc/DecompressorRegistry;

    return-object v0
.end method


# virtual methods
.method public getAdvertisedMessageEncodings()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lio/grpc/DecompressorRegistry;->decompressors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 119
    .local v0, "advertisedDecompressors":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lio/grpc/DecompressorRegistry;->decompressors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 120
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lio/grpc/DecompressorRegistry$DecompressorInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/DecompressorRegistry$DecompressorInfo;

    iget-boolean v3, v3, Lio/grpc/DecompressorRegistry$DecompressorInfo;->advertised:Z

    if-eqz v3, :cond_0

    .line 121
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lio/grpc/DecompressorRegistry$DecompressorInfo;>;"
    :cond_0
    goto :goto_0

    .line 124
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public getKnownMessageEncodings()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lio/grpc/DecompressorRegistry;->decompressors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getRawAdvertisedMessageEncodings()[B
    .locals 1

    .line 106
    iget-object v0, p0, Lio/grpc/DecompressorRegistry;->advertisedDecompressors:[B

    return-object v0
.end method

.method public lookupDecompressor(Ljava/lang/String;)Lio/grpc/Decompressor;
    .locals 2
    .param p1, "messageEncoding"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 137
    iget-object v0, p0, Lio/grpc/DecompressorRegistry;->decompressors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/DecompressorRegistry$DecompressorInfo;

    .line 138
    .local v0, "info":Lio/grpc/DecompressorRegistry$DecompressorInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lio/grpc/DecompressorRegistry$DecompressorInfo;->decompressor:Lio/grpc/Decompressor;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public with(Lio/grpc/Decompressor;Z)Lio/grpc/DecompressorRegistry;
    .locals 1
    .param p1, "d"    # Lio/grpc/Decompressor;
    .param p2, "advertised"    # Z

    .line 65
    new-instance v0, Lio/grpc/DecompressorRegistry;

    invoke-direct {v0, p1, p2, p0}, Lio/grpc/DecompressorRegistry;-><init>(Lio/grpc/Decompressor;ZLio/grpc/DecompressorRegistry;)V

    return-object v0
.end method
