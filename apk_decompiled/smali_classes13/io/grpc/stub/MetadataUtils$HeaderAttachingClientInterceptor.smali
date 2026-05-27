.class final Lio/grpc/stub/MetadataUtils$HeaderAttachingClientInterceptor;
.super Ljava/lang/Object;
.source "MetadataUtils.java"

# interfaces
.implements Lio/grpc/ClientInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/MetadataUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeaderAttachingClientInterceptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/stub/MetadataUtils$HeaderAttachingClientInterceptor$HeaderAttachingClientCall;
    }
.end annotation


# instance fields
.field private final extraHeaders:Lio/grpc/Metadata;


# direct methods
.method constructor <init>(Lio/grpc/Metadata;)V
    .locals 1
    .param p1, "extraHeaders"    # Lio/grpc/Metadata;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v0, "extraHeaders"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Metadata;

    iput-object v0, p0, Lio/grpc/stub/MetadataUtils$HeaderAttachingClientInterceptor;->extraHeaders:Lio/grpc/Metadata;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lio/grpc/stub/MetadataUtils$HeaderAttachingClientInterceptor;)Lio/grpc/Metadata;
    .locals 1
    .param p0, "x0"    # Lio/grpc/stub/MetadataUtils$HeaderAttachingClientInterceptor;

    .line 62
    iget-object v0, p0, Lio/grpc/stub/MetadataUtils$HeaderAttachingClientInterceptor;->extraHeaders:Lio/grpc/Metadata;

    return-object v0
.end method


# virtual methods
.method public interceptCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Channel;)Lio/grpc/ClientCall;
    .locals 2
    .param p2, "callOptions"    # Lio/grpc/CallOptions;
    .param p3, "next"    # Lio/grpc/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/CallOptions;",
            "Lio/grpc/Channel;",
            ")",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 74
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<TReqT;TRespT;>;"
    new-instance v0, Lio/grpc/stub/MetadataUtils$HeaderAttachingClientInterceptor$HeaderAttachingClientCall;

    invoke-virtual {p3, p1, p2}, Lio/grpc/Channel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/grpc/stub/MetadataUtils$HeaderAttachingClientInterceptor$HeaderAttachingClientCall;-><init>(Lio/grpc/stub/MetadataUtils$HeaderAttachingClientInterceptor;Lio/grpc/ClientCall;)V

    return-object v0
.end method
