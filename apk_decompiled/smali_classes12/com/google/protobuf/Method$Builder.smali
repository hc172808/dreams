.class public final Lcom/google/protobuf/Method$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Method.java"

# interfaces
.implements Lcom/google/protobuf/MethodOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Method;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/protobuf/Method;",
        "Lcom/google/protobuf/Method$Builder;",
        ">;",
        "Lcom/google/protobuf/MethodOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 596
    invoke-static {}, Lcom/google/protobuf/Method;->access$000()Lcom/google/protobuf/Method;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 597
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Method$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/Method$1;

    .line 589
    invoke-direct {p0}, Lcom/google/protobuf/Method$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllOptions(Ljava/lang/Iterable;)Lcom/google/protobuf/Method$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Option;",
            ">;)",
            "Lcom/google/protobuf/Method$Builder;"
        }
    .end annotation

    .line 1008
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/protobuf/Option;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/Method$Builder;->copyOnWrite()V

    .line 1009
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/protobuf/Method;->access$1700(Lcom/google/protobuf/Method;Ljava/lang/Iterable;)V

    .line 1010
    return-object p0
.end method

.method public addOptions(ILcom/google/protobuf/Option$Builder;)Lcom/google/protobuf/Method$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Option$Builder;

    .line 994
    invoke-virtual {p0}, Lcom/google/protobuf/Method$Builder;->copyOnWrite()V

    .line 995
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    .line 996
    invoke-virtual {p2}, Lcom/google/protobuf/Option$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Option;

    .line 995
    invoke-static {v0, p1, v1}, Lcom/google/protobuf/Method;->access$1600(Lcom/google/protobuf/Method;ILcom/google/protobuf/Option;)V

    .line 997
    return-object p0
.end method

.method public addOptions(ILcom/google/protobuf/Option;)Lcom/google/protobuf/Method$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Option;

    .line 968
    invoke-virtual {p0}, Lcom/google/protobuf/Method$Builder;->copyOnWrite()V

    .line 969
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Method;->access$1600(Lcom/google/protobuf/Method;ILcom/google/protobuf/Option;)V

    .line 970
    return-object p0
.end method

.method public addOptions(Lcom/google/protobuf/Option$Builder;)Lcom/google/protobuf/Method$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Option$Builder;

    .line 981
    invoke-virtual {p0}, Lcom/google/protobuf/Method$Builder;->copyOnWrite()V

    .line 982
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-virtual {p1}, Lcom/google/protobuf/Option$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Option;

    invoke-static {v0, v1}, Lcom/google/protobuf/Method;->access$1500(Lcom/google/protobuf/Method;Lcom/google/protobuf/Option;)V

    .line 983
    return-object p0
.end method

.method public addOptions(Lcom/google/protobuf/Option;)Lcom/google/protobuf/Method$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Option;

    .line 955
    invoke-virtual {p0}, Lcom/google/protobuf/Method$Builder;->copyOnWrite()V

    .line 956
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/protobuf/Method;->access$1500(Lcom/google/protobuf/Method;Lcom/google/protobuf/Option;)V

    .line 957
    return-object p0
.end method

.method public clearName()Lcom/google/protobuf/Method$Builder;
    .locals 1

    .line 649
    invoke-virtual {p0}, Lcom/google/protobuf/Method$Builder;->copyOnWrite()V

    .line 650
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-static {v0}, Lcom/google/protobuf/Method;->access$200(Lcom/google/protobuf/Method;)V

    .line 651
    return-object p0
.end method

.method public clearOptions()Lcom/google/protobuf/Method$Builder;
    .locals 1

    .line 1020
    invoke-virtual {p0}, Lcom/google/protobuf/Method$Builder;->copyOnWrite()V

    .line 1021
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-static {v0}, Lcom/google/protobuf/Method;->access$1800(Lcom/google/protobuf/Method;)V

    .line 1022
    return-object p0
.end method

