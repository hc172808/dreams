.class public final Lcom/google/rpc/context/AttributeContext$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AttributeContext.java"

# interfaces
.implements Lcom/google/rpc/context/AttributeContextOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/context/AttributeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/context/AttributeContext;",
        "Lcom/google/rpc/context/AttributeContext$Builder;",
        ">;",
        "Lcom/google/rpc/context/AttributeContextOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 8811
    invoke-static {}, Lcom/google/rpc/context/AttributeContext;->access$10600()Lcom/google/rpc/context/AttributeContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8812
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/context/AttributeContext$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/rpc/context/AttributeContext$1;

    .line 8804
    invoke-direct {p0}, Lcom/google/rpc/context/AttributeContext$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearApi()Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1

    .line 9355
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9356
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext;->access$12700(Lcom/google/rpc/context/AttributeContext;)V

    .line 9357
    return-object p0
.end method

.method public clearDestination()Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1

    .line 9059
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9060
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext;->access$11500(Lcom/google/rpc/context/AttributeContext;)V

    .line 9061
    return-object p0
.end method

.method public clearOrigin()Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1

    .line 8893
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 8894
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext;->access$10900(Lcom/google/rpc/context/AttributeContext;)V

    .line 8895
    return-object p0
.end method

.method public clearRequest()Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1

    .line 9130
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9131
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext;->access$11800(Lcom/google/rpc/context/AttributeContext;)V

    .line 9132
    return-object p0
.end method

.method public clearResource()Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1

    .line 9284
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9285
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext;->access$12400(Lcom/google/rpc/context/AttributeContext;)V

    .line 9286
    return-object p0
.end method

.method public clearResponse()Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1

    .line 9201
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9202
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext;->access$12100(Lcom/google/rpc/context/AttributeContext;)V

    .line 9203
    return-object p0
.end method

.method public clearSource()Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1

    .line 8976
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 8977
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0}, Lcom/google/rpc/context/AttributeContext;->access$11200(Lcom/google/rpc/context/AttributeContext;)V

    .line 8978
    return-object p0
.end method

.method public getApi()Lcom/google/rpc/context/AttributeContext$Api;
    .locals 1

    .line 9309
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->getApi()Lcom/google/rpc/context/AttributeContext$Api;

    move-result-object v0

    return-object v0
.end method

.method public getDestination()Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1

    .line 9005
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->getDestination()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1

    .line 8839
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->getOrigin()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lcom/google/rpc/context/AttributeContext$Request;
    .locals 1

    .line 9084
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->getRequest()Lcom/google/rpc/context/AttributeContext$Request;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Lcom/google/rpc/context/AttributeContext$Resource;
    .locals 1

    .line 9230
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->getResource()Lcom/google/rpc/context/AttributeContext$Resource;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/google/rpc/context/AttributeContext$Response;
    .locals 1

    .line 9155
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->getResponse()Lcom/google/rpc/context/AttributeContext$Response;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lcom/google/rpc/context/AttributeContext$Peer;
    .locals 1

    .line 8922
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->getSource()Lcom/google/rpc/context/AttributeContext$Peer;

    move-result-object v0

    return-object v0
.end method

.method public hasApi()Z
    .locals 1

    .line 9298
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->hasApi()Z

    move-result v0

    return v0
.end method

.method public hasDestination()Z
    .locals 1

    .line 8992
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->hasDestination()Z

    move-result v0

    return v0
.end method

.method public hasOrigin()Z
    .locals 1

    .line 8826
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->hasOrigin()Z

    move-result v0

    return v0
.end method

.method public hasRequest()Z
    .locals 1

    .line 9073
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->hasRequest()Z

    move-result v0

    return v0
.end method

.method public hasResource()Z
    .locals 1

    .line 9217
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->hasResource()Z

    move-result v0

    return v0
.end method

.method public hasResponse()Z
    .locals 1

    .line 9144
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->hasResponse()Z

    move-result v0

    return v0
.end method

.method public hasSource()Z
    .locals 1

    .line 8909
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {v0}, Lcom/google/rpc/context/AttributeContext;->hasSource()Z

    move-result v0

    return v0
.end method

