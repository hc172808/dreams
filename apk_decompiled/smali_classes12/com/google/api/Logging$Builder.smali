.class public final Lcom/google/api/Logging$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Logging.java"

# interfaces
.implements Lcom/google/api/LoggingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Logging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Logging;",
        "Lcom/google/api/Logging$Builder;",
        ">;",
        "Lcom/google/api/LoggingOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1240
    invoke-static {}, Lcom/google/api/Logging;->access$1000()Lcom/google/api/Logging;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1241
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Logging$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/Logging$1;

    .line 1233
    invoke-direct {p0}, Lcom/google/api/Logging$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllConsumerDestinations(Ljava/lang/Iterable;)Lcom/google/api/Logging$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;)",
            "Lcom/google/api/Logging$Builder;"
        }
    .end annotation

    .line 1581
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/Logging$LoggingDestination;>;"
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1582
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1}, Lcom/google/api/Logging;->access$2000(Lcom/google/api/Logging;Ljava/lang/Iterable;)V

    .line 1583
    return-object p0
.end method

.method public addAllProducerDestinations(Ljava/lang/Iterable;)Lcom/google/api/Logging$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;)",
            "Lcom/google/api/Logging$Builder;"
        }
    .end annotation

    .line 1395
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/Logging$LoggingDestination;>;"
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1396
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1}, Lcom/google/api/Logging;->access$1400(Lcom/google/api/Logging;Ljava/lang/Iterable;)V

    .line 1397
    return-object p0
.end method

.method public addConsumerDestinations(ILcom/google/api/Logging$LoggingDestination$Builder;)Lcom/google/api/Logging$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/Logging$LoggingDestination$Builder;

    .line 1564
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1565
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    .line 1566
    invoke-virtual {p2}, Lcom/google/api/Logging$LoggingDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Logging$LoggingDestination;

    .line 1565
    invoke-static {v0, p1, v1}, Lcom/google/api/Logging;->access$1900(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V

    .line 1567
    return-object p0
.end method

.method public addConsumerDestinations(ILcom/google/api/Logging$LoggingDestination;)Lcom/google/api/Logging$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Logging$LoggingDestination;

    .line 1532
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1533
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1, p2}, Lcom/google/api/Logging;->access$1900(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V

    .line 1534
    return-object p0
.end method

.method public addConsumerDestinations(Lcom/google/api/Logging$LoggingDestination$Builder;)Lcom/google/api/Logging$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Logging$LoggingDestination$Builder;

    .line 1548
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1549
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-virtual {p1}, Lcom/google/api/Logging$LoggingDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Logging$LoggingDestination;

    invoke-static {v0, v1}, Lcom/google/api/Logging;->access$1800(Lcom/google/api/Logging;Lcom/google/api/Logging$LoggingDestination;)V

    .line 1550
    return-object p0
.end method

.method public addConsumerDestinations(Lcom/google/api/Logging$LoggingDestination;)Lcom/google/api/Logging$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Logging$LoggingDestination;

    .line 1516
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1517
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1}, Lcom/google/api/Logging;->access$1800(Lcom/google/api/Logging;Lcom/google/api/Logging$LoggingDestination;)V

    .line 1518
    return-object p0
.end method

.method public addProducerDestinations(ILcom/google/api/Logging$LoggingDestination$Builder;)Lcom/google/api/Logging$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/Logging$LoggingDestination$Builder;

    .line 1378
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1379
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    .line 1380
    invoke-virtual {p2}, Lcom/google/api/Logging$LoggingDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Logging$LoggingDestination;

    .line 1379
    invoke-static {v0, p1, v1}, Lcom/google/api/Logging;->access$1300(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V

    .line 1381
    return-object p0
.end method

.method public addProducerDestinations(ILcom/google/api/Logging$LoggingDestination;)Lcom/google/api/Logging$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Logging$LoggingDestination;

    .line 1346
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1347
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1, p2}, Lcom/google/api/Logging;->access$1300(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V

    .line 1348
    return-object p0
.end method

.method public addProducerDestinations(Lcom/google/api/Logging$LoggingDestination$Builder;)Lcom/google/api/Logging$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Logging$LoggingDestination$Builder;

    .line 1362
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1363
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-virtual {p1}, Lcom/google/api/Logging$LoggingDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Logging$LoggingDestination;

    invoke-static {v0, v1}, Lcom/google/api/Logging;->access$1200(Lcom/google/api/Logging;Lcom/google/api/Logging$LoggingDestination;)V

    .line 1364
    return-object p0
.end method

.method public addProducerDestinations(Lcom/google/api/Logging$LoggingDestination;)Lcom/google/api/Logging$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Logging$LoggingDestination;

    .line 1330
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1331
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1}, Lcom/google/api/Logging;->access$1200(Lcom/google/api/Logging;Lcom/google/api/Logging$LoggingDestination;)V

    .line 1332
    return-object p0
