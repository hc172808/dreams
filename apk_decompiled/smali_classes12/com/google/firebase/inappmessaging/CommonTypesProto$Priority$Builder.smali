.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CommonTypesProto.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$PriorityOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$PriorityOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3385
    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->access$5100()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3386
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/inappmessaging/CommonTypesProto$1;

    .line 3378
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearValue()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;
    .locals 1

    .line 3424
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;->copyOnWrite()V

    .line 3425
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->access$5300(Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)V

    .line 3426
    return-object p0
.end method

.method public getValue()I
    .locals 1

    .line 3399
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->getValue()I

    move-result v0

    return v0
.end method

.method public setValue(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 3411
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;->copyOnWrite()V

    .line 3412
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;->access$5200(Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;I)V

    .line 3413
    return-object p0
.end method
