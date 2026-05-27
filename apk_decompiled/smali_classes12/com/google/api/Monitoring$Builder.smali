.class public final Lcom/google/api/Monitoring$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Monitoring.java"

# interfaces
.implements Lcom/google/api/MonitoringOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Monitoring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Monitoring;",
        "Lcom/google/api/Monitoring$Builder;",
        ">;",
        "Lcom/google/api/MonitoringOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1256
    invoke-static {}, Lcom/google/api/Monitoring;->access$1000()Lcom/google/api/Monitoring;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1257
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Monitoring$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/Monitoring$1;

    .line 1249
    invoke-direct {p0}, Lcom/google/api/Monitoring$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllConsumerDestinations(Ljava/lang/Iterable;)Lcom/google/api/Monitoring$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Monitoring$MonitoringDestination;",
            ">;)",
            "Lcom/google/api/Monitoring$Builder;"
        }
    .end annotation

    .line 1641
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/Monitoring$MonitoringDestination;>;"
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1642
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring;->access$2000(Lcom/google/api/Monitoring;Ljava/lang/Iterable;)V

    .line 1643
    return-object p0
.end method

.method public addAllProducerDestinations(Ljava/lang/Iterable;)Lcom/google/api/Monitoring$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Monitoring$MonitoringDestination;",
            ">;)",
            "Lcom/google/api/Monitoring$Builder;"
        }
    .end annotation

    .line 1431
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/Monitoring$MonitoringDestination;>;"
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1432
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring;->access$1400(Lcom/google/api/Monitoring;Ljava/lang/Iterable;)V

    .line 1433
    return-object p0
.end method

.method public addConsumerDestinations(ILcom/google/api/Monitoring$MonitoringDestination$Builder;)Lcom/google/api/Monitoring$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/Monitoring$MonitoringDestination$Builder;

    .line 1622
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1623
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    .line 1624
    invoke-virtual {p2}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Monitoring$MonitoringDestination;

    .line 1623
    invoke-static {v0, p1, v1}, Lcom/google/api/Monitoring;->access$1900(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V

    .line 1625
    return-object p0
.end method

.method public addConsumerDestinations(ILcom/google/api/Monitoring$MonitoringDestination;)Lcom/google/api/Monitoring$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Monitoring$MonitoringDestination;

    .line 1586
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1587
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1, p2}, Lcom/google/api/Monitoring;->access$1900(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V

    .line 1588
    return-object p0
.end method

.method public addConsumerDestinations(Lcom/google/api/Monitoring$MonitoringDestination$Builder;)Lcom/google/api/Monitoring$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Monitoring$MonitoringDestination$Builder;

    .line 1604
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1605
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-virtual {p1}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, v1}, Lcom/google/api/Monitoring;->access$1800(Lcom/google/api/Monitoring;Lcom/google/api/Monitoring$MonitoringDestination;)V

    .line 1606
    return-object p0
.end method

.method public addConsumerDestinations(Lcom/google/api/Monitoring$MonitoringDestination;)Lcom/google/api/Monitoring$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Monitoring$MonitoringDestination;

    .line 1568
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1569
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring;->access$1800(Lcom/google/api/Monitoring;Lcom/google/api/Monitoring$MonitoringDestination;)V

    .line 1570
    return-object p0
.end method

.method public addProducerDestinations(ILcom/google/api/Monitoring$MonitoringDestination$Builder;)Lcom/google/api/Monitoring$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/Monitoring$MonitoringDestination$Builder;

    .line 1412
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1413
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    .line 1414
    invoke-virtual {p2}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Monitoring$MonitoringDestination;

    .line 1413
    invoke-static {v0, p1, v1}, Lcom/google/api/Monitoring;->access$1300(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V

    .line 1415
    return-object p0
.end method

.method public addProducerDestinations(ILcom/google/api/Monitoring$MonitoringDestination;)Lcom/google/api/Monitoring$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Monitoring$MonitoringDestination;

    .line 1376
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1377
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1, p2}, Lcom/google/api/Monitoring;->access$1300(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V

    .line 1378
    return-object p0
.end method

.method public addProducerDestinations(Lcom/google/api/Monitoring$MonitoringDestination$Builder;)Lcom/google/api/Monitoring$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Monitoring$MonitoringDestination$Builder;

    .line 1394
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1395
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-virtual {p1}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Monitoring$MonitoringDestination;

    invoke-static {v0, v1}, Lcom/google/api/Monitoring;->access$1200(Lcom/google/api/Monitoring;Lcom/google/api/Monitoring$MonitoringDestination;)V

    .line 1396
    return-object p0
.end method

.method public addProducerDestinations(Lcom/google/api/Monitoring$MonitoringDestination;)Lcom/google/api/Monitoring$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Monitoring$MonitoringDestination;

    .line 1358
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1359
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring;->access$1200(Lcom/google/api/Monitoring;Lcom/google/api/Monitoring$MonitoringDestination;)V

    .line 1360
    return-object p0
.end method

.method public clearConsumerDestinations()Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1658
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1659
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0}, Lcom/google/api/Monitoring;->access$2100(Lcom/google/api/Monitoring;)V

    .line 1660
    return-object p0
