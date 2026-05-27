.class final Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;
.super Ljava/lang/Object;
.source "ProtoLiteUtils.java"

# interfaces
.implements Lio/grpc/MethodDescriptor$PrototypeMarshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/protobuf/lite/ProtoLiteUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageMarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/protobuf/MessageLite;",
        ">",
        "Ljava/lang/Object;",
        "Lio/grpc/MethodDescriptor$PrototypeMarshaller<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final bufs:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/Reference<",
            "[B>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final defaultInstance:Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final parser:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;->bufs:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Lcom/google/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 126
    .local p0, "this":Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;, "Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller<TT;>;"
    .local p1, "defaultInstance":Lcom/google/protobuf/MessageLite;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 128
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;->parser:Lcom/google/protobuf/Parser;

    .line 129
    return-void
.end method

.method private parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/MessageLite;
    .locals 2
    .param p1, "stream"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/CodedInputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 223
    .local p0, "this":Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;, "Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller<TT;>;"
    iget-object v0, p0, Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;->parser:Lcom/google/protobuf/Parser;

    sget-object v1, Lio/grpc/protobuf/lite/ProtoLiteUtils;->globalRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-interface {v0, p1, v1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    .line 225
    .local v0, "message":Lcom/google/protobuf/MessageLite;, "TT;"
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    return-object v0

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 229
    throw v1
.end method


# virtual methods
.method public getMessageClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 136
    .local p0, "this":Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;, "Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller<TT;>;"
    iget-object v0, p0, Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;->defaultInstance:Lcom/google/protobuf/MessageLite;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getMessagePrototype()Lcom/google/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 141
    .local p0, "this":Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;, "Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller<TT;>;"
    iget-object v0, p0, Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;->defaultInstance:Lcom/google/protobuf/MessageLite;

    return-object v0
.end method

.method public bridge synthetic getMessagePrototype()Ljava/lang/Object;
    .locals 1

    .line 118
    .local p0, "this":Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;, "Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller<TT;>;"
    invoke-virtual {p0}, Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;->getMessagePrototype()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)Lcom/google/protobuf/MessageLite;
    .locals 9
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;, "Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller<TT;>;"
    instance-of v0, p1, Lio/grpc/protobuf/lite/ProtoInputStream;

    if-eqz v0, :cond_0

    .line 152
    move-object v0, p1

    check-cast v0, Lio/grpc/protobuf/lite/ProtoInputStream;

    .line 160
    .local v0, "protoStream":Lio/grpc/protobuf/lite/ProtoInputStream;
    invoke-virtual {v0}, Lio/grpc/protobuf/lite/ProtoInputStream;->parser()Lcom/google/protobuf/Parser;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;->parser:Lcom/google/protobuf/Parser;

    if-ne v1, v2, :cond_0

    .line 163
    :try_start_0
    move-object v1, p1

    check-cast v1, Lio/grpc/protobuf/lite/ProtoInputStream;

    invoke-virtual {v1}, Lio/grpc/protobuf/lite/ProtoInputStream;->message()Lcom/google/protobuf/MessageLite;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .local v1, "message":Lcom/google/protobuf/MessageLite;, "TT;"
    return-object v1

    .line 165
    .end local v1    # "message":Lcom/google/protobuf/MessageLite;, "TT;"
    :catch_0
    move-exception v1

    .line 172
    .end local v0    # "protoStream":Lio/grpc/protobuf/lite/ProtoInputStream;
    :cond_0
    const/4 v0, 0x0

    .line 174
    .local v0, "cis":Lcom/google/protobuf/CodedInputStream;
    :try_start_1
    instance-of v1, p1, Lio/grpc/KnownLength;

    if-eqz v1, :cond_8

    .line 175
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 176
    .local v1, "size":I
    if-lez v1, :cond_7

    const/high16 v2, 0x400000

    if-gt v1, v2, :cond_7

    .line 180
    sget-object v2, Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;->bufs:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    move-object v4, v3

    .local v4, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<[B>;"
    if-eqz v3, :cond_1

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v5, v3

    .local v5, "buf":[B
    if-eqz v3, :cond_1

    array-length v3, v5

    if-ge v3, v1, :cond_2

    .line 181
    .end local v5    # "buf":[B
    :cond_1
    new-array v3, v1, [B

    move-object v5, v3

    .line 182
    .restart local v5    # "buf":[B
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 185
    :cond_2
    move v2, v1

    .line 186
    .local v2, "remaining":I
    :goto_0
    if-lez v2, :cond_4

    .line 187
    sub-int v3, v1, v2

    .line 188
    .local v3, "position":I
    invoke-virtual {p1, v5, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 189
    .local v6, "count":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 190
    goto :goto_1

    .line 192
    :cond_3
    sub-int/2addr v2, v6

    .line 193
    .end local v3    # "position":I
    .end local v6    # "count":I
    goto :goto_0

    .line 195
    :cond_4
    :goto_1
    if-nez v2, :cond_6

    .line 199
    const/4 v3, 0x0

    invoke-static {v5, v3, v1}, Lcom/google/protobuf/CodedInputStream;->newInstance([BII)Lcom/google/protobuf/CodedInputStream;

    move-result-object v3

    move-object v0, v3

    .line 200
    .end local v2    # "remaining":I
    .end local v4    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<[B>;"
    .end local v5    # "buf":[B
    :cond_5
    goto :goto_2

    .line 196
    .restart local v2    # "remaining":I
    .restart local v4    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<[B>;"
    .restart local v5    # "buf":[B
    :cond_6
    sub-int v3, v1, v2

    .line 197
    .restart local v3    # "position":I
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "size inaccurate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " != "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "cis":Lcom/google/protobuf/CodedInputStream;
    .end local p1    # "stream":Ljava/io/InputStream;
    throw v6

    .line 200
    .end local v2    # "remaining":I
    .end local v3    # "position":I
    .end local v4    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<[B>;"
    .end local v5    # "buf":[B
    .restart local v0    # "cis":Lcom/google/protobuf/CodedInputStream;
    .restart local p1    # "stream":Ljava/io/InputStream;
    :cond_7
    if-nez v1, :cond_5

    .line 201
    iget-object v2, p0, Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;->defaultInstance:Lcom/google/protobuf/MessageLite;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v2

    .line 206
    .end local v1    # "size":I
    :cond_8
    :goto_2
    nop

    .line 207
    if-nez v0, :cond_9

    .line 208
    invoke-static {p1}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    .line 212
    :cond_9
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/google/protobuf/CodedInputStream;->setSizeLimit(I)I

    .line 215
    :try_start_2
    invoke-direct {p0, v0}, Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/MessageLite;

    move-result-object v1
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    .line 216
    :catch_1
    move-exception v1

    .line 217
    .local v1, "ipbe":Lcom/google/protobuf/InvalidProtocolBufferException;
    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v3, "Invalid protobuf byte sequence"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    .line 218
    invoke-virtual {v2, v1}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v2

    throw v2

    .line 204
    .end local v1    # "ipbe":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catch_2
    move-exception v1

    .line 205
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic parse(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0

    .line 118
    .local p0, "this":Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;, "Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;->parse(Ljava/io/InputStream;)Lcom/google/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public stream(Lcom/google/protobuf/MessageLite;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .line 146
    .local p0, "this":Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;, "Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller<TT;>;"
    .local p1, "value":Lcom/google/protobuf/MessageLite;, "TT;"
    new-instance v0, Lio/grpc/protobuf/lite/ProtoInputStream;

    iget-object v1, p0, Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;->parser:Lcom/google/protobuf/Parser;

    invoke-direct {v0, p1, v1}, Lio/grpc/protobuf/lite/ProtoInputStream;-><init>(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Parser;)V

    return-object v0
.end method

.method public bridge synthetic stream(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 0

    .line 118
    .local p0, "this":Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;, "Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller<TT;>;"
    check-cast p1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p0, p1}, Lio/grpc/protobuf/lite/ProtoLiteUtils$MessageMarshaller;->stream(Lcom/google/protobuf/MessageLite;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
