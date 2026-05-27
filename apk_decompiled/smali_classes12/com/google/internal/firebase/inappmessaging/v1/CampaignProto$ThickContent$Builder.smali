.class public final Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CampaignProto.java"

# interfaces
.implements Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;",
        "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;",
        ">;",
        "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContentOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1780
    invoke-static {}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$1600()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1781
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$1;

    .line 1773
    invoke-direct {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllTriggeringConditions(Ljava/lang/Iterable;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;",
            ">;)",
            "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;"
        }
    .end annotation

    .line 2167
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;>;"
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2168
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3300(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Ljava/lang/Iterable;)V

    .line 2169
    return-object p0
.end method

.method public addTriggeringConditions(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;

    .line 2153
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2154
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    .line 2155
    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    .line 2154
    invoke-static {v0, p1, v1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3200(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V

    .line 2156
    return-object p0
.end method

.method public addTriggeringConditions(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    .line 2127
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2128
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1, p2}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3200(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V

    .line 2129
    return-object p0
.end method

.method public addTriggeringConditions(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;

    .line 2140
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2141
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, v1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3100(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V

    .line 2142
    return-object p0
.end method

.method public addTriggeringConditions(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    .line 2114
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2115
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3100(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V

    .line 2116
    return-object p0
.end method

.method public clearContent()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 1958
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1959
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2600(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)V

    .line 1960
    return-object p0
.end method

.method public clearDataBundle()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 2261
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2262
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3800(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2263
    return-object p0
.end method

.method public clearExperimentalPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 1887
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1888
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2300(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)V

    .line 1889
    return-object p0
.end method

.method public clearIsTestCampaign()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 2234
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2235
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3700(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)V

    .line 2236
    return-object p0
.end method

.method public clearPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 1790
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1791
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$1700(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)V

    .line 1792
    return-object p0
.end method

.method public clearPriority()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 2041
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2042
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2900(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)V

    .line 2043
    return-object p0
.end method

.method public clearTriggeringConditions()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 2179
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2180
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3400(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)V

    .line 2181
    return-object p0
.end method

.method public clearVanillaPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 1839
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1840
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2000(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)V

    .line 1841
    return-object p0
.end method

.method public containsDataBundle(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 2256
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2257
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getDataBundleMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getContent()Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1

    .line 1912
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getContent()Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    move-result-object v0

    return-object v0
.end method

.method public getDataBundle()Ljava/util/Map;
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

    .line 2287
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->getDataBundleMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDataBundleCount()I
    .locals 1

    .line 2242
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getDataBundleMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getDataBundleMap()Ljava/util/Map;
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

    .line 2299
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    .line 2300
    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getDataBundleMap()Ljava/util/Map;

    move-result-object v0

    .line 2299
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDataBundleOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 2315
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2316
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    .line 2317
    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getDataBundleMap()Ljava/util/Map;

    move-result-object v0

    .line 2318
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

.method public getDataBundleOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 2332
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2333
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    .line 2334
    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getDataBundleMap()Ljava/util/Map;

    move-result-object v0

    .line 2335
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2338
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 2336
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public getExperimentalPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;
    .locals 1

    .line 1856
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getExperimentalPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    move-result-object v0

    return-object v0
.end method

.method public getIsTestCampaign()Z
    .locals 1

    .line 2207
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getIsTestCampaign()Z

    move-result v0

    return v0
.end method

.method public getPayloadCase()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;
    .locals 1

    .line 1786
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getPayloadCase()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1

    .line 1987
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getPriority()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    move-result-object v0

    return-object v0
.end method

.method public getTriggeringConditions(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1
    .param p1, "index"    # I

    .line 2077
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getTriggeringConditions(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    move-result-object v0

    return-object v0
.end method

.method public getTriggeringConditionsCount()I
    .locals 1

    .line 2067
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getTriggeringConditionsCount()I

    move-result v0

    return v0
.end method

.method public getTriggeringConditionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;",
            ">;"
        }
    .end annotation

    .line 2055
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    .line 2056
    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getTriggeringConditionsList()Ljava/util/List;

    move-result-object v0

    .line 2055
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVanillaPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;
    .locals 1

    .line 1808
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getVanillaPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    move-result-object v0

    return-object v0
.end method

.method public hasContent()Z
    .locals 1

    .line 1901
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->hasContent()Z

    move-result v0

    return v0
.end method

.method public hasExperimentalPayload()Z
    .locals 1

    .line 1849
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->hasExperimentalPayload()Z

    move-result v0

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .line 1974
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->hasPriority()Z

    move-result v0

    return v0
.end method

.method public hasVanillaPayload()Z
    .locals 1

    .line 1801
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->hasVanillaPayload()Z

    move-result v0

    return v0
.end method

.method public mergeContent(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    .line 1947
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1948
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2500(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V

    .line 1949
    return-object p0
.end method

.method public mergeExperimentalPayload(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    .line 1879
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1880
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2200(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;)V

    .line 1881
    return-object p0
.end method

.method public mergePriority(Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    .line 2028
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2029
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2800(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)V

    .line 2030
    return-object p0
.end method

.method public mergeVanillaPayload(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    .line 1831
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1832
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$1900(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;)V

    .line 1833
    return-object p0
.end method

.method public putAllDataBundle(Ljava/util/Map;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;"
        }
    .end annotation

    .line 2367
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2368
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3800(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2369
    return-object p0
.end method

.method public putDataBundle(Ljava/lang/String;Ljava/lang/String;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 2351
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2352
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2353
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2354
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3800(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2355
    return-object p0
.end method

.method public removeDataBundle(Ljava/lang/String;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 2276
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2277
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2278
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3800(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2279
    return-object p0
.end method

.method public removeTriggeringConditions(I)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 2191
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2192
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3500(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;I)V

    .line 2193
    return-object p0
.end method

.method public setContent(Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;

    .line 1935
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1936
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, v1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2400(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V

    .line 1937
    return-object p0
.end method

.method public setContent(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    .line 1922
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1923
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2400(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V

    .line 1924
    return-object p0
.end method

.method public setExperimentalPayload(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;

    .line 1871
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1872
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    invoke-static {v0, v1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2100(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;)V

    .line 1873
    return-object p0
.end method

.method public setExperimentalPayload(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    .line 1862
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1863
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2100(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;)V

    .line 1864
    return-object p0
.end method

.method public setIsTestCampaign(Z)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 2220
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2221
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3600(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Z)V

    .line 2222
    return-object p0
.end method

.method public setPriority(Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;

    .line 2014
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2015
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, v1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2700(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)V

    .line 2016
    return-object p0
.end method

.method public setPriority(Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    .line 1999
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2000
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2700(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)V

    .line 2001
    return-object p0
.end method

.method public setTriggeringConditions(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;

    .line 2101
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2102
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    .line 2103
    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    .line 2102
    invoke-static {v0, p1, v1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3000(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V

    .line 2104
    return-object p0
.end method

.method public setTriggeringConditions(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    .line 2088
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2089
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1, p2}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3000(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V

    .line 2090
    return-object p0
.end method

.method public setVanillaPayload(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;

    .line 1823
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1824
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    invoke-static {v0, v1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$1800(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;)V

    .line 1825
    return-object p0
.end method

.method public setVanillaPayload(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    .line 1814
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1815
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$1800(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;)V

    .line 1816
    return-object p0
.end method
