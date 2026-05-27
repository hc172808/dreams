.class Lio/grpc/internal/RetriableStream$1MessageCompressionEntry;
.super Ljava/lang/Object;
.source "RetriableStream.java"

# interfaces
.implements Lio/grpc/internal/RetriableStream$BufferEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/RetriableStream;->setMessageCompression(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageCompressionEntry"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/RetriableStream;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lio/grpc/internal/RetriableStream;Z)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/RetriableStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 569
    .local p0, "this":Lio/grpc/internal/RetriableStream$1MessageCompressionEntry;, "Lio/grpc/internal/RetriableStream$1MessageCompressionEntry;"
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$1MessageCompressionEntry;->this$0:Lio/grpc/internal/RetriableStream;

    iput-boolean p2, p0, Lio/grpc/internal/RetriableStream$1MessageCompressionEntry;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runWith(Lio/grpc/internal/RetriableStream$Substream;)V
    .locals 2
    .param p1, "substream"    # Lio/grpc/internal/RetriableStream$Substream;

    .line 572
    .local p0, "this":Lio/grpc/internal/RetriableStream$1MessageCompressionEntry;, "Lio/grpc/internal/RetriableStream$1MessageCompressionEntry;"
    iget-object v0, p1, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    iget-boolean v1, p0, Lio/grpc/internal/RetriableStream$1MessageCompressionEntry;->val$enable:Z

    invoke-interface {v0, v1}, Lio/grpc/internal/ClientStream;->setMessageCompression(Z)V

    .line 573
    return-void
.end method
