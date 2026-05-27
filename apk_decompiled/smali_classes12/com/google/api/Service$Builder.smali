.class public final Lcom/google/api/Service$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Service.java"

# interfaces
.implements Lcom/google/api/ServiceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Service;",
        "Lcom/google/api/Service$Builder;",
        ">;",
        "Lcom/google/api/ServiceOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2562
    invoke-static {}, Lcom/google/api/Service;->access$000()Lcom/google/api/Service;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2563
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Service$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/Service$1;

    .line 2555
    invoke-direct {p0}, Lcom/google/api/Service$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllApis(Ljava/lang/Iterable;)Lcom/google/api/Service$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Api;",
            ">;)",
            "Lcom/google/api/Service$Builder;"
        }
    .end annotation

    .line 3117
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Api;>;"
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3118
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$1900(Lcom/google/api/Service;Ljava/lang/Iterable;)V

    .line 3119
    return-object p0
.end method

.method public addAllEndpoints(Ljava/lang/Iterable;)Lcom/google/api/Service$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Endpoint;",
            ">;)",
            "Lcom/google/api/Service$Builder;"
        }
    .end annotation

    .line 4224
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/Endpoint;>;"
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4225
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$5800(Lcom/google/api/Service;Ljava/lang/Iterable;)V

    .line 4226
    return-object p0
.end method

.method public addAllEnums(Ljava/lang/Iterable;)Lcom/google/api/Service$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Enum;",
            ">;)",
            "Lcom/google/api/Service$Builder;"
        }
    .end annotation

    .line 3547
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Enum;>;"
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3548
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$3100(Lcom/google/api/Service;Ljava/lang/Iterable;)V

    .line 3549
    return-object p0
.end method

.method public addAllLogs(Ljava/lang/Iterable;)Lcom/google/api/Service$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/LogDescriptor;",
            ">;)",
            "Lcom/google/api/Service$Builder;"
        }
    .end annotation

    .line 4449
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/LogDescriptor;>;"
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4450
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$6700(Lcom/google/api/Service;Ljava/lang/Iterable;)V

    .line 4451
    return-object p0
.end method

.method public addAllMetrics(Ljava/lang/Iterable;)Lcom/google/api/Service$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/MetricDescriptor;",
            ">;)",
            "Lcom/google/api/Service$Builder;"
        }
    .end annotation

    .line 4599
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/MetricDescriptor;>;"
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4600
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$7300(Lcom/google/api/Service;Ljava/lang/Iterable;)V

    .line 4601
    return-object p0
.end method

.method public addAllMonitoredResources(Ljava/lang/Iterable;)Lcom/google/api/Service$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/MonitoredResourceDescriptor;",
            ">;)",
            "Lcom/google/api/Service$Builder;"
        }
    .end annotation

    .line 4759
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/MonitoredResourceDescriptor;>;"
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4760
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$7900(Lcom/google/api/Service;Ljava/lang/Iterable;)V

    .line 4761
    return-object p0
.end method

.method public addAllTypes(Ljava/lang/Iterable;)Lcom/google/api/Service$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Type;",
            ">;)",
            "Lcom/google/api/Service$Builder;"
        }
    .end annotation

    .line 3335
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Type;>;"
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3336
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$2500(Lcom/google/api/Service;Ljava/lang/Iterable;)V

    .line 3337
    return-object p0
.end method

