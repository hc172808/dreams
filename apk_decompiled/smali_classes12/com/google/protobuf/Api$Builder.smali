.class public final Lcom/google/protobuf/Api$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api.java"

# interfaces
.implements Lcom/google/protobuf/ApiOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/protobuf/Api;",
        "Lcom/google/protobuf/Api$Builder;",
        ">;",
        "Lcom/google/protobuf/ApiOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 900
    invoke-static {}, Lcom/google/protobuf/Api;->access$000()Lcom/google/protobuf/Api;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 901
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Api$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/Api$1;

    .line 893
    invoke-direct {p0}, Lcom/google/protobuf/Api$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllMethods(Ljava/lang/Iterable;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Method;",
            ">;)",
            "Lcom/google/protobuf/Api$Builder;"
        }
    .end annotation

    .line 1099
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Method;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1100
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$700(Lcom/google/protobuf/Api;Ljava/lang/Iterable;)V

    .line 1101
    return-object p0
.end method

.method public addAllMixins(Ljava/lang/Iterable;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Mixin;",
            ">;)",
            "Lcom/google/protobuf/Api$Builder;"
        }
    .end annotation

    .line 1625
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Mixin;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1626
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$2500(Lcom/google/protobuf/Api;Ljava/lang/Iterable;)V

    .line 1627
    return-object p0
.end method

.method public addAllOptions(Ljava/lang/Iterable;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Option;",
            ">;)",
            "Lcom/google/protobuf/Api$Builder;"
        }
    .end annotation

    .line 1249
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Option;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1250
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$1300(Lcom/google/protobuf/Api;Ljava/lang/Iterable;)V

    .line 1251
    return-object p0
.end method

.method public addMethods(ILcom/google/protobuf/Method$Builder;)Lcom/google/protobuf/Api$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Method$Builder;

    .line 1085
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1086
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    .line 1087
    invoke-virtual {p2}, Lcom/google/protobuf/Method$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Method;

    .line 1086
    invoke-static {v0, p1, v1}, Lcom/google/protobuf/Api;->access$600(Lcom/google/protobuf/Api;ILcom/google/protobuf/Method;)V

    .line 1088
    return-object p0
.end method

.method public addMethods(ILcom/google/protobuf/Method;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Method;

    .line 1059
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1060
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Api;->access$600(Lcom/google/protobuf/Api;ILcom/google/protobuf/Method;)V

    .line 1061
    return-object p0
.end method

.method public addMethods(Lcom/google/protobuf/Method$Builder;)Lcom/google/protobuf/Api$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Method$Builder;

    .line 1072
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1073
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {p1}, Lcom/google/protobuf/Method$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Method;

    invoke-static {v0, v1}, Lcom/google/protobuf/Api;->access$500(Lcom/google/protobuf/Api;Lcom/google/protobuf/Method;)V

    .line 1074
    return-object p0
.end method

.method public addMethods(Lcom/google/protobuf/Method;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Method;

    .line 1046
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1047
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$500(Lcom/google/protobuf/Api;Lcom/google/protobuf/Method;)V

    .line 1048
    return-object p0
.end method

.method public addMixins(ILcom/google/protobuf/Mixin$Builder;)Lcom/google/protobuf/Api$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Mixin$Builder;

    .line 1611
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1612
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    .line 1613
    invoke-virtual {p2}, Lcom/google/protobuf/Mixin$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Mixin;

    .line 1612
    invoke-static {v0, p1, v1}, Lcom/google/protobuf/Api;->access$2400(Lcom/google/protobuf/Api;ILcom/google/protobuf/Mixin;)V

    .line 1614
    return-object p0
.end method

.method public addMixins(ILcom/google/protobuf/Mixin;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Mixin;

    .line 1585
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1586
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Api;->access$2400(Lcom/google/protobuf/Api;ILcom/google/protobuf/Mixin;)V

    .line 1587
    return-object p0
.end method

.method public addMixins(Lcom/google/protobuf/Mixin$Builder;)Lcom/google/protobuf/Api$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Mixin$Builder;

    .line 1598
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1599
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {p1}, Lcom/google/protobuf/Mixin$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Mixin;

    invoke-static {v0, v1}, Lcom/google/protobuf/Api;->access$2300(Lcom/google/protobuf/Api;Lcom/google/protobuf/Mixin;)V

    .line 1600
    return-object p0
.end method

.method public addMixins(Lcom/google/protobuf/Mixin;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Mixin;

    .line 1572
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1573
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$2300(Lcom/google/protobuf/Api;Lcom/google/protobuf/Mixin;)V

    .line 1574
    return-object p0
.end method

.method public addOptions(ILcom/google/protobuf/Option$Builder;)Lcom/google/protobuf/Api$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Option$Builder;

    .line 1235
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1236
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    .line 1237
    invoke-virtual {p2}, Lcom/google/protobuf/Option$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Option;

    .line 1236
    invoke-static {v0, p1, v1}, Lcom/google/protobuf/Api;->access$1200(Lcom/google/protobuf/Api;ILcom/google/protobuf/Option;)V

    .line 1238
    return-object p0
.end method

.method public addOptions(ILcom/google/protobuf/Option;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Option;

    .line 1209
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1210
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Api;->access$1200(Lcom/google/protobuf/Api;ILcom/google/protobuf/Option;)V

    .line 1211
    return-object p0
.end method

.method public addOptions(Lcom/google/protobuf/Option$Builder;)Lcom/google/protobuf/Api$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Option$Builder;

    .line 1222
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1223
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {p1}, Lcom/google/protobuf/Option$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Option;

    invoke-static {v0, v1}, Lcom/google/protobuf/Api;->access$1100(Lcom/google/protobuf/Api;Lcom/google/protobuf/Option;)V

    .line 1224
    return-object p0
.end method

.method public addOptions(Lcom/google/protobuf/Option;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Option;

    .line 1196
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1197
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$1100(Lcom/google/protobuf/Api;Lcom/google/protobuf/Option;)V

    .line 1198
    return-object p0
.end method

.method public clearMethods()Lcom/google/protobuf/Api$Builder;
    .locals 1

    .line 1111
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1112
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0}, Lcom/google/protobuf/Api;->access$800(Lcom/google/protobuf/Api;)V

    .line 1113
    return-object p0
.end method

.method public clearMixins()Lcom/google/protobuf/Api$Builder;
    .locals 1

    .line 1637
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1638
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0}, Lcom/google/protobuf/Api;->access$2600(Lcom/google/protobuf/Api;)V

    .line 1639
    return-object p0
.end method

.method public clearName()Lcom/google/protobuf/Api$Builder;
    .locals 1

    .line 957
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 958
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0}, Lcom/google/protobuf/Api;->access$200(Lcom/google/protobuf/Api;)V

    .line 959
    return-object p0
.end method

.method public clearOptions()Lcom/google/protobuf/Api$Builder;
    .locals 1

    .line 1261
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1262
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0}, Lcom/google/protobuf/Api;->access$1400(Lcom/google/protobuf/Api;)V

    .line 1263
    return-object p0
.end method

.method public clearSourceContext()Lcom/google/protobuf/Api$Builder;
    .locals 1

    .line 1499
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1500
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0}, Lcom/google/protobuf/Api;->access$2100(Lcom/google/protobuf/Api;)V

    .line 1501
    return-object p0
.end method

.method public clearSyntax()Lcom/google/protobuf/Api$Builder;
    .locals 1

    .line 1715
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1716
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0}, Lcom/google/protobuf/Api;->access$3000(Lcom/google/protobuf/Api;)V

    .line 1717
    return-object p0
