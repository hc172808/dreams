.class public final Lcom/google/zxing/client/result/EmailAddressResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "EmailAddressResultParser.java"


# static fields
.field private static final COMMA:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;
    .locals 18
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 36
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/EmailAddressResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 37
    .local v2, "rawText":Ljava/lang/String;
    move-object v2, v0

    const-string v3, "mailto:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "MAILTO:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {v2}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->isBasicallyValidEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    return-object v1

    .line 81
    :cond_1
    new-instance v0, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    invoke-direct {v0, v2}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 39
    :cond_2
    :goto_0
    const/4 v0, 0x7

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 40
    .local v3, "hostEmail":Ljava/lang/String;
    move-object v3, v0

    const/16 v4, 0x3f

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v4, 0x0

    move v5, v4

    .line 41
    .local v5, "queryStart":I
    move v5, v0

    if-ltz v0, :cond_3

    .line 42
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 45
    :cond_3
    :try_start_0
    invoke-static {v3}, Lcom/google/zxing/client/result/EmailAddressResultParser;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v3    # "hostEmail":Ljava/lang/String;
    .local v0, "hostEmail":Ljava/lang/String;
    nop

    .line 49
    const/4 v3, 0x0

    .line 50
    .local v3, "tos":[Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 51
    sget-object v4, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 53
    :cond_4
    invoke-static {v2}, Lcom/google/zxing/client/result/EmailAddressResultParser;->parseNameValuePairs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 54
    .local v4, "nameValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 55
    .local v6, "ccs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 56
    .local v7, "bccs":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 57
    .local v8, "subject":Ljava/lang/String;
    const/4 v9, 0x0

    .line 58
    .local v9, "body":Ljava/lang/String;
    if-eqz v4, :cond_9

    .line 59
    if-nez v3, :cond_5

    .line 60
    const-string v10, "to"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v11, v1

    .line 61
    .local v11, "tosString":Ljava/lang/String;
    move-object v11, v10

    if-eqz v10, :cond_6

    .line 62
    sget-object v10, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 59
    .end local v11    # "tosString":Ljava/lang/String;
    :cond_5
    move-object v11, v1

    .line 65
    :cond_6
    :goto_1
    const-string v10, "cc"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 66
    .local v11, "ccString":Ljava/lang/String;
    move-object v11, v10

    if-eqz v10, :cond_7

    .line 67
    sget-object v10, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    .line 69
    :cond_7
    const-string v10, "bcc"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 70
    .local v1, "bccString":Ljava/lang/String;
    move-object v1, v10

    if-eqz v10, :cond_8

    .line 71
    sget-object v10, Lcom/google/zxing/client/result/EmailAddressResultParser;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v7

    .line 73
    :cond_8
    const-string v10, "subject"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v8, v10

    check-cast v8, Ljava/lang/String;

    .line 74
    const-string v10, "body"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    check-cast v9, Ljava/lang/String;

    .line 76
    .end local v1    # "bccString":Ljava/lang/String;
    .end local v11    # "ccString":Ljava/lang/String;
    :cond_9
    new-instance v1, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-object v12, v1

    move-object v13, v3

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-direct/range {v12 .. v17}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 46
    .end local v0    # "hostEmail":Ljava/lang/String;
    .end local v4    # "nameValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "ccs":[Ljava/lang/String;
    .end local v7    # "bccs":[Ljava/lang/String;
    .end local v8    # "subject":Ljava/lang/String;
    .end local v9    # "body":Ljava/lang/String;
    .local v3, "hostEmail":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 47
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    return-object v1
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/EmailAddressResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-result-object p1

    return-object p1
.end method
