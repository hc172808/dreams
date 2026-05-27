.class final Lio/grpc/DecompressorRegistry$DecompressorInfo;
.super Ljava/lang/Object;
.source "DecompressorRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/DecompressorRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DecompressorInfo"
.end annotation


# instance fields
.field final advertised:Z

.field final decompressor:Lio/grpc/Decompressor;


# direct methods
.method constructor <init>(Lio/grpc/Decompressor;Z)V
    .locals 1
    .param p1, "decompressor"    # Lio/grpc/Decompressor;
    .param p2, "advertised"    # Z

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const-string v0, "decompressor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Decompressor;

    iput-object v0, p0, Lio/grpc/DecompressorRegistry$DecompressorInfo;->decompressor:Lio/grpc/Decompressor;

    .line 150
    iput-boolean p2, p0, Lio/grpc/DecompressorRegistry$DecompressorInfo;->advertised:Z

    .line 151
    return-void
.end method
