.class public final Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ExperimentPayloadProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;",
        "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayloadOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1877
    invoke-static {}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$500()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1878
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$1;

    .line 1870
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllOngoingExperiments(Ljava/lang/Iterable;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;"
        }
    .end annotation

    .line 2856
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;>;"
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2857
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$4200(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/Iterable;)V

    .line 2858
    return-object p0
.end method

.method public addOngoingExperiments(ILcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;

    .line 2840
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2841
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    .line 2842
    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    .line 2841
    invoke-static {v0, p1, v1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$4100(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;ILcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V

    .line 2843
    return-object p0
.end method

.method public addOngoingExperiments(ILcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    .line 2810
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2811
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$4100(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;ILcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V

    .line 2812
    return-object p0
.end method

.method public addOngoingExperiments(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;

    .line 2825
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2826
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$4000(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V

    .line 2827
    return-object p0
.end method

.method public addOngoingExperiments(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    .line 2795
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2796
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$4000(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V

    .line 2797
    return-object p0
.end method

.method public clearActivateEventToLog()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1

    .line 2396
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2397
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$2500(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V

    .line 2398
    return-object p0
.end method

.method public clearClearEventToLog()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1

    .line 2470
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2471
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$2800(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V

    .line 2472
    return-object p0
.end method

.method public clearExperimentId()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1

    .line 1946
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 1947
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$700(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V

    .line 1948
    return-object p0
.end method

.method public clearExperimentStartTimeMillis()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1

    .line 2082
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2083
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$1300(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V

    .line 2084
    return-object p0
.end method

.method public clearOngoingExperiments()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1

    .line 2870
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2871
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$4300(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V

    .line 2872
    return-object p0
.end method

.method public clearOverflowPolicy()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1

    .line 2710
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2711
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$3800(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V

    .line 2712
    return-object p0
.end method

.method public clearSetEventToLog()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1

    .line 2322
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2323
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$2200(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V

    .line 2324
    return-object p0
.end method

.method public clearTimeToLiveMillis()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1

    .line 2264
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2265
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$2000(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V

    .line 2266
    return-object p0
.end method

.method public clearTimeoutEventToLog()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1

    .line 2548
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2549
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$3100(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V

    .line 2550
    return-object p0
.end method

.method public clearTriggerEvent()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1

    .line 2136
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2137
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$1500(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V

    .line 2138
    return-object p0
.end method

.method public clearTriggerTimeoutMillis()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1

    .line 2203
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2204
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$1800(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V

    .line 2205
    return-object p0
.end method

.method public clearTtlExpiryEventToLog()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1

    .line 2627
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2628
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$3400(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V

    .line 2629
    return-object p0
.end method

.method public clearVariantId()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1

    .line 2023
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2024
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$1000(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V

    .line 2025
    return-object p0
.end method

.method public getActivateEventToLog()Ljava/lang/String;
    .locals 1

    .line 2354
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getActivateEventToLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivateEventToLogBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2368
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getActivateEventToLogBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getClearEventToLog()Ljava/lang/String;
    .locals 1

    .line 2428
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getClearEventToLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClearEventToLogBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2442
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getClearEventToLogBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentId()Ljava/lang/String;
    .locals 1

    .line 1895
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getExperimentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1912
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getExperimentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentStartTimeMillis()J
    .locals 2

    .line 2055
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getExperimentStartTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOngoingExperiments(I)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;
    .locals 1
    .param p1, "index"    # I

    .line 2752
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getOngoingExperiments(I)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    move-result-object v0

    return-object v0
.end method

.method public getOngoingExperimentsCount()I
    .locals 1

    .line 2740
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getOngoingExperimentsCount()I

    move-result v0

    return v0
.end method

.method public getOngoingExperimentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;",
            ">;"
        }
    .end annotation

    .line 2726
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    .line 2727
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getOngoingExperimentsList()Ljava/util/List;

    move-result-object v0

    .line 2726
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOverflowPolicy()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;
    .locals 1

    .line 2685
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getOverflowPolicy()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getOverflowPolicyValue()I
    .locals 1

    .line 2659
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getOverflowPolicyValue()I

    move-result v0

    return v0
.end method

.method public getSetEventToLog()Ljava/lang/String;
    .locals 1

    .line 2280
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getSetEventToLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSetEventToLogBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2294
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getSetEventToLogBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimeToLiveMillis()J
    .locals 2

    .line 2225
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getTimeToLiveMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeoutEventToLog()Ljava/lang/String;
    .locals 1

    .line 2503
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getTimeoutEventToLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeoutEventToLogBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2518
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getTimeoutEventToLogBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerEvent()Ljava/lang/String;
    .locals 1

    .line 2097
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getTriggerEvent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerEventBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2110
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getTriggerEventBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerTimeoutMillis()J
    .locals 2

    .line 2170
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getTriggerTimeoutMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTtlExpiryEventToLog()Ljava/lang/String;
    .locals 1

    .line 2582
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getTtlExpiryEventToLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTtlExpiryEventToLogBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2597
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getTtlExpiryEventToLogBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVariantId()Ljava/lang/String;
    .locals 1

    .line 1981
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getVariantId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVariantIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1995
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->getVariantIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeOngoingExperiments(I)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 2884
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2885
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$4400(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;I)V

    .line 2886
    return-object p0
.end method

.method public setActivateEventToLog(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2382
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2383
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$2400(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/String;)V

    .line 2384
    return-object p0
.end method

.method public setActivateEventToLogBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2412
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2413
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$2600(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lcom/google/protobuf/ByteString;)V

    .line 2414
    return-object p0
.end method

.method public setClearEventToLog(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2456
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2457
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$2700(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/String;)V

    .line 2458
    return-object p0
.end method

.method public setClearEventToLogBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2486
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2487
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$2900(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lcom/google/protobuf/ByteString;)V

    .line 2488
    return-object p0
.end method

.method public setExperimentId(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1929
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 1930
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$600(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/String;)V

    .line 1931
    return-object p0
.end method

.method public setExperimentIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1965
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 1966
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$800(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lcom/google/protobuf/ByteString;)V

    .line 1967
    return-object p0
.end method

.method public setExperimentStartTimeMillis(J)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 2068
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2069
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$1200(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;J)V

    .line 2070
    return-object p0
.end method

.method public setOngoingExperiments(ILcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;

    .line 2780
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2781
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    .line 2782
    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    .line 2781
    invoke-static {v0, p1, v1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$3900(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;ILcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V

    .line 2783
    return-object p0
.end method

.method public setOngoingExperiments(ILcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    .line 2765
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2766
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$3900(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;ILcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V

    .line 2767
    return-object p0
.end method

.method public setOverflowPolicy(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;

    .line 2697
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2698
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$3700(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$ExperimentOverflowPolicy;)V

    .line 2699
    return-object p0
.end method

.method public setOverflowPolicyValue(I)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 2671
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2672
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$3600(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;I)V

    .line 2673
    return-object p0
.end method

.method public setSetEventToLog(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2308
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2309
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$2100(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/String;)V

    .line 2310
    return-object p0
.end method

.method public setSetEventToLogBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2338
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2339
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$2300(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lcom/google/protobuf/ByteString;)V

    .line 2340
    return-object p0
.end method

.method public setTimeToLiveMillis(J)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 2244
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2245
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$1900(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;J)V

    .line 2246
    return-object p0
.end method

.method public setTimeoutEventToLog(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2533
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2534
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$3000(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/String;)V

    .line 2535
    return-object p0
.end method

.method public setTimeoutEventToLogBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2565
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2566
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$3200(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lcom/google/protobuf/ByteString;)V

    .line 2567
    return-object p0
.end method

.method public setTriggerEvent(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2123
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2124
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$1400(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/String;)V

    .line 2125
    return-object p0
.end method

.method public setTriggerEventBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2151
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2152
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$1600(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lcom/google/protobuf/ByteString;)V

    .line 2153
    return-object p0
.end method

.method public setTriggerTimeoutMillis(J)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 2186
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2187
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$1700(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;J)V

    .line 2188
    return-object p0
.end method

.method public setTtlExpiryEventToLog(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2612
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2613
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$3300(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/String;)V

    .line 2614
    return-object p0
.end method

.method public setTtlExpiryEventToLogBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2644
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2645
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$3500(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lcom/google/protobuf/ByteString;)V

    .line 2646
    return-object p0
.end method

.method public setVariantId(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2009
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2010
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$900(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Ljava/lang/String;)V

    .line 2011
    return-object p0
.end method

.method public setVariantIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2039
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->copyOnWrite()V

    .line 2040
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;->access$1100(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;Lcom/google/protobuf/ByteString;)V

    .line 2041
    return-object p0
.end method
