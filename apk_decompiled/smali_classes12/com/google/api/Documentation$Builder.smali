.class public final Lcom/google/api/Documentation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Documentation.java"

# interfaces
.implements Lcom/google/api/DocumentationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Documentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Documentation;",
        "Lcom/google/api/Documentation$Builder;",
        ">;",
        "Lcom/google/api/DocumentationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 771
    invoke-static {}, Lcom/google/api/Documentation;->access$000()Lcom/google/api/Documentation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 772
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Documentation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/api/Documentation$1;

    .line 764
    invoke-direct {p0}, Lcom/google/api/Documentation$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllPages(Ljava/lang/Iterable;)Lcom/google/api/Documentation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Page;",
            ">;)",
            "Lcom/google/api/Documentation$Builder;"
        }
    .end annotation

    .line 970
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/Page;>;"
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 971
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$700(Lcom/google/api/Documentation;Ljava/lang/Iterable;)V

    .line 972
    return-object p0
.end method

.method public addAllRules(Ljava/lang/Iterable;)Lcom/google/api/Documentation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/DocumentationRule;",
            ">;)",
            "Lcom/google/api/Documentation$Builder;"
        }
    .end annotation

    .line 1130
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/api/DocumentationRule;>;"
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1131
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$1300(Lcom/google/api/Documentation;Ljava/lang/Iterable;)V

    .line 1132
    return-object p0
.end method

.method public addPages(ILcom/google/api/Page$Builder;)Lcom/google/api/Documentation$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/Page$Builder;

    .line 956
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 957
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    .line 958
    invoke-virtual {p2}, Lcom/google/api/Page$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Page;

    .line 957
    invoke-static {v0, p1, v1}, Lcom/google/api/Documentation;->access$600(Lcom/google/api/Documentation;ILcom/google/api/Page;)V

    .line 959
    return-object p0
.end method

.method public addPages(ILcom/google/api/Page;)Lcom/google/api/Documentation$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Page;

    .line 930
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 931
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1, p2}, Lcom/google/api/Documentation;->access$600(Lcom/google/api/Documentation;ILcom/google/api/Page;)V

    .line 932
    return-object p0
.end method

.method public addPages(Lcom/google/api/Page$Builder;)Lcom/google/api/Documentation$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/Page$Builder;

    .line 943
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 944
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-virtual {p1}, Lcom/google/api/Page$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Page;

    invoke-static {v0, v1}, Lcom/google/api/Documentation;->access$500(Lcom/google/api/Documentation;Lcom/google/api/Page;)V

    .line 945
    return-object p0
.end method

.method public addPages(Lcom/google/api/Page;)Lcom/google/api/Documentation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/Page;

    .line 917
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 918
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$500(Lcom/google/api/Documentation;Lcom/google/api/Page;)V

    .line 919
    return-object p0
.end method

.method public addRules(ILcom/google/api/DocumentationRule$Builder;)Lcom/google/api/Documentation$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/DocumentationRule$Builder;

    .line 1115
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1116
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    .line 1117
    invoke-virtual {p2}, Lcom/google/api/DocumentationRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/DocumentationRule;

    .line 1116
    invoke-static {v0, p1, v1}, Lcom/google/api/Documentation;->access$1200(Lcom/google/api/Documentation;ILcom/google/api/DocumentationRule;)V

    .line 1118
    return-object p0
.end method

.method public addRules(ILcom/google/api/DocumentationRule;)Lcom/google/api/Documentation$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/DocumentationRule;

    .line 1087
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1088
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1, p2}, Lcom/google/api/Documentation;->access$1200(Lcom/google/api/Documentation;ILcom/google/api/DocumentationRule;)V

    .line 1089
    return-object p0
.end method

.method public addRules(Lcom/google/api/DocumentationRule$Builder;)Lcom/google/api/Documentation$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/api/DocumentationRule$Builder;

    .line 1101
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1102
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-virtual {p1}, Lcom/google/api/DocumentationRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/DocumentationRule;

    invoke-static {v0, v1}, Lcom/google/api/Documentation;->access$1100(Lcom/google/api/Documentation;Lcom/google/api/DocumentationRule;)V

    .line 1103
    return-object p0
.end method

.method public addRules(Lcom/google/api/DocumentationRule;)Lcom/google/api/Documentation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/api/DocumentationRule;

    .line 1073
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1074
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$1100(Lcom/google/api/Documentation;Lcom/google/api/DocumentationRule;)V

    .line 1075
    return-object p0
.end method

.method public clearDocumentationRootUrl()Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 1210
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1211
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0}, Lcom/google/api/Documentation;->access$1700(Lcom/google/api/Documentation;)V

    .line 1212
    return-object p0
.end method

.method public clearOverview()Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 1327
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1328
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0}, Lcom/google/api/Documentation;->access$2000(Lcom/google/api/Documentation;)V

    .line 1329
    return-object p0
.end method

.method public clearPages()Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 982
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 983
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0}, Lcom/google/api/Documentation;->access$800(Lcom/google/api/Documentation;)V

    .line 984
    return-object p0
.end method

.method public clearRules()Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 1143
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1144
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0}, Lcom/google/api/Documentation;->access$1400(Lcom/google/api/Documentation;)V

    .line 1145
    return-object p0
.end method

.method public clearSummary()Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 828
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 829
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0}, Lcom/google/api/Documentation;->access$200(Lcom/google/api/Documentation;)V

    .line 830
    return-object p0
.end method

