.class Lio/grpc/Metadata$LazyStreamBinaryKey;
.super Lio/grpc/Metadata$Key;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyStreamBinaryKey"
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
.field private final marshaller:Lio/grpc/Metadata$BinaryStreamMarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$BinaryStreamMarshaller<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lio/grpc/Metadata$BinaryStreamMarshaller;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/grpc/Metadata$BinaryStreamMarshaller<",
            "TT;>;)V"
        }
    .end annotation

    .line 880
    .local p0, "this":Lio/grpc/Metadata$LazyStreamBinaryKey;, "Lio/grpc/Metadata$LazyStreamBinaryKey<TT;>;"
    .local p2, "marshaller":Lio/grpc/Metadata$BinaryStreamMarshaller;, "Lio/grpc/Metadata$BinaryStreamMarshaller<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lio/grpc/Metadata$Key;-><init>(Ljava/lang/String;ZLjava/lang/Object;Lio/grpc/Metadata$1;)V

    .line 881
    nop

    .line 882
    const-string v1, "-bin"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    .line 881
    const-string v3, "Binary header is named %s. It must end with %s"

    invoke-static {v2, v3, p1, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 886
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "empty key name"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 887
    const-string v0, "marshaller is null"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Metadata$BinaryStreamMarshaller;

    iput-object v0, p0, Lio/grpc/Metadata$LazyStreamBinaryKey;->marshaller:Lio/grpc/Metadata$BinaryStreamMarshaller;

    .line 888
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lio/grpc/Metadata$BinaryStreamMarshaller;Lio/grpc/Metadata$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lio/grpc/Metadata$BinaryStreamMarshaller;
    .param p3, "x2"    # Lio/grpc/Metadata$1;

    .line 874
    .local p0, "this":Lio/grpc/Metadata$LazyStreamBinaryKey;, "Lio/grpc/Metadata$LazyStreamBinaryKey<TT;>;"
    invoke-direct {p0, p1, p2}, Lio/grpc/Metadata$LazyStreamBinaryKey;-><init>(Ljava/lang/String;Lio/grpc/Metadata$BinaryStreamMarshaller;)V

    return-void
.end method


# virtual methods
.method parseBytes([B)Ljava/lang/Object;
    .locals 2
    .param p1, "serialized"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .line 897
    .local p0, "this":Lio/grpc/Metadata$LazyStreamBinaryKey;, "Lio/grpc/Metadata$LazyStreamBinaryKey<TT;>;"
    iget-object v0, p0, Lio/grpc/Metadata$LazyStreamBinaryKey;->marshaller:Lio/grpc/Metadata$BinaryStreamMarshaller;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v1}, Lio/grpc/Metadata$BinaryStreamMarshaller;->parseStream(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method serializesToStreams()Z
    .locals 1

    .line 902
    .local p0, "this":Lio/grpc/Metadata$LazyStreamBinaryKey;, "Lio/grpc/Metadata$LazyStreamBinaryKey<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method toBytes(Ljava/lang/Object;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation

    .line 892
    .local p0, "this":Lio/grpc/Metadata$LazyStreamBinaryKey;, "Lio/grpc/Metadata$LazyStreamBinaryKey<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/grpc/Metadata$LazyStreamBinaryKey;->marshaller:Lio/grpc/Metadata$BinaryStreamMarshaller;

    invoke-interface {v0, p1}, Lio/grpc/Metadata$BinaryStreamMarshaller;->toStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/Metadata;->access$1200(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method
