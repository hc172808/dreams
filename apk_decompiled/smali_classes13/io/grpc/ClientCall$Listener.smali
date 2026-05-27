.class public abstract Lio/grpc/ClientCall$Listener;
.super Ljava/lang/Object;
.source "ClientCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/ClientCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
    .local p0, "this":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 0
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "trailers"    # Lio/grpc/Metadata;

    .line 144
    .local p0, "this":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TT;>;"
    return-void
.end method

.method public onHeaders(Lio/grpc/Metadata;)V
    .locals 0
    .param p1, "headers"    # Lio/grpc/Metadata;

    .line 119
    .local p0, "this":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TT;>;"
    return-void
.end method

.method public onMessage(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 127
    .local p0, "this":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public onReady()V
    .locals 0

    .line 162
    .local p0, "this":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TT;>;"
    return-void
.end method
