.class public Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/core/PayUmoneySdkInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaymentParam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    }
.end annotation


# instance fields
.field private params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pipedHash:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)V
    .locals 5
    .param p1, "builder"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->params:Ljava/util/HashMap;

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->pipedHash:Ljava/lang/String;

    .line 116
    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$000(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Z

    move-result v0

    invoke-static {v0}, Lcom/payumoney/core/PayUmoneySdkInitializer;->setDebugMode(Z)V

    .line 118
    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$100(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 121
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->params:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$100(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$200(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 126
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->params:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$200(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "merchantId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$300(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 131
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->params:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$300(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "txnid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$400(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 138
    :try_start_0
    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$400(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 140
    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_16

    const-wide v2, 0x412e848000000000L    # 1000000.0

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_16

    .line 143
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->isValidAmount(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 147
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->params:Ljava/util/HashMap;

    const-string v1, "amount"

    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$400(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    nop

    .line 157
    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$500(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 160
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->params:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$500(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "surl"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$600(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 165
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->params:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$600(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "furl"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$700(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 170
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->params:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$700(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "productInfo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$800(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 175
    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$800(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 178
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->params:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$800(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "email"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$900(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 183
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->params:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$900(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "firstName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$1000(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 188
    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$1000(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->isValidNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 191
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->params:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$1000(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$1000(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$1100(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 196
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->params:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$1100(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "udf1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$1200(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 201
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->params:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$1200(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "udf2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$1300(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 206
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->params:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$1300(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "udf3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$1400(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 211
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->params:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$1400(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "udf4"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$1500(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 216
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->params:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$1500(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "udf5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$1600(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 221
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->params:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$1600(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "udf6"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$1700(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 226
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->params:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$1700(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "udf7"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$1800(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 231
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->params:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$1800(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "udf8"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$1900(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 236
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->params:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$1900(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "udf9"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$2000(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->params:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;->access$2000(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "udf10"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-static {}, Lcom/payumoney/core/PayUmoneySdkInitializer;->IsDebugMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->pipedHash:Ljava/lang/String;

    const-string v1, "hashSeq"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->pipedHash:Ljava/lang/String;

    invoke-static {v0}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->hashCal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {}, Lcom/payumoney/core/PayUmoneySdkInitializer;->IsDebugMode()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    const-string v1, "hash"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_1
    invoke-static {}, Lcom/payumoney/core/PayUmoneySdkInitializer;->IsDebugMode()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->params:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 255
    iget-object v2, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->params:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "param : "

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    goto :goto_0

    .line 258
    :cond_2
    return-void

    .line 239
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "udf10 is null, put some value or empty e.g. Builder.setUdf5(\"\")"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "udf9 is null, put some value or empty e.g. Builder.setUdf5(\"\")"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "udf8 is null, put some value or empty e.g. Builder.setUdf5(\"\")"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "udf7 is null, put some value or empty e.g. Builder.setUdf5(\"\")"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "udf6 is null, put some value or empty e.g. Builder.setUdf5(\"\")"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "udf5 is null, put some value or empty e.g. Builder.setUdf5(\"\")"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "udf4 is null, put some value or empty e.g. Builder.setUdf4(\"\")"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "udf3 is null, put some value or empty e.g. Builder.setUdf3(\"\")"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "udf2 is null, put some value or empty e.g. Builder.setUdf2(\"\")"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "udf1 is null, put some value or empty e.g. Builder.setUdf1(\"\")"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Phone number is invalid"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Phone number is missing"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "First name is missing"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Email is invalid"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Email is missing"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Product info is missing"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Furl is missing"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Surl is missing"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_15
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Amount should be positive and upto 2 decimal places"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "builder":Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    throw v0

    .line 141
    .restart local p1    # "builder":Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    :cond_16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Amount should be greater than 0 and  less than 1000000.00  "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "builder":Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 149
    .restart local p1    # "builder":Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid Amount format"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Amount is missing"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TxnId Id missing"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, " Merchant id missing"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Merchant Key missing"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;Lcom/payumoney/core/PayUmoneySdkInitializer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;
    .param p2, "x1"    # Lcom/payumoney/core/PayUmoneySdkInitializer$1;

    .line 108
    invoke-direct {p0, p1}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;-><init>(Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam$Builder;)V

    return-void
.end method

.method private static hashCal(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .line 261
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    :try_start_0
    const-string v2, "SHA-512"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 265
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 266
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 267
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 268
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, v0, v3

    .line 269
    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 270
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 271
    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 276
    :cond_1
    goto :goto_1

    .line 275
    :catch_0
    move-exception v0

    .line 277
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->params:Ljava/util/HashMap;

    return-object v0
.end method

.method public setMerchantHash(Ljava/lang/String;)V
    .locals 2
    .param p1, "serverCalculatedHash"    # Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->params:Ljava/util/HashMap;

    const-string v1, "hash"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->pipedHash:Ljava/lang/String;

    return-object v0
.end method