.end method

.method public clearProducerDestinations()Lcom/google/api/Monitoring$Builder;
    .locals 1

    .line 1448
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1449
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0}, Lcom/google/api/Monitoring;->access$1500(Lcom/google/api/Monitoring;)V

    .line 1450
    return-object p0
.end method

.method public getConsumerDestinations(I)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .param p1, "index"    # I

    .line 1516
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-virtual {v0, p1}, Lcom/google/api/Monitoring;->getConsumerDestinations(I)Lcom/google/api/Monitoring$MonitoringDestination;

    move-result-object v0

    return-object v0
.end method

.method public getConsumerDestinationsCount()I
    .locals 1

    .line 1501
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-virtual {v0}, Lcom/google/api/Monitoring;->getConsumerDestinationsCount()I

    move-result v0

    return v0
.end method

.method public getConsumerDestinationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Monitoring$MonitoringDestination;",
            ">;"
        }
    .end annotation

    .line 1484
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    .line 1485
    invoke-virtual {v0}, Lcom/google/api/Monitoring;->getConsumerDestinationsList()Ljava/util/List;

    move-result-object v0

    .line 1484
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProducerDestinations(I)Lcom/google/api/Monitoring$MonitoringDestination;
    .locals 1
    .param p1, "index"    # I

    .line 1306
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-virtual {v0, p1}, Lcom/google/api/Monitoring;->getProducerDestinations(I)Lcom/google/api/Monitoring$MonitoringDestination;

    move-result-object v0

    return-object v0
.end method

.method public getProducerDestinationsCount()I
    .locals 1

    .line 1291
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-virtual {v0}, Lcom/google/api/Monitoring;->getProducerDestinationsCount()I

    move-result v0

    return v0
.end method

.method public getProducerDestinationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Monitoring$MonitoringDestination;",
            ">;"
        }
    .end annotation

    .line 1274
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    .line 1275
    invoke-virtual {v0}, Lcom/google/api/Monitoring;->getProducerDestinationsList()Ljava/util/List;

    move-result-object v0

    .line 1274
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeConsumerDestinations(I)Lcom/google/api/Monitoring$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 1675
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1676
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring;->access$2200(Lcom/google/api/Monitoring;I)V

    .line 1677
    return-object p0
.end method

.method public removeProducerDestinations(I)Lcom/google/api/Monitoring$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 1465
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1466
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1}, Lcom/google/api/Monitoring;->access$1600(Lcom/google/api/Monitoring;I)V

    .line 1467
    return-object p0
.end method

.method public setConsumerDestinations(ILcom/google/api/Monitoring$MonitoringDestination$Builder;)Lcom/google/api/Monitoring$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/Monitoring$MonitoringDestination$Builder;

    .line 1550
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1551
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    .line 1552
    invoke-virtual {p2}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Monitoring$MonitoringDestination;

    .line 1551
    invoke-static {v0, p1, v1}, Lcom/google/api/Monitoring;->access$1700(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V

    .line 1553
    return-object p0
.end method

.method public setConsumerDestinations(ILcom/google/api/Monitoring$MonitoringDestination;)Lcom/google/api/Monitoring$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Monitoring$MonitoringDestination;

    .line 1532
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1533
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1, p2}, Lcom/google/api/Monitoring;->access$1700(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V

    .line 1534
    return-object p0
.end method

.method public setProducerDestinations(ILcom/google/api/Monitoring$MonitoringDestination$Builder;)Lcom/google/api/Monitoring$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/Monitoring$MonitoringDestination$Builder;

    .line 1340
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1341
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    .line 1342
    invoke-virtual {p2}, Lcom/google/api/Monitoring$MonitoringDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Monitoring$MonitoringDestination;

    .line 1341
    invoke-static {v0, p1, v1}, Lcom/google/api/Monitoring;->access$1100(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V

    .line 1343
    return-object p0
.end method

.method public setProducerDestinations(ILcom/google/api/Monitoring$MonitoringDestination;)Lcom/google/api/Monitoring$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Monitoring$MonitoringDestination;

    .line 1322
    invoke-virtual {p0}, Lcom/google/api/Monitoring$Builder;->copyOnWrite()V

    .line 1323
    iget-object v0, p0, Lcom/google/api/Monitoring$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Monitoring;

    invoke-static {v0, p1, p2}, Lcom/google/api/Monitoring;->access$1100(Lcom/google/api/Monitoring;ILcom/google/api/Monitoring$MonitoringDestination;)V

    .line 1324
    return-object p0
.end method
