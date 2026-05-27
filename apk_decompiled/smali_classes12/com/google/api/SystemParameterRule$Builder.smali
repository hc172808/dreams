.class public final Lcom/google/api/SystemParameterRule$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SystemParameterRule.java"

# interfaces
.implements Lcom/google/api/SystemParameterRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/SystemParameterRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/SystemParameterRule;",
        "Lcom/google/api/SystemParameterRule$Builder;",
        ">;",
        "Lcom/google/api/SystemParameterRuleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 378
    invoke-static {}, Lcom/google/api/SystemParameterRule;->access$000()Lcom/google/api/SystemParameterRule;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 379
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/SystemParameterRule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/SystemParameterRule$1;

    .line 371
    invoke-direct {p0}, Lcom/google/api/SystemParameterRule$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllParameters(Ljava/lang/Iterable;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/SystemParameter;",
            ">;)",
            "Lcom/google/api/SystemParameterRule$Builder;"
        }
    .end annotation

    .line 622
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/SystemParameter;>;"
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 623
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameterRule;->access$700(Lcom/google/api/SystemParameterRule;Ljava/lang/Iterable;)V

    .line 624
    return-object p0
.end method

.method public addParameters(ILcom/google/api/SystemParameter$Builder;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/SystemParameter$Builder;

    .line 604
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 605
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    .line 606
    invoke-virtual {p2}, Lcom/google/api/SystemParameter$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/SystemParameter;

    .line 605
    invoke-static {v0, p1, v1}, Lcom/google/api/SystemParameterRule;->access$600(Lcom/google/api/SystemParameterRule;ILcom/google/api/SystemParameter;)V

    .line 607
    return-object p0
.end method

.method public addParameters(ILcom/google/api/SystemParameter;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/SystemParameter;

    .line 570
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 571
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0, p1, p2}, Lcom/google/api/SystemParameterRule;->access$600(Lcom/google/api/SystemParameterRule;ILcom/google/api/SystemParameter;)V

    .line 572
    return-object p0
.end method

.method public addParameters(Lcom/google/api/SystemParameter$Builder;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/SystemParameter$Builder;

    .line 587
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 588
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-virtual {p1}, Lcom/google/api/SystemParameter$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/SystemParameter;

    invoke-static {v0, v1}, Lcom/google/api/SystemParameterRule;->access$500(Lcom/google/api/SystemParameterRule;Lcom/google/api/SystemParameter;)V

    .line 589
    return-object p0
.end method

.method public addParameters(Lcom/google/api/SystemParameter;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/SystemParameter;

    .line 553
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 554
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameterRule;->access$500(Lcom/google/api/SystemParameterRule;Lcom/google/api/SystemParameter;)V

    .line 555
    return-object p0
.end method

.method public clearParameters()Lcom/google/api/SystemParameterRule$Builder;
    .locals 1

    .line 638
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 639
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0}, Lcom/google/api/SystemParameterRule;->access$800(Lcom/google/api/SystemParameterRule;)V

    .line 640
    return-object p0
.end method

.method public clearSelector()Lcom/google/api/SystemParameterRule$Builder;
    .locals 1

    .line 439
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 440
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0}, Lcom/google/api/SystemParameterRule;->access$200(Lcom/google/api/SystemParameterRule;)V

    .line 441
    return-object p0
.end method

.method public getParameters(I)Lcom/google/api/SystemParameter;
    .locals 1
    .param p1, "index"    # I

    .line 504
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-virtual {v0, p1}, Lcom/google/api/SystemParameterRule;->getParameters(I)Lcom/google/api/SystemParameter;

    move-result-object v0

    return-object v0
.end method

.method public getParametersCount()I
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-virtual {v0}, Lcom/google/api/SystemParameterRule;->getParametersCount()I

    move-result v0

    return v0
.end method

.method public getParametersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/SystemParameter;",
            ">;"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    .line 475
    invoke-virtual {v0}, Lcom/google/api/SystemParameterRule;->getParametersList()Ljava/util/List;

    move-result-object v0

    .line 474
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-virtual {v0}, Lcom/google/api/SystemParameterRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-virtual {v0}, Lcom/google/api/SystemParameterRule;->getSelectorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeParameters(I)Lcom/google/api/SystemParameterRule$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 654
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 655
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameterRule;->access$900(Lcom/google/api/SystemParameterRule;I)V

    .line 656
    return-object p0
.end method

.method public setParameters(ILcom/google/api/SystemParameter$Builder;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/SystemParameter$Builder;

    .line 536
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 537
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    .line 538
    invoke-virtual {p2}, Lcom/google/api/SystemParameter$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/SystemParameter;

    .line 537
    invoke-static {v0, p1, v1}, Lcom/google/api/SystemParameterRule;->access$400(Lcom/google/api/SystemParameterRule;ILcom/google/api/SystemParameter;)V

    .line 539
    return-object p0
.end method

.method public setParameters(ILcom/google/api/SystemParameter;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/SystemParameter;

    .line 519
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 520
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0, p1, p2}, Lcom/google/api/SystemParameterRule;->access$400(Lcom/google/api/SystemParameterRule;ILcom/google/api/SystemParameter;)V

    .line 521
    return-object p0
.end method

.method public setSelector(Ljava/lang/String;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 424
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 425
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameterRule;->access$100(Lcom/google/api/SystemParameterRule;Ljava/lang/String;)V

    .line 426
    return-object p0
.end method

.method public setSelectorBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/SystemParameterRule$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 456
    invoke-virtual {p0}, Lcom/google/api/SystemParameterRule$Builder;->copyOnWrite()V

    .line 457
    iget-object v0, p0, Lcom/google/api/SystemParameterRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameterRule;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameterRule;->access$300(Lcom/google/api/SystemParameterRule;Lcom/google/protobuf/ByteString;)V

    .line 458
    return-object p0
.end method