.method public mergeApi(Lcom/google/rpc/context/AttributeContext$Api;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Api;

    .line 9344
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9345
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$12600(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Api;)V

    .line 9346
    return-object p0
.end method

.method public mergeDestination(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Peer;

    .line 9046
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9047
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$11400(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)V

    .line 9048
    return-object p0
.end method

.method public mergeOrigin(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Peer;

    .line 8880
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 8881
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$10800(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)V

    .line 8882
    return-object p0
.end method

.method public mergeRequest(Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Request;

    .line 9119
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9120
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$11700(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Request;)V

    .line 9121
    return-object p0
.end method

.method public mergeResource(Lcom/google/rpc/context/AttributeContext$Resource;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Resource;

    .line 9271
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9272
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$12300(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Resource;)V

    .line 9273
    return-object p0
.end method

.method public mergeResponse(Lcom/google/rpc/context/AttributeContext$Response;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Response;

    .line 9190
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9191
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$12000(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Response;)V

    .line 9192
    return-object p0
.end method

.method public mergeSource(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Peer;

    .line 8963
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 8964
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$11100(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)V

    .line 8965
    return-object p0
.end method

.method public setApi(Lcom/google/rpc/context/AttributeContext$Api$Builder;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/rpc/context/AttributeContext$Api$Builder;

    .line 9332
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9333
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Api$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Api;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$12500(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Api;)V

    .line 9334
    return-object p0
.end method

.method public setApi(Lcom/google/rpc/context/AttributeContext$Api;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Api;

    .line 9319
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9320
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$12500(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Api;)V

    .line 9321
    return-object p0
.end method

.method public setDestination(Lcom/google/rpc/context/AttributeContext$Peer$Builder;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/rpc/context/AttributeContext$Peer$Builder;

    .line 9032
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9033
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$11300(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)V

    .line 9034
    return-object p0
.end method

.method public setDestination(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Peer;

    .line 9017
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9018
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$11300(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)V

    .line 9019
    return-object p0
.end method

.method public setOrigin(Lcom/google/rpc/context/AttributeContext$Peer$Builder;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/rpc/context/AttributeContext$Peer$Builder;

    .line 8866
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 8867
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$10700(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)V

    .line 8868
    return-object p0
.end method

.method public setOrigin(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Peer;

    .line 8851
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 8852
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$10700(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)V

    .line 8853
    return-object p0
.end method

.method public setRequest(Lcom/google/rpc/context/AttributeContext$Request$Builder;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/rpc/context/AttributeContext$Request$Builder;

    .line 9107
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9108
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Request$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Request;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$11600(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Request;)V

    .line 9109
    return-object p0
.end method

.method public setRequest(Lcom/google/rpc/context/AttributeContext$Request;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Request;

    .line 9094
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9095
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$11600(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Request;)V

    .line 9096
    return-object p0
.end method

.method public setResource(Lcom/google/rpc/context/AttributeContext$Resource$Builder;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/rpc/context/AttributeContext$Resource$Builder;

    .line 9257
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9258
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Resource$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Resource;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$12200(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Resource;)V

    .line 9259
    return-object p0
.end method

.method public setResource(Lcom/google/rpc/context/AttributeContext$Resource;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Resource;

    .line 9242
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9243
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$12200(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Resource;)V

    .line 9244
    return-object p0
.end method

.method public setResponse(Lcom/google/rpc/context/AttributeContext$Response$Builder;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/rpc/context/AttributeContext$Response$Builder;

    .line 9178
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9179
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Response$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Response;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$11900(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Response;)V

    .line 9180
    return-object p0
.end method

.method public setResponse(Lcom/google/rpc/context/AttributeContext$Response;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Response;

    .line 9165
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 9166
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$11900(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Response;)V

    .line 9167
    return-object p0
.end method

.method public setSource(Lcom/google/rpc/context/AttributeContext$Peer$Builder;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/rpc/context/AttributeContext$Peer$Builder;

    .line 8949
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 8950
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-virtual {p1}, Lcom/google/rpc/context/AttributeContext$Peer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/context/AttributeContext$Peer;

    invoke-static {v0, v1}, Lcom/google/rpc/context/AttributeContext;->access$11000(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)V

    .line 8951
    return-object p0
.end method

.method public setSource(Lcom/google/rpc/context/AttributeContext$Peer;)Lcom/google/rpc/context/AttributeContext$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/context/AttributeContext$Peer;

    .line 8934
    invoke-virtual {p0}, Lcom/google/rpc/context/AttributeContext$Builder;->copyOnWrite()V

    .line 8935
    iget-object v0, p0, Lcom/google/rpc/context/AttributeContext$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/context/AttributeContext;

    invoke-static {v0, p1}, Lcom/google/rpc/context/AttributeContext;->access$11000(Lcom/google/rpc/context/AttributeContext;Lcom/google/rpc/context/AttributeContext$Peer;)V

    .line 8936
    return-object p0
.end method
