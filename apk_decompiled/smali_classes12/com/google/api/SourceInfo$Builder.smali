.class public final Lcom/google/api/SourceInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceInfo.java"

# interfaces
.implements Lcom/google/api/SourceInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/SourceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/SourceInfo;",
        "Lcom/google/api/SourceInfo$Builder;",
        ">;",
        "Lcom/google/api/SourceInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 254
    invoke-static {}, Lcom/google/api/SourceInfo;->access$000()Lcom/google/api/SourceInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 255
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/SourceInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/SourceInfo$1;

    .line 247
    invoke-direct {p0}, Lcom/google/api/SourceInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllSourceFiles(Ljava/lang/Iterable;)Lcom/google/api/SourceInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Any;",
            ">;)",
            "Lcom/google/api/SourceInfo$Builder;"
        }
    .end annotation

    .line 379
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Any;>;"
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 380
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-static {v0, p1}, Lcom/google/api/SourceInfo;->access$400(Lcom/google/api/SourceInfo;Ljava/lang/Iterable;)V

    .line 381
    return-object p0
.end method

.method public addSourceFiles(ILcom/google/protobuf/Any$Builder;)Lcom/google/api/SourceInfo$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Any$Builder;

    .line 365
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 366
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    .line 367
    invoke-virtual {p2}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Any;

    .line 366
    invoke-static {v0, p1, v1}, Lcom/google/api/SourceInfo;->access$300(Lcom/google/api/SourceInfo;ILcom/google/protobuf/Any;)V

    .line 368
    return-object p0
.end method

.method public addSourceFiles(ILcom/google/protobuf/Any;)Lcom/google/api/SourceInfo$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Any;

    .line 339
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 340
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-static {v0, p1, p2}, Lcom/google/api/SourceInfo;->access$300(Lcom/google/api/SourceInfo;ILcom/google/protobuf/Any;)V

    .line 341
    return-object p0
.end method

.method public addSourceFiles(Lcom/google/protobuf/Any$Builder;)Lcom/google/api/SourceInfo$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Any$Builder;

    .line 352
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 353
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-virtual {p1}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Any;

    invoke-static {v0, v1}, Lcom/google/api/SourceInfo;->access$200(Lcom/google/api/SourceInfo;Lcom/google/protobuf/Any;)V

    .line 354
    return-object p0
.end method

.method public addSourceFiles(Lcom/google/protobuf/Any;)Lcom/google/api/SourceInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Any;

    .line 326
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 327
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-static {v0, p1}, Lcom/google/api/SourceInfo;->access$200(Lcom/google/api/SourceInfo;Lcom/google/protobuf/Any;)V

    .line 328
    return-object p0
.end method

.method public clearSourceFiles()Lcom/google/api/SourceInfo$Builder;
    .locals 1

    .line 391
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 392
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-static {v0}, Lcom/google/api/SourceInfo;->access$500(Lcom/google/api/SourceInfo;)V

    .line 393
    return-object p0
.end method

.method public getSourceFiles(I)Lcom/google/protobuf/Any;
    .locals 1
    .param p1, "index"    # I

    .line 289
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-virtual {v0, p1}, Lcom/google/api/SourceInfo;->getSourceFiles(I)Lcom/google/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public getSourceFilesCount()I
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-virtual {v0}, Lcom/google/api/SourceInfo;->getSourceFilesCount()I

    move-result v0

    return v0
.end method

.method public getSourceFilesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    .line 268
    invoke-virtual {v0}, Lcom/google/api/SourceInfo;->getSourceFilesList()Ljava/util/List;

    move-result-object v0

    .line 267
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeSourceFiles(I)Lcom/google/api/SourceInfo$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 403
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 404
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-static {v0, p1}, Lcom/google/api/SourceInfo;->access$600(Lcom/google/api/SourceInfo;I)V

    .line 405
    return-object p0
.end method

.method public setSourceFiles(ILcom/google/protobuf/Any$Builder;)Lcom/google/api/SourceInfo$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Any$Builder;

    .line 313
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 314
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    .line 315
    invoke-virtual {p2}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Any;

    .line 314
    invoke-static {v0, p1, v1}, Lcom/google/api/SourceInfo;->access$100(Lcom/google/api/SourceInfo;ILcom/google/protobuf/Any;)V

    .line 316
    return-object p0
.end method

.method public setSourceFiles(ILcom/google/protobuf/Any;)Lcom/google/api/SourceInfo$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Any;

    .line 300
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 301
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-static {v0, p1, p2}, Lcom/google/api/SourceInfo;->access$100(Lcom/google/api/SourceInfo;ILcom/google/protobuf/Any;)V

    .line 302
    return-object p0
.end method