.end method

.method public clearConsumerDestinations()Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1596
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1597
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0}, Lcom/google/api/Logging;->access$2100(Lcom/google/api/Logging;)V

    .line 1598
    return-object p0
.end method

.method public clearProducerDestinations()Lcom/google/api/Logging$Builder;
    .locals 1

    .line 1410
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1411
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0}, Lcom/google/api/Logging;->access$1500(Lcom/google/api/Logging;)V

    .line 1412
    return-object p0
.end method

.method public getConsumerDestinations(I)Lcom/google/api/Logging$LoggingDestination;
    .locals 1
    .param p1, "index"    # I

    .line 1470
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-virtual {v0, p1}, Lcom/google/api/Logging;->getConsumerDestinations(I)Lcom/google/api/Logging$LoggingDestination;

    move-result-object v0

    return-object v0
.end method

.method public getConsumerDestinationsCount()I
    .locals 1

    .line 1457
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-virtual {v0}, Lcom/google/api/Logging;->getConsumerDestinationsCount()I

    move-result v0

    return v0
.end method

.method public getConsumerDestinationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;"
        }
    .end annotation

    .line 1442
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    .line 1443
    invoke-virtual {v0}, Lcom/google/api/Logging;->getConsumerDestinationsList()Ljava/util/List;

    move-result-object v0

    .line 1442
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProducerDestinations(I)Lcom/google/api/Logging$LoggingDestination;
    .locals 1
    .param p1, "index"    # I

    .line 1284
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-virtual {v0, p1}, Lcom/google/api/Logging;->getProducerDestinations(I)Lcom/google/api/Logging$LoggingDestination;

    move-result-object v0

    return-object v0
.end method

.method public getProducerDestinationsCount()I
    .locals 1

    .line 1271
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-virtual {v0}, Lcom/google/api/Logging;->getProducerDestinationsCount()I

    move-result v0

    return v0
.end method

.method public getProducerDestinationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Logging$LoggingDestination;",
            ">;"
        }
    .end annotation

    .line 1256
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    .line 1257
    invoke-virtual {v0}, Lcom/google/api/Logging;->getProducerDestinationsList()Ljava/util/List;

    move-result-object v0

    .line 1256
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeConsumerDestinations(I)Lcom/google/api/Logging$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 1611
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1612
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1}, Lcom/google/api/Logging;->access$2200(Lcom/google/api/Logging;I)V

    .line 1613
    return-object p0
.end method

.method public removeProducerDestinations(I)Lcom/google/api/Logging$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 1425
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1426
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1}, Lcom/google/api/Logging;->access$1600(Lcom/google/api/Logging;I)V

    .line 1427
    return-object p0
.end method

.method public setConsumerDestinations(ILcom/google/api/Logging$LoggingDestination$Builder;)Lcom/google/api/Logging$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/Logging$LoggingDestination$Builder;

    .line 1500
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1501
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    .line 1502
    invoke-virtual {p2}, Lcom/google/api/Logging$LoggingDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Logging$LoggingDestination;

    .line 1501
    invoke-static {v0, p1, v1}, Lcom/google/api/Logging;->access$1700(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V

    .line 1503
    return-object p0
.end method

.method public setConsumerDestinations(ILcom/google/api/Logging$LoggingDestination;)Lcom/google/api/Logging$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Logging$LoggingDestination;

    .line 1484
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1485
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1, p2}, Lcom/google/api/Logging;->access$1700(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V

    .line 1486
    return-object p0
.end method

.method public setProducerDestinations(ILcom/google/api/Logging$LoggingDestination$Builder;)Lcom/google/api/Logging$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/Logging$LoggingDestination$Builder;

    .line 1314
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1315
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    .line 1316
    invoke-virtual {p2}, Lcom/google/api/Logging$LoggingDestination$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Logging$LoggingDestination;

    .line 1315
    invoke-static {v0, p1, v1}, Lcom/google/api/Logging;->access$1100(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V

    .line 1317
    return-object p0
.end method

.method public setProducerDestinations(ILcom/google/api/Logging$LoggingDestination;)Lcom/google/api/Logging$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Logging$LoggingDestination;

    .line 1298
    invoke-virtual {p0}, Lcom/google/api/Logging$Builder;->copyOnWrite()V

    .line 1299
    iget-object v0, p0, Lcom/google/api/Logging$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Logging;

    invoke-static {v0, p1, p2}, Lcom/google/api/Logging;->access$1100(Lcom/google/api/Logging;ILcom/google/api/Logging$LoggingDestination;)V

    .line 1300
    return-object p0
.end method
