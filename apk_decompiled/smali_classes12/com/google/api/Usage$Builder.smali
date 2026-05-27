.class public final Lcom/google/api/Usage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Usage.java"

# interfaces
.implements Lcom/google/api/UsageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Usage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Usage;",
        "Lcom/google/api/Usage$Builder;",
        ">;",
        "Lcom/google/api/UsageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 511
    invoke-static {}, Lcom/google/api/Usage;->access$000()Lcom/google/api/Usage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 512
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Usage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/Usage$1;

    .line 504
    invoke-direct {p0}, Lcom/google/api/Usage$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllRequirements(Ljava/lang/Iterable;)Lcom/google/api/Usage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/Usage$Builder;"
        }
    .end annotation

    .line 624
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 625
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$300(Lcom/google/api/Usage;Ljava/lang/Iterable;)V

    .line 626
    return-object p0
.end method

.method public addAllRules(Ljava/lang/Iterable;)Lcom/google/api/Usage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/UsageRule;",
            ">;)",
            "Lcom/google/api/Usage$Builder;"
        }
    .end annotation

    .line 792
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/UsageRule;>;"
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 793
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$900(Lcom/google/api/Usage;Ljava/lang/Iterable;)V

    .line 794
    return-object p0
.end method

.method public addRequirements(Ljava/lang/String;)Lcom/google/api/Usage$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 607
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 608
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$200(Lcom/google/api/Usage;Ljava/lang/String;)V

    .line 609
    return-object p0
.end method

.method public addRequirementsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Usage$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 656
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 657
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$500(Lcom/google/api/Usage;Lcom/google/protobuf/ByteString;)V

    .line 658
    return-object p0
.end method

.method public addRules(ILcom/google/api/UsageRule$Builder;)Lcom/google/api/Usage$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/UsageRule$Builder;

    .line 777
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 778
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    .line 779
    invoke-virtual {p2}, Lcom/google/api/UsageRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/UsageRule;

    .line 778
    invoke-static {v0, p1, v1}, Lcom/google/api/Usage;->access$800(Lcom/google/api/Usage;ILcom/google/api/UsageRule;)V

    .line 780
    return-object p0
.end method

.method public addRules(ILcom/google/api/UsageRule;)Lcom/google/api/Usage$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/UsageRule;

    .line 749
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 750
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1, p2}, Lcom/google/api/Usage;->access$800(Lcom/google/api/Usage;ILcom/google/api/UsageRule;)V

    .line 751
    return-object p0
.end method

.method public addRules(Lcom/google/api/UsageRule$Builder;)Lcom/google/api/Usage$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/UsageRule$Builder;

    .line 763
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 764
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {p1}, Lcom/google/api/UsageRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/UsageRule;

    invoke-static {v0, v1}, Lcom/google/api/Usage;->access$700(Lcom/google/api/Usage;Lcom/google/api/UsageRule;)V

    .line 765
    return-object p0
.end method

.method public addRules(Lcom/google/api/UsageRule;)Lcom/google/api/Usage$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/UsageRule;

    .line 735
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 736
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$700(Lcom/google/api/Usage;Lcom/google/api/UsageRule;)V

    .line 737
    return-object p0
.end method

.method public clearProducerNotificationChannel()Lcom/google/api/Usage$Builder;
    .locals 1

    .line 896
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 897
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0}, Lcom/google/api/Usage;->access$1300(Lcom/google/api/Usage;)V

    .line 898
    return-object p0
.end method

.method public clearRequirements()Lcom/google/api/Usage$Builder;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 640
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0}, Lcom/google/api/Usage;->access$400(Lcom/google/api/Usage;)V

    .line 641
    return-object p0
.end method

.method public clearRules()Lcom/google/api/Usage$Builder;
    .locals 1

    .line 805
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 806
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0}, Lcom/google/api/Usage;->access$1000(Lcom/google/api/Usage;)V

    .line 807
    return-object p0
.end method

.method public getProducerNotificationChannel()Ljava/lang/String;
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0}, Lcom/google/api/Usage;->getProducerNotificationChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProducerNotificationChannelBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0}, Lcom/google/api/Usage;->getProducerNotificationChannelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRequirements(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 558
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0, p1}, Lcom/google/api/Usage;->getRequirements(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequirementsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 574
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0, p1}, Lcom/google/api/Usage;->getRequirementsBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRequirementsCount()I
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0}, Lcom/google/api/Usage;->getRequirementsCount()I

    move-result v0

    return v0
.end method

.method public getRequirementsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    .line 529
    invoke-virtual {v0}, Lcom/google/api/Usage;->getRequirementsList()Ljava/util/List;

    move-result-object v0

    .line 528
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRules(I)Lcom/google/api/UsageRule;
    .locals 1
    .param p1, "index"    # I

    .line 695
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0, p1}, Lcom/google/api/Usage;->getRules(I)Lcom/google/api/UsageRule;

    move-result-object v0

    return-object v0
.end method

.method public getRulesCount()I
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-virtual {v0}, Lcom/google/api/Usage;->getRulesCount()I

    move-result v0

    return v0
.end method

.method public getRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/UsageRule;",
            ">;"
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    .line 672
    invoke-virtual {v0}, Lcom/google/api/Usage;->getRulesList()Ljava/util/List;

    move-result-object v0

    .line 671
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeRules(I)Lcom/google/api/Usage$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 818
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 819
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$1100(Lcom/google/api/Usage;I)V

    .line 820
    return-object p0
.end method

.method public setProducerNotificationChannel(Ljava/lang/String;)Lcom/google/api/Usage$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 877
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 878
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$1200(Lcom/google/api/Usage;Ljava/lang/String;)V

    .line 879
    return-object p0
.end method

.method public setProducerNotificationChannelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Usage$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 917
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 918
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1}, Lcom/google/api/Usage;->access$1400(Lcom/google/api/Usage;Lcom/google/protobuf/ByteString;)V

    .line 919
    return-object p0
.end method

.method public setRequirements(ILjava/lang/String;)Lcom/google/api/Usage$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 590
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 591
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1, p2}, Lcom/google/api/Usage;->access$100(Lcom/google/api/Usage;ILjava/lang/String;)V

    .line 592
    return-object p0
.end method

.method public setRules(ILcom/google/api/UsageRule$Builder;)Lcom/google/api/Usage$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/UsageRule$Builder;

    .line 721
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 722
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    .line 723
    invoke-virtual {p2}, Lcom/google/api/UsageRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/UsageRule;

    .line 722
    invoke-static {v0, p1, v1}, Lcom/google/api/Usage;->access$600(Lcom/google/api/Usage;ILcom/google/api/UsageRule;)V

    .line 724
    return-object p0
.end method

.method public setRules(ILcom/google/api/UsageRule;)Lcom/google/api/Usage$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/UsageRule;

    .line 707
    invoke-virtual {p0}, Lcom/google/api/Usage$Builder;->copyOnWrite()V

    .line 708
    iget-object v0, p0, Lcom/google/api/Usage$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Usage;

    invoke-static {v0, p1, p2}, Lcom/google/api/Usage;->access$600(Lcom/google/api/Usage;ILcom/google/api/UsageRule;)V

    .line 709
    return-object p0
.end method
