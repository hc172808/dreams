.class final Lio/grpc/internal/RetryPolicy;
.super Ljava/lang/Object;
.source "RetryPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/RetryPolicy$Provider;
    }
.end annotation


# static fields
.field static final DEFAULT:Lio/grpc/internal/RetryPolicy;


# instance fields
.field final backoffMultiplier:D

.field final initialBackoffNanos:J

.field final maxAttempts:I

.field final maxBackoffNanos:J

.field final retryableStatusCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/grpc/Status$Code;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 41
    new-instance v9, Lio/grpc/internal/RetryPolicy;

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/grpc/internal/RetryPolicy;-><init>(IJJDLjava/util/Set;)V

    sput-object v9, Lio/grpc/internal/RetryPolicy;->DEFAULT:Lio/grpc/internal/RetryPolicy;

    .line 41
    return-void
.end method

.method constructor <init>(IJJDLjava/util/Set;)V
    .locals 1
    .param p1, "maxAttempts"    # I
    .param p2, "initialBackoffNanos"    # J
    .param p4, "maxBackoffNanos"    # J
    .param p6, "backoffMultiplier"    # D
    .param p8    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJD",
            "Ljava/util/Set<",
            "Lio/grpc/Status$Code;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p8, "retryableStatusCodes":Ljava/util/Set;, "Ljava/util/Set<Lio/grpc/Status$Code;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lio/grpc/internal/RetryPolicy;->maxAttempts:I

    .line 55
    iput-wide p2, p0, Lio/grpc/internal/RetryPolicy;->initialBackoffNanos:J

    .line 56
    iput-wide p4, p0, Lio/grpc/internal/RetryPolicy;->maxBackoffNanos:J

    .line 57
    iput-wide p6, p0, Lio/grpc/internal/RetryPolicy;->backoffMultiplier:D

    .line 58
    invoke-static {p8}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/RetryPolicy;->retryableStatusCodes:Ljava/util/Set;

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 73
    instance-of v0, p1, Lio/grpc/internal/RetryPolicy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 74
    return v1

    .line 76
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/grpc/internal/RetryPolicy;

    .line 77
    .local v0, "that":Lio/grpc/internal/RetryPolicy;
    iget v2, p0, Lio/grpc/internal/RetryPolicy;->maxAttempts:I

    iget v3, v0, Lio/grpc/internal/RetryPolicy;->maxAttempts:I

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Lio/grpc/internal/RetryPolicy;->initialBackoffNanos:J

    iget-wide v4, v0, Lio/grpc/internal/RetryPolicy;->initialBackoffNanos:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    iget-wide v2, p0, Lio/grpc/internal/RetryPolicy;->maxBackoffNanos:J

    iget-wide v4, v0, Lio/grpc/internal/RetryPolicy;->maxBackoffNanos:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    iget-wide v2, p0, Lio/grpc/internal/RetryPolicy;->backoffMultiplier:D

    iget-wide v4, v0, Lio/grpc/internal/RetryPolicy;->backoffMultiplier:D

    .line 80
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lio/grpc/internal/RetryPolicy;->retryableStatusCodes:Ljava/util/Set;

    iget-object v3, v0, Lio/grpc/internal/RetryPolicy;->retryableStatusCodes:Ljava/util/Set;

    .line 81
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 77
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 63
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lio/grpc/internal/RetryPolicy;->maxAttempts:I

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lio/grpc/internal/RetryPolicy;->initialBackoffNanos:J

    .line 65
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lio/grpc/internal/RetryPolicy;->maxBackoffNanos:J

    .line 66
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lio/grpc/internal/RetryPolicy;->backoffMultiplier:D

    .line 67
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/internal/RetryPolicy;->retryableStatusCodes:Ljava/util/Set;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 63
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 86
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lio/grpc/internal/RetryPolicy;->maxAttempts:I

    .line 87
    const-string v2, "maxAttempts"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lio/grpc/internal/RetryPolicy;->initialBackoffNanos:J

    .line 88
    const-string v3, "initialBackoffNanos"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lio/grpc/internal/RetryPolicy;->maxBackoffNanos:J

    .line 89
    const-string v3, "maxBackoffNanos"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lio/grpc/internal/RetryPolicy;->backoffMultiplier:D

    .line 90
    const-string v3, "backoffMultiplier"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;D)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/RetryPolicy;->retryableStatusCodes:Ljava/util/Set;

    .line 91
    const-string v2, "retryableStatusCodes"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    return-object v0
.end method
