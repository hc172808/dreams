.class public final Lio/grpc/InternalDecompressorRegistry;
.super Ljava/lang/Object;
.source "InternalDecompressorRegistry.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRawAdvertisedMessageEncodings(Lio/grpc/DecompressorRegistry;)[B
    .locals 1
    .param p0, "reg"    # Lio/grpc/DecompressorRegistry;

    .line 28
    invoke-virtual {p0}, Lio/grpc/DecompressorRegistry;->getRawAdvertisedMessageEncodings()[B

    move-result-object v0

    return-object v0
.end method
