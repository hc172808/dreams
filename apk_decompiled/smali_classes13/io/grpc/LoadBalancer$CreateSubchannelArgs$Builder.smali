.class public final Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;
.super Ljava/lang/Object;
.source "LoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/LoadBalancer$CreateSubchannelArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private addrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation
.end field

.field private attrs:Lio/grpc/Attributes;

.field private customOptions:[[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 768
    sget-object v0, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    iput-object v0, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->attrs:Lio/grpc/Attributes;

    .line 769
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->customOptions:[[Ljava/lang/Object;

    .line 772
    return-void

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data
.end method

.method static synthetic access$200(Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;[[Ljava/lang/Object;)Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;
    .locals 1
    .param p0, "x0"    # Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;
    .param p1, "x1"    # [[Ljava/lang/Object;

    .line 765
    invoke-direct {p0, p1}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->copyCustomOptions([[Ljava/lang/Object;)Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method private copyCustomOptions([[Ljava/lang/Object;)Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;
    .locals 4
    .param p1, "options"    # [[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[",
            "Ljava/lang/Object;",
            ")",
            "Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;"
        }
    .end annotation

    .line 775
    array-length v0, p1

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->customOptions:[[Ljava/lang/Object;

    .line 776
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 777
    return-object p0
.end method


# virtual methods
.method public addOption(Lio/grpc/LoadBalancer$CreateSubchannelArgs$Key;Ljava/lang/Object;)Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/LoadBalancer$CreateSubchannelArgs$Key<",
            "TT;>;TT;)",
            "Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;"
        }
    .end annotation

    .line 789
    .local p1, "key":Lio/grpc/LoadBalancer$CreateSubchannelArgs$Key;, "Lio/grpc/LoadBalancer$CreateSubchannelArgs$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    const/4 v0, -0x1

    .line 793
    .local v0, "existingIdx":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->customOptions:[[Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_1

    .line 794
    aget-object v2, v2, v1

    aget-object v2, v2, v4

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 795
    move v0, v1

    .line 796
    goto :goto_1

    .line 793
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 800
    .end local v1    # "i":I
    :cond_1
    :goto_1
    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 801
    iget-object v1, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->customOptions:[[Ljava/lang/Object;

    array-length v1, v1

    add-int/2addr v1, v3

    new-array v5, v2, [I

    aput v2, v5, v3

    aput v1, v5, v4

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/Object;

    .line 802
    .local v1, "newCustomOptions":[[Ljava/lang/Object;
    iget-object v5, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->customOptions:[[Ljava/lang/Object;

    array-length v6, v5

    invoke-static {v5, v4, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 803
    iput-object v1, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->customOptions:[[Ljava/lang/Object;

    .line 804
    array-length v5, v1

    add-int/lit8 v0, v5, -0x1

    .line 806
    .end local v1    # "newCustomOptions":[[Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->customOptions:[[Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v3

    aput-object v2, v1, v0

    .line 807
    return-object p0
.end method

.method public build()Lio/grpc/LoadBalancer$CreateSubchannelArgs;
    .locals 5

    .line 847
    new-instance v0, Lio/grpc/LoadBalancer$CreateSubchannelArgs;

    iget-object v1, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->addrs:Ljava/util/List;

    iget-object v2, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->attrs:Lio/grpc/Attributes;

    iget-object v3, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->customOptions:[[Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lio/grpc/LoadBalancer$CreateSubchannelArgs;-><init>(Ljava/util/List;Lio/grpc/Attributes;[[Ljava/lang/Object;Lio/grpc/LoadBalancer$1;)V

    return-object v0
.end method

.method public setAddresses(Lio/grpc/EquivalentAddressGroup;)Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;
    .locals 1
    .param p1, "addrs"    # Lio/grpc/EquivalentAddressGroup;

    .line 815
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->addrs:Ljava/util/List;

    .line 816
    return-object p0
.end method

.method public setAddresses(Ljava/util/List;)Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;)",
            "Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;"
        }
    .end annotation

    .line 828
    .local p1, "addrs":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "addrs is empty"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 829
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->addrs:Ljava/util/List;

    .line 830
    return-object p0
.end method

.method public setAttributes(Lio/grpc/Attributes;)Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;
    .locals 1
    .param p1, "attrs"    # Lio/grpc/Attributes;

    .line 839
    const-string v0, "attrs"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Attributes;

    iput-object v0, p0, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->attrs:Lio/grpc/Attributes;

    .line 840
    return-object p0
.end method
