.class Lio/grpc/internal/ApplicationThreadDeframer$2;
.super Ljava/lang/Object;
.source "ApplicationThreadDeframer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ApplicationThreadDeframer;->deframe(Lio/grpc/internal/ReadableBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ApplicationThreadDeframer;

.field final synthetic val$data:Lio/grpc/internal/ReadableBuffer;


# direct methods
.method constructor <init>(Lio/grpc/internal/ApplicationThreadDeframer;Lio/grpc/internal/ReadableBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/ApplicationThreadDeframer;

    .line 95
    iput-object p1, p0, Lio/grpc/internal/ApplicationThreadDeframer$2;->this$0:Lio/grpc/internal/ApplicationThreadDeframer;

    iput-object p2, p0, Lio/grpc/internal/ApplicationThreadDeframer$2;->val$data:Lio/grpc/internal/ReadableBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 99
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer$2;->this$0:Lio/grpc/internal/ApplicationThreadDeframer;

    invoke-static {v0}, Lio/grpc/internal/ApplicationThreadDeframer;->access$000(Lio/grpc/internal/ApplicationThreadDeframer;)Lio/grpc/internal/MessageDeframer;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ApplicationThreadDeframer$2;->val$data:Lio/grpc/internal/ReadableBuffer;

    invoke-virtual {v0, v1}, Lio/grpc/internal/MessageDeframer;->deframe(Lio/grpc/internal/ReadableBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/grpc/internal/ApplicationThreadDeframer$2;->this$0:Lio/grpc/internal/ApplicationThreadDeframer;

    invoke-virtual {v1, v0}, Lio/grpc/internal/ApplicationThreadDeframer;->deframeFailed(Ljava/lang/Throwable;)V

    .line 102
    iget-object v1, p0, Lio/grpc/internal/ApplicationThreadDeframer$2;->this$0:Lio/grpc/internal/ApplicationThreadDeframer;

    invoke-static {v1}, Lio/grpc/internal/ApplicationThreadDeframer;->access$000(Lio/grpc/internal/ApplicationThreadDeframer;)Lio/grpc/internal/MessageDeframer;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/internal/MessageDeframer;->close()V

    .line 104
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
