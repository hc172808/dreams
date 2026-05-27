.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CommonTypesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariantOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariantOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4099
    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->access$6000()Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4100
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$1;

    .line 4092
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearContent()Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;
    .locals 1

    .line 4209
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;->copyOnWrite()V

    .line 4210
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->access$6500(Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;)V

    .line 4211
    return-object p0
.end method

.method public clearIndex()Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;
    .locals 1

    .line 4138
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;->copyOnWrite()V

    .line 4139
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->access$6200(Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;)V

    .line 4140
    return-object p0
.end method

.method public getContent()Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1

    .line 4163
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->getContent()Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 4113
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->getIndex()I

    move-result v0

    return v0
.end method

.method public hasContent()Z
    .locals 1

    .line 4152
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->hasContent()Z

    move-result v0

    return v0
.end method

.method public mergeContent(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    .line 4198
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;->copyOnWrite()V

    .line 4199
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->access$6400(Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V

    .line 4200
    return-object p0
.end method

.method public setContent(Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;

    .line 4186
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;->copyOnWrite()V

    .line 4187
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->access$6300(Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V

    .line 4188
    return-object p0
.end method

.method public setContent(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    .line 4173
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;->copyOnWrite()V

    .line 4174
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->access$6300(Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V

    .line 4175
    return-object p0
.end method

.method public setIndex(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 4125
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;->copyOnWrite()V

    .line 4126
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;->access$6100(Lcom/google/firebase/inappmessaging/CommonTypesProto$ExperimentVariant;I)V

    .line 4127
    return-object p0
.end method
