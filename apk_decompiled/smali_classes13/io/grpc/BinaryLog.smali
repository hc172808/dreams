.class public abstract Lio/grpc/BinaryLog;
.super Ljava/lang/Object;
.source "BinaryLog.java"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract wrapChannel(Lio/grpc/Channel;)Lio/grpc/Channel;
.end method

.method public abstract wrapMethodDefinition(Lio/grpc/ServerMethodDefinition;)Lio/grpc/ServerMethodDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ServerMethodDefinition<",
            "TReqT;TRespT;>;)",
            "Lio/grpc/ServerMethodDefinition<",
            "**>;"
        }
    .end annotation
.end method
