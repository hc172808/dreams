.class public final Lcom/google/rpc/Status$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Status.java"

# interfaces
.implements Lcom/google/rpc/StatusOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/Status;",
        "Lcom/google/rpc/Status$Builder;",
        ">;",
        "Lcom/google/rpc/StatusOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 391
    invoke-static {}, Lcom/google/rpc/Status;->access$000()Lcom/google/rpc/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 392
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/Status$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/rpc/Status$1;

    .line 384
    invoke-direct {p0}, Lcom/google/rpc/Status$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllDetails(Ljava/lang/Iterable;)Lcom/google/rpc/Status$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Any;",
            ">;)",
            "Lcom/google/rpc/Status$Builder;"
        }
    .end annotation

    .line 645
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Any;>;"
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 646
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-static {v0, p1}, Lcom/google/rpc/Status;->access$900(Lcom/google/rpc/Status;Ljava/lang/Iterable;)V

    .line 647
    return-object p0
.end method

.method public addDetails(ILcom/google/protobuf/Any$Builder;)Lcom/google/rpc/Status$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Any$Builder;

    .line 630
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 631
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    .line 632
    invoke-virtual {p2}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Any;

    .line 631
    invoke-static {v0, p1, v1}, Lcom/google/rpc/Status;->access$800(Lcom/google/rpc/Status;ILcom/google/protobuf/Any;)V

    .line 633
    return-object p0
.end method

.method public addDetails(ILcom/google/protobuf/Any;)Lcom/google/rpc/Status$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Any;

    .line 602
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 603
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/Status;->access$800(Lcom/google/rpc/Status;ILcom/google/protobuf/Any;)V

    .line 604
    return-object p0
.end method

.method public addDetails(Lcom/google/protobuf/Any$Builder;)Lcom/google/rpc/Status$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Any$Builder;

    .line 616
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 617
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-virtual {p1}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Any;

    invoke-static {v0, v1}, Lcom/google/rpc/Status;->access$700(Lcom/google/rpc/Status;Lcom/google/protobuf/Any;)V

    .line 618
    return-object p0
.end method

.method public addDetails(Lcom/google/protobuf/Any;)Lcom/google/rpc/Status$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Any;

    .line 588
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 589
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-static {v0, p1}, Lcom/google/rpc/Status;->access$700(Lcom/google/rpc/Status;Lcom/google/protobuf/Any;)V

    .line 590
    return-object p0
.end method

.method public clearCode()Lcom/google/rpc/Status$Builder;
    .locals 1

    .line 430
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 431
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-static {v0}, Lcom/google/rpc/Status;->access$200(Lcom/google/rpc/Status;)V

    .line 432
    return-object p0
.end method

.method public clearDetails()Lcom/google/rpc/Status$Builder;
    .locals 1

    .line 658
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 659
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-static {v0}, Lcom/google/rpc/Status;->access$1000(Lcom/google/rpc/Status;)V

    .line 660
    return-object p0
.end method

.method public clearMessage()Lcom/google/rpc/Status$Builder;
    .locals 1

    .line 492
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 493
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-static {v0}, Lcom/google/rpc/Status;->access$400(Lcom/google/rpc/Status;)V

    .line 494
    return-object p0
.end method

.method public getCode()I
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-virtual {v0}, Lcom/google/rpc/Status;->getCode()I

    move-result v0

    return v0
.end method

.method public getDetails(I)Lcom/google/protobuf/Any;
    .locals 1
    .param p1, "index"    # I

    .line 548
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-virtual {v0, p1}, Lcom/google/rpc/Status;->getDetails(I)Lcom/google/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public getDetailsCount()I
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-virtual {v0}, Lcom/google/rpc/Status;->getDetailsCount()I

    move-result v0

    return v0
.end method

.method public getDetailsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    .line 525
    invoke-virtual {v0}, Lcom/google/rpc/Status;->getDetailsList()Ljava/util/List;

    move-result-object v0

    .line 524
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-virtual {v0}, Lcom/google/rpc/Status;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-virtual {v0}, Lcom/google/rpc/Status;->getMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeDetails(I)Lcom/google/rpc/Status$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 671
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 672
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-static {v0, p1}, Lcom/google/rpc/Status;->access$1100(Lcom/google/rpc/Status;I)V

    .line 673
    return-object p0
.end method

.method public setCode(I)Lcom/google/rpc/Status$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 417
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 418
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-static {v0, p1}, Lcom/google/rpc/Status;->access$100(Lcom/google/rpc/Status;I)V

    .line 419
    return-object p0
.end method

.method public setDetails(ILcom/google/protobuf/Any$Builder;)Lcom/google/rpc/Status$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Any$Builder;

    .line 574
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 575
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    .line 576
    invoke-virtual {p2}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Any;

    .line 575
    invoke-static {v0, p1, v1}, Lcom/google/rpc/Status;->access$600(Lcom/google/rpc/Status;ILcom/google/protobuf/Any;)V

    .line 577
    return-object p0
.end method

.method public setDetails(ILcom/google/protobuf/Any;)Lcom/google/rpc/Status$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Any;

    .line 560
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 561
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/Status;->access$600(Lcom/google/rpc/Status;ILcom/google/protobuf/Any;)V

    .line 562
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/google/rpc/Status$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 477
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 478
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-static {v0, p1}, Lcom/google/rpc/Status;->access$300(Lcom/google/rpc/Status;Ljava/lang/String;)V

    .line 479
    return-object p0
.end method

.method public setMessageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/Status$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 509
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 510
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-static {v0, p1}, Lcom/google/rpc/Status;->access$500(Lcom/google/rpc/Status;Lcom/google/protobuf/ByteString;)V

    .line 511
    return-object p0
.end method
