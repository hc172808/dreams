.class Lcom/payumoney/core/SdkSession$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/core/SdkSession$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payumoney/core/SdkSession;->sendOTPsForLoginSignUP(Ljava/lang/String;Lcom/payumoney/core/listener/OnOTPRequestSendListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/payumoney/core/listener/OnOTPRequestSendListener;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/payumoney/core/SdkSession;


# direct methods
.method constructor <init>(Lcom/payumoney/core/SdkSession;Ljava/lang/String;Lcom/payumoney/core/listener/OnOTPRequestSendListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/SdkSession;

    .line 1239
    iput-object p1, p0, Lcom/payumoney/core/SdkSession$19;->d:Lcom/payumoney/core/SdkSession;

    iput-object p2, p0, Lcom/payumoney/core/SdkSession$19;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/payumoney/core/SdkSession$19;->b:Lcom/payumoney/core/listener/OnOTPRequestSendListener;

    iput-object p4, p0, Lcom/payumoney/core/SdkSession$19;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 1285
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$19;->b:Lcom/payumoney/core/listener/OnOTPRequestSendListener;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/payumoney/core/SdkSession$19;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/payumoney/core/listener/OnOTPRequestSendListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "percent"    # I

    .line 1290
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .line 1280
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$19;->b:Lcom/payumoney/core/listener/OnOTPRequestSendListener;

    iget-object v1, p0, Lcom/payumoney/core/SdkSession$19;->c:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/payumoney/core/listener/OnOTPRequestSendListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 1243
    const-string v0, "message"

    .line 1245
    :try_start_0
    const-string v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1248
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1249
    const-string v3, "EventSource"

    const-string v4, "SDK"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    const-string v3, "IdValue"

    iget-object v4, p0, Lcom/payumoney/core/SdkSession$19;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1252
    const-string v3, "otptriggered"

    if-nez v1, :cond_0

    .line 1253
    :try_start_1
    const-string v0, "true"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$19;->b:Lcom/payumoney/core/listener/OnOTPRequestSendListener;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/payumoney/core/SdkSession$19;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/payumoney/core/listener/OnOTPRequestSendListener;->onOTPRequestSend(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1256
    :cond_0
    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    new-instance v3, Lcom/payumoney/core/response/ErrorResponse;

    invoke-direct {v3}, Lcom/payumoney/core/response/ErrorResponse;-><init>()V

    .line 1259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/payumoney/core/response/ErrorResponse;->setStatus(Ljava/lang/String;)V

    .line 1261
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Invalid phone number"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1262
    const-string v0, "User credentials do not exist. Please pay without login (go back) or register and pay."

    invoke-virtual {v3, v0}, Lcom/payumoney/core/response/ErrorResponse;->setMessage(Ljava/lang/String;)V

    .line 1263
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$19;->b:Lcom/payumoney/core/listener/OnOTPRequestSendListener;

    iget-object v1, p0, Lcom/payumoney/core/SdkSession$19;->c:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Lcom/payumoney/core/listener/OnOTPRequestSendListener;->onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V

    goto :goto_0

    .line 1265
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/payumoney/core/response/ErrorResponse;->setMessage(Ljava/lang/String;)V

    .line 1266
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$19;->b:Lcom/payumoney/core/listener/OnOTPRequestSendListener;

    iget-object v1, p0, Lcom/payumoney/core/SdkSession$19;->c:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Lcom/payumoney/core/listener/OnOTPRequestSendListener;->onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V

    .line 1271
    :goto_0
    iget-object v0, p0, Lcom/payumoney/core/SdkSession$19;->d:Lcom/payumoney/core/SdkSession;

    invoke-static {v0}, Lcom/payumoney/core/SdkSession;->b(Lcom/payumoney/core/SdkSession;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "LoginOTPTriggered"

    const-string v3, "clevertap"

    invoke-static {v0, v1, v2, v3}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1275
    goto :goto_1

    .line 1273
    :catch_0
    move-exception v0

    .line 1274
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1276
    :goto_1
    return-void
.end method
