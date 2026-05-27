.class public final Lcom/google/api/SystemParameters$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SystemParameters.java"

# interfaces
.implements Lcom/google/api/SystemParametersOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/SystemParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/SystemParameters;",
        "Lcom/google/api/SystemParameters$Builder;",
        ">;",
        "Lcom/google/api/SystemParametersOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 493
    invoke-static {}, Lcom/google/api/SystemParameters;->access$000()Lcom/google/api/SystemParameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 494
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/SystemParameters$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/SystemParameters$1;

    .line 486
    invoke-direct {p0}, Lcom/google/api/SystemParameters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllRules(Ljava/lang/Iterable;)Lcom/google/api/SystemParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/SystemParameterRule;",
            ">;)",
            "Lcom/google/api/SystemParameters$Builder;"
        }
    .end annotation

    .line 828
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/SystemParameterRule;>;"
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 829
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameters;->access$400(Lcom/google/api/SystemParameters;Ljava/lang/Iterable;)V

    .line 830
    return-object p0
.end method

.method public addRules(ILcom/google/api/SystemParameterRule$Builder;)Lcom/google/api/SystemParameters$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/SystemParameterRule$Builder;

    .line 793
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 794
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    .line 795
    invoke-virtual {p2}, Lcom/google/api/SystemParameterRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/SystemParameterRule;

    .line 794
    invoke-static {v0, p1, v1}, Lcom/google/api/SystemParameters;->access$300(Lcom/google/api/SystemParameters;ILcom/google/api/SystemParameterRule;)V

    .line 796
    return-object p0
.end method

.method public addRules(ILcom/google/api/SystemParameterRule;)Lcom/google/api/SystemParameters$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/SystemParameterRule;

    .line 725
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 726
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-static {v0, p1, p2}, Lcom/google/api/SystemParameters;->access$300(Lcom/google/api/SystemParameters;ILcom/google/api/SystemParameterRule;)V

    .line 727
    return-object p0
.end method

.method public addRules(Lcom/google/api/SystemParameterRule$Builder;)Lcom/google/api/SystemParameters$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/SystemParameterRule$Builder;

    .line 759
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 760
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-virtual {p1}, Lcom/google/api/SystemParameterRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/SystemParameterRule;

    invoke-static {v0, v1}, Lcom/google/api/SystemParameters;->access$200(Lcom/google/api/SystemParameters;Lcom/google/api/SystemParameterRule;)V

    .line 761
    return-object p0
.end method

.method public addRules(Lcom/google/api/SystemParameterRule;)Lcom/google/api/SystemParameters$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/SystemParameterRule;

    .line 691
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 692
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameters;->access$200(Lcom/google/api/SystemParameters;Lcom/google/api/SystemParameterRule;)V

    .line 693
    return-object p0
.end method

.method public clearRules()Lcom/google/api/SystemParameters$Builder;
    .locals 1

    .line 861
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 862
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-static {v0}, Lcom/google/api/SystemParameters;->access$500(Lcom/google/api/SystemParameters;)V

    .line 863
    return-object p0
.end method

.method public getRules(I)Lcom/google/api/SystemParameterRule;
    .locals 1
    .param p1, "index"    # I

    .line 591
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-virtual {v0, p1}, Lcom/google/api/SystemParameters;->getRules(I)Lcom/google/api/SystemParameterRule;

    move-result-object v0

    return-object v0
.end method

.method public getRulesCount()I
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-virtual {v0}, Lcom/google/api/SystemParameters;->getRulesCount()I

    move-result v0

    return v0
.end method

.method public getRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/SystemParameterRule;",
            ">;"
        }
    .end annotation

    .line 527
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    .line 528
    invoke-virtual {v0}, Lcom/google/api/SystemParameters;->getRulesList()Ljava/util/List;

    move-result-object v0

    .line 527
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeRules(I)Lcom/google/api/SystemParameters$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 894
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 895
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameters;->access$600(Lcom/google/api/SystemParameters;I)V

    .line 896
    return-object p0
.end method

.method public setRules(ILcom/google/api/SystemParameterRule$Builder;)Lcom/google/api/SystemParameters$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/SystemParameterRule$Builder;

    .line 657
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 658
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    .line 659
    invoke-virtual {p2}, Lcom/google/api/SystemParameterRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/SystemParameterRule;

    .line 658
    invoke-static {v0, p1, v1}, Lcom/google/api/SystemParameters;->access$100(Lcom/google/api/SystemParameters;ILcom/google/api/SystemParameterRule;)V

    .line 660
    return-object p0
.end method

.method public setRules(ILcom/google/api/SystemParameterRule;)Lcom/google/api/SystemParameters$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/SystemParameterRule;

    .line 623
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 624
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-static {v0, p1, p2}, Lcom/google/api/SystemParameters;->access$100(Lcom/google/api/SystemParameters;ILcom/google/api/SystemParameterRule;)V

    .line 625
    return-object p0
.end method
