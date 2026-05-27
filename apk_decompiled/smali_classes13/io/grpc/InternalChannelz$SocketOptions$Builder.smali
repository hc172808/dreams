.class public final Lio/grpc/InternalChannelz$SocketOptions$Builder;
.super Ljava/lang/Object;
.source "InternalChannelz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/InternalChannelz$SocketOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private lingerSeconds:Ljava/lang/Integer;

.field private final others:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tcpInfo:Lio/grpc/InternalChannelz$TcpInfo;

.field private timeoutMillis:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 999
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/InternalChannelz$SocketOptions$Builder;->others:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addOption(Ljava/lang/String;I)Lio/grpc/InternalChannelz$SocketOptions$Builder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 1030
    iget-object v0, p0, Lio/grpc/InternalChannelz$SocketOptions$Builder;->others:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    return-object p0
.end method

.method public addOption(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/InternalChannelz$SocketOptions$Builder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1025
    iget-object v0, p0, Lio/grpc/InternalChannelz$SocketOptions$Builder;->others:Ljava/util/Map;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    return-object p0
.end method

.method public addOption(Ljava/lang/String;Z)Lio/grpc/InternalChannelz$SocketOptions$Builder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 1035
    iget-object v0, p0, Lio/grpc/InternalChannelz$SocketOptions$Builder;->others:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    return-object p0
.end method

.method public build()Lio/grpc/InternalChannelz$SocketOptions;
    .locals 5

    .line 1040
    new-instance v0, Lio/grpc/InternalChannelz$SocketOptions;

    iget-object v1, p0, Lio/grpc/InternalChannelz$SocketOptions$Builder;->timeoutMillis:Ljava/lang/Integer;

    iget-object v2, p0, Lio/grpc/InternalChannelz$SocketOptions$Builder;->lingerSeconds:Ljava/lang/Integer;

    iget-object v3, p0, Lio/grpc/InternalChannelz$SocketOptions$Builder;->tcpInfo:Lio/grpc/InternalChannelz$TcpInfo;

    iget-object v4, p0, Lio/grpc/InternalChannelz$SocketOptions$Builder;->others:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/grpc/InternalChannelz$SocketOptions;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lio/grpc/InternalChannelz$TcpInfo;Ljava/util/Map;)V

    return-object v0
.end method

.method public setSocketOptionLingerSeconds(Ljava/lang/Integer;)Lio/grpc/InternalChannelz$SocketOptions$Builder;
    .locals 0
    .param p1, "lingerSeconds"    # Ljava/lang/Integer;

    .line 1015
    iput-object p1, p0, Lio/grpc/InternalChannelz$SocketOptions$Builder;->lingerSeconds:Ljava/lang/Integer;

    .line 1016
    return-object p0
.end method

.method public setSocketOptionTimeoutMillis(Ljava/lang/Integer;)Lio/grpc/InternalChannelz$SocketOptions$Builder;
    .locals 0
    .param p1, "timeoutMillis"    # Ljava/lang/Integer;

    .line 1007
    iput-object p1, p0, Lio/grpc/InternalChannelz$SocketOptions$Builder;->timeoutMillis:Ljava/lang/Integer;

    .line 1008
    return-object p0
.end method

.method public setTcpInfo(Lio/grpc/InternalChannelz$TcpInfo;)Lio/grpc/InternalChannelz$SocketOptions$Builder;
    .locals 0
    .param p1, "tcpInfo"    # Lio/grpc/InternalChannelz$TcpInfo;

    .line 1020
    iput-object p1, p0, Lio/grpc/InternalChannelz$SocketOptions$Builder;->tcpInfo:Lio/grpc/InternalChannelz$TcpInfo;

    .line 1021
    return-object p0
.end method
