.class public Leasypay/manager/EasyPayHelper;
.super Ljava/lang/Object;
.source "EasyPayHelper.java"


# instance fields
.field private bankResponse:Leasypay/entity/AssistDetailsResponse;

.field private mJsCallListListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Leasypay/listeners/JavaScriptCallBacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leasypay/manager/EasyPayHelper;->mJsCallListListener:Ljava/util/ArrayList;

    .line 49
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/manager/PaytmAssist;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "EasyPay"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public NBWatcher(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "ElId"    # Ljava/lang/String;
    .param p3, "eventCode"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 97
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 98
    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_3

    .line 129
    :sswitch_0
    const-string v0, "Bank Bage optimized called"

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v1

    invoke-virtual {v1}, Leasypay/manager/PaytmAssist;->getmEventMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 131
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v1

    invoke-virtual {v1}, Leasypay/manager/PaytmAssist;->getmEventMap()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isWebPageOptimized"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/manager/PaytmAssist;->getmEventMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 124
    :sswitch_1
    iget-object v0, p0, Leasypay/manager/EasyPayHelper;->mJsCallListListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leasypay/listeners/JavaScriptCallBacks;

    .line 125
    .local v1, "jsCback":Leasypay/listeners/JavaScriptCallBacks;
    invoke-interface {v1, p1, p2, p3}, Leasypay/listeners/JavaScriptCallBacks;->helperCallBack(Ljava/lang/String;Ljava/lang/String;I)V

    .line 126
    .end local v1    # "jsCback":Leasypay/listeners/JavaScriptCallBacks;
    goto :goto_0

    .line 127
    :cond_0
    goto :goto_3

    .line 119
    :sswitch_2
    iget-object v0, p0, Leasypay/manager/EasyPayHelper;->mJsCallListListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leasypay/listeners/JavaScriptCallBacks;

    .line 120
    .restart local v1    # "jsCback":Leasypay/listeners/JavaScriptCallBacks;
    invoke-interface {v1, p2, p1, p3}, Leasypay/listeners/JavaScriptCallBacks;->uiCallBack(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    .end local v1    # "jsCback":Leasypay/listeners/JavaScriptCallBacks;
    goto :goto_1

    .line 122
    :cond_1
    goto :goto_3

    .line 101
    :sswitch_3
    iget-object v0, p0, Leasypay/manager/EasyPayHelper;->mJsCallListListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leasypay/listeners/JavaScriptCallBacks;

    .line 102
    .restart local v1    # "jsCback":Leasypay/listeners/JavaScriptCallBacks;
    const-string v2, ""

    invoke-interface {v1, v2, p1, p3}, Leasypay/listeners/JavaScriptCallBacks;->helperCallBack(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    .end local v1    # "jsCback":Leasypay/listeners/JavaScriptCallBacks;
    goto :goto_2

    .line 139
    :cond_2
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x6a -> :sswitch_3
        0x97 -> :sswitch_2
        0x98 -> :sswitch_2
        0x99 -> :sswitch_2
        0x9c -> :sswitch_1
        0x9d -> :sswitch_2
        0x9f -> :sswitch_2
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_2
        0xa3 -> :sswitch_2
        0xa4 -> :sswitch_2
        0xa5 -> :sswitch_0
    .end sparse-switch
.end method

.method public OTPWatcher(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "ElId"    # Ljava/lang/String;
    .param p3, "eventCode"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 144
    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_5

    .line 152
    :sswitch_0
    iget-object v0, p0, Leasypay/manager/EasyPayHelper;->mJsCallListListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leasypay/listeners/JavaScriptCallBacks;

    .line 153
    .local v1, "jsCback":Leasypay/listeners/JavaScriptCallBacks;
    invoke-interface {v1, p2, p1, p3}, Leasypay/listeners/JavaScriptCallBacks;->helperCallBack(Ljava/lang/String;Ljava/lang/String;I)V

    .line 154
    .end local v1    # "jsCback":Leasypay/listeners/JavaScriptCallBacks;
    goto :goto_0

    .line 155
    :cond_0
    goto :goto_5

    .line 167
    :sswitch_1
    iget-object v0, p0, Leasypay/manager/EasyPayHelper;->mJsCallListListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leasypay/listeners/JavaScriptCallBacks;

    .line 168
    .restart local v1    # "jsCback":Leasypay/listeners/JavaScriptCallBacks;
    invoke-interface {v1, p2, p1, p3}, Leasypay/listeners/JavaScriptCallBacks;->uiCallBack(Ljava/lang/String;Ljava/lang/String;I)V

    .line 169
    .end local v1    # "jsCback":Leasypay/listeners/JavaScriptCallBacks;
    goto :goto_1

    .line 162
    :sswitch_2
    iget-object v0, p0, Leasypay/manager/EasyPayHelper;->mJsCallListListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leasypay/listeners/JavaScriptCallBacks;

    .line 163
    .restart local v1    # "jsCback":Leasypay/listeners/JavaScriptCallBacks;
    invoke-interface {v1, p2, p1, p3}, Leasypay/listeners/JavaScriptCallBacks;->uiCallBack(Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    .end local v1    # "jsCback":Leasypay/listeners/JavaScriptCallBacks;
    goto :goto_2

    .line 165
    :cond_1
    goto :goto_5

    .line 157
    :sswitch_3
    iget-object v0, p0, Leasypay/manager/EasyPayHelper;->mJsCallListListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leasypay/listeners/JavaScriptCallBacks;

    .line 158
    .restart local v1    # "jsCback":Leasypay/listeners/JavaScriptCallBacks;
    invoke-interface {v1, p2, p1, p3}, Leasypay/listeners/JavaScriptCallBacks;->uiCallBack(Ljava/lang/String;Ljava/lang/String;I)V

    .line 159
    .end local v1    # "jsCback":Leasypay/listeners/JavaScriptCallBacks;
    goto :goto_3

    .line 160
    :cond_2
    goto :goto_5

    .line 147
    :sswitch_4
    iget-object v0, p0, Leasypay/manager/EasyPayHelper;->mJsCallListListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leasypay/listeners/JavaScriptCallBacks;

    .line 148
    .restart local v1    # "jsCback":Leasypay/listeners/JavaScriptCallBacks;
    invoke-interface {v1, p2, p1, p3}, Leasypay/listeners/JavaScriptCallBacks;->uiCallBack(Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    .end local v1    # "jsCback":Leasypay/listeners/JavaScriptCallBacks;
    goto :goto_4

    .line 150
    :cond_3
    nop

    .line 172
    :cond_4
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x6c -> :sswitch_4
        0x9e -> :sswitch_3
        0xc9 -> :sswitch_4
        0xdd -> :sswitch_2
        0xde -> :sswitch_1
        0x12c -> :sswitch_0
    .end sparse-switch
.end method

.method public addJsCallListener(Leasypay/listeners/JavaScriptCallBacks;)V
    .locals 1
    .param p1, "subsCriberclient"    # Leasypay/listeners/JavaScriptCallBacks;

    .line 61
    iget-object v0, p0, Leasypay/manager/EasyPayHelper;->mJsCallListListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    return-void
.end method

.method public getBankResponse()Leasypay/entity/AssistDetailsResponse;
    .locals 1

    .line 53
    iget-object v0, p0, Leasypay/manager/EasyPayHelper;->bankResponse:Leasypay/entity/AssistDetailsResponse;

    return-object v0
.end method

.method public logError(Ljava/lang/String;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 176
    iget-object v0, p0, Leasypay/manager/EasyPayHelper;->mJsCallListListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leasypay/listeners/JavaScriptCallBacks;

    .line 177
    .local v1, "jsCback":Leasypay/listeners/JavaScriptCallBacks;
    const/16 v2, 0x6e

    const-string v3, ""

    invoke-interface {v1, v3, p1, v2}, Leasypay/listeners/JavaScriptCallBacks;->uiCallBack(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    .end local v1    # "jsCback":Leasypay/listeners/JavaScriptCallBacks;
    goto :goto_0

    .line 179
    :cond_0
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/manager/PaytmAssist;->getmEventMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "JSError"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/manager/PaytmAssist;->getCardDetails()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/manager/PaytmAssist;->getmEventMap()Ljava/util/Map;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bank Details"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v3

    invoke-virtual {v3}, Leasypay/manager/PaytmAssist;->getCardDetails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_1
    return-void
.end method

.method public sendBnkDtlToApp(Ljava/lang/String;)V
    .locals 6
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Json From UI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    const-string v0, ""

    .local v0, "bankNam":Ljava/lang/String;
    const-string v1, ""

    .local v1, "cardScheme":Ljava/lang/String;
    const-string v2, ""

    .line 192
    .local v2, "payMode":Ljava/lang/String;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Leasypay/manager/EasyPayHelper$1;

    invoke-direct {v4, p0}, Leasypay/manager/EasyPayHelper$1;-><init>(Leasypay/manager/EasyPayHelper;)V

    invoke-virtual {v4}, Leasypay/manager/EasyPayHelper$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 193
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_0

    const-string v4, "bnkCode"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 194
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_0
    if-eqz v3, :cond_1

    const-string v4, "payType"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 197
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 199
    :cond_1
    if-eqz v3, :cond_2

    const-string v4, "cardScheme"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 200
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    :cond_2
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v1}, Leasypay/manager/PaytmAssist;->setBankInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public setBankResponse(Leasypay/entity/AssistDetailsResponse;)V
    .locals 0
    .param p1, "bankResponse"    # Leasypay/entity/AssistDetailsResponse;

    .line 57
    iput-object p1, p0, Leasypay/manager/EasyPayHelper;->bankResponse:Leasypay/entity/AssistDetailsResponse;

    .line 58
    return-void
.end method

.method public showLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 209
    iget-object v0, p0, Leasypay/manager/EasyPayHelper;->mJsCallListListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leasypay/listeners/JavaScriptCallBacks;

    .line 210
    .local v1, "jsCback":Leasypay/listeners/JavaScriptCallBacks;
    const/16 v2, 0x6d

    const-string v3, ""

    invoke-interface {v1, v3, p1, v2}, Leasypay/listeners/JavaScriptCallBacks;->uiCallBack(Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    .end local v1    # "jsCback":Leasypay/listeners/JavaScriptCallBacks;
    goto :goto_0

    .line 212
    :cond_0
    invoke-static {}, Leasypay/manager/PaytmAssist;->getAssistInstance()Leasypay/manager/PaytmAssist;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leasypay/manager/PaytmAssist;->setAssistEngineTerminatedStatus(Z)V

    .line 213
    return-void
.end method

.method public successEvent(ILjava/lang/String;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 70
    const-string v0, ""

    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    .line 84
    :sswitch_0
    iget-object v1, p0, Leasypay/manager/EasyPayHelper;->mJsCallListListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leasypay/listeners/JavaScriptCallBacks;

    .line 85
    .local v2, "jsCback":Leasypay/listeners/JavaScriptCallBacks;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EasyPayHelper :Web success Ui callback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    invoke-interface {v2, v0, p2, p1}, Leasypay/listeners/JavaScriptCallBacks;->uiCallBack(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    .end local v2    # "jsCback":Leasypay/listeners/JavaScriptCallBacks;
    goto :goto_0

    .line 78
    :sswitch_1
    iget-object v1, p0, Leasypay/manager/EasyPayHelper;->mJsCallListListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leasypay/listeners/JavaScriptCallBacks;

    .line 79
    .restart local v2    # "jsCback":Leasypay/listeners/JavaScriptCallBacks;
    invoke-interface {v2, v0, p2, p1}, Leasypay/listeners/JavaScriptCallBacks;->helperCallBack(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    .end local v2    # "jsCback":Leasypay/listeners/JavaScriptCallBacks;
    goto :goto_1

    .line 82
    :cond_0
    nop

    .line 92
    :cond_1
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x6b -> :sswitch_0
        0x9a -> :sswitch_1
        0x9b -> :sswitch_1
        0x9c -> :sswitch_1
    .end sparse-switch
.end method
