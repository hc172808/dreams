.class Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl$1;
.super Ljava/lang/Object;
.source "ServerCallImpl.java"

# interfaces
.implements Lio/grpc/Context$CancellationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;-><init>(Lio/grpc/internal/ServerCallImpl;Lio/grpc/ServerCall$Listener;Lio/grpc/Context$CancellableContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;


# direct methods
.method constructor <init>(Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;

    .line 279
    .local p0, "this":Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl$1;, "Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl$1;"
    iput-object p1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl$1;->this$0:Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled(Lio/grpc/Context;)V
    .locals 2
    .param p1, "context"    # Lio/grpc/Context;

    .line 282
    .local p0, "this":Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl$1;, "Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl$1;"
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl$1;->this$0:Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->access$000(Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;)Lio/grpc/internal/ServerCallImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/grpc/internal/ServerCallImpl;->access$102(Lio/grpc/internal/ServerCallImpl;Z)Z

    .line 283
    return-void
.end method