.method public clearRequestStreaming()Lcom/google/protobuf/Method$Builder;
    .locals 1

    .line 773
    invoke-virtual {p0}, Lcom/google/protobuf/Method$Builder;->copyOnWrite()V

    .line 774
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-static {v0}, Lcom/google/protobuf/Method;->access$800(Lcom/google/protobuf/Method;)V

    .line 775
    return-object p0
.end method

.method public clearRequestTypeUrl()Lcom/google/protobuf/Method$Builder;
    .locals 1

    .line 718
    invoke-virtual {p0}, Lcom/google/protobuf/Method$Builder;->copyOnWrite()V

    .line 719
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-static {v0}, Lcom/google/protobuf/Method;->access$500(Lcom/google/protobuf/Method;)V

    .line 720
    return-object p0
.end method

.method public clearResponseStreaming()Lcom/google/protobuf/Method$Builder;
    .locals 1

    .line 882
    invoke-virtual {p0}, Lcom/google/protobuf/Method$Builder;->copyOnWrite()V

    .line 883
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-static {v0}, Lcom/google/protobuf/Method;->access$1300(Lcom/google/protobuf/Method;)V

    .line 884
    return-object p0
.end method

.method public clearResponseTypeUrl()Lcom/google/protobuf/Method$Builder;
    .locals 1

    .line 827
    invoke-virtual {p0}, Lcom/google/protobuf/Method$Builder;->copyOnWrite()V

    .line 828
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-static {v0}, Lcom/google/protobuf/Method;->access$1000(Lcom/google/protobuf/Method;)V

    .line 829
    return-object p0
.end method

.method public clearSyntax()Lcom/google/protobuf/Method$Builder;
    .locals 1

    .line 1098
    invoke-virtual {p0}, Lcom/google/protobuf/Method$Builder;->copyOnWrite()V

    .line 1099
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-static {v0}, Lcom/google/protobuf/Method;->access$2200(Lcom/google/protobuf/Method;)V

    .line 1100
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/protobuf/Method;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/protobuf/Method;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions(I)Lcom/google/protobuf/Option;
    .locals 1
    .param p1, "index"    # I

    .line 918
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Method;->getOptions(I)Lcom/google/protobuf/Option;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 908
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/protobuf/Method;->getOptionsCount()I

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

    .line 896
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    .line 897
    invoke-virtual {v0}, Lcom/google/protobuf/Method;->getOptionsList()Ljava/util/List;

    move-result-object v0

    .line 896
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestStreaming()Z
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/protobuf/Method;->getRequestStreaming()Z

    move-result v0

    return v0
.end method

.method public getRequestTypeUrl()Ljava/lang/String;
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/protobuf/Method;->getRequestTypeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestTypeUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/protobuf/Method;->getRequestTypeUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResponseStreaming()Z
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/protobuf/Method;->getResponseStreaming()Z

    move-result v0

    return v0
.end method

.method public getResponseTypeUrl()Ljava/lang/String;
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/protobuf/Method;->getResponseTypeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseTypeUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/protobuf/Method;->getResponseTypeUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSyntax()Lcom/google/protobuf/Syntax;
    .locals 1

    .line 1073
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/protobuf/Method;->getSyntax()Lcom/google/protobuf/Syntax;

    move-result-object v0

    return-object v0
.end method

.method public getSyntaxValue()I
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/protobuf/Method;->getSyntaxValue()I

    move-result v0

    return v0
.end method

.method public removeOptions(I)Lcom/google/protobuf/Method$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 1032
    invoke-virtual {p0}, Lcom/google/protobuf/Method$Builder;->copyOnWrite()V

    .line 1033
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/protobuf/Method;->access$1900(Lcom/google/protobuf/Method;I)V

    .line 1034
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/Method$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 636
    invoke-virtual {p0}, Lcom/google/protobuf/Method$Builder;->copyOnWrite()V

    .line 637
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/protobuf/Method;->access$100(Lcom/google/protobuf/Method;Ljava/lang/String;)V

    .line 638
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Method$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 664
    invoke-virtual {p0}, Lcom/google/protobuf/Method$Builder;->copyOnWrite()V

    .line 665
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/protobuf/Method;->access$300(Lcom/google/protobuf/Method;Lcom/google/protobuf/ByteString;)V

    .line 666
    return-object p0