.method public addApis(ILcom/google/protobuf/Api$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Api$Builder;

    .line 3099
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3100
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 3101
    invoke-virtual {p2}, Lcom/google/protobuf/Api$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Api;

    .line 3100
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$1800(Lcom/google/api/Service;ILcom/google/protobuf/Api;)V

    .line 3102
    return-object p0
.end method

.method public addApis(ILcom/google/protobuf/Api;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Api;

    .line 3065
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3066
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$1800(Lcom/google/api/Service;ILcom/google/protobuf/Api;)V

    .line 3067
    return-object p0
.end method

.method public addApis(Lcom/google/protobuf/Api$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Api$Builder;

    .line 3082
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3083
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/protobuf/Api$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Api;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$1700(Lcom/google/api/Service;Lcom/google/protobuf/Api;)V

    .line 3084
    return-object p0
.end method

.method public addApis(Lcom/google/protobuf/Api;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Api;

    .line 3048
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3049
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$1700(Lcom/google/api/Service;Lcom/google/protobuf/Api;)V

    .line 3050
    return-object p0
.end method

.method public addEndpoints(ILcom/google/api/Endpoint$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/Endpoint$Builder;

    .line 4208
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4209
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4210
    invoke-virtual {p2}, Lcom/google/api/Endpoint$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Endpoint;

    .line 4209
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$5700(Lcom/google/api/Service;ILcom/google/api/Endpoint;)V

    .line 4211
    return-object p0
.end method

.method public addEndpoints(ILcom/google/api/Endpoint;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Endpoint;

    .line 4178
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4179
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$5700(Lcom/google/api/Service;ILcom/google/api/Endpoint;)V

    .line 4180
    return-object p0
.end method

.method public addEndpoints(Lcom/google/api/Endpoint$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Endpoint$Builder;

    .line 4193
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4194
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Endpoint$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Endpoint;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$5600(Lcom/google/api/Service;Lcom/google/api/Endpoint;)V

    .line 4195
    return-object p0
.end method

.method public addEndpoints(Lcom/google/api/Endpoint;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Endpoint;

    .line 4163
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4164
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$5600(Lcom/google/api/Service;Lcom/google/api/Endpoint;)V

    .line 4165
    return-object p0
.end method

.method public addEnums(ILcom/google/protobuf/Enum$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Enum$Builder;

    .line 3528
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3529
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 3530
    invoke-virtual {p2}, Lcom/google/protobuf/Enum$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Enum;

    .line 3529
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$3000(Lcom/google/api/Service;ILcom/google/protobuf/Enum;)V

    .line 3531
    return-object p0
.end method

.method public addEnums(ILcom/google/protobuf/Enum;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Enum;

    .line 3492
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3493
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$3000(Lcom/google/api/Service;ILcom/google/protobuf/Enum;)V

    .line 3494
    return-object p0
.end method

.method public addEnums(Lcom/google/protobuf/Enum$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Enum$Builder;

    .line 3510
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3511
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/protobuf/Enum$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Enum;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$2900(Lcom/google/api/Service;Lcom/google/protobuf/Enum;)V

    .line 3512
    return-object p0
.end method

.method public addEnums(Lcom/google/protobuf/Enum;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Enum;

    .line 3474
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3475
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$2900(Lcom/google/api/Service;Lcom/google/protobuf/Enum;)V

    .line 3476
    return-object p0
.end method

.method public addLogs(ILcom/google/api/LogDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/LogDescriptor$Builder;

    .line 4435
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4436
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4437
    invoke-virtual {p2}, Lcom/google/api/LogDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/LogDescriptor;

    .line 4436
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$6600(Lcom/google/api/Service;ILcom/google/api/LogDescriptor;)V

    .line 4438
    return-object p0
.end method

.method public addLogs(ILcom/google/api/LogDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/LogDescriptor;

    .line 4409
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4410
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$6600(Lcom/google/api/Service;ILcom/google/api/LogDescriptor;)V

    .line 4411
    return-object p0
.end method

.method public addLogs(Lcom/google/api/LogDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/LogDescriptor$Builder;

    .line 4422
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4423
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/LogDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/LogDescriptor;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$6500(Lcom/google/api/Service;Lcom/google/api/LogDescriptor;)V

    .line 4424
    return-object p0
.end method

.method public addLogs(Lcom/google/api/LogDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/LogDescriptor;

    .line 4396
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4397
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$6500(Lcom/google/api/Service;Lcom/google/api/LogDescriptor;)V

    .line 4398
    return-object p0
.end method

.method public addMetrics(ILcom/google/api/MetricDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/MetricDescriptor$Builder;

    .line 4585
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4586
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4587
    invoke-virtual {p2}, Lcom/google/api/MetricDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/MetricDescriptor;

    .line 4586
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$7200(Lcom/google/api/Service;ILcom/google/api/MetricDescriptor;)V

    .line 4588
    return-object p0
.end method

.method public addMetrics(ILcom/google/api/MetricDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/MetricDescriptor;

    .line 4559
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4560
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$7200(Lcom/google/api/Service;ILcom/google/api/MetricDescriptor;)V

    .line 4561
    return-object p0
.end method

.method public addMetrics(Lcom/google/api/MetricDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/MetricDescriptor$Builder;

    .line 4572
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4573
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/MetricDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/MetricDescriptor;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$7100(Lcom/google/api/Service;Lcom/google/api/MetricDescriptor;)V

    .line 4574
    return-object p0
.end method

.method public addMetrics(Lcom/google/api/MetricDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/MetricDescriptor;

    .line 4546
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4547
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$7100(Lcom/google/api/Service;Lcom/google/api/MetricDescriptor;)V

    .line 4548
    return-object p0
.end method

.method public addMonitoredResources(ILcom/google/api/MonitoredResourceDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/MonitoredResourceDescriptor$Builder;

    .line 4744
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4745
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4746
    invoke-virtual {p2}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/MonitoredResourceDescriptor;

    .line 4745
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$7800(Lcom/google/api/Service;ILcom/google/api/MonitoredResourceDescriptor;)V

    .line 4747
    return-object p0
.end method

.method public addMonitoredResources(ILcom/google/api/MonitoredResourceDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/MonitoredResourceDescriptor;

    .line 4716
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4717
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$7800(Lcom/google/api/Service;ILcom/google/api/MonitoredResourceDescriptor;)V

    .line 4718
    return-object p0
.end method

.method public addMonitoredResources(Lcom/google/api/MonitoredResourceDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/MonitoredResourceDescriptor$Builder;

    .line 4730
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4731
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/MonitoredResourceDescriptor;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$7700(Lcom/google/api/Service;Lcom/google/api/MonitoredResourceDescriptor;)V

    .line 4732
    return-object p0
.end method

.method public addMonitoredResources(Lcom/google/api/MonitoredResourceDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/MonitoredResourceDescriptor;

    .line 4702
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4703
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$7700(Lcom/google/api/Service;Lcom/google/api/MonitoredResourceDescriptor;)V

    .line 4704
    return-object p0
.end method

.method public addTypes(ILcom/google/protobuf/Type$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Type$Builder;

    .line 3315
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3316
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 3317
    invoke-virtual {p2}, Lcom/google/protobuf/Type$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Type;

    .line 3316
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$2400(Lcom/google/api/Service;ILcom/google/protobuf/Type;)V

    .line 3318
    return-object p0
.end method

.method public addTypes(ILcom/google/protobuf/Type;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Type;

    .line 3277
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3278
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$2400(Lcom/google/api/Service;ILcom/google/protobuf/Type;)V

    .line 3279
    return-object p0
.end method

.method public addTypes(Lcom/google/protobuf/Type$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Type$Builder;

    .line 3296
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3297
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/protobuf/Type$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Type;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$2300(Lcom/google/api/Service;Lcom/google/protobuf/Type;)V

    .line 3298
    return-object p0
.end method

.method public addTypes(Lcom/google/protobuf/Type;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Type;

    .line 3258
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3259
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$2300(Lcom/google/api/Service;Lcom/google/protobuf/Type;)V

    .line 3260
    return-object p0
.end method

.method public clearApis()Lcom/google/api/Service$Builder;
    .locals 1

    .line 3133
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3134
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$2000(Lcom/google/api/Service;)V

    .line 3135
    return-object p0
.end method

.method public clearAuthentication()Lcom/google/api/Service$Builder;
    .locals 1

    .line 3936
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3937
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$4800(Lcom/google/api/Service;)V

    .line 3938
    return-object p0
.end method

.method public clearBackend()Lcom/google/api/Service$Builder;
    .locals 1

    .line 3723
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3724
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$3900(Lcom/google/api/Service;)V

    .line 3725
    return-object p0
.end method

.method public clearBilling()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4856
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4857
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$8400(Lcom/google/api/Service;)V

    .line 4858
    return-object p0
.end method

.method public clearConfigVersion()Lcom/google/api/Service$Builder;
    .locals 1

    .line 2650
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2651
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$300(Lcom/google/api/Service;)V

    .line 2652
    return-object p0
.end method

.method public clearContext()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4007
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4008
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$5100(Lcom/google/api/Service;)V

    .line 4009
    return-object p0
.end method

.method public clearControl()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4323
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4324
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$6300(Lcom/google/api/Service;)V

    .line 4325
    return-object p0
.end method

.method public clearDocumentation()Lcom/google/api/Service$Builder;
    .locals 1

    .line 3652
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3653
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$3600(Lcom/google/api/Service;)V

    .line 3654
    return-object p0
.end method

.method public clearEndpoints()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4238
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4239
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$5900(Lcom/google/api/Service;)V

    .line 4240
    return-object p0
.end method

.method public clearEnums()Lcom/google/api/Service$Builder;
    .locals 1

    .line 3564
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3565
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$3200(Lcom/google/api/Service;)V

    .line 3566
    return-object p0
.end method

.method public clearHttp()Lcom/google/api/Service$Builder;
    .locals 1

    .line 3794
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3795
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$4200(Lcom/google/api/Service;)V

    .line 3796
    return-object p0
.end method

.method public clearId()Lcom/google/api/Service$Builder;
    .locals 1

    .line 2796
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2797
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$800(Lcom/google/api/Service;)V

    .line 2798
    return-object p0
.end method

.method public clearLogging()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4927
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4928
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$8700(Lcom/google/api/Service;)V

    .line 4929
    return-object p0
.end method

.method public clearLogs()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4461
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4462
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$6800(Lcom/google/api/Service;)V

    .line 4463
    return-object p0
.end method

.method public clearMetrics()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4611
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4612
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$7400(Lcom/google/api/Service;)V

    .line 4613
    return-object p0
.end method

.method public clearMonitoredResources()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4772
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4773
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$8000(Lcom/google/api/Service;)V

    .line 4774
    return-object p0
.end method

.method public clearMonitoring()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4998
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4999
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$9000(Lcom/google/api/Service;)V

    .line 5000
    return-object p0
.end method

.method public clearName()Lcom/google/api/Service$Builder;
    .locals 1

    .line 2716
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2717
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$500(Lcom/google/api/Service;)V

    .line 2718
    return-object p0
.end method

.method public clearProducerProjectId()Lcom/google/api/Service$Builder;
    .locals 1

    .line 2936
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2937
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$1400(Lcom/google/api/Service;)V

    .line 2938
    return-object p0
.end method

.method public clearQuota()Lcom/google/api/Service$Builder;
    .locals 1

    .line 3865
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3866
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$4500(Lcom/google/api/Service;)V

    .line 3867
    return-object p0
.end method

.method public clearSourceInfo()Lcom/google/api/Service$Builder;
    .locals 1

    .line 5140
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5141
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$9600(Lcom/google/api/Service;)V

    .line 5142
    return-object p0
.end method

.method public clearSystemParameters()Lcom/google/api/Service$Builder;
    .locals 1

    .line 5069
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5070
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$9300(Lcom/google/api/Service;)V

    .line 5071
    return-object p0
.end method

.method public clearTitle()Lcom/google/api/Service$Builder;
    .locals 1

    .line 2867
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2868
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$1100(Lcom/google/api/Service;)V

    .line 2869
    return-object p0
.end method

.method public clearTypes()Lcom/google/api/Service$Builder;
    .locals 1

    .line 3353
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3354
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$2600(Lcom/google/api/Service;)V

    .line 3355
    return-object p0
.end method

.method public clearUsage()Lcom/google/api/Service$Builder;
    .locals 1

    .line 4078
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4079
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0}, Lcom/google/api/Service;->access$5400(Lcom/google/api/Service;)V

    .line 4080
    return-object p0
.end method

.method public getApis(I)Lcom/google/protobuf/Api;
    .locals 1
    .param p1, "index"    # I

    .line 2999
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0, p1}, Lcom/google/api/Service;->getApis(I)Lcom/google/protobuf/Api;

    move-result-object v0

    return-object v0
.end method

.method public getApisCount()I
    .locals 1

    .line 2985
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getApisCount()I

    move-result v0

    return v0
.end method

.method public getApisList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Api;",
            ">;"
        }
    .end annotation

    .line 2969
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 2970
    invoke-virtual {v0}, Lcom/google/api/Service;->getApisList()Ljava/util/List;

    move-result-object v0

    .line 2969
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAuthentication()Lcom/google/api/Authentication;
    .locals 1

    .line 3890
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getAuthentication()Lcom/google/api/Authentication;

    move-result-object v0

    return-object v0
.end method

.method public getBackend()Lcom/google/api/Backend;
    .locals 1

    .line 3677
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getBackend()Lcom/google/api/Backend;

    move-result-object v0

    return-object v0
.end method

.method public getBilling()Lcom/google/api/Billing;
    .locals 1

    .line 4810
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getBilling()Lcom/google/api/Billing;

    move-result-object v0

    return-object v0
.end method

.method public getConfigVersion()Lcom/google/protobuf/UInt32Value;
    .locals 1

    .line 2592
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getConfigVersion()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lcom/google/api/Context;
    .locals 1

    .line 3961
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getContext()Lcom/google/api/Context;

    move-result-object v0

    return-object v0
.end method

.method public getControl()Lcom/google/api/Control;
    .locals 1

    .line 4277
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getControl()Lcom/google/api/Control;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentation()Lcom/google/api/Documentation;
    .locals 1

    .line 3606
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getDocumentation()Lcom/google/api/Documentation;

    move-result-object v0

    return-object v0
.end method

.method public getEndpoints(I)Lcom/google/api/Endpoint;
    .locals 1
    .param p1, "index"    # I

    .line 4120
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0, p1}, Lcom/google/api/Service;->getEndpoints(I)Lcom/google/api/Endpoint;

    move-result-object v0

    return-object v0
.end method

.method public getEndpointsCount()I
    .locals 1

    .line 4108
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getEndpointsCount()I

    move-result v0

    return v0
.end method

.method public getEndpointsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Endpoint;",
            ">;"
        }
    .end annotation

    .line 4094
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4095
    invoke-virtual {v0}, Lcom/google/api/Service;->getEndpointsList()Ljava/util/List;

    move-result-object v0

    .line 4094
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnums(I)Lcom/google/protobuf/Enum;
    .locals 1
    .param p1, "index"    # I

    .line 3422
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0, p1}, Lcom/google/api/Service;->getEnums(I)Lcom/google/protobuf/Enum;

    move-result-object v0

    return-object v0
.end method

.method public getEnumsCount()I
    .locals 1

    .line 3407
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getEnumsCount()I

    move-result v0

    return v0
.end method

.method public getEnumsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Enum;",
            ">;"
        }
    .end annotation

    .line 3390
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 3391
    invoke-virtual {v0}, Lcom/google/api/Service;->getEnumsList()Ljava/util/List;

    move-result-object v0

    .line 3390
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHttp()Lcom/google/api/Http;
    .locals 1

    .line 3748
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getHttp()Lcom/google/api/Http;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 2751
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2766
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLogging()Lcom/google/api/Logging;
    .locals 1

    .line 4881
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getLogging()Lcom/google/api/Logging;

    move-result-object v0

    return-object v0
.end method

.method public getLogs(I)Lcom/google/api/LogDescriptor;
    .locals 1
    .param p1, "index"    # I

    .line 4359
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0, p1}, Lcom/google/api/Service;->getLogs(I)Lcom/google/api/LogDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLogsCount()I
    .locals 1

    .line 4349
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getLogsCount()I

    move-result v0

    return v0
.end method

.method public getLogsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/LogDescriptor;",
            ">;"
        }
    .end annotation

    .line 4337
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4338
    invoke-virtual {v0}, Lcom/google/api/Service;->getLogsList()Ljava/util/List;

    move-result-object v0

    .line 4337
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMetrics(I)Lcom/google/api/MetricDescriptor;
    .locals 1
    .param p1, "index"    # I

    .line 4509
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0, p1}, Lcom/google/api/Service;->getMetrics(I)Lcom/google/api/MetricDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCount()I
    .locals 1

    .line 4499
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getMetricsCount()I

    move-result v0

    return v0
.end method

.method public getMetricsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/MetricDescriptor;",
            ">;"
        }
    .end annotation

    .line 4487
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4488
    invoke-virtual {v0}, Lcom/google/api/Service;->getMetricsList()Ljava/util/List;

    move-result-object v0

    .line 4487
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMonitoredResources(I)Lcom/google/api/MonitoredResourceDescriptor;
    .locals 1
    .param p1, "index"    # I

    .line 4662
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0, p1}, Lcom/google/api/Service;->getMonitoredResources(I)Lcom/google/api/MonitoredResourceDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMonitoredResourcesCount()I
    .locals 1

    .line 4651
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getMonitoredResourcesCount()I

    move-result v0

    return v0
.end method

.method public getMonitoredResourcesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/MonitoredResourceDescriptor;",
            ">;"
        }
    .end annotation

    .line 4638
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4639
    invoke-virtual {v0}, Lcom/google/api/Service;->getMonitoredResourcesList()Ljava/util/List;

    move-result-object v0

    .line 4638
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMonitoring()Lcom/google/api/Monitoring;
    .locals 1

    .line 4952
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getMonitoring()Lcom/google/api/Monitoring;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 2668
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2684
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getProducerProjectId()Ljava/lang/String;
    .locals 1

    .line 2897
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getProducerProjectId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProducerProjectIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2910
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getProducerProjectIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQuota()Lcom/google/api/Quota;
    .locals 1

    .line 3819
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getQuota()Lcom/google/api/Quota;

    move-result-object v0

    return-object v0
.end method

.method public getSourceInfo()Lcom/google/api/SourceInfo;
    .locals 1

    .line 5094
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getSourceInfo()Lcom/google/api/SourceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSystemParameters()Lcom/google/api/SystemParameters;
    .locals 1

    .line 5023
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getSystemParameters()Lcom/google/api/SystemParameters;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 2828
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2841
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getTitleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTypes(I)Lcom/google/protobuf/Type;
    .locals 1
    .param p1, "index"    # I

    .line 3203
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0, p1}, Lcom/google/api/Service;->getTypes(I)Lcom/google/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method public getTypesCount()I
    .locals 1

    .line 3187
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getTypesCount()I

    move-result v0

    return v0
.end method

.method public getTypesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Type;",
            ">;"
        }
    .end annotation

    .line 3169
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 3170
    invoke-virtual {v0}, Lcom/google/api/Service;->getTypesList()Ljava/util/List;

    move-result-object v0

    .line 3169
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUsage()Lcom/google/api/Usage;
    .locals 1

    .line 4032
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->getUsage()Lcom/google/api/Usage;

    move-result-object v0

    return-object v0
.end method

.method public hasAuthentication()Z
    .locals 1

    .line 3879
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasAuthentication()Z

    move-result v0

    return v0
.end method

.method public hasBackend()Z
    .locals 1

    .line 3666
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasBackend()Z

    move-result v0

    return v0
.end method

.method public hasBilling()Z
    .locals 1

    .line 4799
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasBilling()Z

    move-result v0

    return v0
.end method

.method public hasConfigVersion()Z
    .locals 1

    .line 2578
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasConfigVersion()Z

    move-result v0

    return v0
.end method

.method public hasContext()Z
    .locals 1

    .line 3950
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasContext()Z

    move-result v0

    return v0
.end method

.method public hasControl()Z
    .locals 1

    .line 4266
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasControl()Z

    move-result v0

    return v0
.end method

.method public hasDocumentation()Z
    .locals 1

    .line 3595
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasDocumentation()Z

    move-result v0

    return v0
.end method

.method public hasHttp()Z
    .locals 1

    .line 3737
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasHttp()Z

    move-result v0

    return v0
.end method

.method public hasLogging()Z
    .locals 1

    .line 4870
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasLogging()Z

    move-result v0

    return v0
.end method

.method public hasMonitoring()Z
    .locals 1

    .line 4941
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasMonitoring()Z

    move-result v0

    return v0
.end method

.method public hasQuota()Z
    .locals 1

    .line 3808
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasQuota()Z

    move-result v0

    return v0
.end method

.method public hasSourceInfo()Z
    .locals 1

    .line 5083
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasSourceInfo()Z

    move-result v0

    return v0
.end method

.method public hasSystemParameters()Z
    .locals 1

    .line 5012
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasSystemParameters()Z

    move-result v0

    return v0
.end method

.method public hasUsage()Z
    .locals 1

    .line 4021
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {v0}, Lcom/google/api/Service;->hasUsage()Z

    move-result v0

    return v0
.end method

.method public mergeAuthentication(Lcom/google/api/Authentication;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Authentication;

    .line 3925
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3926
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$4700(Lcom/google/api/Service;Lcom/google/api/Authentication;)V

    .line 3927
    return-object p0
.end method

.method public mergeBackend(Lcom/google/api/Backend;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Backend;

    .line 3712
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3713
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$3800(Lcom/google/api/Service;Lcom/google/api/Backend;)V

    .line 3714
    return-object p0
.end method

.method public mergeBilling(Lcom/google/api/Billing;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Billing;

    .line 4845
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4846
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$8300(Lcom/google/api/Service;Lcom/google/api/Billing;)V

    .line 4847
    return-object p0
.end method

.method public mergeConfigVersion(Lcom/google/protobuf/UInt32Value;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/UInt32Value;

    .line 2636
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2637
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$200(Lcom/google/api/Service;Lcom/google/protobuf/UInt32Value;)V

    .line 2638
    return-object p0
.end method

.method public mergeContext(Lcom/google/api/Context;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Context;

    .line 3996
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3997
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$5000(Lcom/google/api/Service;Lcom/google/api/Context;)V

    .line 3998
    return-object p0
.end method

.method public mergeControl(Lcom/google/api/Control;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Control;

    .line 4312
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4313
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$6200(Lcom/google/api/Service;Lcom/google/api/Control;)V

    .line 4314
    return-object p0
.end method

.method public mergeDocumentation(Lcom/google/api/Documentation;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Documentation;

    .line 3641
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3642
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$3500(Lcom/google/api/Service;Lcom/google/api/Documentation;)V

    .line 3643
    return-object p0
.end method

.method public mergeHttp(Lcom/google/api/Http;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Http;

    .line 3783
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3784
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$4100(Lcom/google/api/Service;Lcom/google/api/Http;)V

    .line 3785
    return-object p0
.end method

.method public mergeLogging(Lcom/google/api/Logging;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Logging;

    .line 4916
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4917
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$8600(Lcom/google/api/Service;Lcom/google/api/Logging;)V

    .line 4918
    return-object p0
.end method

.method public mergeMonitoring(Lcom/google/api/Monitoring;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Monitoring;

    .line 4987
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4988
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$8900(Lcom/google/api/Service;Lcom/google/api/Monitoring;)V

    .line 4989
    return-object p0
.end method

.method public mergeQuota(Lcom/google/api/Quota;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Quota;

    .line 3854
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3855
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$4400(Lcom/google/api/Service;Lcom/google/api/Quota;)V

    .line 3856
    return-object p0
.end method

.method public mergeSourceInfo(Lcom/google/api/SourceInfo;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/SourceInfo;

    .line 5129
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5130
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$9500(Lcom/google/api/Service;Lcom/google/api/SourceInfo;)V

    .line 5131
    return-object p0
.end method

.method public mergeSystemParameters(Lcom/google/api/SystemParameters;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/SystemParameters;

    .line 5058
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5059
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$9200(Lcom/google/api/Service;Lcom/google/api/SystemParameters;)V

    .line 5060
    return-object p0
.end method

.method public mergeUsage(Lcom/google/api/Usage;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Usage;

    .line 4067
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4068
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$5300(Lcom/google/api/Service;Lcom/google/api/Usage;)V

    .line 4069
    return-object p0
.end method

.method public removeApis(I)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 3149
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3150
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$2100(Lcom/google/api/Service;I)V

    .line 3151
    return-object p0
.end method

.method public removeEndpoints(I)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 4252
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4253
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$6000(Lcom/google/api/Service;I)V

    .line 4254
    return-object p0
.end method

.method public removeEnums(I)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 3581
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3582
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$3300(Lcom/google/api/Service;I)V

    .line 3583
    return-object p0
.end method

.method public removeLogs(I)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 4473
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4474
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$6900(Lcom/google/api/Service;I)V

    .line 4475
    return-object p0
.end method

.method public removeMetrics(I)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 4623
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4624
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$7500(Lcom/google/api/Service;I)V

    .line 4625
    return-object p0
.end method

.method public removeMonitoredResources(I)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 4785
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4786
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$8100(Lcom/google/api/Service;I)V

    .line 4787
    return-object p0
.end method

.method public removeTypes(I)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 3371
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3372
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$2700(Lcom/google/api/Service;I)V

    .line 3373
    return-object p0
.end method

.method public setApis(ILcom/google/protobuf/Api$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Api$Builder;

    .line 3031
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3032
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 3033
    invoke-virtual {p2}, Lcom/google/protobuf/Api$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Api;

    .line 3032
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$1600(Lcom/google/api/Service;ILcom/google/protobuf/Api;)V

    .line 3034
    return-object p0
.end method

.method public setApis(ILcom/google/protobuf/Api;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Api;

    .line 3014
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3015
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$1600(Lcom/google/api/Service;ILcom/google/protobuf/Api;)V

    .line 3016
    return-object p0
.end method

.method public setAuthentication(Lcom/google/api/Authentication$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Authentication$Builder;

    .line 3913
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3914
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Authentication$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Authentication;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$4600(Lcom/google/api/Service;Lcom/google/api/Authentication;)V

    .line 3915
    return-object p0
.end method

.method public setAuthentication(Lcom/google/api/Authentication;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Authentication;

    .line 3900
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3901
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$4600(Lcom/google/api/Service;Lcom/google/api/Authentication;)V

    .line 3902
    return-object p0
.end method

.method public setBackend(Lcom/google/api/Backend$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Backend$Builder;

    .line 3700
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3701
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Backend$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Backend;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$3700(Lcom/google/api/Service;Lcom/google/api/Backend;)V

    .line 3702
    return-object p0
.end method

.method public setBackend(Lcom/google/api/Backend;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Backend;

    .line 3687
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3688
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$3700(Lcom/google/api/Service;Lcom/google/api/Backend;)V

    .line 3689
    return-object p0
.end method

.method public setBilling(Lcom/google/api/Billing$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Billing$Builder;

    .line 4833
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4834
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Billing$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Billing;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$8200(Lcom/google/api/Service;Lcom/google/api/Billing;)V

    .line 4835
    return-object p0
.end method

.method public setBilling(Lcom/google/api/Billing;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Billing;

    .line 4820
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4821
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$8200(Lcom/google/api/Service;Lcom/google/api/Billing;)V

    .line 4822
    return-object p0
.end method

.method public setConfigVersion(Lcom/google/protobuf/UInt32Value$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/UInt32Value$Builder;

    .line 2621
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2622
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/protobuf/UInt32Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/UInt32Value;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$100(Lcom/google/api/Service;Lcom/google/protobuf/UInt32Value;)V

    .line 2623
    return-object p0
.end method

.method public setConfigVersion(Lcom/google/protobuf/UInt32Value;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/UInt32Value;

    .line 2605
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2606
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$100(Lcom/google/api/Service;Lcom/google/protobuf/UInt32Value;)V

    .line 2607
    return-object p0
.end method

.method public setContext(Lcom/google/api/Context$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Context$Builder;

    .line 3984
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3985
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Context$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Context;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$4900(Lcom/google/api/Service;Lcom/google/api/Context;)V

    .line 3986
    return-object p0
.end method

.method public setContext(Lcom/google/api/Context;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Context;

    .line 3971
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3972
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$4900(Lcom/google/api/Service;Lcom/google/api/Context;)V

    .line 3973
    return-object p0
.end method

.method public setControl(Lcom/google/api/Control$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Control$Builder;

    .line 4300
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4301
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Control$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Control;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$6100(Lcom/google/api/Service;Lcom/google/api/Control;)V

    .line 4302
    return-object p0
.end method

.method public setControl(Lcom/google/api/Control;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Control;

    .line 4287
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4288
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$6100(Lcom/google/api/Service;Lcom/google/api/Control;)V

    .line 4289
    return-object p0
.end method

.method public setDocumentation(Lcom/google/api/Documentation$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Documentation$Builder;

    .line 3629
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3630
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Documentation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Documentation;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$3400(Lcom/google/api/Service;Lcom/google/api/Documentation;)V

    .line 3631
    return-object p0
.end method

.method public setDocumentation(Lcom/google/api/Documentation;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Documentation;

    .line 3616
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3617
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$3400(Lcom/google/api/Service;Lcom/google/api/Documentation;)V

    .line 3618
    return-object p0
.end method

.method public setEndpoints(ILcom/google/api/Endpoint$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/Endpoint$Builder;

    .line 4148
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4149
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4150
    invoke-virtual {p2}, Lcom/google/api/Endpoint$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Endpoint;

    .line 4149
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$5500(Lcom/google/api/Service;ILcom/google/api/Endpoint;)V

    .line 4151
    return-object p0
.end method

.method public setEndpoints(ILcom/google/api/Endpoint;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Endpoint;

    .line 4133
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4134
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$5500(Lcom/google/api/Service;ILcom/google/api/Endpoint;)V

    .line 4135
    return-object p0
.end method

.method public setEnums(ILcom/google/protobuf/Enum$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Enum$Builder;

    .line 3456
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3457
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 3458
    invoke-virtual {p2}, Lcom/google/protobuf/Enum$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Enum;

    .line 3457
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$2800(Lcom/google/api/Service;ILcom/google/protobuf/Enum;)V

    .line 3459
    return-object p0
.end method

.method public setEnums(ILcom/google/protobuf/Enum;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Enum;

    .line 3438
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3439
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$2800(Lcom/google/api/Service;ILcom/google/protobuf/Enum;)V

    .line 3440
    return-object p0
.end method

.method public setHttp(Lcom/google/api/Http$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Http$Builder;

    .line 3771
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3772
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Http$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Http;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$4000(Lcom/google/api/Service;Lcom/google/api/Http;)V

    .line 3773
    return-object p0
.end method

.method public setHttp(Lcom/google/api/Http;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Http;

    .line 3758
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3759
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$4000(Lcom/google/api/Service;Lcom/google/api/Http;)V

    .line 3760
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2781
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2782
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$700(Lcom/google/api/Service;Ljava/lang/String;)V

    .line 2783
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2813
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2814
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$900(Lcom/google/api/Service;Lcom/google/protobuf/ByteString;)V

    .line 2815
    return-object p0
.end method

.method public setLogging(Lcom/google/api/Logging$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Logging$Builder;

    .line 4904
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4905
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Logging$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Logging;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$8500(Lcom/google/api/Service;Lcom/google/api/Logging;)V

    .line 4906
    return-object p0
.end method

.method public setLogging(Lcom/google/api/Logging;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Logging;

    .line 4891
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4892
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$8500(Lcom/google/api/Service;Lcom/google/api/Logging;)V

    .line 4893
    return-object p0
.end method

.method public setLogs(ILcom/google/api/LogDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/LogDescriptor$Builder;

    .line 4383
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4384
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4385
    invoke-virtual {p2}, Lcom/google/api/LogDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/LogDescriptor;

    .line 4384
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$6400(Lcom/google/api/Service;ILcom/google/api/LogDescriptor;)V

    .line 4386
    return-object p0
.end method

.method public setLogs(ILcom/google/api/LogDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/LogDescriptor;

    .line 4370
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4371
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$6400(Lcom/google/api/Service;ILcom/google/api/LogDescriptor;)V

    .line 4372
    return-object p0
.end method

.method public setMetrics(ILcom/google/api/MetricDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/MetricDescriptor$Builder;

    .line 4533
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4534
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4535
    invoke-virtual {p2}, Lcom/google/api/MetricDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/MetricDescriptor;

    .line 4534
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$7000(Lcom/google/api/Service;ILcom/google/api/MetricDescriptor;)V

    .line 4536
    return-object p0
.end method

.method public setMetrics(ILcom/google/api/MetricDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/MetricDescriptor;

    .line 4520
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4521
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$7000(Lcom/google/api/Service;ILcom/google/api/MetricDescriptor;)V

    .line 4522
    return-object p0
.end method

.method public setMonitoredResources(ILcom/google/api/MonitoredResourceDescriptor$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/MonitoredResourceDescriptor$Builder;

    .line 4688
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4689
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 4690
    invoke-virtual {p2}, Lcom/google/api/MonitoredResourceDescriptor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/MonitoredResourceDescriptor;

    .line 4689
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$7600(Lcom/google/api/Service;ILcom/google/api/MonitoredResourceDescriptor;)V

    .line 4691
    return-object p0
.end method

.method public setMonitoredResources(ILcom/google/api/MonitoredResourceDescriptor;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/MonitoredResourceDescriptor;

    .line 4674
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4675
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$7600(Lcom/google/api/Service;ILcom/google/api/MonitoredResourceDescriptor;)V

    .line 4676
    return-object p0
.end method

.method public setMonitoring(Lcom/google/api/Monitoring$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Monitoring$Builder;

    .line 4975
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4976
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Monitoring$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Monitoring;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$8800(Lcom/google/api/Service;Lcom/google/api/Monitoring;)V

    .line 4977
    return-object p0
.end method

.method public setMonitoring(Lcom/google/api/Monitoring;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Monitoring;

    .line 4962
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4963
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$8800(Lcom/google/api/Service;Lcom/google/api/Monitoring;)V

    .line 4964
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2700
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2701
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$400(Lcom/google/api/Service;Ljava/lang/String;)V

    .line 2702
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2734
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2735
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$600(Lcom/google/api/Service;Lcom/google/protobuf/ByteString;)V

    .line 2736
    return-object p0
.end method

.method public setProducerProjectId(Ljava/lang/String;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2923
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2924
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$1300(Lcom/google/api/Service;Ljava/lang/String;)V

    .line 2925
    return-object p0
.end method

.method public setProducerProjectIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2951
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2952
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$1500(Lcom/google/api/Service;Lcom/google/protobuf/ByteString;)V

    .line 2953
    return-object p0
.end method

.method public setQuota(Lcom/google/api/Quota$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Quota$Builder;

    .line 3842
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3843
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Quota$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Quota;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$4300(Lcom/google/api/Service;Lcom/google/api/Quota;)V

    .line 3844
    return-object p0
.end method

.method public setQuota(Lcom/google/api/Quota;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Quota;

    .line 3829
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3830
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$4300(Lcom/google/api/Service;Lcom/google/api/Quota;)V

    .line 3831
    return-object p0
.end method

.method public setSourceInfo(Lcom/google/api/SourceInfo$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/SourceInfo$Builder;

    .line 5117
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5118
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/SourceInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/SourceInfo;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$9400(Lcom/google/api/Service;Lcom/google/api/SourceInfo;)V

    .line 5119
    return-object p0
.end method

.method public setSourceInfo(Lcom/google/api/SourceInfo;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/SourceInfo;

    .line 5104
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5105
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$9400(Lcom/google/api/Service;Lcom/google/api/SourceInfo;)V

    .line 5106
    return-object p0
.end method

.method public setSystemParameters(Lcom/google/api/SystemParameters$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/SystemParameters$Builder;

    .line 5046
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5047
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/SystemParameters$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/SystemParameters;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$9100(Lcom/google/api/Service;Lcom/google/api/SystemParameters;)V

    .line 5048
    return-object p0
.end method

.method public setSystemParameters(Lcom/google/api/SystemParameters;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/SystemParameters;

    .line 5033
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 5034
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$9100(Lcom/google/api/Service;Lcom/google/api/SystemParameters;)V

    .line 5035
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2854
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2855
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$1000(Lcom/google/api/Service;Ljava/lang/String;)V

    .line 2856
    return-object p0
.end method

.method public setTitleBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2882
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 2883
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$1200(Lcom/google/api/Service;Lcom/google/protobuf/ByteString;)V

    .line 2884
    return-object p0
.end method

.method public setTypes(ILcom/google/protobuf/Type$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Type$Builder;

    .line 3239
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3240
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    .line 3241
    invoke-virtual {p2}, Lcom/google/protobuf/Type$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Type;

    .line 3240
    invoke-static {v0, p1, v1}, Lcom/google/api/Service;->access$2200(Lcom/google/api/Service;ILcom/google/protobuf/Type;)V

    .line 3242
    return-object p0
.end method

.method public setTypes(ILcom/google/protobuf/Type;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Type;

    .line 3220
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 3221
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1, p2}, Lcom/google/api/Service;->access$2200(Lcom/google/api/Service;ILcom/google/protobuf/Type;)V

    .line 3222
    return-object p0
.end method

.method public setUsage(Lcom/google/api/Usage$Builder;)Lcom/google/api/Service$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Usage$Builder;

    .line 4055
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4056
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-virtual {p1}, Lcom/google/api/Usage$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Usage;

    invoke-static {v0, v1}, Lcom/google/api/Service;->access$5200(Lcom/google/api/Service;Lcom/google/api/Usage;)V

    .line 4057
    return-object p0
.end method

.method public setUsage(Lcom/google/api/Usage;)Lcom/google/api/Service$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Usage;

    .line 4042
    invoke-virtual {p0}, Lcom/google/api/Service$Builder;->copyOnWrite()V

    .line 4043
    iget-object v0, p0, Lcom/google/api/Service$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Service;

    invoke-static {v0, p1}, Lcom/google/api/Service;->access$5200(Lcom/google/api/Service;Lcom/google/api/Usage;)V

    .line 4044
    return-object p0
.end method
