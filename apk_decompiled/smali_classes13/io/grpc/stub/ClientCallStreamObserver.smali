.class public abstract Lio/grpc/stub/ClientCallStreamObserver;
.super Lio/grpc/stub/CallStreamObserver;
.source "ClientCallStreamObserver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/stub/CallStreamObserver<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    .local p0, "this":Lio/grpc/stub/ClientCallStreamObserver;, "Lio/grpc/stub/ClientCallStreamObserver<TV;>;"
    invoke-direct {p0}, Lio/grpc/stub/CallStreamObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method
