.class final Lio/grpc/Metadata$LazyValue;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LazyValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
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

.field private volatile serialized:[B

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/Metadata$BinaryStreamMarshaller;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Metadata$BinaryStreamMarshaller<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 917
    .local p0, "this":Lio/grpc/Metadata$LazyValue;, "Lio/grpc/Metadata$LazyValue<TT;>;"
    .local p1, "marshaller":Lio/grpc/Metadata$BinaryStreamMarshaller;, "Lio/grpc/Metadata$BinaryStreamMarshaller<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 918
    iput-object p1, p0, Lio/grpc/Metadata$LazyValue;->marshaller:Lio/grpc/Metadata$BinaryStreamMarshaller;

    .line 919
    iput-object p2, p0, Lio/grpc/Metadata$LazyValue;->value:Ljava/lang/Object;

    .line 920
    return-void
.end method

.method static create(Lio/grpc/Metadata$Key;Ljava/lang/Object;)Lio/grpc/Metadata$LazyValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$Key<",
            "TT;>;TT;)",
            "Lio/grpc/Metadata$LazyValue<",
            "TT;>;"
        }
    .end annotation

    .line 913
    .local p0, "key":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/grpc/Metadata$LazyValue;

    invoke-static {p0}, Lio/grpc/Metadata$LazyValue;->getBinaryStreamMarshaller(Lio/grpc/Metadata$Key;)Lio/grpc/Metadata$BinaryStreamMarshaller;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/Metadata$BinaryStreamMarshaller;

    invoke-direct {v0, v1, p1}, Lio/grpc/Metadata$LazyValue;-><init>(Lio/grpc/Metadata$BinaryStreamMarshaller;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static getBinaryStreamMarshaller(Lio/grpc/Metadata$Key;)Lio/grpc/Metadata$BinaryStreamMarshaller;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$Key<",
            "TT;>;)",
            "Lio/grpc/Metadata$BinaryStreamMarshaller<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 950
    .local p0, "key":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<TT;>;"
    const-class v0, Lio/grpc/Metadata$BinaryStreamMarshaller;

    invoke-virtual {p0, v0}, Lio/grpc/Metadata$Key;->getMarshaller(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Metadata$BinaryStreamMarshaller;

    return-object v0
.end method


# virtual methods
.method toBytes()[B
    .locals 1

    .line 927
    .local p0, "this":Lio/grpc/Metadata$LazyValue;, "Lio/grpc/Metadata$LazyValue<TT;>;"
    iget-object v0, p0, Lio/grpc/Metadata$LazyValue;->serialized:[B

    if-nez v0, :cond_1

    .line 928
    monitor-enter p0

    .line 929
    :try_start_0
    iget-object v0, p0, Lio/grpc/Metadata$LazyValue;->serialized:[B

    if-nez v0, :cond_0

    .line 930
    invoke-virtual {p0}, Lio/grpc/Metadata$LazyValue;->toStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/Metadata;->access$1200(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lio/grpc/Metadata$LazyValue;->serialized:[B

    .line 932
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 934
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/grpc/Metadata$LazyValue;->serialized:[B

    return-object v0
.end method

.method toObject(Lio/grpc/Metadata$Key;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$Key<",
            "TT2;>;)TT2;"
        }
    .end annotation

    .line 938
    .local p0, "this":Lio/grpc/Metadata$LazyValue;, "Lio/grpc/Metadata$LazyValue<TT;>;"
    .local p1, "key":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<TT2;>;"
    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->serializesToStreams()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    invoke-static {p1}, Lio/grpc/Metadata$LazyValue;->getBinaryStreamMarshaller(Lio/grpc/Metadata$Key;)Lio/grpc/Metadata$BinaryStreamMarshaller;

    move-result-object v0

    .line 940
    .local v0, "marshaller":Lio/grpc/Metadata$BinaryStreamMarshaller;, "Lio/grpc/Metadata$BinaryStreamMarshaller<TT2;>;"
    if-eqz v0, :cond_0

    .line 941
    invoke-virtual {p0}, Lio/grpc/Metadata$LazyValue;->toStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/Metadata$BinaryStreamMarshaller;->parseStream(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 944
    .end local v0    # "marshaller":Lio/grpc/Metadata$BinaryStreamMarshaller;, "Lio/grpc/Metadata$BinaryStreamMarshaller<TT2;>;"
    :cond_0
    invoke-virtual {p0}, Lio/grpc/Metadata$LazyValue;->toBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/grpc/Metadata$Key;->parseBytes([B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method toStream()Ljava/io/InputStream;
    .locals 2

    .line 923
    .local p0, "this":Lio/grpc/Metadata$LazyValue;, "Lio/grpc/Metadata$LazyValue<TT;>;"
    iget-object v0, p0, Lio/grpc/Metadata$LazyValue;->marshaller:Lio/grpc/Metadata$BinaryStreamMarshaller;

    iget-object v1, p0, Lio/grpc/Metadata$LazyValue;->value:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/grpc/Metadata$BinaryStreamMarshaller;->toStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
