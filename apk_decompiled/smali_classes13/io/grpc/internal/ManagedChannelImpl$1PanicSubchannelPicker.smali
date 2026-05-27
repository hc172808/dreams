.class final Lio/grpc/internal/ManagedChannelImpl$1PanicSubchannelPicker;
.super Lio/grpc/LoadBalancer$SubchannelPicker;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl;->panic(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PanicSubchannelPicker"
.end annotation


# instance fields
.field private final panicPickResult:Lio/grpc/LoadBalancer$PickResult;

.field final synthetic this$0:Lio/grpc/internal/ManagedChannelImpl;

.field final synthetic val$t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "this$0"    # Lio/grpc/internal/ManagedChannelImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 806
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$1PanicSubchannelPicker;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$1PanicSubchannelPicker;->val$t:Ljava/lang/Throwable;

    invoke-direct {p0}, Lio/grpc/LoadBalancer$SubchannelPicker;-><init>()V

    .line 807
    sget-object v0, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 809
    const-string v1, "Panic! This is a bug!"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p2

    .line 808
    invoke-static {p2}, Lio/grpc/LoadBalancer$PickResult;->withDrop(Lio/grpc/Status;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$1PanicSubchannelPicker;->panicPickResult:Lio/grpc/LoadBalancer$PickResult;

    .line 807
    return-void
.end method


# virtual methods
.method public pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;
    .locals 1
    .param p1, "args"    # Lio/grpc/LoadBalancer$PickSubchannelArgs;

    .line 813
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1PanicSubchannelPicker;->panicPickResult:Lio/grpc/LoadBalancer$PickResult;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 818
    const-class v0, Lio/grpc/internal/ManagedChannelImpl$1PanicSubchannelPicker;

    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$1PanicSubchannelPicker;->panicPickResult:Lio/grpc/LoadBalancer$PickResult;

    .line 819
    const-string v2, "panicPickResult"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 820
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 818
    return-object v0
.end method
