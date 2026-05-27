.class Lio/grpc/internal/RetriableStream$1DeadlineEntry;
.super Ljava/lang/Object;
.source "RetriableStream.java"

# interfaces
.implements Lio/grpc/internal/RetriableStream$BufferEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/RetriableStream;->setDeadline(Lio/grpc/Deadline;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeadlineEntry"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/RetriableStream;

.field final synthetic val$deadline:Lio/grpc/Deadline;


# direct methods
.method constructor <init>(Lio/grpc/internal/RetriableStream;Lio/grpc/Deadline;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/RetriableStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 641
    .local p0, "this":Lio/grpc/internal/RetriableStream$1DeadlineEntry;, "Lio/grpc/internal/RetriableStream$1DeadlineEntry;"
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$1DeadlineEntry;->this$0:Lio/grpc/internal/RetriableStream;

    iput-object p2, p0, Lio/grpc/internal/RetriableStream$1DeadlineEntry;->val$deadline:Lio/grpc/Deadline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runWith(Lio/grpc/internal/RetriableStream$Substream;)V
    .locals 2
    .param p1, "substream"    # Lio/grpc/internal/RetriableStream$Substream;

    .line 644
    .local p0, "this":Lio/grpc/internal/RetriableStream$1DeadlineEntry;, "Lio/grpc/internal/RetriableStream$1DeadlineEntry;"
    iget-object v0, p1, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$1DeadlineEntry;->val$deadline:Lio/grpc/Deadline;

    invoke-interface {v0, v1}, Lio/grpc/internal/ClientStream;->setDeadline(Lio/grpc/Deadline;)V

    .line 645
    return-void
.end method
