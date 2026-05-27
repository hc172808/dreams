.class Lio/grpc/internal/RetriableStream$1SendMessageEntry;
.super Ljava/lang/Object;
.source "RetriableStream.java"

# interfaces
.implements Lio/grpc/internal/RetriableStream$BufferEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/RetriableStream;->sendMessage(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendMessageEntry"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/RetriableStream;

.field final synthetic val$message:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/grpc/internal/RetriableStream;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/RetriableStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 487
    .local p0, "this":Lio/grpc/internal/RetriableStream$1SendMessageEntry;, "Lio/grpc/internal/RetriableStream$1SendMessageEntry;"
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$1SendMessageEntry;->this$0:Lio/grpc/internal/RetriableStream;

    iput-object p2, p0, Lio/grpc/internal/RetriableStream$1SendMessageEntry;->val$message:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runWith(Lio/grpc/internal/RetriableStream$Substream;)V
    .locals 3
    .param p1, "substream"    # Lio/grpc/internal/RetriableStream$Substream;

    .line 490
    .local p0, "this":Lio/grpc/internal/RetriableStream$1SendMessageEntry;, "Lio/grpc/internal/RetriableStream$1SendMessageEntry;"
    iget-object v0, p1, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$1SendMessageEntry;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$1100(Lio/grpc/internal/RetriableStream;)Lio/grpc/MethodDescriptor;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/internal/RetriableStream$1SendMessageEntry;->val$message:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lio/grpc/MethodDescriptor;->streamRequest(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/internal/ClientStream;->writeMessage(Ljava/io/InputStream;)V

    .line 491
    return-void
.end method
