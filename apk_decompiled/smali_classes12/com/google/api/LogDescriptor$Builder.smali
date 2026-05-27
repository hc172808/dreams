.class public final Lcom/google/api/LogDescriptor$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LogDescriptor.java"

# interfaces
.implements Lcom/google/api/LogDescriptorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/LogDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/LogDescriptor;",
        "Lcom/google/api/LogDescriptor$Builder;",
        ">;",
        "Lcom/google/api/LogDescriptorOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 517
    invoke-static {}, Lcom/google/api/LogDescriptor;->access$000()Lcom/google/api/LogDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 518
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/LogDescriptor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/LogDescriptor$1;

    .line 510
    invoke-direct {p0}, Lcom/google/api/LogDescriptor$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllLabels(Ljava/lang/Iterable;)Lcom/google/api/LogDescriptor$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/LabelDescriptor;",
            ">;)",
            "Lcom/google/api/LogDescriptor$Builder;"
        }
    .end annotation

    .line 746
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/LabelDescriptor;>;"
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 747
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/LogDescriptor;->access$700(Lcom/google/api/LogDescriptor;Ljava/lang/Iterable;)V

    .line 748
    return-object p0
.end method

.method public addLabels(ILcom/google/api/LabelDescriptor$Builder;)Lcom/google/api/LogDescriptor$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/LabelDescriptor$Builder;

    .line 730
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 731
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    .line 732
    invoke-virtual {p2}, Lcom/google/api/LabelDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/LabelDescriptor;

    .line 731
    invoke-static {v0, p1, v1}, Lcom/google/api/LogDescriptor;->access$600(Lcom/google/api/LogDescriptor;ILcom/google/api/LabelDescriptor;)V

    .line 733
    return-object p0
.end method

.method public addLabels(ILcom/google/api/LabelDescriptor;)Lcom/google/api/LogDescriptor$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/LabelDescriptor;

    .line 700
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 701
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0, p1, p2}, Lcom/google/api/LogDescriptor;->access$600(Lcom/google/api/LogDescriptor;ILcom/google/api/LabelDescriptor;)V

    .line 702
    return-object p0
.end method

.method public addLabels(Lcom/google/api/LabelDescriptor$Builder;)Lcom/google/api/LogDescriptor$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/LabelDescriptor$Builder;

    .line 715
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 716
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-virtual {p1}, Lcom/google/api/LabelDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/LabelDescriptor;

    invoke-static {v0, v1}, Lcom/google/api/LogDescriptor;->access$500(Lcom/google/api/LogDescriptor;Lcom/google/api/LabelDescriptor;)V

    .line 717
    return-object p0
.end method

.method public addLabels(Lcom/google/api/LabelDescriptor;)Lcom/google/api/LogDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/LabelDescriptor;

    .line 685
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 686
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/LogDescriptor;->access$500(Lcom/google/api/LogDescriptor;Lcom/google/api/LabelDescriptor;)V

    .line 687
    return-object p0
.end method

.method public clearDescription()Lcom/google/api/LogDescriptor$Builder;
    .locals 1

    .line 832
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 833
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0}, Lcom/google/api/LogDescriptor;->access$1100(Lcom/google/api/LogDescriptor;)V

    .line 834
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/api/LogDescriptor$Builder;
    .locals 1

    .line 906
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 907
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0}, Lcom/google/api/LogDescriptor;->access$1400(Lcom/google/api/LogDescriptor;)V

    .line 908
    return-object p0
.end method

.method public clearLabels()Lcom/google/api/LogDescriptor$Builder;
    .locals 1

    .line 760
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 761
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0}, Lcom/google/api/LogDescriptor;->access$800(Lcom/google/api/LogDescriptor;)V

    .line 762
    return-object p0
.end method

.method public clearName()Lcom/google/api/LogDescriptor$Builder;
    .locals 1

    .line 582
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 583
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0}, Lcom/google/api/LogDescriptor;->access$200(Lcom/google/api/LogDescriptor;)V

    .line 584
    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-virtual {v0}, Lcom/google/api/LogDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-virtual {v0}, Lcom/google/api/LogDescriptor;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 864
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-virtual {v0}, Lcom/google/api/LogDescriptor;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-virtual {v0}, Lcom/google/api/LogDescriptor;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLabels(I)Lcom/google/api/LabelDescriptor;
    .locals 1
    .param p1, "index"    # I

    .line 642
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-virtual {v0, p1}, Lcom/google/api/LogDescriptor;->getLabels(I)Lcom/google/api/LabelDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsCount()I
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-virtual {v0}, Lcom/google/api/LogDescriptor;->getLabelsCount()I

    move-result v0

    return v0
.end method

.method public getLabelsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/LabelDescriptor;",
            ">;"
        }
    .end annotation

    .line 616
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    .line 617
    invoke-virtual {v0}, Lcom/google/api/LogDescriptor;->getLabelsList()Ljava/util/List;

    move-result-object v0

    .line 616
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-virtual {v0}, Lcom/google/api/LogDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-virtual {v0}, Lcom/google/api/LogDescriptor;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeLabels(I)Lcom/google/api/LogDescriptor$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 774
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 775
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/LogDescriptor;->access$900(Lcom/google/api/LogDescriptor;I)V

    .line 776
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/api/LogDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 818
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 819
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/LogDescriptor;->access$1000(Lcom/google/api/LogDescriptor;Ljava/lang/String;)V

    .line 820
    return-object p0
.end method

.method public setDescriptionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/LogDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 848
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 849
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/LogDescriptor;->access$1200(Lcom/google/api/LogDescriptor;Lcom/google/protobuf/ByteString;)V

    .line 850
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/api/LogDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 892
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 893
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/LogDescriptor;->access$1300(Lcom/google/api/LogDescriptor;Ljava/lang/String;)V

    .line 894
    return-object p0
.end method

.method public setDisplayNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/LogDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 922
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 923
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/LogDescriptor;->access$1500(Lcom/google/api/LogDescriptor;Lcom/google/protobuf/ByteString;)V

    .line 924
    return-object p0
.end method

.method public setLabels(ILcom/google/api/LabelDescriptor$Builder;)Lcom/google/api/LogDescriptor$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/LabelDescriptor$Builder;

    .line 670
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 671
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    .line 672
    invoke-virtual {p2}, Lcom/google/api/LabelDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/LabelDescriptor;

    .line 671
    invoke-static {v0, p1, v1}, Lcom/google/api/LogDescriptor;->access$400(Lcom/google/api/LogDescriptor;ILcom/google/api/LabelDescriptor;)V

    .line 673
    return-object p0
.end method

.method public setLabels(ILcom/google/api/LabelDescriptor;)Lcom/google/api/LogDescriptor$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/LabelDescriptor;

    .line 655
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 656
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0, p1, p2}, Lcom/google/api/LogDescriptor;->access$400(Lcom/google/api/LogDescriptor;ILcom/google/api/LabelDescriptor;)V

    .line 657
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/LogDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 566
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 567
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/LogDescriptor;->access$100(Lcom/google/api/LogDescriptor;Ljava/lang/String;)V

    .line 568
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/LogDescriptor$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 600
    invoke-virtual {p0}, Lcom/google/api/LogDescriptor$Builder;->copyOnWrite()V

    .line 601
    iget-object v0, p0, Lcom/google/api/LogDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/LogDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/LogDescriptor;->access$300(Lcom/google/api/LogDescriptor;Lcom/google/protobuf/ByteString;)V

    .line 602
    return-object p0
.end method
