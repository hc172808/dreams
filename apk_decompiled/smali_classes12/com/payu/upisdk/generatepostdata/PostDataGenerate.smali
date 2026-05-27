.class public Lcom/payu/upisdk/generatepostdata/PostDataGenerate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;
    }
.end annotation


# instance fields
.field private a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;)V
    .locals 1
    .param p1, "postDataBuilder"    # Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;->a(Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;)Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    .line 30
    invoke-static {p1}, Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;->b(Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->c:Landroid/content/Context;

    .line 31
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PostDataGenerate;
    .end local p1    # "postDataBuilder":Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;
    invoke-static {p1}, Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;->c(Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->b:Ljava/lang/String;

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;B)V
    .locals 0
    .param p1, "x0"    # Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;

    .line 23
    nop

    .end local p1    # "x0":Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;
    invoke-direct {p0, p1}, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;-><init>(Lcom/payu/upisdk/generatepostdata/PostDataGenerate$PostDataBuilder;)V

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PostDataGenerate;
    return-void
.end method


# virtual methods
.method public getPaymentPostParams()Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;
    .locals 17

    .line 71
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    sget-object v2, Lcom/payu/upisdk/util/UpiConstant;->PG_SET:Ljava/util/Set;

    iget-object v3, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->b:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_22

    .line 79
    :cond_0
    const-string v2, "device_type"

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/payu/upisdk/util/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "udid"

    invoke-static {v3, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/payu/upisdk/util/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "imei"

    invoke-static {v3, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const/4 v3, 0x0

    :goto_0
    sget-object v4, Lcom/payu/upisdk/util/UpiConstant;->PAYMENT_PARAMS_ARRAY:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_16

    .line 87
    sget-object v4, Lcom/payu/upisdk/util/UpiConstant;->PAYMENT_PARAMS_ARRAY:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const-string v8, "firstname"

    const-string v9, "txnid"

    const-string v10, "email"

    const-string v11, "udf5"

    const-string v12, "udf4"

    const-string v13, "udf3"

    const-string v14, "udf2"

    const-string v15, "udf1"

    const-string v5, "hash"

    const-string v6, "key"

    const-string v2, "amount"

    move/from16 v16, v3

    const-string v3, "productinfo"

    sparse-switch v7, :sswitch_data_0

    :cond_1
    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto/16 :goto_2

    :sswitch_1
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto/16 :goto_2

    :sswitch_2
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x5

    goto/16 :goto_2

    :sswitch_3
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xd

    goto :goto_2

    :sswitch_4
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xc

    goto :goto_2

    :sswitch_5
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xb

    goto :goto_2

    :sswitch_6
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xa

    goto :goto_2

    :sswitch_7
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x9

    goto :goto_2

    :sswitch_8
    const-string v7, "surl"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x6

    goto :goto_2

    :sswitch_9
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x8

    goto :goto_2

    :sswitch_a
    const-string v7, "furl"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x7

    goto :goto_2

    :sswitch_b
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :sswitch_c
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    goto :goto_2

    :sswitch_d
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    goto :goto_2

    :goto_1
    const/4 v4, -0x1

    :goto_2
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_a

    .line 171
    :pswitch_0
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getUdf5()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 172
    const-string v0, "UDF5 should not be null, it can be empty or string"

    invoke-static {v0}, Lcom/payu/upisdk/util/b;->e(Ljava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 173
    :cond_2
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getUdf5()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_a

    .line 166
    :pswitch_1
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getUdf4()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 167
    const-string v0, "UDF4 should not be null, it can be empty or string"

    invoke-static {v0}, Lcom/payu/upisdk/util/b;->e(Ljava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 168
    :cond_3
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getUdf4()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    goto/16 :goto_a

    .line 161
    :pswitch_2
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getUdf3()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 162
    const-string v0, "UDF3 should not be null, it can be empty or string"

    invoke-static {v0}, Lcom/payu/upisdk/util/b;->e(Ljava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 163
    :cond_4
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getUdf3()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    goto/16 :goto_a

    .line 156
    :pswitch_3
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getUdf2()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 157
    const-string v0, "UDF2 should not be null, it can be empty or string"

    invoke-static {v0}, Lcom/payu/upisdk/util/b;->e(Ljava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 158
    :cond_5
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getUdf2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    goto/16 :goto_a

    .line 151
    :pswitch_4
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getUdf1()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    .line 152
    const-string v0, "UDF1 should not be null, it can be empty or string"

    invoke-static {v0}, Lcom/payu/upisdk/util/b;->e(Ljava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 153
    :cond_6
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getUdf1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    goto/16 :goto_a

    .line 146
    :pswitch_5
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getHash()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_7

    goto :goto_3

    .line 148
    :cond_7
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    goto/16 :goto_a

    .line 147
    :cond_8
    :goto_3
    const-string v0, "Mandatory param hash is missing"

    invoke-static {v0}, Lcom/payu/upisdk/util/b;->e(Ljava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 136
    :pswitch_6
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getFurl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getFurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_9

    goto :goto_4

    .line 140
    :cond_9
    :try_start_0
    const-string v2, "furl="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getFurl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto/16 :goto_a

    .line 141
    :catch_0
    move-exception v0

    .line 142
    const/16 v0, 0x138c

    const-string v2, "furl should be something like https://www.payu.in/txnstatus"

    invoke-static {v0, v2}, Lcom/payu/upisdk/util/b;->a(ILjava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 137
    :cond_a
    :goto_4
    const-string v0, "Mandatory param furl is missing"

    invoke-static {v0}, Lcom/payu/upisdk/util/b;->e(Ljava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 126
    :pswitch_7
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getSurl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getSurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_b

    goto :goto_5

    .line 130
    :cond_b
    :try_start_1
    const-string v2, "surl="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getSurl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    goto/16 :goto_a

    .line 131
    :catch_1
    move-exception v0

    .line 132
    const/16 v0, 0x138c

    const-string v2, "surl should be something like https://www.payu.in/txnstatus"

    invoke-static {v0, v2}, Lcom/payu/upisdk/util/b;->a(ILjava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 127
    :cond_c
    :goto_5
    const-string v0, "Mandatory param surl is missing"

    invoke-static {v0}, Lcom/payu/upisdk/util/b;->e(Ljava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 121
    :pswitch_8
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getEmail()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    .line 122
    const-string v0, "Mandatory param email is missing"

    invoke-static {v0}, Lcom/payu/upisdk/util/b;->e(Ljava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 123
    :cond_d
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    goto/16 :goto_a

    .line 116
    :pswitch_9
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getFirstName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    .line 117
    const-string v0, "Mandatory param firstname is missing"

    invoke-static {v0}, Lcom/payu/upisdk/util/b;->e(Ljava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 118
    :cond_e
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    goto/16 :goto_a

    .line 111
    :pswitch_a
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getProductInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getProductInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_f

    goto :goto_6

    .line 113
    :cond_f
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getProductInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    goto/16 :goto_a

    .line 112
    :cond_10
    :goto_6
    const-string v0, "Mandatory param product info is missing"

    invoke-static {v0}, Lcom/payu/upisdk/util/b;->e(Ljava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 100
    :pswitch_b
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 102
    :try_start_2
    iget-object v3, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getAmount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    goto :goto_7

    :cond_11
    const-wide/16 v3, 0x0

    :goto_7
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 107
    nop

    .line 108
    iget-object v3, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v3}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getAmount()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    goto :goto_a

    .line 105
    :catch_2
    move-exception v0

    .line 106
    const/16 v0, 0x138b

    const-string v2, " Amount should be a Double value example 5.00"

    invoke-static {v0, v2}, Lcom/payu/upisdk/util/b;->a(ILjava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 103
    :catch_3
    move-exception v0

    .line 104
    const/16 v0, 0x138a

    const-string v2, " Amount should be a Double value example 5.00"

    invoke-static {v0, v2}, Lcom/payu/upisdk/util/b;->a(ILjava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 95
    :pswitch_c
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getTxnId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getTxnId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_12

    goto :goto_8

    .line 97
    :cond_12
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getTxnId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    goto :goto_a

    .line 96
    :cond_13
    :goto_8
    const-string v0, "Mandatory param txnid is missing"

    invoke-static {v0}, Lcom/payu/upisdk/util/b;->e(Ljava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 90
    :pswitch_d
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_14

    goto :goto_9

    .line 92
    :cond_14
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    goto :goto_a

    .line 91
    :cond_15
    :goto_9
    const-string v0, "Mandatory param key is missing"

    invoke-static {v0}, Lcom/payu/upisdk/util/b;->e(Ljava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 86
    :goto_a
    add-int/lit8 v3, v16, 0x1

    goto/16 :goto_0

    .line 178
    :cond_16
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getPhone()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 179
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getPhone()Ljava/lang/String;

    move-result-object v2

    const-string v3, "phone"

    invoke-static {v3, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    :cond_17
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getOfferKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_18

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getOfferKey()Ljava/lang/String;

    move-result-object v2

    const-string v4, "offer_key"

    invoke-static {v4, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_18
    move-object v2, v3

    :goto_b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getLastName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getLastName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "lastname"

    invoke-static {v4, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_19
    move-object v2, v3

    :goto_c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getAddress1()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getAddress1()Ljava/lang/String;

    move-result-object v2

    const-string v4, "address1"

    invoke-static {v4, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_1a
    move-object v2, v3

    :goto_d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getAddress2()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getAddress2()Ljava/lang/String;

    move-result-object v2

    const-string v4, "address2"

    invoke-static {v4, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_1b
    move-object v2, v3

    :goto_e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getCity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getCity()Ljava/lang/String;

    move-result-object v2

    const-string v4, "city"

    invoke-static {v4, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_1c
    move-object v2, v3

    :goto_f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getState()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getState()Ljava/lang/String;

    move-result-object v2

    const-string v4, "state"

    invoke-static {v4, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_1d
    move-object v2, v3

    :goto_10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getCountry()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string v4, "country"

    invoke-static {v4, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_11

    :cond_1e
    move-object v2, v3

    :goto_11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getZipCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getZipCode()Ljava/lang/String;

    move-result-object v2

    const-string v4, "zipcode"

    invoke-static {v4, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_1f
    move-object v2, v3

    :goto_12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getCodUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getCodUrl()Ljava/lang/String;

    move-result-object v2

    const-string v4, "codurl"

    invoke-static {v4, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    :cond_20
    move-object v2, v3

    :goto_13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getDropCategory()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getDropCategory()Ljava/lang/String;

    move-result-object v2

    const-string v4, "drop_category"

    invoke-static {v4, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :cond_21
    move-object v2, v3

    :goto_14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getEnforcePayMethod()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getEnforcePayMethod()Ljava/lang/String;

    move-result-object v2

    const-string v4, "enforce_paymethod"

    invoke-static {v4, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    :cond_22
    move-object v2, v3

    :goto_15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getCustomNote()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_23

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getCustomNote()Ljava/lang/String;

    move-result-object v2

    const-string v4, "custom_note"

    invoke-static {v4, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    :cond_23
    move-object v2, v3

    :goto_16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getNoteCategory()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_24

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getNoteCategory()Ljava/lang/String;

    move-result-object v2

    const-string v4, "note_category"

    invoke-static {v4, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :cond_24
    move-object v2, v3

    :goto_17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getShippingFirstName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_25

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getShippingFirstName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "shipping_firstname"

    invoke-static {v4, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_18

    :cond_25
    move-object v2, v3

    :goto_18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getShippingLastName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getShippingLastName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "shipping_lastname"

    invoke-static {v4, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    :cond_26
    move-object v2, v3

    :goto_19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getShippingAddress1()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getShippingAddress1()Ljava/lang/String;

    move-result-object v2

    const-string v4, "shipping_address1"

    invoke-static {v4, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1a

    :cond_27
    move-object v2, v3

    :goto_1a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getShippingAddress2()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getShippingAddress2()Ljava/lang/String;

    move-result-object v2

    const-string v4, "shipping_address2"

    invoke-static {v4, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    :cond_28
    move-object v2, v3

    :goto_1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getShippingCity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_29

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getShippingCity()Ljava/lang/String;

    move-result-object v2

    const-string v4, "shipping_city"

    invoke-static {v4, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    :cond_29
    move-object v2, v3

    :goto_1c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getShippingState()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2a

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getShippingState()Ljava/lang/String;

    move-result-object v2

    const-string v4, "shipping_state"

    invoke-static {v4, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1d

    :cond_2a
    move-object v2, v3

    :goto_1d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getShippingCounty()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2b

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getShippingCounty()Ljava/lang/String;

    move-result-object v2

    const-string v4, "shipping_county"

    invoke-static {v4, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1e

    :cond_2b
    move-object v2, v3

    :goto_1e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getShippingZipCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2c

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getShippingZipCode()Ljava/lang/String;

    move-result-object v2

    const-string v4, "shipping_zipcode"

    invoke-static {v4, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1f

    :cond_2c
    move-object v2, v3

    :goto_1f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getShippingPhone()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2d

    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getShippingPhone()Ljava/lang/String;

    move-result-object v2

    const-string v3, "shipping_phone"

    invoke-static {v3, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "SAMPAY"

    const-string v5, "upi"

    sparse-switch v3, :sswitch_data_1

    :cond_2e
    goto :goto_20

    :sswitch_e
    const-string v3, "PPINTENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x3

    goto :goto_21

    :sswitch_f
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x1

    goto :goto_21

    :sswitch_10
    const-string v3, "TEZ"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x2

    goto :goto_21

    :sswitch_11
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_21

    :sswitch_12
    const-string v3, "INTENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x4

    goto :goto_21

    :goto_20
    const/4 v2, -0x1

    :goto_21
    const-string v3, "pg"

    const-string v6, "bankcode"

    const-string v7, "SUCCESS"

    packed-switch v2, :pswitch_data_1

    .line 268
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v7, v0}, Lcom/payu/upisdk/util/b;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 263
    :pswitch_e
    const-string v2, "INTENT"

    invoke-static {v6, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    invoke-static {v3, v5}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, v7, v0}, Lcom/payu/upisdk/util/b;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 259
    :pswitch_f
    const-string v2, "PPINTENT"

    invoke-static {v6, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    const-string v2, "CASH"

    invoke-static {v3, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, v7, v0}, Lcom/payu/upisdk/util/b;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 252
    :pswitch_10
    const-string v2, "TEZ"

    invoke-static {v6, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    invoke-static {v3, v5}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getVpa()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 255
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getVpa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "vpa"

    invoke-static {v3, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, v7, v0}, Lcom/payu/upisdk/util/b;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 232
    :pswitch_11
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getVpa()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x139e

    if-nez v2, :cond_30

    .line 233
    const-string v0, "virtual address is null"

    invoke-static {v4, v0}, Lcom/payu/upisdk/util/b;->a(ILjava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 234
    :cond_30
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getVpa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_31

    .line 235
    const-string v0, "virtual address is empty"

    invoke-static {v4, v0}, Lcom/payu/upisdk/util/b;->a(ILjava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 236
    :cond_31
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getVpa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v8, 0x32

    if-le v2, v8, :cond_32

    .line 237
    const-string v0, "virtual address length should be less then 50 charaters"

    invoke-static {v4, v0}, Lcom/payu/upisdk/util/b;->a(ILjava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 239
    :cond_32
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getVpa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 241
    const-string v8, ".+@.+"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 242
    invoke-virtual {v8, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 243
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_33

    .line 244
    const-string v0, "INVALID VPA"

    invoke-static {v4, v0}, Lcom/payu/upisdk/util/b;->a(ILjava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 247
    :cond_33
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    invoke-static {v3, v5}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getVpa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "vpa"

    invoke-static {v3, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payu/upisdk/util/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, v7, v0}, Lcom/payu/upisdk/util/b;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 216
    :pswitch_12
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getUserCredentials()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 217
    iget-object v2, v1, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->a:Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;

    invoke-virtual {v2}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->getUserCredentials()Ljava/lang/String;

    move-result-object v2

    const-string v5, "user_credentials"

    invoke-static {v5, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    invoke-static {v3, v4}, Lcom/payu/upisdk/util/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2, v7, v0}, Lcom/payu/upisdk/util/b;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 219
    :cond_34
    const-string v0, " Card can not be stored!, user_credentials is missing!"

    invoke-static {v0}, Lcom/payu/upisdk/util/b;->e(Ljava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    .line 74
    :cond_35
    :goto_22
    const-string v0, "Invalid pg!, pg should be any one of CC, EMI, CASH, NB, PAYU_MONEY"

    invoke-static {v0}, Lcom/payu/upisdk/util/b;->e(Ljava/lang/String;)Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x58dedde3 -> :sswitch_d
        -0x5445afa8 -> :sswitch_c
        0x19e5f -> :sswitch_b
        0x302349 -> :sswitch_a
        0x30c10e -> :sswitch_9
        0x360c1c -> :sswitch_8
        0x36b35a -> :sswitch_7
        0x36b35b -> :sswitch_6
        0x36b35c -> :sswitch_5
        0x36b35d -> :sswitch_4
        0x36b35e -> :sswitch_3
        0x5c24b9c -> :sswitch_2
        0x69add05 -> :sswitch_1
        0x7f9753b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7efbd564 -> :sswitch_12
        -0x6ea59797 -> :sswitch_11
        0x14409 -> :sswitch_10
        0x1c52e -> :sswitch_f
        0x7f54b49c -> :sswitch_e
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/payu/upisdk/generatepostdata/PostDataGenerate;->getPaymentPostParams()Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;->getResult()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
