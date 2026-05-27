.class public final Lio/grpc/ConnectivityStateInfo;
.super Ljava/lang/Object;
.source "ConnectivityStateInfo.java"


# instance fields
.field private final state:Lio/grpc/ConnectivityState;

.field private final status:Lio/grpc/Status;


# direct methods
.method private constructor <init>(Lio/grpc/ConnectivityState;Lio/grpc/Status;)V
    .locals 1
    .param p1, "state"    # Lio/grpc/ConnectivityState;
    .param p2, "status"    # Lio/grpc/Status;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-string v0, "state is null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ConnectivityState;

    iput-object v0, p0, Lio/grpc/ConnectivityStateInfo;->state:Lio/grpc/ConnectivityState;

    .line 95
    const-string v0, "status is null"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Status;

    iput-object v0, p0, Lio/grpc/ConnectivityStateInfo;->status:Lio/grpc/Status;

    .line 96
    return-void
.end method

.method public static forNonError(Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityStateInfo;
    .locals 2
    .param p0, "state"    # Lio/grpc/ConnectivityState;

    .line 40
    sget-object v0, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "state is TRANSIENT_ERROR. Use forError() instead"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 43
    new-instance v0, Lio/grpc/ConnectivityStateInfo;

    sget-object v1, Lio/grpc/Status;->OK:Lio/grpc/Status;

    invoke-direct {v0, p0, v1}, Lio/grpc/ConnectivityStateInfo;-><init>(Lio/grpc/ConnectivityState;Lio/grpc/Status;)V

    return-object v0
.end method

.method public static forTransientFailure(Lio/grpc/Status;)Lio/grpc/ConnectivityStateInfo;
    .locals 2
    .param p0, "error"    # Lio/grpc/Status;

    .line 50
    invoke-virtual {p0}, Lio/grpc/Status;->isOk()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "The error status must not be OK"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 51
    new-instance v0, Lio/grpc/ConnectivityStateInfo;

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    invoke-direct {v0, v1, p0}, Lio/grpc/ConnectivityStateInfo;-><init>(Lio/grpc/ConnectivityState;Lio/grpc/Status;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 73
    instance-of v0, p1, Lio/grpc/ConnectivityStateInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 74
    return v1

    .line 76
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/grpc/ConnectivityStateInfo;

    .line 77
    .local v0, "o":Lio/grpc/ConnectivityStateInfo;
    iget-object v2, p0, Lio/grpc/ConnectivityStateInfo;->state:Lio/grpc/ConnectivityState;

    iget-object v3, v0, Lio/grpc/ConnectivityStateInfo;->state:Lio/grpc/ConnectivityState;

    invoke-virtual {v2, v3}, Lio/grpc/ConnectivityState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/grpc/ConnectivityStateInfo;->status:Lio/grpc/Status;

    iget-object v3, v0, Lio/grpc/ConnectivityStateInfo;->status:Lio/grpc/Status;

    invoke-virtual {v2, v3}, Lio/grpc/Status;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getState()Lio/grpc/ConnectivityState;
    .locals 1

    .line 58
    iget-object v0, p0, Lio/grpc/ConnectivityStateInfo;->state:Lio/grpc/ConnectivityState;

    return-object v0
.end method

.method public getStatus()Lio/grpc/Status;
    .locals 1

    .line 68
    iget-object v0, p0, Lio/grpc/ConnectivityStateInfo;->status:Lio/grpc/Status;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 82
    iget-object v0, p0, Lio/grpc/ConnectivityStateInfo;->state:Lio/grpc/ConnectivityState;

    invoke-virtual {v0}, Lio/grpc/ConnectivityState;->hashCode()I

    move-result v0

    iget-object v1, p0, Lio/grpc/ConnectivityStateInfo;->status:Lio/grpc/Status;

    invoke-virtual {v1}, Lio/grpc/Status;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    iget-object v0, p0, Lio/grpc/ConnectivityStateInfo;->status:Lio/grpc/Status;

    invoke-virtual {v0}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lio/grpc/ConnectivityStateInfo;->state:Lio/grpc/ConnectivityState;

    invoke-virtual {v0}, Lio/grpc/ConnectivityState;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/grpc/ConnectivityStateInfo;->state:Lio/grpc/ConnectivityState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/ConnectivityStateInfo;->status:Lio/grpc/Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
