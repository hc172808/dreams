.class public final Lcom/google/zxing/client/result/SMTPResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "SMTPResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;
    .locals 13
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 31
    invoke-static {p1}, Lcom/google/zxing/client/result/SMTPResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 32
    .local v2, "rawText":Ljava/lang/String;
    move-object v2, v0

    const-string v3, "smtp:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SMTP:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    return-object v1

    .line 35
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "emailAddress":Ljava/lang/String;
    const/4 v1, 0x0

    .line 37
    .local v1, "subject":Ljava/lang/String;
    const/4 v3, 0x0

    .line 38
    .local v3, "body":Ljava/lang/String;
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    .line 39
    .local v7, "colon":I
    move v7, v5

    if-ltz v5, :cond_2

    .line 40
    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 43
    move v7, v4

    if-ltz v4, :cond_1

    .line 44
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move v4, v7

    goto :goto_0

    .line 43
    :cond_1
    move v4, v7

    goto :goto_0

    .line 39
    :cond_2
    move v4, v7

    .line 48
    .end local v7    # "colon":I
    .local v4, "colon":I
    :goto_0
    new-instance v5, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    aput-object v0, v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v5

    move-object v11, v1

    move-object v12, v3

    invoke-direct/range {v7 .. v12}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/SMTPResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-result-object p1

    return-object p1
.end method
