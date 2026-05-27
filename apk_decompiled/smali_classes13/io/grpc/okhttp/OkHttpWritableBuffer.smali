.class Lio/grpc/okhttp/OkHttpWritableBuffer;
.super Ljava/lang/Object;
.source "OkHttpWritableBuffer.java"

# interfaces
.implements Lio/grpc/internal/WritableBuffer;


# instance fields
.field private final buffer:Lokio/Buffer;

.field private readableBytes:I

.field private writableBytes:I


# direct methods
.method constructor <init>(Lokio/Buffer;I)V
    .locals 0
    .param p1, "buffer"    # Lokio/Buffer;
    .param p2, "capacity"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->buffer:Lokio/Buffer;

    .line 30
    iput p2, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->writableBytes:I

    .line 31
    return-void
.end method


# virtual methods
.method buffer()Lokio/Buffer;
    .locals 1

    .line 62
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->buffer:Lokio/Buffer;

    return-object v0
.end method

.method public readableBytes()I
    .locals 1

    .line 54
    iget v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->readableBytes:I

    return v0
.end method

.method public release()V
    .locals 0

    .line 59
    return-void
.end method

.method public writableBytes()I
    .locals 1

    .line 49
    iget v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->writableBytes:I

    return v0
.end method

.method public write(B)V
    .locals 1
    .param p1, "b"    # B

    .line 42
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 43
    iget v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->writableBytes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->writableBytes:I

    .line 44
    iget v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->readableBytes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->readableBytes:I

    .line 45
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I

    .line 35
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->buffer:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    .line 36
    iget v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->writableBytes:I

    sub-int/2addr v0, p3

    iput v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->writableBytes:I

    .line 37
    iget v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->readableBytes:I

    add-int/2addr v0, p3

    iput v0, p0, Lio/grpc/okhttp/OkHttpWritableBuffer;->readableBytes:I

    .line 38
    return-void
.end method
