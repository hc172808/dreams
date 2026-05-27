.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CommonTypesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParamOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2932
    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$3700()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2933
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$1;

    .line 2925
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDoubleValue()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1

    .line 3138
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->copyOnWrite()V

    .line 3139
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$4900(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    .line 3140
    return-object p0
.end method

.method public clearFloatValue()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1

    .line 3110
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->copyOnWrite()V

    .line 3111
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$4700(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    .line 3112
    return-object p0
.end method

.method public clearIntValue()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1

    .line 3082
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->copyOnWrite()V

    .line 3083
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$4500(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    .line 3084
    return-object p0
.end method

.method public clearName()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1

    .line 2989
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->copyOnWrite()V

    .line 2990
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$3900(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    .line 2991
    return-object p0
.end method

.method public clearStringValue()Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1

    .line 3043
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->copyOnWrite()V

    .line 3044
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$4200(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;)V

    .line 3045
    return-object p0
.end method

.method public getDoubleValue()D
    .locals 2

    .line 3121
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->getDoubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloatValue()F
    .locals 1

    .line 3093
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->getFloatValue()F

    move-result v0

    return v0
.end method

.method public getIntValue()J
    .locals 2

    .line 3065
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->getIntValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 2947
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2961
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 3016
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3025
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->getStringValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setDoubleValue(D)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1
    .param p1, "value"    # D

    .line 3129
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->copyOnWrite()V

    .line 3130
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$4800(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;D)V

    .line 3131
    return-object p0
.end method

.method public setFloatValue(F)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1
    .param p1, "value"    # F

    .line 3101
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->copyOnWrite()V

    .line 3102
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$4600(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;F)V

    .line 3103
    return-object p0
.end method

.method public setIntValue(J)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 3073
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->copyOnWrite()V

    .line 3074
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$4400(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;J)V

    .line 3075
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2975
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->copyOnWrite()V

    .line 2976
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$3800(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;Ljava/lang/String;)V

    .line 2977
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3005
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->copyOnWrite()V

    .line 3006
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$4000(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;Lcom/google/protobuf/ByteString;)V

    .line 3007
    return-object p0
.end method

.method public setStringValue(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 3034
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->copyOnWrite()V

    .line 3035
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$4100(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;Ljava/lang/String;)V

    .line 3036
    return-object p0
.end method

.method public setStringValueBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3054
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->copyOnWrite()V

    .line 3055
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;->access$4300(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggerParam;Lcom/google/protobuf/ByteString;)V

    .line 3056
    return-object p0
.end method
