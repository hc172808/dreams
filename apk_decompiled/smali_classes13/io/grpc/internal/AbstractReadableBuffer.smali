.class public abstract Lio/grpc/internal/AbstractReadableBuffer;
.super Ljava/lang/Object;
.source "AbstractReadableBuffer.java"

# interfaces
.implements Lio/grpc/internal/ReadableBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public arrayOffset()I
    .locals 1

    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final checkReadable(I)V
    .locals 1
    .param p1, "length"    # I

    .line 52
    invoke-virtual {p0}, Lio/grpc/internal/AbstractReadableBuffer;->readableBytes()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 55
    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public close()V
    .locals 0

    .line 49
    return-void
.end method

.method public hasArray()Z
    .locals 1

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public final readInt()I
    .locals 6

    .line 25
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lio/grpc/internal/AbstractReadableBuffer;->checkReadable(I)V

    .line 26
    invoke-virtual {p0}, Lio/grpc/internal/AbstractReadableBuffer;->readUnsignedByte()I

    move-result v0

    .line 27
    .local v0, "b1":I
    invoke-virtual {p0}, Lio/grpc/internal/AbstractReadableBuffer;->readUnsignedByte()I

    move-result v1

    .line 28
    .local v1, "b2":I
    invoke-virtual {p0}, Lio/grpc/internal/AbstractReadableBuffer;->readUnsignedByte()I

    move-result v2

    .line 29
    .local v2, "b3":I
    invoke-virtual {p0}, Lio/grpc/internal/AbstractReadableBuffer;->readUnsignedByte()I

    move-result v3

    .line 30
    .local v3, "b4":I
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method
