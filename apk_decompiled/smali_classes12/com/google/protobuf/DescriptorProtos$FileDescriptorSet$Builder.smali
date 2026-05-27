.class public final Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$FileDescriptorSetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;",
        "Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$FileDescriptorSetOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 235
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$000()Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 236
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/DescriptorProtos$1;

    .line 228
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllFile(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;"
        }
    .end annotation

    .line 320
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 321
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$400(Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;Ljava/lang/Iterable;)V

    .line 322
    return-object p0
.end method

.method public addFile(ILcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    .line 310
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 311
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    .line 312
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 311
    invoke-static {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$300(Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;ILcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)V

    .line 313
    return-object p0
.end method

.method public addFile(ILcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 292
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 293
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$300(Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;ILcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)V

    .line 294
    return-object p0
.end method

.method public addFile(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    .line 301
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 302
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$200(Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)V

    .line 303
    return-object p0
.end method

.method public addFile(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 283
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 284
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$200(Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)V

    .line 285
    return-object p0
.end method

.method public clearFile()Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1

    .line 328
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 329
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$500(Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;)V

    .line 330
    return-object p0
.end method

.method public getFile(I)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1
    .param p1, "index"    # I

    .line 258
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->getFile(I)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getFileCount()I
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->getFileCount()I

    move-result v0

    return v0
.end method

.method public getFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    .line 245
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->getFileList()Ljava/util/List;

    move-result-object v0

    .line 244
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeFile(I)Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 336
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 337
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$600(Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;I)V

    .line 338
    return-object p0
.end method

.method public setFile(ILcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    .line 274
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 275
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    .line 276
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 275
    invoke-static {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$100(Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;ILcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)V

    .line 277
    return-object p0
.end method

.method public setFile(ILcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 265
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 266
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;->access$100(Lcom/google/protobuf/DescriptorProtos$FileDescriptorSet;ILcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)V

    .line 267
    return-object p0
.end method
