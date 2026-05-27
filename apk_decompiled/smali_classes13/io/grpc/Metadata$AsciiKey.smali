.class Lio/grpc/Metadata$AsciiKey;
.super Lio/grpc/Metadata$Key;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsciiKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/Metadata$Key<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final marshaller:Lio/grpc/Metadata$AsciiMarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$AsciiMarshaller<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLio/grpc/Metadata$AsciiMarshaller;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pseudo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lio/grpc/Metadata$AsciiMarshaller<",
            "TT;>;)V"
        }
    .end annotation

    .line 959
    .local p0, "this":Lio/grpc/Metadata$AsciiKey;, "Lio/grpc/Metadata$AsciiKey<TT;>;"
    .local p3, "marshaller":Lio/grpc/Metadata$AsciiMarshaller;, "Lio/grpc/Metadata$AsciiMarshaller<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/grpc/Metadata$Key;-><init>(Ljava/lang/String;ZLjava/lang/Object;Lio/grpc/Metadata$1;)V

    .line 960
    nop

    .line 961
    const-string v0, "-bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 960
    const-string v2, "ASCII header is named %s.  Only binary headers may end with %s"

    invoke-static {v1, v2, p1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 965
    const-string v0, "marshaller"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Metadata$AsciiMarshaller;

    iput-object v0, p0, Lio/grpc/Metadata$AsciiKey;->marshaller:Lio/grpc/Metadata$AsciiMarshaller;

    .line 966
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLio/grpc/Metadata$AsciiMarshaller;Lio/grpc/Metadata$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lio/grpc/Metadata$AsciiMarshaller;
    .param p4, "x3"    # Lio/grpc/Metadata$1;

    .line 954
    .local p0, "this":Lio/grpc/Metadata$AsciiKey;, "Lio/grpc/Metadata$AsciiKey<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/Metadata$AsciiKey;-><init>(Ljava/lang/String;ZLio/grpc/Metadata$AsciiMarshaller;)V

    return-void
.end method


# virtual methods
.method parseBytes([B)Ljava/lang/Object;
    .locals 3
    .param p1, "serialized"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .line 975
    .local p0, "this":Lio/grpc/Metadata$AsciiKey;, "Lio/grpc/Metadata$AsciiKey<TT;>;"
    iget-object v0, p0, Lio/grpc/Metadata$AsciiKey;->marshaller:Lio/grpc/Metadata$AsciiMarshaller;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v0, v1}, Lio/grpc/Metadata$AsciiMarshaller;->parseAsciiString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method toBytes(Ljava/lang/Object;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation

    .line 970
    .local p0, "this":Lio/grpc/Metadata$AsciiKey;, "Lio/grpc/Metadata$AsciiKey<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/grpc/Metadata$AsciiKey;->marshaller:Lio/grpc/Metadata$AsciiMarshaller;

    invoke-interface {v0, p1}, Lio/grpc/Metadata$AsciiMarshaller;->toAsciiString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method
