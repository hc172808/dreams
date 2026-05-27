.class final Lio/grpc/internal/ServiceConfigState;
.super Ljava/lang/Object;
.source "ServiceConfigState.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private currentServiceConfigOrError:Lio/grpc/NameResolver$ConfigOrError;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final defaultServiceConfig:Lio/grpc/NameResolver$ConfigOrError;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final lookUpServiceConfig:Z

.field private updated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 28
    return-void
.end method

.method constructor <init>(Lio/grpc/internal/ManagedChannelServiceConfig;Z)V
    .locals 1
    .param p1, "defaultServiceConfig"    # Lio/grpc/internal/ManagedChannelServiceConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "lookUpServiceConfig"    # Z

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_0

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/ServiceConfigState;->defaultServiceConfig:Lio/grpc/NameResolver$ConfigOrError;

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {p1}, Lio/grpc/NameResolver$ConfigOrError;->fromConfig(Ljava/lang/Object;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ServiceConfigState;->defaultServiceConfig:Lio/grpc/NameResolver$ConfigOrError;

    .line 50
    :goto_0
    iput-boolean p2, p0, Lio/grpc/internal/ServiceConfigState;->lookUpServiceConfig:Z

    .line 51
    if-nez p2, :cond_1

    .line 52
    iget-object v0, p0, Lio/grpc/internal/ServiceConfigState;->defaultServiceConfig:Lio/grpc/NameResolver$ConfigOrError;

    iput-object v0, p0, Lio/grpc/internal/ServiceConfigState;->currentServiceConfigOrError:Lio/grpc/NameResolver$ConfigOrError;

    .line 54
    :cond_1
    return-void
.end method


# virtual methods
.method expectUpdates()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lio/grpc/internal/ServiceConfigState;->lookUpServiceConfig:Z

    return v0
.end method

.method getCurrent()Lio/grpc/NameResolver$ConfigOrError;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 81
    invoke-virtual {p0}, Lio/grpc/internal/ServiceConfigState;->shouldWaitOnServiceConfig()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "still waiting on service config"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lio/grpc/internal/ServiceConfigState;->currentServiceConfigOrError:Lio/grpc/NameResolver$ConfigOrError;

    return-object v0
.end method

.method shouldWaitOnServiceConfig()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lio/grpc/internal/ServiceConfigState;->updated:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/grpc/internal/ServiceConfigState;->expectUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method update(Lio/grpc/NameResolver$ConfigOrError;)V
    .locals 2
    .param p1, "coe"    # Lio/grpc/NameResolver$ConfigOrError;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 86
    invoke-virtual {p0}, Lio/grpc/internal/ServiceConfigState;->expectUpdates()Z

    move-result v0

    const-string v1, "unexpected service config update"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 87
    iget-boolean v0, p0, Lio/grpc/internal/ServiceConfigState;->updated:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 88
    .local v0, "firstUpdate":Z
    iput-boolean v1, p0, Lio/grpc/internal/ServiceConfigState;->updated:Z

    .line 89
    if-eqz v0, :cond_4

    .line 90
    if-nez p1, :cond_0

    .line 91
    iget-object v1, p0, Lio/grpc/internal/ServiceConfigState;->defaultServiceConfig:Lio/grpc/NameResolver$ConfigOrError;

    iput-object v1, p0, Lio/grpc/internal/ServiceConfigState;->currentServiceConfigOrError:Lio/grpc/NameResolver$ConfigOrError;

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p1}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 93
    iget-object v1, p0, Lio/grpc/internal/ServiceConfigState;->defaultServiceConfig:Lio/grpc/NameResolver$ConfigOrError;

    if-eqz v1, :cond_1

    .line 94
    iput-object v1, p0, Lio/grpc/internal/ServiceConfigState;->currentServiceConfigOrError:Lio/grpc/NameResolver$ConfigOrError;

    goto :goto_0

    .line 96
    :cond_1
    iput-object p1, p0, Lio/grpc/internal/ServiceConfigState;->currentServiceConfigOrError:Lio/grpc/NameResolver$ConfigOrError;

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p1}, Lio/grpc/NameResolver$ConfigOrError;->getConfig()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 100
    iput-object p1, p0, Lio/grpc/internal/ServiceConfigState;->currentServiceConfigOrError:Lio/grpc/NameResolver$ConfigOrError;

    goto :goto_0

    .line 99
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 103
    :cond_4
    if-nez p1, :cond_6

    .line 104
    iget-object v1, p0, Lio/grpc/internal/ServiceConfigState;->defaultServiceConfig:Lio/grpc/NameResolver$ConfigOrError;

    if-eqz v1, :cond_5

    .line 105
    iput-object v1, p0, Lio/grpc/internal/ServiceConfigState;->currentServiceConfigOrError:Lio/grpc/NameResolver$ConfigOrError;

    goto :goto_0

    .line 107
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/internal/ServiceConfigState;->currentServiceConfigOrError:Lio/grpc/NameResolver$ConfigOrError;

    goto :goto_0

    .line 109
    :cond_6
    invoke-virtual {p1}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 110
    iget-object v1, p0, Lio/grpc/internal/ServiceConfigState;->currentServiceConfigOrError:Lio/grpc/NameResolver$ConfigOrError;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lio/grpc/NameResolver$ConfigOrError;->getError()Lio/grpc/Status;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 111
    iput-object p1, p0, Lio/grpc/internal/ServiceConfigState;->currentServiceConfigOrError:Lio/grpc/NameResolver$ConfigOrError;

    goto :goto_0

    .line 116
    :cond_7
    invoke-virtual {p1}, Lio/grpc/NameResolver$ConfigOrError;->getConfig()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 117
    iput-object p1, p0, Lio/grpc/internal/ServiceConfigState;->currentServiceConfigOrError:Lio/grpc/NameResolver$ConfigOrError;

    .line 120
    :cond_8
    :goto_0
    return-void

    .line 116
    :cond_9
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method
