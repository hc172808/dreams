.class abstract Lio/grpc/internal/InternalSubchannel$Callback;
.super Ljava/lang/Object;
.source "InternalSubchannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/InternalSubchannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Callback"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onInUse(Lio/grpc/internal/InternalSubchannel;)V
    .locals 0
    .param p1, "is"    # Lio/grpc/internal/InternalSubchannel;

    .line 607
    return-void
.end method

.method onNotInUse(Lio/grpc/internal/InternalSubchannel;)V
    .locals 0
    .param p1, "is"    # Lio/grpc/internal/InternalSubchannel;

    .line 614
    return-void
.end method

.method onStateChange(Lio/grpc/internal/InternalSubchannel;Lio/grpc/ConnectivityStateInfo;)V
    .locals 0
    .param p1, "is"    # Lio/grpc/internal/InternalSubchannel;
    .param p2, "newState"    # Lio/grpc/ConnectivityStateInfo;

    .line 600
    return-void
.end method

.method onTerminated(Lio/grpc/internal/InternalSubchannel;)V
    .locals 0
    .param p1, "is"    # Lio/grpc/internal/InternalSubchannel;

    .line 594
    return-void
.end method
