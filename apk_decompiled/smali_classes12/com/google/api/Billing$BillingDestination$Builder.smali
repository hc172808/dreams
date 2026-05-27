.class public final Lcom/google/api/Billing$BillingDestination$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Billing.java"

# interfaces
.implements Lcom/google/api/Billing$BillingDestinationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Billing$BillingDestination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Billing$BillingDestination;",
        "Lcom/google/api/Billing$BillingDestination$Builder;",
        ">;",
        "Lcom/google/api/Billing$BillingDestinationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 433
    invoke-static {}, Lcom/google/api/Billing$BillingDestination;->access$000()Lcom/google/api/Billing$BillingDestination;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 434
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Billing$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/Billing$1;

    .line 426
    invoke-direct {p0}, Lcom/google/api/Billing$BillingDestination$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllMetrics(Ljava/lang/Iterable;)Lcom/google/api/Billing$BillingDestination$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/Billing$BillingDestination$Builder;"
        }
    .end annotation

    .line 613
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/api/Billing$BillingDestination$Builder;->copyOnWrite()V

    .line 614
    iget-object v0, p0, Lcom/google/api/Billing$BillingDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    invoke-static {v0, p1}, Lcom/google/api/Billing$BillingDestination;->access$600(Lcom/google/api/Billing$BillingDestination;Ljava/lang/Iterable;)V

    .line 615
    return-object p0
.end method

.method public addMetrics(Ljava/lang/String;)Lcom/google/api/Billing$BillingDestination$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 597
    invoke-virtual {p0}, Lcom/google/api/Billing$BillingDestination$Builder;->copyOnWrite()V

    .line 598
    iget-object v0, p0, Lcom/google/api/Billing$BillingDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    invoke-static {v0, p1}, Lcom/google/api/Billing$BillingDestination;->access$500(Lcom/google/api/Billing$BillingDestination;Ljava/lang/String;)V

    .line 599
    return-object p0
.end method

.method public addMetricsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Billing$BillingDestination$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 643
    invoke-virtual {p0}, Lcom/google/api/Billing$BillingDestination$Builder;->copyOnWrite()V

    .line 644
    iget-object v0, p0, Lcom/google/api/Billing$BillingDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    invoke-static {v0, p1}, Lcom/google/api/Billing$BillingDestination;->access$800(Lcom/google/api/Billing$BillingDestination;Lcom/google/protobuf/ByteString;)V

    .line 645
    return-object p0
.end method

.method public clearMetrics()Lcom/google/api/Billing$BillingDestination$Builder;
    .locals 1

    .line 627
    invoke-virtual {p0}, Lcom/google/api/Billing$BillingDestination$Builder;->copyOnWrite()V

    .line 628
    iget-object v0, p0, Lcom/google/api/Billing$BillingDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    invoke-static {v0}, Lcom/google/api/Billing$BillingDestination;->access$700(Lcom/google/api/Billing$BillingDestination;)V

    .line 629
    return-object p0
.end method

.method public clearMonitoredResource()Lcom/google/api/Billing$BillingDestination$Builder;
    .locals 1

    .line 490
    invoke-virtual {p0}, Lcom/google/api/Billing$BillingDestination$Builder;->copyOnWrite()V

    .line 491
    iget-object v0, p0, Lcom/google/api/Billing$BillingDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    invoke-static {v0}, Lcom/google/api/Billing$BillingDestination;->access$200(Lcom/google/api/Billing$BillingDestination;)V

    .line 492
    return-object p0
.end method

.method public getMetrics(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 551
    iget-object v0, p0, Lcom/google/api/Billing$BillingDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    invoke-virtual {v0, p1}, Lcom/google/api/Billing$BillingDestination;->getMetrics(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 566
    iget-object v0, p0, Lcom/google/api/Billing$BillingDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    invoke-virtual {v0, p1}, Lcom/google/api/Billing$BillingDestination;->getMetricsBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCount()I
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/google/api/Billing$BillingDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    invoke-virtual {v0}, Lcom/google/api/Billing$BillingDestination;->getMetricsCount()I

    move-result v0

    return v0
.end method

.method public getMetricsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/google/api/Billing$BillingDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    .line 524
    invoke-virtual {v0}, Lcom/google/api/Billing$BillingDestination;->getMetricsList()Ljava/util/List;

    move-result-object v0

    .line 523
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMonitoredResource()Ljava/lang/String;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/google/api/Billing$BillingDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    invoke-virtual {v0}, Lcom/google/api/Billing$BillingDestination;->getMonitoredResource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMonitoredResourceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/google/api/Billing$BillingDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    invoke-virtual {v0}, Lcom/google/api/Billing$BillingDestination;->getMonitoredResourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setMetrics(ILjava/lang/String;)Lcom/google/api/Billing$BillingDestination$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 581
    invoke-virtual {p0}, Lcom/google/api/Billing$BillingDestination$Builder;->copyOnWrite()V

    .line 582
    iget-object v0, p0, Lcom/google/api/Billing$BillingDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    invoke-static {v0, p1, p2}, Lcom/google/api/Billing$BillingDestination;->access$400(Lcom/google/api/Billing$BillingDestination;ILjava/lang/String;)V

    .line 583
    return-object p0
.end method

.method public setMonitoredResource(Ljava/lang/String;)Lcom/google/api/Billing$BillingDestination$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 476
    invoke-virtual {p0}, Lcom/google/api/Billing$BillingDestination$Builder;->copyOnWrite()V

    .line 477
    iget-object v0, p0, Lcom/google/api/Billing$BillingDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    invoke-static {v0, p1}, Lcom/google/api/Billing$BillingDestination;->access$100(Lcom/google/api/Billing$BillingDestination;Ljava/lang/String;)V

    .line 478
    return-object p0
.end method

.method public setMonitoredResourceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Billing$BillingDestination$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 506
    invoke-virtual {p0}, Lcom/google/api/Billing$BillingDestination$Builder;->copyOnWrite()V

    .line 507
    iget-object v0, p0, Lcom/google/api/Billing$BillingDestination$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Billing$BillingDestination;

    invoke-static {v0, p1}, Lcom/google/api/Billing$BillingDestination;->access$300(Lcom/google/api/Billing$BillingDestination;Lcom/google/protobuf/ByteString;)V

    .line 508
    return-object p0
.end method
