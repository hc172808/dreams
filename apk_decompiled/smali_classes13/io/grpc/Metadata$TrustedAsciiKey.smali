.class final Lio/grpc/Metadata$TrustedAsciiKey;
.super Lio/grpc/Metadata$Key;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrustedAsciiKey"
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
.field private final marshaller:Lio/grpc/Metadata$TrustedAsciiMarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$TrustedAsciiMarshaller<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLio/grpc/Metadata$TrustedAsciiMarshaller;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pseudo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lio/grpc/Metadata$TrustedAsciiMarshaller<",
            "TT;>;)V"
        }
    .end annotation

    .line 984
    .local p0, "this":Lio/grpc/Metadata$TrustedAsciiKey;, "Lio/grpc/Metadata$TrustedAsciiKey<TT;>;"
    .local p3, "marshaller":Lio/grpc/Metadata$TrustedAsciiMarshaller;, "Lio/grpc/Metadata$TrustedAsciiMarshaller<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/grpc/Metadata$Key;-><init>(Ljava/lang/String;ZLjava/lang/Object;Lio/grpc/Metadata$1;)V

    .line 985
    nop

    .line 986
    const-string v0, "-bin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 985
    const-string v2, "ASCII header is named %s.  Only binary headers may end with %s"

    invoke-static {v1, v2, p1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 990
    const-string v0, "marshaller"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Metadata$TrustedAsciiMarshaller;

    iput-object v0, p0, Lio/grpc/Metadata$TrustedAsciiKey;->marshaller:Lio/grpc/Metadata$TrustedAsciiMarshaller;

    .line 991
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLio/grpc/Metadata$TrustedAsciiMarshaller;Lio/grpc/Metadata$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lio/grpc/Metadata$TrustedAsciiMarshaller;
    .param p4, "x3"    # Lio/grpc/Metadata$1;

    .line 979
    .local p0, "this":Lio/grpc/Metadata$TrustedAsciiKey;, "Lio/grpc/Metadata$TrustedAsciiKey<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/Metadata$TrustedAsciiKey;-><init>(Ljava/lang/String;ZLio/grpc/Metadata$TrustedAsciiMarshaller;)V

    return-void
.end method


# virtual methods
.method parseBytes([B)Ljava/lang/Object;
    .locals 1
    .param p1, "serialized"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .line 1000
    .local p0, "this":Lio/grpc/Metadata$TrustedAsciiKey;, "Lio/grpc/Metadata$TrustedAsciiKey<TT;>;"
    iget-object v0, p0, Lio/grpc/Metadata$TrustedAsciiKey;->marshaller:Lio/grpc/Metadata$TrustedAsciiMarshaller;

    invoke-interface {v0, p1}, Lio/grpc/Metadata$TrustedAsciiMarshaller;->parseAsciiString([B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method toBytes(Ljava/lang/Object;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation

    .line 995
    .local p0, "this":Lio/grpc/Metadata$TrustedAsciiKey;, "Lio/grpc/Metadata$TrustedAsciiKey<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/grpc/Metadata$TrustedAsciiKey;->marshaller:Lio/grpc/Metadata$TrustedAsciiMarshaller;

    invoke-interface {v0, p1}, Lio/grpc/Metadata$TrustedAsciiMarshaller;->toAsciiString(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method
