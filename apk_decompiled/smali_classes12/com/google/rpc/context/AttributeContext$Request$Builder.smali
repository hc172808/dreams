.class public final Lcom/google/rpc/context/AttributeContext$Request$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AttributeContext.java"

# interfaces
.implements Lcom/google/rpc/context/AttributeContext$RequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/context/AttributeContext$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/context/AttributeContext$Request;",
        "Lcom/google/rpc/context/AttributeContext$Request$Builder;",
        ">;",
        "Lcom/google/rpc/context/AttributeContext$RequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5183
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Request;->access$4900()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5184
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/context/AttributeContext$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/rpc/context/AttributeContext$1;

    .line 5176
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAuth()Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 6103
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 6104
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$8200(Lcom/google/rpc/context/AttributeContext$Request;)V

    .line 6105
    return-object p0
.end method

.method public clearHeaders()Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5358
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5359
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$5600(Lcom/google/rpc/context/AttributeContext$Request;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 5360
    return-object p0
.end method

.method public clearHost()Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5593
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5594
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$6100(Lcom/google/rpc/context/AttributeContext$Request;)V

    .line 5595
    return-object p0
.end method

.method public clearId()Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5244
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5245
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$5100(Lcom/google/rpc/context/AttributeContext$Request;)V

    .line 5246
    return-object p0
.end method

.method public clearMethod()Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5315
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5316
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$5400(Lcom/google/rpc/context/AttributeContext$Request;)V

    .line 5317
    return-object p0
.end method

.method public clearPath()Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5524
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5525
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$5800(Lcom/google/rpc/context/AttributeContext$Request;)V

    .line 5526
    return-object p0
.end method

.method public clearProtocol()Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5934
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5935
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$7500(Lcom/google/rpc/context/AttributeContext$Request;)V

    .line 5936
    return-object p0
.end method

.method public clearQuery()Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5735
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5736
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$6700(Lcom/google/rpc/context/AttributeContext$Request;)V

    .line 5737
    return-object p0
.end method

.method public clearReason()Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 6010
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 6011
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$7800(Lcom/google/rpc/context/AttributeContext$Request;)V

    .line 6012
    return-object p0
.end method

.method public clearScheme()Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5662
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5663
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$6400(Lcom/google/rpc/context/AttributeContext$Request;)V

    .line 5664
    return-object p0
.end method

.method public clearSize()Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5868
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5869
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$7300(Lcom/google/rpc/context/AttributeContext$Request;)V

    .line 5870
    return-object p0
.end method

.method public clearTime()Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1

    .line 5828
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5829
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$7100(Lcom/google/rpc/context/AttributeContext$Request;)V

    .line 5830
    return-object p0
.end method

.method public containsHeaders(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 5353
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5354
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAuth()Lcom/google/rpc/context/AttributeContext$Auth;
    .locals 1

    .line 6053
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getAuth()Lcom/google/rpc/context/AttributeContext$Auth;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5385
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHeadersCount()I
    .locals 1

    .line 5338
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5398
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    .line 5399
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    .line 5398
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHeadersOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 5415
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5416
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    .line 5417
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    .line 5418
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method public getHeadersOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 5433
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5434
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    .line 5435
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    .line 5436
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5439
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 5437
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 5554
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5567
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getHostBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 5199
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5214
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 5276
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethodBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5289
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getMethodBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 5485
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5498
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 5886
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5902
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getProtocolBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 5693
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5707
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 5968
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getReason()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReasonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5982
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getReasonBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 5623
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchemeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5636
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getSchemeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 5843
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 5778
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->getTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public hasAuth()Z
    .locals 1

    .line 6041
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->hasAuth()Z

    move-result v0

    return v0
.end method

.method public hasTime()Z
    .locals 1

    .line 5766
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Request;->hasTime()Z

    move-result v0

    return v0
.end method

.method public mergeAuth(Lcom/google/rpc/context/AttributeContext$Auth;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Auth;

    .line 6091
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 6092
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$8100(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/rpc/context/AttributeContext$Auth;)V

    .line 6093
    return-object p0
.end method

.method public mergeTime(Lcom/google/protobuf/Timestamp;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 5816
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5817
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$7000(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/Timestamp;)V

    .line 5818
    return-object p0
.end method

.method public putAllHeaders(Ljava/util/Map;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/rpc/context/AttributeContext$Request$Builder;"
        }
    .end annotation

    .line 5470
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5471
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$5600(Lcom/google/rpc/context/AttributeContext$Request;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 5472
    return-object p0
.end method

.method public putHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 5453
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5454
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5455
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5456
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$5600(Lcom/google/rpc/context/AttributeContext$Request;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5457
    return-object p0
.end method

.method public removeHeaders(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 5374
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5375
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5376
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Request;->access$5600(Lcom/google/rpc/context/AttributeContext$Request;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5377
    return-object p0
.end method

.method public setAuth(Lcom/google/rpc/context/AttributeContext$Auth$Builder;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/rpc/context/AttributeContext$Auth$Builder;

    .line 6078
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 6079
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Auth$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Auth;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext$Request;->access$8000(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/rpc/context/AttributeContext$Auth;)V

    .line 6080
    return-object p0
.end method

.method public setAuth(Lcom/google/rpc/context/AttributeContext$Auth;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Auth;

    .line 6064
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 6065
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$8000(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/rpc/context/AttributeContext$Auth;)V

    .line 6066
    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 5580
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5581
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$6000(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/String;)V

    .line 5582
    return-object p0
.end method

.method public setHostBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 5608
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5609
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$6200(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/ByteString;)V

    .line 5610
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 5229
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5230
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5000(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/String;)V

    .line 5231
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 5261
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5262
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5200(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/ByteString;)V

    .line 5263
    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 5302
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5303
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5300(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/String;)V

    .line 5304
    return-object p0
.end method

.method public setMethodBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 5330
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5331
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5500(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/ByteString;)V

    .line 5332
    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 5511
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5512
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5700(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/String;)V

    .line 5513
    return-object p0
.end method

.method public setPathBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 5539
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5540
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$5900(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/ByteString;)V

    .line 5541
    return-object p0
.end method

.method public setProtocol(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 5918
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5919
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$7400(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/String;)V

    .line 5920
    return-object p0
.end method

.method public setProtocolBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 5952
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5953
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$7600(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/ByteString;)V

    .line 5954
    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 5721
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5722
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$6600(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/String;)V

    .line 5723
    return-object p0
.end method

.method public setQueryBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 5751
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5752
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$6800(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/ByteString;)V

    .line 5753
    return-object p0
.end method

.method public setReason(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 5996
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5997
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$7700(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/String;)V

    .line 5998
    return-object p0
.end method

.method public setReasonBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 6026
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 6027
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$7900(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/ByteString;)V

    .line 6028
    return-object p0
.end method

.method public setScheme(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 5649
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5650
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$6300(Lcom/google/rpc/context/AttributeContext$Request;Ljava/lang/String;)V

    .line 5651
    return-object p0
.end method

.method public setSchemeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 5677
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5678
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$6500(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/ByteString;)V

    .line 5679
    return-object p0
.end method

.method public setSize(J)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 5855
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5856
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/context/AttributeContext$Request;->access$7200(Lcom/google/rpc/context/AttributeContext$Request;J)V

    .line 5857
    return-object p0
.end method

.method public setTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 5803
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5804
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext$Request;->access$6900(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/Timestamp;)V

    .line 5805
    return-object p0
.end method

.method public setTime(Lcom/google/protobuf/Timestamp;)Lcom/google/rpc/context/AttributeContext$Request$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 5789
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->copyOnWrite()V

    .line 5790
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Request$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Request;->access$6900(Lcom/google/rpc/context/AttributeContext$Request;Lcom/google/protobuf/Timestamp;)V

    .line 5791
    return-object p0
.end method
