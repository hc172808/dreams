.class public Lcom/payumoney/core/response/PaymentResponse;
.super Lcom/payumoney/core/response/PayumoneyResponse;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payumoney/core/response/PaymentResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected balanceAmount:Lcom/payumoney/core/entity/Amount;

.field protected customer:Ljava/lang/String;

.field protected date:Ljava/lang/String;

.field protected merchantName:Ljava/lang/String;

.field private responseParams:Lorg/json/JSONObject;

.field protected transactionAmount:Lcom/payumoney/core/entity/Amount;

.field protected transactionId:Ljava/lang/String;

.field protected transactionResponse:Lcom/payumoney/core/response/TransactionResponse;

.field protected user:Lcom/payumoney/core/entity/CitrusUser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/payumoney/core/response/PaymentResponse$1;

    invoke-direct {v0}, Lcom/payumoney/core/response/PaymentResponse$1;-><init>()V

    sput-object v0, Lcom/payumoney/core/response/PaymentResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/payumoney/core/response/PayumoneyResponse;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionId:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionAmount:Lcom/payumoney/core/entity/Amount;

    .line 35
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->balanceAmount:Lcom/payumoney/core/entity/Amount;

    .line 37
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->customer:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->merchantName:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->date:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionResponse:Lcom/payumoney/core/response/TransactionResponse;

    .line 43
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->user:Lcom/payumoney/core/entity/CitrusUser;

    .line 47
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->responseParams:Lorg/json/JSONObject;

    .line 51
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 75
    invoke-direct {p0, p1}, Lcom/payumoney/core/response/PayumoneyResponse;-><init>(Landroid/os/Parcel;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionId:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionAmount:Lcom/payumoney/core/entity/Amount;

    .line 35
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->balanceAmount:Lcom/payumoney/core/entity/Amount;

    .line 37
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->customer:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->merchantName:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->date:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionResponse:Lcom/payumoney/core/response/TransactionResponse;

    .line 43
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->user:Lcom/payumoney/core/entity/CitrusUser;

    .line 47
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->responseParams:Lorg/json/JSONObject;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionId:Ljava/lang/String;

    .line 77
    const-class v0, Lcom/payumoney/core/entity/Amount;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/Amount;

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionAmount:Lcom/payumoney/core/entity/Amount;

    .line 78
    const-class v0, Lcom/payumoney/core/entity/Amount;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/Amount;

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->balanceAmount:Lcom/payumoney/core/entity/Amount;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->customer:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->merchantName:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->date:Ljava/lang/String;

    .line 82
    const-class v0, Lcom/payumoney/core/response/TransactionResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/response/TransactionResponse;

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionResponse:Lcom/payumoney/core/response/TransactionResponse;

    .line 83
    const-class v0, Lcom/payumoney/core/entity/CitrusUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/CitrusUser;

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->user:Lcom/payumoney/core/entity/CitrusUser;

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/payumoney/core/response/PayumoneyResponse$Status;Ljava/lang/String;Lcom/payumoney/core/entity/Amount;Lcom/payumoney/core/entity/Amount;Lcom/payumoney/core/entity/CitrusUser;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/payumoney/core/response/PayumoneyResponse$Status;
    .param p3, "transactionId"    # Ljava/lang/String;
    .param p4, "transactionAmount"    # Lcom/payumoney/core/entity/Amount;
    .param p5, "balanceAmount"    # Lcom/payumoney/core/entity/Amount;
    .param p6, "user"    # Lcom/payumoney/core/entity/CitrusUser;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/payumoney/core/response/PayumoneyResponse;-><init>(Ljava/lang/String;Lcom/payumoney/core/response/PayumoneyResponse$Status;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionId:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionAmount:Lcom/payumoney/core/entity/Amount;

    .line 35
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->balanceAmount:Lcom/payumoney/core/entity/Amount;

    .line 37
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->customer:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->merchantName:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->date:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionResponse:Lcom/payumoney/core/response/TransactionResponse;

    .line 43
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->user:Lcom/payumoney/core/entity/CitrusUser;

    .line 47
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->responseParams:Lorg/json/JSONObject;

    .line 56
    iput-object p3, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionId:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionAmount:Lcom/payumoney/core/entity/Amount;

    .line 58
    iput-object p5, p0, Lcom/payumoney/core/response/PaymentResponse;->balanceAmount:Lcom/payumoney/core/entity/Amount;

    .line 59
    iput-object p6, p0, Lcom/payumoney/core/response/PaymentResponse;->user:Lcom/payumoney/core/entity/CitrusUser;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/payumoney/core/response/PayumoneyResponse$Status;Ljava/lang/String;Lcom/payumoney/core/entity/Amount;Lcom/payumoney/core/entity/Amount;Lcom/payumoney/core/entity/CitrusUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/payumoney/core/response/TransactionResponse;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/payumoney/core/response/PayumoneyResponse$Status;
    .param p3, "transactionId"    # Ljava/lang/String;
    .param p4, "transactionAmount"    # Lcom/payumoney/core/entity/Amount;
    .param p5, "balanceAmount"    # Lcom/payumoney/core/entity/Amount;
    .param p6, "user"    # Lcom/payumoney/core/entity/CitrusUser;
    .param p7, "customer"    # Ljava/lang/String;
    .param p8, "merchantName"    # Ljava/lang/String;
    .param p9, "date"    # Ljava/lang/String;
    .param p10, "transactionResponse"    # Lcom/payumoney/core/response/TransactionResponse;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/payumoney/core/response/PayumoneyResponse;-><init>(Ljava/lang/String;Lcom/payumoney/core/response/PayumoneyResponse$Status;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionId:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionAmount:Lcom/payumoney/core/entity/Amount;

    .line 35
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->balanceAmount:Lcom/payumoney/core/entity/Amount;

    .line 37
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->customer:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->merchantName:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->date:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionResponse:Lcom/payumoney/core/response/TransactionResponse;

    .line 43
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->user:Lcom/payumoney/core/entity/CitrusUser;

    .line 47
    iput-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->responseParams:Lorg/json/JSONObject;

    .line 64
    iput-object p3, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionId:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionAmount:Lcom/payumoney/core/entity/Amount;

    .line 66
    iput-object p5, p0, Lcom/payumoney/core/response/PaymentResponse;->balanceAmount:Lcom/payumoney/core/entity/Amount;

    .line 67
    iput-object p7, p0, Lcom/payumoney/core/response/PaymentResponse;->customer:Ljava/lang/String;

    .line 68
    iput-object p8, p0, Lcom/payumoney/core/response/PaymentResponse;->merchantName:Ljava/lang/String;

    .line 69
    iput-object p9, p0, Lcom/payumoney/core/response/PaymentResponse;->date:Ljava/lang/String;

    .line 70
    iput-object p10, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionResponse:Lcom/payumoney/core/response/TransactionResponse;

    .line 71
    iput-object p6, p0, Lcom/payumoney/core/response/PaymentResponse;->user:Lcom/payumoney/core/entity/CitrusUser;

    .line 72
    return-void
.end method

.method public static fromJSON(Ljava/lang/String;)Lcom/payumoney/core/response/PaymentResponse;
    .locals 15
    .param p0, "json"    # Ljava/lang/String;

    .line 87
    nop

    .line 90
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    const-string v2, "customer"

    const-string v3, "cutsomer"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 92
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/payumoney/core/response/PayumoneyResponse$Status;->valueOf(Ljava/lang/String;)Lcom/payumoney/core/response/PayumoneyResponse$Status;

    move-result-object v6

    .line 93
    sget-object v2, Lcom/payumoney/core/response/PayumoneyResponse$Status;->SUCCESSFUL:Lcom/payumoney/core/response/PayumoneyResponse$Status;

    if-ne v6, v2, :cond_0

    const-string v2, "Transaction Successful"

    goto :goto_0

    :cond_0
    const-string v2, "reason"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v5, v2

    .line 94
    const-string v2, "date"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 95
    const-string v2, "merchant"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 96
    const-string v2, "amount"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/payumoney/core/entity/Amount;->fromJSONObject(Lorg/json/JSONObject;)Lcom/payumoney/core/entity/Amount;

    move-result-object v8

    .line 97
    const-string v2, "balance"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/payumoney/core/entity/Amount;->fromJSONObject(Lorg/json/JSONObject;)Lcom/payumoney/core/entity/Amount;

    move-result-object v9

    .line 99
    nop

    .line 100
    const-string v2, "customParams"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 101
    if-eqz v2, :cond_1

    .line 102
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 103
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 104
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 105
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 106
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 108
    invoke-interface {v3, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    goto :goto_1

    .line 101
    :cond_1
    move-object v3, v0

    .line 112
    :cond_2
    const-string v2, "responseParams"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 114
    invoke-static {v1, v3}, Lcom/payumoney/core/response/TransactionResponse;->fromJSONObject(Lorg/json/JSONObject;Ljava/util/Map;)Lcom/payumoney/core/response/TransactionResponse;

    move-result-object v14

    .line 115
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Lcom/payumoney/core/response/TransactionResponse;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_2

    :cond_3
    move-object v7, v0

    .line 117
    :goto_2
    invoke-virtual {v14}, Lcom/payumoney/core/response/TransactionResponse;->getCitrusUser()Lcom/payumoney/core/entity/CitrusUser;

    move-result-object v10

    .line 119
    new-instance v2, Lcom/payumoney/core/response/PaymentResponse;

    move-object v4, v2

    invoke-direct/range {v4 .. v14}, Lcom/payumoney/core/response/PaymentResponse;-><init>(Ljava/lang/String;Lcom/payumoney/core/response/PayumoneyResponse$Status;Ljava/lang/String;Lcom/payumoney/core/entity/Amount;Lcom/payumoney/core/entity/Amount;Lcom/payumoney/core/entity/CitrusUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/payumoney/core/response/TransactionResponse;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    :try_start_1
    invoke-direct {v2, v1}, Lcom/payumoney/core/response/PaymentResponse;->setResponseParams(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    goto :goto_4

    .line 123
    :catch_0
    move-exception v1

    move-object v0, v2

    goto :goto_3

    :catch_1
    move-exception v1

    .line 124
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v2, v0

    .line 127
    :goto_4
    return-object v2
.end method

.method private setResponseParams(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "responseParams"    # Lorg/json/JSONObject;

    .line 163
    iput-object p1, p0, Lcom/payumoney/core/response/PaymentResponse;->responseParams:Lorg/json/JSONObject;

    .line 164
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public getBalanceAmount()Lcom/payumoney/core/entity/Amount;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->balanceAmount:Lcom/payumoney/core/entity/Amount;

    return-object v0
.end method

.method public getCustomer()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->customer:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantName()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->merchantName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionAmount()Lcom/payumoney/core/entity/Amount;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionAmount:Lcom/payumoney/core/entity/Amount;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionResponse()Lcom/payumoney/core/response/TransactionResponse;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionResponse:Lcom/payumoney/core/response/TransactionResponse;

    return-object v0
.end method

.method public getURLEncodedParams()Ljava/lang/String;
    .locals 4

    .line 167
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 169
    iget-object v1, p0, Lcom/payumoney/core/response/PaymentResponse;->responseParams:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 172
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    :try_start_0
    iget-object v3, p0, Lcom/payumoney/core/response/PaymentResponse;->responseParams:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    goto :goto_1

    .line 178
    :catch_0
    move-exception v2

    .line 179
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 181
    :goto_1
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lcom/payumoney/core/entity/CitrusUser;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->user:Lcom/payumoney/core/entity/CitrusUser;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaymentResponse{transactionId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", transactionAmount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionAmount:Lcom/payumoney/core/entity/Amount;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", balanceAmount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/PaymentResponse;->balanceAmount:Lcom/payumoney/core/entity/Amount;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", customer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/PaymentResponse;->customer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", merchantName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/PaymentResponse;->merchantName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", date=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/PaymentResponse;->date:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", transactionResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionResponse:Lcom/payumoney/core/response/TransactionResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payumoney/core/response/PaymentResponse;->user:Lcom/payumoney/core/entity/CitrusUser;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 209
    invoke-super {p0, p1, p2}, Lcom/payumoney/core/response/PayumoneyResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 210
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionAmount:Lcom/payumoney/core/entity/Amount;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 212
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->balanceAmount:Lcom/payumoney/core/entity/Amount;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 213
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->customer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->merchantName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->date:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->transactionResponse:Lcom/payumoney/core/response/TransactionResponse;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 217
    iget-object v0, p0, Lcom/payumoney/core/response/PaymentResponse;->user:Lcom/payumoney/core/entity/CitrusUser;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 218
    return-void
.end method
