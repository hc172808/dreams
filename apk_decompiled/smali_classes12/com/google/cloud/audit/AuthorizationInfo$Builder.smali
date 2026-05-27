.class public final Lcom/google/cloud/audit/AuthorizationInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AuthorizationInfo.java"

# interfaces
.implements Lcom/google/cloud/audit/AuthorizationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/cloud/audit/AuthorizationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/cloud/audit/AuthorizationInfo;",
        "Lcom/google/cloud/audit/AuthorizationInfo$Builder;",
        ">;",
        "Lcom/google/cloud/audit/AuthorizationInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 297
    invoke-static {}, Lcom/google/cloud/audit/AuthorizationInfo;->access$000()Lcom/google/cloud/audit/AuthorizationInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 298
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/cloud/audit/AuthorizationInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/cloud/audit/AuthorizationInfo$1;

    .line 290
    invoke-direct {p0}, Lcom/google/cloud/audit/AuthorizationInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearGranted()Lcom/google/cloud/audit/AuthorizationInfo$Builder;
    .locals 1

    .line 482
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->copyOnWrite()V

    .line 483
    iget-object v0, p0, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-static {v0}, Lcom/google/cloud/audit/AuthorizationInfo;->access$800(Lcom/google/cloud/audit/AuthorizationInfo;)V

    .line 484
    return-object p0
.end method

.method public clearPermission()Lcom/google/cloud/audit/AuthorizationInfo$Builder;
    .locals 1

    .line 424
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->copyOnWrite()V

    .line 425
    iget-object v0, p0, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-static {v0}, Lcom/google/cloud/audit/AuthorizationInfo;->access$500(Lcom/google/cloud/audit/AuthorizationInfo;)V

    .line 426
    return-object p0
.end method

.method public clearResource()Lcom/google/cloud/audit/AuthorizationInfo$Builder;
    .locals 1

    .line 354
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->copyOnWrite()V

    .line 355
    iget-object v0, p0, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-static {v0}, Lcom/google/cloud/audit/AuthorizationInfo;->access$200(Lcom/google/cloud/audit/AuthorizationInfo;)V

    .line 356
    return-object p0
.end method

.method public getGranted()Z
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuthorizationInfo;->getGranted()Z

    move-result v0

    return v0
.end method

.method public getPermission()Ljava/lang/String;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuthorizationInfo;->getPermission()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuthorizationInfo;->getPermissionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuthorizationInfo;->getResource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-virtual {v0}, Lcom/google/cloud/audit/AuthorizationInfo;->getResourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setGranted(Z)Lcom/google/cloud/audit/AuthorizationInfo$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 468
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->copyOnWrite()V

    .line 469
    iget-object v0, p0, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuthorizationInfo;->access$700(Lcom/google/cloud/audit/AuthorizationInfo;Z)V

    .line 470
    return-object p0
.end method

.method public setPermission(Ljava/lang/String;)Lcom/google/cloud/audit/AuthorizationInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 411
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->copyOnWrite()V

    .line 412
    iget-object v0, p0, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuthorizationInfo;->access$400(Lcom/google/cloud/audit/AuthorizationInfo;Ljava/lang/String;)V

    .line 413
    return-object p0
.end method

.method public setPermissionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/audit/AuthorizationInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 439
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->copyOnWrite()V

    .line 440
    iget-object v0, p0, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuthorizationInfo;->access$600(Lcom/google/cloud/audit/AuthorizationInfo;Lcom/google/protobuf/ByteString;)V

    .line 441
    return-object p0
.end method

.method public setResource(Ljava/lang/String;)Lcom/google/cloud/audit/AuthorizationInfo$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 340
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->copyOnWrite()V

    .line 341
    iget-object v0, p0, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuthorizationInfo;->access$100(Lcom/google/cloud/audit/AuthorizationInfo;Ljava/lang/String;)V

    .line 342
    return-object p0
.end method

.method public setResourceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/cloud/audit/AuthorizationInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 370
    invoke-virtual {p0}, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->copyOnWrite()V

    .line 371
    iget-object v0, p0, Lcom/google/cloud/audit/AuthorizationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/cloud/audit/AuthorizationInfo;

    invoke-static {v0, p1}, Lcom/google/cloud/audit/AuthorizationInfo;->access$300(Lcom/google/cloud/audit/AuthorizationInfo;Lcom/google/protobuf/ByteString;)V

    .line 372
    return-object p0
.end method
