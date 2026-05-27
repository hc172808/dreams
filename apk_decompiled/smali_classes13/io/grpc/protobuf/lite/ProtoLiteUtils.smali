.class public final Lio/grpc/protobuf/lite/ProtoLiteUtils;
.super Ljava/lang/Object;
.source "ProtoLiteUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/protobuf/lite/ProtoLiteUtils$MetadataMarshaller;,
        Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;
    }
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x2000

.field static final DEFAULT_MAX_MESSAGE_SIZE:I = 0x400000

.field static volatile globalRegistry:Lcom/google/protobuf/ExtensionRegistryLite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    sput-object v0, Lio/grpc/protobuf/lite/ProtoLiteUtils;->globalRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 46
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .param p0, "from"    # Ljava/io/InputStream;
    .param p1, "to"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    const-string v0, "inputStream cannot be null!"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "outputStream cannot be null!"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 103
    .local v0, "buf":[B
    const-wide/16 v1, 0x0

    .line 105
    .local v1, "total":J
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 106
    .local v3, "r":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 107
    nop

    .line 112
    .end local v3    # "r":I
    return-wide v1

    .line 109
    .restart local v3    # "r":I
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 110
    int-to-long v4, v3

    add-long/2addr v1, v4

    .line 111
    .end local v3    # "r":I
    goto :goto_0
.end method

.method public static marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(TT;)",
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TT;>;"
        }
    .end annotation

    .line 84
    .local p0, "defaultInstance":Lcom/google/protobuf/MessageLite;, "TT;"
    new-instance v0, Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;

    invoke-direct {v0, p0}, Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;-><init>(Lcom/google/protobuf/MessageLite;)V

    return-object v0
.end method

.method public static metadataMarshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/Metadata$BinaryMarshaller;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/MessageLite;",
            ">(TT;)",
            "Lio/grpc/Metadata$BinaryMarshaller<",
            "TT;>;"
        }
    .end annotation

    .line 94
    .local p0, "defaultInstance":Lcom/google/protobuf/MessageLite;, "TT;"
    new-instance v0, Lio/grpc/protobuf/lite/ProtoLiteUtils$MetadataMarshaller;

    invoke-direct {v0, p0}, Lio/grpc/protobuf/lite/ProtoLiteUtils$MetadataMarshaller;-><init>(Lcom/google/protobuf/MessageLite;)V

    return-object v0
.end method

.method public static setExtensionRegistry(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .param p0, "newRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;

    .line 74
    const-string v0, "newRegistry"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ExtensionRegistryLite;

    sput-object v0, Lio/grpc/protobuf/lite/ProtoLiteUtils;->globalRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 75
    return-void
.end method