.method public getDocumentationRootUrl()Ljava/lang/String;
    .locals 1

    .line 1171
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-virtual {v0}, Lcom/google/api/Documentation;->getDocumentationRootUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentationRootUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1184
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-virtual {v0}, Lcom/google/api/Documentation;->getDocumentationRootUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOverview()Ljava/lang/String;
    .locals 1

    .line 1252
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-virtual {v0}, Lcom/google/api/Documentation;->getOverview()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverviewBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1277
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-virtual {v0}, Lcom/google/api/Documentation;->getOverviewBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPages(I)Lcom/google/api/Page;
    .locals 1
    .param p1, "index"    # I

    .line 880
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-virtual {v0, p1}, Lcom/google/api/Documentation;->getPages(I)Lcom/google/api/Page;

    move-result-object v0

    return-object v0
.end method

.method public getPagesCount()I
    .locals 1

    .line 870
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-virtual {v0}, Lcom/google/api/Documentation;->getPagesCount()I

    move-result v0

    return v0
.end method

.method public getPagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Page;",
            ">;"
        }
    .end annotation

    .line 858
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    .line 859
    invoke-virtual {v0}, Lcom/google/api/Documentation;->getPagesList()Ljava/util/List;

    move-result-object v0

    .line 858
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRules(I)Lcom/google/api/DocumentationRule;
    .locals 1
    .param p1, "index"    # I

    .line 1033
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-virtual {v0, p1}, Lcom/google/api/Documentation;->getRules(I)Lcom/google/api/DocumentationRule;

    move-result-object v0

    return-object v0
.end method

.method public getRulesCount()I
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-virtual {v0}, Lcom/google/api/Documentation;->getRulesCount()I

    move-result v0

    return v0
.end method

.method public getRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/DocumentationRule;",
            ">;"
        }
    .end annotation

    .line 1009
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    .line 1010
    invoke-virtual {v0}, Lcom/google/api/Documentation;->getRulesList()Ljava/util/List;

    move-result-object v0

    .line 1009
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-virtual {v0}, Lcom/google/api/Documentation;->getSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-virtual {v0}, Lcom/google/api/Documentation;->getSummaryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removePages(I)Lcom/google/api/Documentation$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 994
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 995
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$900(Lcom/google/api/Documentation;I)V

    .line 996
    return-object p0
.end method

.method public removeRules(I)Lcom/google/api/Documentation$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 1156
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1157
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$1500(Lcom/google/api/Documentation;I)V

    .line 1158
    return-object p0
.end method

.method public setDocumentationRootUrl(Ljava/lang/String;)Lcom/google/api/Documentation$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1197
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1198
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$1600(Lcom/google/api/Documentation;Ljava/lang/String;)V

    .line 1199
    return-object p0
.end method

.method public setDocumentationRootUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Documentation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1225
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1226
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$1800(Lcom/google/api/Documentation;Lcom/google/protobuf/ByteString;)V

    .line 1227
    return-object p0
.end method

.method public setOverview(Ljava/lang/String;)Lcom/google/api/Documentation$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1302
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1303
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$1900(Lcom/google/api/Documentation;Ljava/lang/String;)V

    .line 1304
    return-object p0
.end method

.method public setOverviewBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Documentation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1354
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1355
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$2100(Lcom/google/api/Documentation;Lcom/google/protobuf/ByteString;)V

    .line 1356
    return-object p0
.end method

.method public setPages(ILcom/google/api/Page$Builder;)Lcom/google/api/Documentation$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/Page$Builder;

    .line 904
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 905
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    .line 906
    invoke-virtual {p2}, Lcom/google/api/Page$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/Page;

    .line 905
    invoke-static {v0, p1, v1}, Lcom/google/api/Documentation;->access$400(Lcom/google/api/Documentation;ILcom/google/api/Page;)V

    .line 907
    return-object p0
.end method

.method public setPages(ILcom/google/api/Page;)Lcom/google/api/Documentation$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/Page;

    .line 891
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 892
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1, p2}, Lcom/google/api/Documentation;->access$400(Lcom/google/api/Documentation;ILcom/google/api/Page;)V

    .line 893
    return-object p0
.end method

.method public setRules(ILcom/google/api/DocumentationRule$Builder;)Lcom/google/api/Documentation$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/api/DocumentationRule$Builder;

    .line 1059
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1060
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    .line 1061
    invoke-virtual {p2}, Lcom/google/api/DocumentationRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/api/DocumentationRule;

    .line 1060
    invoke-static {v0, p1, v1}, Lcom/google/api/Documentation;->access$1000(Lcom/google/api/Documentation;ILcom/google/api/DocumentationRule;)V

    .line 1062
    return-object p0
.end method

.method public setRules(ILcom/google/api/DocumentationRule;)Lcom/google/api/Documentation$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/api/DocumentationRule;

    .line 1045
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1046
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1, p2}, Lcom/google/api/Documentation;->access$1000(Lcom/google/api/Documentation;ILcom/google/api/DocumentationRule;)V

    .line 1047
    return-object p0
.end method

.method public setSummary(Ljava/lang/String;)Lcom/google/api/Documentation$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 814
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 815
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$100(Lcom/google/api/Documentation;Ljava/lang/String;)V

    .line 816
    return-object p0
.end method

.method public setSummaryBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Documentation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 844
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 845
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$300(Lcom/google/api/Documentation;Lcom/google/protobuf/ByteString;)V

    .line 846
    return-object p0
.end method
