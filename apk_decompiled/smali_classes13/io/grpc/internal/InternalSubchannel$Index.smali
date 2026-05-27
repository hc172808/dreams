.class final Lio/grpc/internal/InternalSubchannel$Index;
.super Ljava/lang/Object;
.source "InternalSubchannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/InternalSubchannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Index"
.end annotation


# instance fields
.field private addressGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation
.end field

.field private addressIndex:I

.field private groupIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;)V"
        }
    .end annotation

    .line 676
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel$Index;->addressGroups:Ljava/util/List;

    .line 678
    return-void
.end method


# virtual methods
.method public getCurrentAddress()Ljava/net/SocketAddress;
    .locals 2

    .line 704
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$Index;->addressGroups:Ljava/util/List;

    iget v1, p0, Lio/grpc/internal/InternalSubchannel$Index;->groupIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/EquivalentAddressGroup;

    invoke-virtual {v0}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lio/grpc/internal/InternalSubchannel$Index;->addressIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getCurrentEagAttributes()Lio/grpc/Attributes;
    .locals 2

    .line 708
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$Index;->addressGroups:Ljava/util/List;

    iget v1, p0, Lio/grpc/internal/InternalSubchannel$Index;->groupIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/EquivalentAddressGroup;

    invoke-virtual {v0}, Lio/grpc/EquivalentAddressGroup;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation

    .line 712
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$Index;->addressGroups:Ljava/util/List;

    return-object v0
.end method

.method public increment()V
    .locals 3

    .line 690
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$Index;->addressGroups:Ljava/util/List;

    iget v1, p0, Lio/grpc/internal/InternalSubchannel$Index;->groupIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/EquivalentAddressGroup;

    .line 691
    .local v0, "group":Lio/grpc/EquivalentAddressGroup;
    iget v1, p0, Lio/grpc/internal/InternalSubchannel$Index;->addressIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/grpc/internal/InternalSubchannel$Index;->addressIndex:I

    .line 692
    invoke-virtual {v0}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 693
    iget v1, p0, Lio/grpc/internal/InternalSubchannel$Index;->groupIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/grpc/internal/InternalSubchannel$Index;->groupIndex:I

    .line 694
    const/4 v1, 0x0

    iput v1, p0, Lio/grpc/internal/InternalSubchannel$Index;->addressIndex:I

    .line 696
    :cond_0
    return-void
.end method

.method public isAtBeginning()Z
    .locals 1

    .line 686
    iget v0, p0, Lio/grpc/internal/InternalSubchannel$Index;->groupIndex:I

    if-nez v0, :cond_0

    iget v0, p0, Lio/grpc/internal/InternalSubchannel$Index;->addressIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 2

    .line 682
    iget v0, p0, Lio/grpc/internal/InternalSubchannel$Index;->groupIndex:I

    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$Index;->addressGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    .line 699
    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/internal/InternalSubchannel$Index;->groupIndex:I

    .line 700
    iput v0, p0, Lio/grpc/internal/InternalSubchannel$Index;->addressIndex:I

    .line 701
    return-void
.end method

.method public seekTo(Ljava/net/SocketAddress;)Z
    .locals 4
    .param p1, "needle"    # Ljava/net/SocketAddress;

    .line 723
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$Index;->addressGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 724
    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$Index;->addressGroups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/EquivalentAddressGroup;

    .line 725
    .local v1, "group":Lio/grpc/EquivalentAddressGroup;
    invoke-virtual {v1}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 726
    .local v2, "j":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 727
    nop

    .line 723
    .end local v1    # "group":Lio/grpc/EquivalentAddressGroup;
    .end local v2    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 729
    .restart local v1    # "group":Lio/grpc/EquivalentAddressGroup;
    .restart local v2    # "j":I
    :cond_0
    iput v0, p0, Lio/grpc/internal/InternalSubchannel$Index;->groupIndex:I

    .line 730
    iput v2, p0, Lio/grpc/internal/InternalSubchannel$Index;->addressIndex:I

    .line 731
    const/4 v3, 0x1

    return v3

    .line 733
    .end local v0    # "i":I
    .end local v1    # "group":Lio/grpc/EquivalentAddressGroup;
    .end local v2    # "j":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public updateGroups(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;)V"
        }
    .end annotation

    .line 717
    .local p1, "newGroups":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel$Index;->addressGroups:Ljava/util/List;

    .line 718
    invoke-virtual {p0}, Lio/grpc/internal/InternalSubchannel$Index;->reset()V

    .line 719
    return-void
.end method
