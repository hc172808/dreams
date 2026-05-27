.class public final Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$SourceCodeInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;",
        "Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$SourceCodeInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29135
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->access$44700()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 29136
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/DescriptorProtos$1;

    .line 29128
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllLocation(Ljava/lang/Iterable;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;",
            ">;)",
            "Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;"
        }
    .end annotation

    .line 29660
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->copyOnWrite()V

    .line 29661
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->access$45100(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;Ljava/lang/Iterable;)V

    .line 29662
    return-object p0
.end method

.method public addLocation(ILcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    .line 29606
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->copyOnWrite()V

    .line 29607
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    .line 29608
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 29607
    invoke-static {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->access$45000(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;ILcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)V

    .line 29609
    return-object p0
.end method

.method public addLocation(ILcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 29500
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->copyOnWrite()V

    .line 29501
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->access$45000(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;ILcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)V

    .line 29502
    return-object p0
.end method

.method public addLocation(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    .line 29553
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->copyOnWrite()V

    .line 29554
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-static {v0, v1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->access$44900(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)V

    .line 29555
    return-object p0
.end method

.method public addLocation(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 29447
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->copyOnWrite()V

    .line 29448
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->access$44900(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)V

    .line 29449
    return-object p0
.end method

.method public clearLocation()Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 1

    .line 29712
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->copyOnWrite()V

    .line 29713
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->access$45200(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;)V

    .line 29714
    return-object p0
.end method

.method public getLocation(I)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1
    .param p1, "index"    # I

    .line 29290
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->getLocation(I)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    return-object v0
.end method

.method public getLocationCount()I
    .locals 1

    .line 29240
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->getLocationCount()I

    move-result v0

    return v0
.end method

.method public getLocationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;",
            ">;"
        }
    .end annotation

    .line 29188
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    .line 29189
    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->getLocationList()Ljava/util/List;

    move-result-object v0

    .line 29188
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeLocation(I)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 29764
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->copyOnWrite()V

    .line 29765
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->access$45300(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;I)V

    .line 29766
    return-object p0
.end method

.method public setLocation(ILcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    .line 29394
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->copyOnWrite()V

    .line 29395
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    .line 29396
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 29395
    invoke-static {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->access$44800(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;ILcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)V

    .line 29397
    return-object p0
.end method

.method public setLocation(ILcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 29341
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->copyOnWrite()V

    .line 29342
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;->access$44800(Lcom/google/protobuf/DescriptorProtos$SourceCodeInfo;ILcom/google/protobuf/DescriptorProtos$SourceCodeInfo$Location;)V

    .line 29343
    return-object p0
.end method
