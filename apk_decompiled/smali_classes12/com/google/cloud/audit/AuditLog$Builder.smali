.class public final Lcom/google/cloud/audit/AuditLog$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AuditLog.java"

# interfaces
.implements Lcom/google/cloud/audit/AuditLogOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/cloud/audit/AuditLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/cloud/audit/AuditLog;",
        "Lcom/google/cloud/audit/AuditLog$Builder;",
        ">;",
        "Lcom/google/cloud/audit/AuditLogOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1017
    invoke-static {}, Lcom/google/cloud/audit/AuditLog;->access$000()Lcom/google/cloud/audit/AuditLog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1018
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/cloud/audit/AuditLog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/cloud/audit/AuditLog$1;

    .line 1010
    invoke-direct {p0}, Lcom/google/cloud/audit/AuditLog$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllAuthorizationInfo(Ljava/lang/Iterable;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/cloud/audit/AuthorizationInfo;",
            ">;)",
            "Lcom/google/cloud/audit/AuditLog$Builder;"
        }
    .end annotation

    .line 1599
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/cloud/audit/AuthorizationInfo;>;"
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1600
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$2100(Lcom/google/cloud/audit/AuditLog;Ljava/lang/Iterable;)V

    .line 1601
    return-object p0
.end method

.method public addAuthorizationInfo(ILcom/google/cloud/audit/AuthorizationInfo$Builder;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/cloud/audit/AuthorizationInfo$Builder;

    .line 1583
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1584
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    .line 1585
    invoke-virtual {p2}, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/cloud/audit/AuthorizationInfo;

    .line 1584
    invoke-static {v0, p1, v1}, Lcom/google/cloud/audit/AuditLog;->access$2000(Lcom/google/cloud/audit/AuditLog;ILcom/google/cloud/audit/AuthorizationInfo;)V

    .line 1586
    return-object p0
.end method

.method public addAuthorizationInfo(ILcom/google/cloud/audit/AuthorizationInfo;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/cloud/audit/AuthorizationInfo;

    .line 1553
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1554
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1, p2}, Lcom/google/cloud/audit/AuditLog;->access$2000(Lcom/google/cloud/audit/AuditLog;ILcom/google/cloud/audit/AuthorizationInfo;)V

    .line 1555
    return-object p0
.end method

.method public addAuthorizationInfo(Lcom/google/cloud/audit/AuthorizationInfo$Builder;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/cloud/audit/AuthorizationInfo$Builder;

    .line 1568
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1569
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$1900(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/AuthorizationInfo;)V

    .line 1570
    return-object p0
.end method

.method public addAuthorizationInfo(Lcom/google/cloud/audit/AuthorizationInfo;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/cloud/audit/AuthorizationInfo;

    .line 1538
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1539
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$1900(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/AuthorizationInfo;)V

    .line 1540
    return-object p0
.end method

.method public clearAuthenticationInfo()Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1453
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1454
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0}, Lcom/google/cloud/audit/AuditLog;->access$1700(Lcom/google/cloud/audit/AuditLog;)V

    .line 1455
    return-object p0
.end method

.method public clearAuthorizationInfo()Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1613
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1614
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0}, Lcom/google/cloud/audit/AuditLog;->access$2200(Lcom/google/cloud/audit/AuditLog;)V

    .line 1615
    return-object p0
.end method

.method public clearMethodName()Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1160
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1161
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0}, Lcom/google/cloud/audit/AuditLog;->access$500(Lcom/google/cloud/audit/AuditLog;)V

    .line 1162
    return-object p0
.end method

.method public clearNumResponseItems()Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1311
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1312
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0}, Lcom/google/cloud/audit/AuditLog;->access$1100(Lcom/google/cloud/audit/AuditLog;)V

    .line 1313
    return-object p0
.end method

