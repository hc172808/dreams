.class Lio/grpc/internal/RetriableStream$1AuthorityEntry;
.super Ljava/lang/Object;
.source "RetriableStream.java"

# interfaces
.implements Lio/grpc/internal/RetriableStream$BufferEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/RetriableStream;->setAuthority(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AuthorityEntry"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/RetriableStream;

.field final synthetic val$authority:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/grpc/internal/RetriableStream;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/RetriableStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 593
    .local p0, "this":Lio/grpc/internal/RetriableStream$1AuthorityEntry;, "Lio/grpc/internal/RetriableStream$1AuthorityEntry;"
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$1AuthorityEntry;->this$0:Lio/grpc/internal/RetriableStream;

    iput-object p2, p0, Lio/grpc/internal/RetriableStream$1AuthorityEntry;->val$authority:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runWith(Lio/grpc/internal/RetriableStream$Substream;)V
    .locals 2
    .param p1, "substream"    # Lio/grpc/internal/RetriableStream$Substream;

    .line 596
    .local p0, "this":Lio/grpc/internal/RetriableStream$1AuthorityEntry;, "Lio/grpc/internal/RetriableStream$1AuthorityEntry;"
    iget-object v0, p1, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$1AuthorityEntry;->val$authority:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/grpc/internal/ClientStream;->setAuthority(Ljava/lang/String;)V

    .line 597
    return-void
.end method
