.class public final Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ExperimentPayloadProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;",
        "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLiteOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 232
    invoke-static {}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->access$000()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 233
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$1;

    .line 225
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearExperimentId()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;->copyOnWrite()V

    .line 294
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->access$200(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;)V

    .line 295
    return-object p0
.end method

.method public getExperimentId()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->getExperimentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->getExperimentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setExperimentId(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 278
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;->copyOnWrite()V

    .line 279
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->access$100(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;Ljava/lang/String;)V

    .line 280
    return-object p0
.end method

.method public setExperimentIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 310
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;->copyOnWrite()V

    .line 311
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;->access$300(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentLite;Lcom/google/protobuf/ByteString;)V

    .line 312
    return-object p0
.end method