.end method

.method public clearVersion()Lcom/google/protobuf/Api$Builder;
    .locals 1

    .line 1391
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1392
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0}, Lcom/google/protobuf/Api;->access$1700(Lcom/google/protobuf/Api;)V

    .line 1393
    return-object p0
.end method

.method public getMethods(I)Lcom/google/protobuf/Method;
    .locals 1
    .param p1, "index"    # I

    .line 1009
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Api;->getMethods(I)Lcom/google/protobuf/Method;

    move-result-object v0

    return-object v0
.end method

.method public getMethodsCount()I
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getMethodsCount()I

    move-result v0

    return v0
.end method

.method public getMethodsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Method;",
            ">;"
        }
    .end annotation

    .line 987
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    .line 988
    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getMethodsList()Ljava/util/List;

    move-result-object v0

    .line 987
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMixins(I)Lcom/google/protobuf/Mixin;
    .locals 1
    .param p1, "index"    # I

    .line 1535
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Api;->getMixins(I)Lcom/google/protobuf/Mixin;

    move-result-object v0

    return-object v0
.end method

.method public getMixinsCount()I
    .locals 1

    .line 1525
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getMixinsCount()I

    move-result v0

    return v0
.end method

.method public getMixinsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Mixin;",
            ">;"
        }
    .end annotation

    .line 1513
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    .line 1514
    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getMixinsList()Ljava/util/List;

    move-result-object v0

    .line 1513
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 929
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions(I)Lcom/google/protobuf/Option;
    .locals 1
    .param p1, "index"    # I

    .line 1159
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Api;->getOptions(I)Lcom/google/protobuf/Option;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 1149
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getOptionsCount()I

    move-result v0

    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 1137
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    .line 1138
    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getOptionsList()Ljava/util/List;

    move-result-object v0

    .line 1137
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSourceContext()Lcom/google/protobuf/SourceContext;
    .locals 1

    .line 1449
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public getSyntax()Lcom/google/protobuf/Syntax;
    .locals 1

    .line 1690
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getSyntax()Lcom/google/protobuf/Syntax;

    move-result-object v0

    return-object v0
.end method

.method public getSyntaxValue()I
    .locals 1

    .line 1664
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getSyntaxValue()I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1304
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1333
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->getVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasSourceContext()Z
    .locals 1

    .line 1437
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->hasSourceContext()Z

    move-result v0

    return v0