.end method

.method public setOptions(ILcom/google/protobuf/Option$Builder;)Lcom/google/protobuf/Method$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/protobuf/Option$Builder;

    .line 942
    invoke-virtual {p0}, Lcom/google/protobuf/Method$Builder;->copyOnWrite()V

    .line 943
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    .line 944
    invoke-virtual {p2}, Lcom/google/protobuf/Option$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Option;

    .line 943
    invoke-static {v0, p1, v1}, Lcom/google/protobuf/Method;->access$1400(Lcom/google/protobuf/Method;ILcom/google/protobuf/Option;)V

    .line 945
    return-object p0
.end method

.method public setOptions(ILcom/google/protobuf/Option;)Lcom/google/protobuf/Method$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/protobuf/Option;

    .line 929
    invoke-virtual {p0}, Lcom/google/protobuf/Method$Builder;->copyOnWrite()V

    .line 930
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/Method;->access$1400(Lcom/google/protobuf/Method;ILcom/google/protobuf/Option;)V

    .line 931
    return-object p0
.end method

.method public setRequestStreaming(Z)Lcom/google/protobuf/Method$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 760
    invoke-virtual {p0}, Lcom/google/protobuf/Method$Builder;->copyOnWrite()V

    .line 761
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/protobuf/Method;->access$700(Lcom/google/protobuf/Method;Z)V

    .line 762
    return-object p0
.end method

.method public setRequestTypeUrl(Ljava/lang/String;)Lcom/google/protobuf/Method$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 705
    invoke-virtual {p0}, Lcom/google/protobuf/Method$Builder;->copyOnWrite()V

    .line 706
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/protobuf/Method;->access$400(Lcom/google/protobuf/Method;Ljava/lang/String;)V

    .line 707
    return-object p0
.end method

.method public setRequestTypeUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Method$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 733
    invoke-virtual {p0}, Lcom/google/protobuf/Method$Builder;->copyOnWrite()V

    .line 734
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/protobuf/Method;->access$600(Lcom/google/protobuf/Method;Lcom/google/protobuf/ByteString;)V

    .line 735
    return-object p0
.end method

.method public setResponseStreaming(Z)Lcom/google/protobuf/Method$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 869
    invoke-virtual {p0}, Lcom/google/protobuf/Method$Builder;->copyOnWrite()V

    .line 870
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/protobuf/Method;->access$1200(Lcom/google/protobuf/Method;Z)V

    .line 871
    return-object p0
.end method

.method public setResponseTypeUrl(Ljava/lang/String;)Lcom/google/protobuf/Method$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 814
    invoke-virtual {p0}, Lcom/google/protobuf/Method$Builder;->copyOnWrite()V

    .line 815
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/protobuf/Method;->access$900(Lcom/google/protobuf/Method;Ljava/lang/String;)V

    .line 816
    return-object p0
.end method

.method public setResponseTypeUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Method$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 842
    invoke-virtual {p0}, Lcom/google/protobuf/Method$Builder;->copyOnWrite()V

    .line 843
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/protobuf/Method;->access$1100(Lcom/google/protobuf/Method;Lcom/google/protobuf/ByteString;)V

    .line 844
    return-object p0
.end method

.method public setSyntax(Lcom/google/protobuf/Syntax;)Lcom/google/protobuf/Method$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Syntax;

    .line 1085
    invoke-virtual {p0}, Lcom/google/protobuf/Method$Builder;->copyOnWrite()V

    .line 1086
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/protobuf/Method;->access$2100(Lcom/google/protobuf/Method;Lcom/google/protobuf/Syntax;)V

    .line 1087
    return-object p0
.end method

.method public setSyntaxValue(I)Lcom/google/protobuf/Method$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 1059
    invoke-virtual {p0}, Lcom/google/protobuf/Method$Builder;->copyOnWrite()V

    .line 1060
    iget-object v0, p0, Lcom/google/protobuf/Method$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/protobuf/Method;->access$2000(Lcom/google/protobuf/Method;I)V

    .line 1061
    return-object p0
.end method
