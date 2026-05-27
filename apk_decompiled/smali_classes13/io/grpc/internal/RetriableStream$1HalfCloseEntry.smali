.class Lio/grpc/internal/RetriableStream$1HalfCloseEntry;
.super Ljava/lang/Object;
.source "RetriableStream.java"

# interfaces
.implements Lio/grpc/internal/RetriableStream$BufferEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/RetriableStream;->halfClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HalfCloseEntry"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/RetriableStream;


# direct methods
.method constructor <init>(Lio/grpc/internal/RetriableStream;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/RetriableStream;

    .line 581
    .local p0, "this":Lio/grpc/internal/RetriableStream$1HalfCloseEntry;, "Lio/grpc/internal/RetriableStream$1HalfCloseEntry;"
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$1HalfCloseEntry;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runWith(Lio/grpc/internal/RetriableStream$Substream;)V
    .locals 1
    .param p1, "substream"    # Lio/grpc/internal/RetriableStream$Substream;

    .line 584
    .local p0, "this":Lio/grpc/internal/RetriableStream$1HalfCloseEntry;, "Lio/grpc/internal/RetriableStream$1HalfCloseEntry;"
    iget-object v0, p1, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    invoke-interface {v0}, Lio/grpc/internal/ClientStream;->halfClose()V

    .line 585
    return-void
.end method
