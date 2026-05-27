.class public final Lio/grpc/InternalChannelz$Security;
.super Ljava/lang/Object;
.source "InternalChannelz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/InternalChannelz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Security"
.end annotation


# instance fields
.field public final other:Lio/grpc/InternalChannelz$OtherSecurity;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final tls:Lio/grpc/InternalChannelz$Tls;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/grpc/InternalChannelz$OtherSecurity;)V
    .locals 1
    .param p1, "other"    # Lio/grpc/InternalChannelz$OtherSecurity;

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/InternalChannelz$Security;->tls:Lio/grpc/InternalChannelz$Tls;

    .line 632
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/InternalChannelz$OtherSecurity;

    iput-object v0, p0, Lio/grpc/InternalChannelz$Security;->other:Lio/grpc/InternalChannelz$OtherSecurity;

    .line 633
    return-void
.end method

.method public constructor <init>(Lio/grpc/InternalChannelz$Tls;)V
    .locals 1
    .param p1, "tls"    # Lio/grpc/InternalChannelz$Tls;

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/InternalChannelz$Tls;

    iput-object v0, p0, Lio/grpc/InternalChannelz$Security;->tls:Lio/grpc/InternalChannelz$Tls;

    .line 627
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/InternalChannelz$Security;->other:Lio/grpc/InternalChannelz$OtherSecurity;

    .line 628
    return-void
.end method
