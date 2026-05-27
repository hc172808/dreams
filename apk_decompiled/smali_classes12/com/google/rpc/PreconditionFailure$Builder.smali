.class public final Lcom/google/rpc/PreconditionFailure$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PreconditionFailure.java"

# interfaces
.implements Lcom/google/rpc/PreconditionFailureOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/PreconditionFailure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/PreconditionFailure;",
        "Lcom/google/rpc/PreconditionFailure$Builder;",
        ">;",
        "Lcom/google/rpc/PreconditionFailureOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 997
    invoke-static {}, Lcom/google/rpc/PreconditionFailure;->access$1100()Lcom/google/rpc/PreconditionFailure;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 998
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/PreconditionFailure$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/rpc/PreconditionFailure$1;

    .line 990
    invoke-direct {p0}, Lcom/google/rpc/PreconditionFailure$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllViolations(Ljava/lang/Iterable;)Lcom/google/rpc/PreconditionFailure$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/rpc/PreconditionFailure$Violation;",
            ">;)",
            "Lcom/google/rpc/PreconditionFailure$Builder;"
        }
    .end annotation

    .line 1122
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/rpc/PreconditionFailure$Violation;>;"
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Builder;->copyOnWrite()V

    .line 1123
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p1}, Lcom/google/rpc/PreconditionFailure;->access$1500(Lcom/google/rpc/PreconditionFailure;Ljava/lang/Iterable;)V

    .line 1124
    return-object p0
.end method

.method public addViolations(ILcom/google/rpc/PreconditionFailure$Violation$Builder;)Lcom/google/rpc/PreconditionFailure$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/rpc/PreconditionFailure$Violation$Builder;

    .line 1108
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Builder;->copyOnWrite()V

    .line 1109
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    .line 1110
    invoke-virtual {p2}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/PreconditionFailure$Violation;

    .line 1109
    invoke-static {v0, p1, v1}, Lcom/google/rpc/PreconditionFailure;->access$1400(Lcom/google/rpc/PreconditionFailure;ILcom/google/rpc/PreconditionFailure$Violation;)V

    .line 1111
    return-object p0
.end method

.method public addViolations(ILcom/google/rpc/PreconditionFailure$Violation;)Lcom/google/rpc/PreconditionFailure$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/rpc/PreconditionFailure$Violation;

    .line 1082
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Builder;->copyOnWrite()V

    .line 1083
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/PreconditionFailure;->access$1400(Lcom/google/rpc/PreconditionFailure;ILcom/google/rpc/PreconditionFailure$Violation;)V

    .line 1084
    return-object p0
.end method

.method public addViolations(Lcom/google/rpc/PreconditionFailure$Violation$Builder;)Lcom/google/rpc/PreconditionFailure$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/rpc/PreconditionFailure$Violation$Builder;

    .line 1095
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Builder;->copyOnWrite()V

    .line 1096
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    invoke-virtual {p1}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/PreconditionFailure$Violation;

    invoke-static {v0, v1}, Lcom/google/rpc/PreconditionFailure;->access$1300(Lcom/google/rpc/PreconditionFailure;Lcom/google/rpc/PreconditionFailure$Violation;)V

    .line 1097
    return-object p0
.end method

.method public addViolations(Lcom/google/rpc/PreconditionFailure$Violation;)Lcom/google/rpc/PreconditionFailure$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/rpc/PreconditionFailure$Violation;

    .line 1069
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Builder;->copyOnWrite()V

    .line 1070
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p1}, Lcom/google/rpc/PreconditionFailure;->access$1300(Lcom/google/rpc/PreconditionFailure;Lcom/google/rpc/PreconditionFailure$Violation;)V

    .line 1071
    return-object p0
.end method

.method public clearViolations()Lcom/google/rpc/PreconditionFailure$Builder;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Builder;->copyOnWrite()V

    .line 1135
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0}, Lcom/google/rpc/PreconditionFailure;->access$1600(Lcom/google/rpc/PreconditionFailure;)V

    .line 1136
    return-object p0
.end method

.method public getViolations(I)Lcom/google/rpc/PreconditionFailure$Violation;
    .locals 1
    .param p1, "index"    # I

    .line 1032
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    invoke-virtual {v0, p1}, Lcom/google/rpc/PreconditionFailure;->getViolations(I)Lcom/google/rpc/PreconditionFailure$Violation;

    move-result-object v0

    return-object v0
.end method

.method public getViolationsCount()I
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure;->getViolationsCount()I

    move-result v0

    return v0
.end method

.method public getViolationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/rpc/PreconditionFailure$Violation;",
            ">;"
        }
    .end annotation

    .line 1010
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    .line 1011
    invoke-virtual {v0}, Lcom/google/rpc/PreconditionFailure;->getViolationsList()Ljava/util/List;

    move-result-object v0

    .line 1010
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeViolations(I)Lcom/google/rpc/PreconditionFailure$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 1146
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Builder;->copyOnWrite()V

    .line 1147
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p1}, Lcom/google/rpc/PreconditionFailure;->access$1700(Lcom/google/rpc/PreconditionFailure;I)V

    .line 1148
    return-object p0
.end method

.method public setViolations(ILcom/google/rpc/PreconditionFailure$Violation$Builder;)Lcom/google/rpc/PreconditionFailure$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/rpc/PreconditionFailure$Violation$Builder;

    .line 1056
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Builder;->copyOnWrite()V

    .line 1057
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    .line 1058
    invoke-virtual {p2}, Lcom/google/rpc/PreconditionFailure$Violation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/rpc/PreconditionFailure$Violation;

    .line 1057
    invoke-static {v0, p1, v1}, Lcom/google/rpc/PreconditionFailure;->access$1200(Lcom/google/rpc/PreconditionFailure;ILcom/google/rpc/PreconditionFailure$Violation;)V

    .line 1059
    return-object p0
.end method

.method public setViolations(ILcom/google/rpc/PreconditionFailure$Violation;)Lcom/google/rpc/PreconditionFailure$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/rpc/PreconditionFailure$Violation;

    .line 1043
    invoke-virtual {p0}, Lcom/google/rpc/PreconditionFailure$Builder;->copyOnWrite()V

    .line 1044
    iget-object v0, p0, Lcom/google/rpc/PreconditionFailure$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/PreconditionFailure;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/PreconditionFailure;->access$1200(Lcom/google/rpc/PreconditionFailure;ILcom/google/rpc/PreconditionFailure$Violation;)V

    .line 1045
    return-object p0
.end method