.end method

.method public mergeSourceContext(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/SourceContext;

    .line 1487
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1488
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$2000(Lcom/google/protobuf/Api;Lcom/google/protobuf/SourceContext;)V

    .line 1489
    return-object p0
.end method

.method public removeMethods(I)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 1123
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1124
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$900(Lcom/google/protobuf/Api;I)V

    .line 1125
    return-object p0
.end method

.method public removeMixins(I)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 1649
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1650
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$2700(Lcom/google/protobuf/Api;I)V

    .line 1651
    return-object p0
.end method

.method public removeOptions(I)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 1273
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1274
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$1500(Lcom/google/protobuf/Api;I)V

    .line 1275
    return-object p0
.end method

.method public setMethods(ILcom/google/protobuf/Method$Builder;)Lcom/google/protobuf/Api$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Method$Builder;

    .line 1033
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1034
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    .line 1035
    invoke-virtual {p2}, Lcom/google/protobuf/Method$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Method;

    .line 1034
    invoke-static {v0, p1, v1}, Lcom/google/protobuf/Api;->access$400(Lcom/google/protobuf/Api;ILcom/google/protobuf/Method;)V

    .line 1036
    return-object p0
.end method

.method public setMethods(ILcom/google/protobuf/Method;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Method;

    .line 1020
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1021
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Api;->access$400(Lcom/google/protobuf/Api;ILcom/google/protobuf/Method;)V

    .line 1022
    return-object p0
.end method

.method public setMixins(ILcom/google/protobuf/Mixin$Builder;)Lcom/google/protobuf/Api$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Mixin$Builder;

    .line 1559
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1560
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    .line 1561
    invoke-virtual {p2}, Lcom/google/protobuf/Mixin$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Mixin;

    .line 1560
    invoke-static {v0, p1, v1}, Lcom/google/protobuf/Api;->access$2200(Lcom/google/protobuf/Api;ILcom/google/protobuf/Mixin;)V

    .line 1562
    return-object p0
.end method

.method public setMixins(ILcom/google/protobuf/Mixin;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Mixin;

    .line 1546
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1547
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Api;->access$2200(Lcom/google/protobuf/Api;ILcom/google/protobuf/Mixin;)V

    .line 1548
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 943
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 944
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$100(Lcom/google/protobuf/Api;Ljava/lang/String;)V

    .line 945
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 973
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 974
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$300(Lcom/google/protobuf/Api;Lcom/google/protobuf/ByteString;)V

    .line 975
    return-object p0
.end method

.method public setOptions(ILcom/google/protobuf/Option$Builder;)Lcom/google/protobuf/Api$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Option$Builder;

    .line 1183
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1184
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    .line 1185
    invoke-virtual {p2}, Lcom/google/protobuf/Option$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Option;

    .line 1184
    invoke-static {v0, p1, v1}, Lcom/google/protobuf/Api;->access$1000(Lcom/google/protobuf/Api;ILcom/google/protobuf/Option;)V

    .line 1186
    return-object p0
.end method

.method public setOptions(ILcom/google/protobuf/Option;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Option;

    .line 1170
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1171
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Api;->access$1000(Lcom/google/protobuf/Api;ILcom/google/protobuf/Option;)V

    .line 1172
    return-object p0
.end method

.method public setSourceContext(Lcom/google/protobuf/SourceContext$Builder;)Lcom/google/protobuf/Api$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/SourceContext$Builder;

    .line 1474
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1475
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-virtual {p1}, Lcom/google/protobuf/SourceContext$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/SourceContext;

    invoke-static {v0, v1}, Lcom/google/protobuf/Api;->access$1900(Lcom/google/protobuf/Api;Lcom/google/protobuf/SourceContext;)V

    .line 1476
    return-object p0
.end method

.method public setSourceContext(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/SourceContext;

    .line 1460
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1461
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$1900(Lcom/google/protobuf/Api;Lcom/google/protobuf/SourceContext;)V

    .line 1462
    return-object p0
.end method

.method public setSyntax(Lcom/google/protobuf/Syntax;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Syntax;

    .line 1702
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1703
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$2900(Lcom/google/protobuf/Api;Lcom/google/protobuf/Syntax;)V

    .line 1704
    return-object p0
.end method

.method public setSyntaxValue(I)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 1676
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1677
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$2800(Lcom/google/protobuf/Api;I)V

    .line 1678
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1362
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1363
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$1600(Lcom/google/protobuf/Api;Ljava/lang/String;)V

    .line 1364
    return-object p0
.end method

.method public setVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1422
    invoke-virtual {p0}, Lcom/google/protobuf/Api$Builder;->copyOnWrite()V

    .line 1423
    iget-object v0, p0, Lcom/google/protobuf/Api$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Api;

    invoke-static {v0, p1}, Lcom/google/protobuf/Api;->access$1800(Lcom/google/protobuf/Api;Lcom/google/protobuf/ByteString;)V

    .line 1424
    return-object p0
.end method
