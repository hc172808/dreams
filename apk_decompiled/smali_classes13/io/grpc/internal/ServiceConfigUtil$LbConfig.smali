.class public final Lio/grpc/internal/ServiceConfigUtil$LbConfig;
.super Ljava/lang/Object;
.source "ServiceConfigUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ServiceConfigUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LbConfig"
.end annotation


# instance fields
.field private final policyName:Ljava/lang/String;

.field private final rawConfigValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "policyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 325
    .local p2, "rawConfigValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    const-string v0, "policyName"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/internal/ServiceConfigUtil$LbConfig;->policyName:Ljava/lang/String;

    .line 327
    const-string v0, "rawConfigValue"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lio/grpc/internal/ServiceConfigUtil$LbConfig;->rawConfigValue:Ljava/util/Map;

    .line 328
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 340
    instance-of v0, p1, Lio/grpc/internal/ServiceConfigUtil$LbConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 341
    move-object v0, p1

    check-cast v0, Lio/grpc/internal/ServiceConfigUtil$LbConfig;

    .line 342
    .local v0, "other":Lio/grpc/internal/ServiceConfigUtil$LbConfig;
    iget-object v2, p0, Lio/grpc/internal/ServiceConfigUtil$LbConfig;->policyName:Ljava/lang/String;

    iget-object v3, v0, Lio/grpc/internal/ServiceConfigUtil$LbConfig;->policyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/grpc/internal/ServiceConfigUtil$LbConfig;->rawConfigValue:Ljava/util/Map;

    iget-object v3, v0, Lio/grpc/internal/ServiceConfigUtil$LbConfig;->rawConfigValue:Ljava/util/Map;

    .line 343
    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 342
    :goto_0
    return v1

    .line 345
    .end local v0    # "other":Lio/grpc/internal/ServiceConfigUtil$LbConfig;
    :cond_1
    return v1
.end method

.method public getPolicyName()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Lio/grpc/internal/ServiceConfigUtil$LbConfig;->policyName:Ljava/lang/String;

    return-object v0
.end method

.method public getRawConfigValue()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lio/grpc/internal/ServiceConfigUtil$LbConfig;->rawConfigValue:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 350
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lio/grpc/internal/ServiceConfigUtil$LbConfig;->policyName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/internal/ServiceConfigUtil$LbConfig;->rawConfigValue:Ljava/util/Map;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 355
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ServiceConfigUtil$LbConfig;->policyName:Ljava/lang/String;

    .line 356
    const-string v2, "policyName"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ServiceConfigUtil$LbConfig;->rawConfigValue:Ljava/util/Map;

    .line 357
    const-string v2, "rawConfigValue"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    return-object v0
.end method
