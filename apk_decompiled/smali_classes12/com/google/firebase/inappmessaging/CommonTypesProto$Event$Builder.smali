.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CommonTypesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$EventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$EventOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2139
    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2000()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2140
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$1;

    .line 2132
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllTriggerParams(Ljava/lang/Iterable;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;"
        }
    .end annotation

    .line 2264
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;>;"
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2265
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2400(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;Ljava/lang/Iterable;)V

    .line 2266
    return-object p0
.end method

.method public addTriggerParams(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;

    .line 2250
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2251
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    .line 2252
    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    .line 2251
    invoke-static {v0, p1, v1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2300(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    .line 2253
    return-object p0
.end method

.method public addTriggerParams(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    .line 2224
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2225
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2300(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    .line 2226
    return-object p0
.end method

.method public addTriggerParams(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;

    .line 2237
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2238
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2200(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    .line 2239
    return-object p0
.end method

.method public addTriggerParams(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    .line 2211
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2212
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2200(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    .line 2213
    return-object p0
.end method

.method public clearCount()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 2491
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2492
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$3500(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V

    .line 2493
    return-object p0
.end method

.method public clearName()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 2346
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2347
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2800(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V

    .line 2348
    return-object p0
.end method

.method public clearPreviousTimestampMillis()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 2442
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2443
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$3300(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V

    .line 2444
    return-object p0
.end method

.method public clearTimestampMillis()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 2402
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2403
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$3100(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V

    .line 2404
    return-object p0
.end method

.method public clearTriggerParams()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1

    .line 2276
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2277
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2500(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;)V

    .line 2278
    return-object p0
.end method

.method public getCount()I
    .locals 1

    .line 2460
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 2304
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2318
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousTimestampMillis()J
    .locals 2

    .line 2417
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getPreviousTimestampMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .line 2377
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getTimestampMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTriggerParams(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
    .locals 1
    .param p1, "index"    # I

    .line 2174
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getTriggerParams(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerParamsCount()I
    .locals 1

    .line 2164
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getTriggerParamsCount()I

    move-result v0

    return v0
.end method

.method public getTriggerParamsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;",
            ">;"
        }
    .end annotation

    .line 2152
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    .line 2153
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getTriggerParamsList()Ljava/util/List;

    move-result-object v0

    .line 2152
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeTriggerParams(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 2288
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2289
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2600(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;I)V

    .line 2290
    return-object p0
.end method

.method public setCount(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 2475
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2476
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$3400(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;I)V

    .line 2477
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2332
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2333
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2700(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;Ljava/lang/String;)V

    .line 2334
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2362
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2363
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2900(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;Lcom/google/protobuf/ByteString;)V

    .line 2364
    return-object p0
.end method

.method public setPreviousTimestampMillis(J)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 2429
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2430
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$3200(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;J)V

    .line 2431
    return-object p0
.end method

.method public setTimestampMillis(J)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 2389
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2390
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$3000(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;J)V

    .line 2391
    return-object p0
.end method

.method public setTriggerParams(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;

    .line 2198
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2199
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    .line 2200
    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    .line 2199
    invoke-static {v0, p1, v1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2100(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    .line 2201
    return-object p0
.end method

.method public setTriggerParams(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    .line 2185
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->copyOnWrite()V

    .line 2186
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->access$2100(Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    .line 2187
    return-object p0
.end method
