.class public final Lio/grpc/LoadBalancer$CreateSubchannelArgs;
.super Ljava/lang/Object;
.source "LoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/LoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateSubchannelArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/LoadBalancer$CreateSubchannelArgs$Key;,
        Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;
    }
.end annotation


# instance fields
.field private final addrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final attrs:Lio/grpc/Attributes;

.field private final customOptions:[[Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/util/List;Lio/grpc/Attributes;[[Ljava/lang/Object;)V
    .locals 1
    .param p2, "attrs"    # Lio/grpc/Attributes;
    .param p3, "customOptions"    # [[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;",
            "Lio/grpc/Attributes;",
            "[[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 705
    .local p1, "addrs":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    const-string v0, "addresses are not set"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->addrs:Ljava/util/List;

    .line 707
    const-string v0, "attrs"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Attributes;

    iput-object v0, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->attrs:Lio/grpc/Attributes;

    .line 708
    const-string v0, "customOptions"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->customOptions:[[Ljava/lang/Object;

    .line 709
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lio/grpc/Attributes;[[Ljava/lang/Object;Lio/grpc/LoadBalancer$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lio/grpc/Attributes;
    .param p3, "x2"    # [[Ljava/lang/Object;
    .param p4, "x3"    # Lio/grpc/LoadBalancer$1;

    .line 699
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/LoadBalancer$CreateSubchannelArgs;-><init>(Ljava/util/List;Lio/grpc/Attributes;[[Ljava/lang/Object;)V

    return-void
.end method

.method public static newBuilder()Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;
    .locals 1

    .line 752
    new-instance v0, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    invoke-direct {v0}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation

    .line 715
    iget-object v0, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->addrs:Ljava/util/List;

    return-object v0
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 722
    iget-object v0, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->attrs:Lio/grpc/Attributes;

    return-object v0
.end method

.method public getOption(Lio/grpc/LoadBalancer$CreateSubchannelArgs$Key;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/LoadBalancer$CreateSubchannelArgs$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 732
    .local p1, "key":Lio/grpc/LoadBalancer$CreateSubchannelArgs$Key;, "Lio/grpc/LoadBalancer$CreateSubchannelArgs$Key<TT;>;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->customOptions:[[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 734
    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    iget-object v1, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->customOptions:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    return-object v1

    .line 733
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 738
    .end local v0    # "i":I
    :cond_1
    invoke-static {p1}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Key;->access$100(Lio/grpc/LoadBalancer$CreateSubchannelArgs$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;
    .locals 2

    .line 745
    invoke-static {}, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->newBuilder()Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->addrs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->setAddresses(Ljava/util/List;)Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->attrs:Lio/grpc/Attributes;

    invoke-virtual {v0, v1}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->setAttributes(Lio/grpc/Attributes;)Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->customOptions:[[Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->access$200(Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;[[Ljava/lang/Object;)Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 757
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->addrs:Ljava/util/List;

    .line 758
    const-string v2, "addrs"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->attrs:Lio/grpc/Attributes;

    .line 759
    const-string v2, "attrs"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->customOptions:[[Ljava/lang/Object;

    .line 760
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "customOptions"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 761
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 757
    return-object v0
.end method
