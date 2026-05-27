.class Lio/grpc/internal/RetriableStream$1DecompressorRegistryEntry;
.super Ljava/lang/Object;
.source "RetriableStream.java"

# interfaces
.implements Lio/grpc/internal/RetriableStream$BufferEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/RetriableStream;->setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DecompressorRegistryEntry"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/RetriableStream;

.field final synthetic val$decompressorRegistry:Lio/grpc/DecompressorRegistry;


# direct methods
.method constructor <init>(Lio/grpc/internal/RetriableStream;Lio/grpc/DecompressorRegistry;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/RetriableStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 605
    .local p0, "this":Lio/grpc/internal/RetriableStream$1DecompressorRegistryEntry;, "Lio/grpc/internal/RetriableStream$1DecompressorRegistryEntry;"
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$1DecompressorRegistryEntry;->this$0:Lio/grpc/internal/RetriableStream;

    iput-object p2, p0, Lio/grpc/internal/RetriableStream$1DecompressorRegistryEntry;->val$decompressorRegistry:Lio/grpc/DecompressorRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runWith(Lio/grpc/internal/RetriableStream$Substream;)V
    .locals 2
    .param p1, "substream"    # Lio/grpc/internal/RetriableStream$Substream;

    .line 608
    .local p0, "this":Lio/grpc/internal/RetriableStream$1DecompressorRegistryEntry;, "Lio/grpc/internal/RetriableStream$1DecompressorRegistryEntry;"
    iget-object v0, p1, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$1DecompressorRegistryEntry;->val$decompressorRegistry:Lio/grpc/DecompressorRegistry;

    invoke-interface {v0, v1}, Lio/grpc/internal/ClientStream;->setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)V

    .line 609
    return-void
.end method
