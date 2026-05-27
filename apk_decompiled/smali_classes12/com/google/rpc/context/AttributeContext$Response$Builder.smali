.class public final Lcom/google/rpc/context/AttributeContext$Response$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AttributeContext.java"

# interfaces
.implements Lcom/google/rpc/context/AttributeContext$ResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/context/AttributeContext$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/context/AttributeContext$Response;",
        "Lcom/google/rpc/context/AttributeContext$Response$Builder;",
        ">;",
        "Lcom/google/rpc/context/AttributeContext$ResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6685
    invoke-static {}, Lcom/google/rpc/context/AttributeContext$Response;->access$8400()Lcom/google/rpc/context/AttributeContext$Response;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6686
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/context/AttributeContext$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/rpc/context/AttributeContext$1;

    .line 6678
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCode()Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 1

    .line 6724
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->copyOnWrite()V

    .line 6725
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Response;->access$8600(Lcom/google/rpc/context/AttributeContext$Response;)V

    .line 6726
    return-object p0
.end method

.method public clearHeaders()Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 1

    .line 6792
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->copyOnWrite()V

    .line 6793
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Response;->access$8900(Lcom/google/rpc/context/AttributeContext$Response;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6794
    return-object p0
.end method

.method public clearSize()Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 1

    .line 6764
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->copyOnWrite()V

    .line 6765
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Response;->access$8800(Lcom/google/rpc/context/AttributeContext$Response;)V

    .line 6766
    return-object p0
.end method

.method public clearTime()Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 1

    .line 6981
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->copyOnWrite()V

    .line 6982
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Response;->access$9200(Lcom/google/rpc/context/AttributeContext$Response;)V

    .line 6983
    return-object p0
.end method

.method public containsHeaders(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 6787
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6788
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Response;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCode()J
    .locals 2

    .line 6699
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Response;->getCode()J

    move-result-wide v0

    return-wide v0
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

    .line 6819
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHeadersCount()I
    .locals 1

    .line 6772
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Response;->getHeadersMap()Ljava/util/Map;

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

    .line 6832
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    .line 6833
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Response;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    .line 6832
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHeadersOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 6849
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6850
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    .line 6851
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Response;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    .line 6852
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

    .line 6867
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6868
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    .line 6869
    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Response;->getHeadersMap()Ljava/util/Map;

    move-result-object v0

    .line 6870
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6873
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 6871
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public getSize()J
    .locals 2

    .line 6739
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Response;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 6931
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Response;->getTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public hasTime()Z
    .locals 1

    .line 6919
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext$Response;->hasTime()Z

    move-result v0

    return v0
.end method

.method public mergeTime(Lcom/google/protobuf/Timestamp;)Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 6969
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->copyOnWrite()V

    .line 6970
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Response;->access$9100(Lcom/google/rpc/context/AttributeContext$Response;Lcom/google/protobuf/Timestamp;)V

    .line 6971
    return-object p0
.end method

.method public putAllHeaders(Ljava/util/Map;)Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/rpc/context/AttributeContext$Response$Builder;"
        }
    .end annotation

    .line 6904
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->copyOnWrite()V

    .line 6905
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Response;->access$8900(Lcom/google/rpc/context/AttributeContext$Response;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 6906
    return-object p0
.end method

.method public putHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 6887
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6888
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6889
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->copyOnWrite()V

    .line 6890
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Response;->access$8900(Lcom/google/rpc/context/AttributeContext$Response;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6891
    return-object p0
.end method

.method public removeHeaders(Ljava/lang/String;)Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 6808
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6809
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->copyOnWrite()V

    .line 6810
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext$Response;->access$8900(Lcom/google/rpc/context/AttributeContext$Response;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6811
    return-object p0
.end method

.method public setCode(J)Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 6711
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->copyOnWrite()V

    .line 6712
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/context/AttributeContext$Response;->access$8500(Lcom/google/rpc/context/AttributeContext$Response;J)V

    .line 6713
    return-object p0
.end method

.method public setSize(J)Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 6751
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->copyOnWrite()V

    .line 6752
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/context/AttributeContext$Response;->access$8700(Lcom/google/rpc/context/AttributeContext$Response;J)V

    .line 6753
    return-object p0
.end method

.method public setTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 6956
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->copyOnWrite()V

    .line 6957
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext$Response;->access$9000(Lcom/google/rpc/context/AttributeContext$Response;Lcom/google/protobuf/Timestamp;)V

    .line 6958
    return-object p0
.end method

.method public setTime(Lcom/google/protobuf/Timestamp;)Lcom/google/rpc/context/AttributeContext$Response$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 6942
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->copyOnWrite()V

    .line 6943
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Response$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext$Response;->access$9000(Lcom/google/rpc/context/AttributeContext$Response;Lcom/google/protobuf/Timestamp;)V

    .line 6944
    return-object p0
.end method
