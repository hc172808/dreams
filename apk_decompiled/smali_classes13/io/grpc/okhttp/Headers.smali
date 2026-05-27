.class Lio/grpc/okhttp/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# static fields
.field public static final CONTENT_TYPE_HEADER:Lio/grpc/okhttp/internal/framed/Header;

.field public static final HTTPS_SCHEME_HEADER:Lio/grpc/okhttp/internal/framed/Header;

.field public static final HTTP_SCHEME_HEADER:Lio/grpc/okhttp/internal/framed/Header;

.field public static final METHOD_GET_HEADER:Lio/grpc/okhttp/internal/framed/Header;

.field public static final METHOD_HEADER:Lio/grpc/okhttp/internal/framed/Header;

.field public static final TE_HEADER:Lio/grpc/okhttp/internal/framed/Header;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Lio/grpc/okhttp/internal/framed/Header;

    sget-object v1, Lio/grpc/okhttp/internal/framed/Header;->TARGET_SCHEME:Lokio/ByteString;

    const-string v2, "https"

    invoke-direct {v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    sput-object v0, Lio/grpc/okhttp/Headers;->HTTPS_SCHEME_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    .line 38
    new-instance v0, Lio/grpc/okhttp/internal/framed/Header;

    sget-object v1, Lio/grpc/okhttp/internal/framed/Header;->TARGET_SCHEME:Lokio/ByteString;

    const-string v2, "http"

    invoke-direct {v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    sput-object v0, Lio/grpc/okhttp/Headers;->HTTP_SCHEME_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    .line 39
    new-instance v0, Lio/grpc/okhttp/internal/framed/Header;

    sget-object v1, Lio/grpc/okhttp/internal/framed/Header;->TARGET_METHOD:Lokio/ByteString;

    const-string v2, "POST"

    invoke-direct {v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    sput-object v0, Lio/grpc/okhttp/Headers;->METHOD_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    .line 40
    new-instance v0, Lio/grpc/okhttp/internal/framed/Header;

    sget-object v1, Lio/grpc/okhttp/internal/framed/Header;->TARGET_METHOD:Lokio/ByteString;

    const-string v2, "GET"

    invoke-direct {v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    sput-object v0, Lio/grpc/okhttp/Headers;->METHOD_GET_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    .line 41
    new-instance v0, Lio/grpc/okhttp/internal/framed/Header;

    sget-object v1, Lio/grpc/internal/GrpcUtil;->CONTENT_TYPE_KEY:Lio/grpc/Metadata$Key;

    .line 42
    invoke-virtual {v1}, Lio/grpc/Metadata$Key;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/grpc"

    invoke-direct {v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/grpc/okhttp/Headers;->CONTENT_TYPE_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    .line 43
    new-instance v0, Lio/grpc/okhttp/internal/framed/Header;

    const-string v1, "te"

    const-string v2, "trailers"

    invoke-direct {v0, v1, v2}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/grpc/okhttp/Headers;->TE_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRequestHeaders(Lio/grpc/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 8
    .param p0, "headers"    # Lio/grpc/Metadata;
    .param p1, "defaultPath"    # Ljava/lang/String;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "useGet"    # Z
    .param p5, "usePlaintext"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Metadata;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .line 57
    const-string v0, "headers"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "defaultPath"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "authority"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lio/grpc/internal/GrpcUtil;->CONTENT_TYPE_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v0}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 63
    sget-object v0, Lio/grpc/internal/GrpcUtil;->TE_HEADER:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v0}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 64
    sget-object v0, Lio/grpc/internal/GrpcUtil;->USER_AGENT_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p0, v0}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lio/grpc/InternalMetadata;->headerCount(Lio/grpc/Metadata;)I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .local v0, "okhttpHeaders":Ljava/util/List;, "Ljava/util/List<Lio/grpc/okhttp/internal/framed/Header;>;"
    if-eqz p5, :cond_0

    .line 71
    sget-object v1, Lio/grpc/okhttp/Headers;->HTTP_SCHEME_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_0
    sget-object v1, Lio/grpc/okhttp/Headers;->HTTPS_SCHEME_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :goto_0
    if-eqz p4, :cond_1

    .line 76
    sget-object v1, Lio/grpc/okhttp/Headers;->METHOD_GET_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    :cond_1
    sget-object v1, Lio/grpc/okhttp/Headers;->METHOD_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :goto_1
    new-instance v1, Lio/grpc/okhttp/internal/framed/Header;

    sget-object v2, Lio/grpc/okhttp/internal/framed/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    invoke-direct {v1, v2, p2}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    move-object v1, p1

    .line 83
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Lio/grpc/okhttp/internal/framed/Header;

    sget-object v3, Lio/grpc/okhttp/internal/framed/Header;->TARGET_PATH:Lokio/ByteString;

    invoke-direct {v2, v3, v1}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v2, Lio/grpc/okhttp/internal/framed/Header;

    sget-object v3, Lio/grpc/internal/GrpcUtil;->USER_AGENT_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {v3}, Lio/grpc/Metadata$Key;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v2, Lio/grpc/okhttp/Headers;->CONTENT_TYPE_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v2, Lio/grpc/okhttp/Headers;->TE_HEADER:Lio/grpc/okhttp/internal/framed/Header;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-static {p0}, Lio/grpc/internal/TransportFrameUtil;->toHttp2Headers(Lio/grpc/Metadata;)[[B

    move-result-object v2

    .line 93
    .local v2, "serializedHeaders":[[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 94
    aget-object v4, v2, v3

    invoke-static {v4}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v4

    .line 95
    .local v4, "key":Lokio/ByteString;
    invoke-virtual {v4}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "keyString":Ljava/lang/String;
    invoke-static {v5}, Lio/grpc/okhttp/Headers;->isApplicationHeader(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 97
    add-int/lit8 v6, v3, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v6

    .line 98
    .local v6, "value":Lokio/ByteString;
    new-instance v7, Lio/grpc/okhttp/internal/framed/Header;

    invoke-direct {v7, v4, v6}, Lio/grpc/okhttp/internal/framed/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v4    # "key":Lokio/ByteString;
    .end local v5    # "keyString":Ljava/lang/String;
    .end local v6    # "value":Lokio/ByteString;
    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 102
    .end local v3    # "i":I
    :cond_3
    return-object v0
.end method

.method private static isApplicationHeader(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 111
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/grpc/internal/GrpcUtil;->CONTENT_TYPE_KEY:Lio/grpc/Metadata$Key;

    .line 112
    invoke-virtual {v0}, Lio/grpc/Metadata$Key;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/grpc/internal/GrpcUtil;->USER_AGENT_KEY:Lio/grpc/Metadata$Key;

    .line 113
    invoke-virtual {v0}, Lio/grpc/Metadata$Key;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0
.end method
