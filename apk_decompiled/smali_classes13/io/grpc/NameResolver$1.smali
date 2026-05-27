.class Lio/grpc/NameResolver$1;
.super Lio/grpc/NameResolver$Listener2;
.source "NameResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/NameResolver;->start(Lio/grpc/NameResolver$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/NameResolver;

.field final synthetic val$listener:Lio/grpc/NameResolver$Listener;


# direct methods
.method constructor <init>(Lio/grpc/NameResolver;Lio/grpc/NameResolver$Listener;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/NameResolver;

    .line 82
    iput-object p1, p0, Lio/grpc/NameResolver$1;->this$0:Lio/grpc/NameResolver;

    iput-object p2, p0, Lio/grpc/NameResolver$1;->val$listener:Lio/grpc/NameResolver$Listener;

    invoke-direct {p0}, Lio/grpc/NameResolver$Listener2;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/grpc/Status;)V
    .locals 1
    .param p1, "error"    # Lio/grpc/Status;

    .line 85
    iget-object v0, p0, Lio/grpc/NameResolver$1;->val$listener:Lio/grpc/NameResolver$Listener;

    invoke-interface {v0, p1}, Lio/grpc/NameResolver$Listener;->onError(Lio/grpc/Status;)V

    .line 86
    return-void
.end method

.method public onResult(Lio/grpc/NameResolver$ResolutionResult;)V
    .locals 3
    .param p1, "resolutionResult"    # Lio/grpc/NameResolver$ResolutionResult;

    .line 90
    iget-object v0, p0, Lio/grpc/NameResolver$1;->val$listener:Lio/grpc/NameResolver$Listener;

    invoke-virtual {p1}, Lio/grpc/NameResolver$ResolutionResult;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/NameResolver$ResolutionResult;->getAttributes()Lio/grpc/Attributes;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/grpc/NameResolver$Listener;->onAddresses(Ljava/util/List;Lio/grpc/Attributes;)V

    .line 91
    return-void
.end method
