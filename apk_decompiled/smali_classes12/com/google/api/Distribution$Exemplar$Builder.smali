.class public final Lcom/google/api/Distribution$Exemplar$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Distribution.java"

# interfaces
.implements Lcom/google/api/Distribution$ExemplarOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Distribution$Exemplar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Distribution$Exemplar;",
        "Lcom/google/api/Distribution$Exemplar$Builder;",
        ">;",
        "Lcom/google/api/Distribution$ExemplarOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3044
    invoke-static {}, Lcom/google/api/Distribution$Exemplar;->access$4000()Lcom/google/api/Distribution$Exemplar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3045
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Distribution$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/Distribution$1;

    .line 3037
    invoke-direct {p0}, Lcom/google/api/Distribution$Exemplar$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllAttachments(Ljava/lang/Iterable;)Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Any;",
            ">;)",
            "Lcom/google/api/Distribution$Exemplar$Builder;"
        }
    .end annotation

    .line 3343
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Any;>;"
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3344
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$Exemplar;->access$4900(Lcom/google/api/Distribution$Exemplar;Ljava/lang/Iterable;)V

    .line 3345
    return-object p0
.end method

.method public addAttachments(ILcom/google/protobuf/Any$Builder;)Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Any$Builder;

    .line 3323
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3324
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    .line 3325
    invoke-virtual {p2}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Any;

    .line 3324
    invoke-static {v0, p1, v1}, Lcom/google/api/Distribution$Exemplar;->access$4800(Lcom/google/api/Distribution$Exemplar;ILcom/google/protobuf/Any;)V

    .line 3326
    return-object p0
.end method

.method public addAttachments(ILcom/google/protobuf/Any;)Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Any;

    .line 3285
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3286
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution$Exemplar;->access$4800(Lcom/google/api/Distribution$Exemplar;ILcom/google/protobuf/Any;)V

    .line 3287
    return-object p0
.end method

.method public addAttachments(Lcom/google/protobuf/Any$Builder;)Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Any$Builder;

    .line 3304
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3305
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-virtual {p1}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Any;

    invoke-static {v0, v1}, Lcom/google/api/Distribution$Exemplar;->access$4700(Lcom/google/api/Distribution$Exemplar;Lcom/google/protobuf/Any;)V

    .line 3306
    return-object p0
.end method

.method public addAttachments(Lcom/google/protobuf/Any;)Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Any;

    .line 3266
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3267
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$Exemplar;->access$4700(Lcom/google/api/Distribution$Exemplar;Lcom/google/protobuf/Any;)V

    .line 3268
    return-object p0
.end method

.method public clearAttachments()Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 1

    .line 3361
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3362
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0}, Lcom/google/api/Distribution$Exemplar;->access$5000(Lcom/google/api/Distribution$Exemplar;)V

    .line 3363
    return-object p0
.end method

.method public clearTimestamp()Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 1

    .line 3157
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3158
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0}, Lcom/google/api/Distribution$Exemplar;->access$4500(Lcom/google/api/Distribution$Exemplar;)V

    .line 3159
    return-object p0
.end method

.method public clearValue()Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 1

    .line 3086
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3087
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0}, Lcom/google/api/Distribution$Exemplar;->access$4200(Lcom/google/api/Distribution$Exemplar;)V

    .line 3088
    return-object p0
.end method

.method public getAttachments(I)Lcom/google/protobuf/Any;
    .locals 1
    .param p1, "index"    # I

    .line 3211
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-virtual {v0, p1}, Lcom/google/api/Distribution$Exemplar;->getAttachments(I)Lcom/google/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public getAttachmentsCount()I
    .locals 1

    .line 3195
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-virtual {v0}, Lcom/google/api/Distribution$Exemplar;->getAttachmentsCount()I

    move-result v0

    return v0
.end method

.method public getAttachmentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 3177
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    .line 3178
    invoke-virtual {v0}, Lcom/google/api/Distribution$Exemplar;->getAttachmentsList()Ljava/util/List;

    move-result-object v0

    .line 3177
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 3111
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-virtual {v0}, Lcom/google/api/Distribution$Exemplar;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 3059
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-virtual {v0}, Lcom/google/api/Distribution$Exemplar;->getValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .line 3100
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-virtual {v0}, Lcom/google/api/Distribution$Exemplar;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method public mergeTimestamp(Lcom/google/protobuf/Timestamp;)Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 3146
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3147
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$Exemplar;->access$4400(Lcom/google/api/Distribution$Exemplar;Lcom/google/protobuf/Timestamp;)V

    .line 3148
    return-object p0
.end method

.method public removeAttachments(I)Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 3379
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3380
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$Exemplar;->access$5100(Lcom/google/api/Distribution$Exemplar;I)V

    .line 3381
    return-object p0
.end method

.method public setAttachments(ILcom/google/protobuf/Any$Builder;)Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Any$Builder;

    .line 3247
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3248
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    .line 3249
    invoke-virtual {p2}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Any;

    .line 3248
    invoke-static {v0, p1, v1}, Lcom/google/api/Distribution$Exemplar;->access$4600(Lcom/google/api/Distribution$Exemplar;ILcom/google/protobuf/Any;)V

    .line 3250
    return-object p0
.end method

.method public setAttachments(ILcom/google/protobuf/Any;)Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Any;

    .line 3228
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3229
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution$Exemplar;->access$4600(Lcom/google/api/Distribution$Exemplar;ILcom/google/protobuf/Any;)V

    .line 3230
    return-object p0
.end method

.method public setTimestamp(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 3134
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3135
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/api/Distribution$Exemplar;->access$4300(Lcom/google/api/Distribution$Exemplar;Lcom/google/protobuf/Timestamp;)V

    .line 3136
    return-object p0
.end method

.method public setTimestamp(Lcom/google/protobuf/Timestamp;)Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 3121
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3122
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p1}, Lcom/google/api/Distribution$Exemplar;->access$4300(Lcom/google/api/Distribution$Exemplar;Lcom/google/protobuf/Timestamp;)V

    .line 3123
    return-object p0
.end method

.method public setValue(D)Lcom/google/api/Distribution$Exemplar$Builder;
    .locals 1
    .param p1, "value"    # D

    .line 3072
    invoke-virtual {p0}, Lcom/google/api/Distribution$Exemplar$Builder;->copyOnWrite()V

    .line 3073
    iget-object v0, p0, Lcom/google/api/Distribution$Exemplar$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Distribution$Exemplar;

    invoke-static {v0, p1, p2}, Lcom/google/api/Distribution$Exemplar;->access$4100(Lcom/google/api/Distribution$Exemplar;D)V

    .line 3074
    return-object p0
.end method