.method public clearRequest()Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1799
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1800
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0}, Lcom/google/cloud/audit/AuditLog;->access$2900(Lcom/google/cloud/audit/AuditLog;)V

    .line 1801
    return-object p0
.end method

.method public clearRequestMetadata()Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1698
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1699
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0}, Lcom/google/cloud/audit/AuditLog;->access$2600(Lcom/google/cloud/audit/AuditLog;)V

    .line 1700
    return-object p0
.end method

.method public clearResourceName()Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1249
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1250
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0}, Lcom/google/cloud/audit/AuditLog;->access$800(Lcom/google/cloud/audit/AuditLog;)V

    .line 1251
    return-object p0
.end method

.method public clearResponse()Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1900
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1901
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0}, Lcom/google/cloud/audit/AuditLog;->access$3200(Lcom/google/cloud/audit/AuditLog;)V

    .line 1902
    return-object p0
.end method

.method public clearServiceData()Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1977
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1978
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0}, Lcom/google/cloud/audit/AuditLog;->access$3500(Lcom/google/cloud/audit/AuditLog;)V

    .line 1979
    return-object p0
.end method

.method public clearServiceName()Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1074
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1075
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0}, Lcom/google/cloud/audit/AuditLog;->access$200(Lcom/google/cloud/audit/AuditLog;)V

    .line 1076
    return-object p0
.end method

.method public clearStatus()Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1

    .line 1382
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1383
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0}, Lcom/google/cloud/audit/AuditLog;->access$1400(Lcom/google/cloud/audit/AuditLog;)V

    .line 1384
    return-object p0
.end method

.method public getAuthenticationInfo()Lcom/google/cloud/audit/AuthenticationInfo;
    .locals 1

    .line 1407
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getAuthenticationInfo()Lcom/google/cloud/audit/AuthenticationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizationInfo(I)Lcom/google/cloud/audit/AuthorizationInfo;
    .locals 1
    .param p1, "index"    # I

    .line 1495
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0, p1}, Lcom/google/cloud/audit/AuditLog;->getAuthorizationInfo(I)Lcom/google/cloud/audit/AuthorizationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizationInfoCount()I
    .locals 1

    .line 1483
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getAuthorizationInfoCount()I

    move-result v0

    return v0
.end method

.method public getAuthorizationInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/cloud/audit/AuthorizationInfo;",
            ">;"
        }
    .end annotation

    .line 1469
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    .line 1470
    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getAuthorizationInfoList()Ljava/util/List;

    move-result-object v0

    .line 1469
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 1109
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getMethodName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethodNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1126
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getMethodNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNumResponseItems()J
    .locals 2

    .line 1284
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getNumResponseItems()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequest()Lcom/google/protobuf/Struct;
    .locals 1

    .line 1733
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getRequest()Lcom/google/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMetadata()Lcom/google/cloud/audit/RequestMetadata;
    .locals 1

    .line 1652
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getRequestMetadata()Lcom/google/cloud/audit/RequestMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getResourceName()Ljava/lang/String;
    .locals 1

    .line 1198
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getResourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1215
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getResourceNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/google/protobuf/Struct;
    .locals 1

    .line 1834
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getResponse()Lcom/google/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getServiceData()Lcom/google/protobuf/Any;
    .locals 1

    .line 1927
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getServiceData()Lcom/google/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 1032
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getServiceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1046
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getServiceNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/rpc/Status;
    .locals 1

    .line 1336
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->getStatus()Lcom/google/rpc/Status;

    move-result-object v0

    return-object v0
.end method

.method public hasAuthenticationInfo()Z
    .locals 1

    .line 1396
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->hasAuthenticationInfo()Z

    move-result v0

    return v0
.end method

.method public hasRequest()Z
    .locals 1

    .line 1717
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->hasRequest()Z

    move-result v0

    return v0
.end method

.method public hasRequestMetadata()Z
    .locals 1

    .line 1641
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->hasRequestMetadata()Z

    move-result v0

    return v0
