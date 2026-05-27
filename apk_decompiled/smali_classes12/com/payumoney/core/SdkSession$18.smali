.class Lcom/payumoney/core/SdkSession$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/core/SdkSession$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/SdkSession;->sendToPayU(Lcom/payumoney/core/request/PaymentRequest;Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/request/PaymentRequest;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/payumoney/core/SdkSession;


# direct methods
.method constructor <init>(Lcom/payumoney/core/SdkSession;Lcom/payumoney/core/request/PaymentRequest;Ljava/lang/String;Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/SdkSession;

    .line 1159
    iput-object p1, p0, Lcom/payumoney/core/SdkSession$18;->e:Lcom/payumoney/core/SdkSession;

    iput-object p2, p0, Lcom/payumoney/core/SdkSession$18;->a:Lcom/payumoney/core/request/PaymentRequest;

    iput-object p3, p0, Lcom/payumoney/core/SdkSession$18;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/payumoney/core/SdkSession$18;->c:Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;

    iput-object p5, p0, Lcom/payumoney/core/SdkSession$18;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 1218
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$18;->c:Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$18;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .line 1223
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .line 1213
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$18;->c:Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$18;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "object"    # Lorg/json/JSONObject;

    .line 1164
    :try_start_0
    sget-object v0, Lcom/payumoney/core/SdkSession;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payumoney/core/utils/SdkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$18;->a:Lcom/payumoney/core/request/PaymentRequest;

    invoke-virtual {v0}, Lcom/payumoney/core/request/PaymentRequest;->getPg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "points"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v1, "clevertap"

    const-string v2, "PaymentFailed"

    const-string v3, "amount"

    const-string v4, "Amount"

    const-string v5, "reason"

    const-string v6, "SDK"

    const-string v7, "EventSource"

    const-string v8, "status"

    if-nez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$18;->a:Lcom/payumoney/core/request/PaymentRequest;

    invoke-virtual {v0}, Lcom/payumoney/core/request/PaymentRequest;->getPg()Ljava/lang/String;

    move-result-object v0

    const-string v9, "wallet"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1185
    :cond_0
    const-string v0, "PayUMoneySdk:Success-->"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/payumoney/core/utils/SdkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1187
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object p1, v0

    .line 1188
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1189
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$18;->c:Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;

    iget-object v1, p0, Lcom/payumoney/core/SdkSession$18;->d:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;->OnPaymentDetailsReceivedFromPayuMoney(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1190
    goto/16 :goto_2

    .line 1191
    :cond_1
    new-instance v0, Lcom/payumoney/core/utils/ResponseParser;

    invoke-direct {v0}, Lcom/payumoney/core/utils/ResponseParser;-><init>()V

    .line 1192
    iget-object v8, p0, Lcom/payumoney/core/SdkSession$18;->c:Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;

    invoke-virtual {v0, p1}, Lcom/payumoney/core/utils/ResponseParser;->errorFromResponse(Lorg/json/JSONObject;)Lcom/payumoney/core/response/ErrorResponse;

    move-result-object v9

    iget-object v10, p0, Lcom/payumoney/core/SdkSession$18;->d:Ljava/lang/String;

    invoke-interface {v8, v9, v10}, Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;->onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1196
    :try_start_2
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1197
    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iget-object v3, p0, Lcom/payumoney/core/SdkSession$18;->a:Lcom/payumoney/core/request/PaymentRequest;

    invoke-virtual {v3}, Lcom/payumoney/core/request/PaymentRequest;->getConvenienceFee()D

    move-result-wide v9

    add-double/2addr v6, v9

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v8, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    invoke-virtual {v0, p1}, Lcom/payumoney/core/utils/ResponseParser;->errorFromResponse(Lorg/json/JSONObject;)Lcom/payumoney/core/response/ErrorResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/response/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$18;->e:Lcom/payumoney/core/SdkSession;

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->b(Lcom/payumoney/core/SdkSession;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v8, v1}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1203
    goto :goto_2

    .line 1201
    :catch_0
    move-exception v0

    .line 1202
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1167
    :cond_2
    :goto_0
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 1168
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$18;->e:Lcom/payumoney/core/SdkSession;

    iget-object v1, p0, Lcom/payumoney/core/SdkSession$18;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$18;->c:Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;

    iget-object v3, p0, Lcom/payumoney/core/SdkSession$18;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/payumoney/core/SdkSession;->fetchPaymentStatus(Ljava/lang/String;Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;Ljava/lang/String;)V

    goto :goto_2

    .line 1170
    :cond_3
    new-instance v0, Lcom/payumoney/core/utils/ResponseParser;

    invoke-direct {v0}, Lcom/payumoney/core/utils/ResponseParser;-><init>()V

    .line 1171
    iget-object v8, p0, Lcom/payumoney/core/SdkSession$18;->c:Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;

    invoke-virtual {v0, p1}, Lcom/payumoney/core/utils/ResponseParser;->errorFromResponse(Lorg/json/JSONObject;)Lcom/payumoney/core/response/ErrorResponse;

    move-result-object v9

    iget-object v10, p0, Lcom/payumoney/core/SdkSession$18;->d:Ljava/lang/String;

    invoke-interface {v8, v9, v10}, Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;->onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1175
    :try_start_4
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1176
    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    invoke-virtual {v0, p1}, Lcom/payumoney/core/utils/ResponseParser;->errorFromResponse(Lorg/json/JSONObject;)Lcom/payumoney/core/response/ErrorResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/response/ErrorResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iget-object v0, p0, Lcom/payumoney/core/SdkSession$18;->a:Lcom/payumoney/core/request/PaymentRequest;

    invoke-virtual {v0}, Lcom/payumoney/core/request/PaymentRequest;->getConvenienceFee()D

    move-result-wide v9

    add-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v8, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$18;->e:Lcom/payumoney/core/SdkSession;

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->b(Lcom/payumoney/core/SdkSession;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v8, v1}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1182
    goto :goto_1

    .line 1180
    :catch_1
    move-exception v0

    .line 1181
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1183
    :goto_1
    nop

    .line 1208
    :goto_2
    goto :goto_3

    .line 1206
    :catch_2
    move-exception v0

    .line 1207
    invoke-virtual {p0, v0}, Lcom/payumoney/core/SdkSession$18;->onError(Ljava/lang/Throwable;)V

    .line 1209
    :goto_3
    return-void
.end method