.end method

.method public hasResponse()Z
    .locals 1

    .line 1818
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->hasResponse()Z

    move-result v0

    return v0
.end method

.method public hasServiceData()Z
    .locals 1

    .line 1915
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->hasServiceData()Z

    move-result v0

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .line 1325
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuditLog;->hasStatus()Z

    move-result v0

    return v0
.end method

.method public mergeAuthenticationInfo(Lcom/google/cloud/audit/AuthenticationInfo;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/cloud/audit/AuthenticationInfo;

    .line 1442
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1443
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$1600(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/AuthenticationInfo;)V

    .line 1444
    return-object p0
.end method

.method public mergeRequest(Lcom/google/protobuf/Struct;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Struct;

    .line 1783
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1784
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$2800(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)V

    .line 1785
    return-object p0
.end method

.method public mergeRequestMetadata(Lcom/google/cloud/audit/RequestMetadata;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/cloud/audit/RequestMetadata;

    .line 1687
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1688
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$2500(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/RequestMetadata;)V

    .line 1689
    return-object p0
.end method

.method public mergeResponse(Lcom/google/protobuf/Struct;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Struct;

    .line 1884
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1885
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$3100(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)V

    .line 1886
    return-object p0
.end method

.method public mergeServiceData(Lcom/google/protobuf/Any;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Any;

    .line 1965
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1966
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$3400(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Any;)V

    .line 1967
    return-object p0
.end method

.method public mergeStatus(Lcom/google/rpc/Status;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/Status;

    .line 1371
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1372
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$1300(Lcom/google/cloud/audit/AuditLog;Lcom/google/rpc/Status;)V

    .line 1373
    return-object p0
.end method

.method public removeAuthorizationInfo(I)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 1627
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1628
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$2300(Lcom/google/cloud/audit/AuditLog;I)V

    .line 1629
    return-object p0
.end method

.method public setAuthenticationInfo(Lcom/google/cloud/audit/AuthenticationInfo$Builder;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/cloud/audit/AuthenticationInfo$Builder;

    .line 1430
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1431
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {p1}, Lcom/google/cloud/audit/AuthenticationInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/cloud/audit/AuthenticationInfo;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$1500(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/AuthenticationInfo;)V

    .line 1432
    return-object p0
.end method

.method public setAuthenticationInfo(Lcom/google/cloud/audit/AuthenticationInfo;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/cloud/audit/AuthenticationInfo;

    .line 1417
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1418
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$1500(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/AuthenticationInfo;)V

    .line 1419
    return-object p0
.end method

.method public setAuthorizationInfo(ILcom/google/cloud/audit/AuthorizationInfo$Builder;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/cloud/audit/AuthorizationInfo$Builder;

    .line 1523
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1524
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    .line 1525
    invoke-virtual {p2}, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/cloud/audit/AuthorizationInfo;

    .line 1524
    invoke-static {v0, p1, v1}, Lcom/google/cloud/audit/AuditLog;->access$1800(Lcom/google/cloud/audit/AuditLog;ILcom/google/cloud/audit/AuthorizationInfo;)V

    .line 1526
    return-object p0
.end method

.method public setAuthorizationInfo(ILcom/google/cloud/audit/AuthorizationInfo;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/cloud/audit/AuthorizationInfo;

    .line 1508
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1509
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1, p2}, Lcom/google/cloud/audit/AuditLog;->access$1800(Lcom/google/cloud/audit/AuditLog;ILcom/google/cloud/audit/AuthorizationInfo;)V

    .line 1510
    return-object p0
.end method

.method public setMethodName(Ljava/lang/String;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1143
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1144
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$400(Lcom/google/cloud/audit/AuditLog;Ljava/lang/String;)V

    .line 1145
    return-object p0
.end method

.method public setMethodNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1179
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1180
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$600(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/ByteString;)V

    .line 1181
    return-object p0
.end method

.method public setNumResponseItems(J)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 1297
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1298
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1, p2}, Lcom/google/cloud/audit/AuditLog;->access$1000(Lcom/google/cloud/audit/AuditLog;J)V

    .line 1299
    return-object p0
.end method

.method public setRequest(Lcom/google/protobuf/Struct$Builder;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Struct$Builder;

    .line 1766
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1767
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {p1}, Lcom/google/protobuf/Struct$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$2700(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)V

    .line 1768
    return-object p0
.end method

.method public setRequest(Lcom/google/protobuf/Struct;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Struct;

    .line 1748
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1749
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$2700(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)V

    .line 1750
    return-object p0
.end method

.method public setRequestMetadata(Lcom/google/cloud/audit/RequestMetadata$Builder;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/cloud/audit/RequestMetadata$Builder;

    .line 1675
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1676
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {p1}, Lcom/google/cloud/audit/RequestMetadata$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/cloud/audit/RequestMetadata;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$2400(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/RequestMetadata;)V

    .line 1677
    return-object p0
.end method

.method public setRequestMetadata(Lcom/google/cloud/audit/RequestMetadata;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/cloud/audit/RequestMetadata;

    .line 1662
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1663
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$2400(Lcom/google/cloud/audit/AuditLog;Lcom/google/cloud/audit/RequestMetadata;)V

    .line 1664
    return-object p0
.end method

.method public setResourceName(Ljava/lang/String;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1232
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1233
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$700(Lcom/google/cloud/audit/AuditLog;Ljava/lang/String;)V

    .line 1234
    return-object p0
.end method

.method public setResourceNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1268
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1269
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$900(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/ByteString;)V

    .line 1270
    return-object p0
.end method

.method public setResponse(Lcom/google/protobuf/Struct$Builder;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Struct$Builder;

    .line 1867
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1868
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {p1}, Lcom/google/protobuf/Struct$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$3000(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)V

    .line 1869
    return-object p0
.end method

.method public setResponse(Lcom/google/protobuf/Struct;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Struct;

    .line 1849
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1850
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$3000(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Struct;)V

    .line 1851
    return-object p0
.end method

.method public setServiceData(Lcom/google/protobuf/Any$Builder;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Any$Builder;

    .line 1952
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1953
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {p1}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Any;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$3300(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Any;)V

    .line 1954
    return-object p0
.end method

.method public setServiceData(Lcom/google/protobuf/Any;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Any;

    .line 1938
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1939
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$3300(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/Any;)V

    .line 1940
    return-object p0
.end method

.method public setServiceName(Ljava/lang/String;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1060
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1061
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$100(Lcom/google/cloud/audit/AuditLog;Ljava/lang/String;)V

    .line 1062
    return-object p0
.end method

.method public setServiceNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1090
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1091
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$300(Lcom/google/cloud/audit/AuditLog;Lcom/google/protobuf/ByteString;)V

    .line 1092
    return-object p0
.end method

.method public setStatus(Lcom/google/rpc/Status$Builder;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/rpc/Status$Builder;

    .line 1359
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1360
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-virtual {p1}, Lcom/google/rpc/Status$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/Status;

    invoke-static {v0, v1}, Lcom/google/cloud/audit/AuditLog;->access$1200(Lcom/google/cloud/audit/AuditLog;Lcom/google/rpc/Status;)V

    .line 1361
    return-object p0
.end method

.method public setStatus(Lcom/google/rpc/Status;)Lcom/google/cloud/audit/AuditLog$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/Status;

    .line 1346
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuditLog$Builder;->copyOnWrite()V

    .line 1347
    iget-object v0, p0, Lcom/google/cloud/audit/AuditLog$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuditLog;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuditLog;->access$1200(Lcom/google/cloud/audit/AuditLog;Lcom/google/rpc/Status;)V

    .line 1348
    return-object p0
.end method
