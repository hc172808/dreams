.class final Lcom/facebook/GraphRequest$callback$wrapper$1;
.super Ljava/lang/Object;
.source "GraphRequest.kt"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
        "Lcom/facebook/GraphResponse;",
        "onCompleted"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/facebook/GraphRequest$Callback;


# direct methods
.method constructor <init>(Lcom/facebook/GraphRequest$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/GraphRequest$callback$wrapper$1;->$callback:Lcom/facebook/GraphRequest$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 13
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 164
    .local v0, "responseObject":Lorg/json/JSONObject;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "__debug__"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 165
    .local v2, "debug":Lorg/json/JSONObject;
    :goto_0
    if-eqz v2, :cond_1

    const-string v3, "messages"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 166
    .local v3, "debugMessages":Lorg/json/JSONArray;
    :goto_1
    if-eqz v3, :cond_8

    .line 167
    const/4 v4, 0x0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    :goto_2
    if-ge v4, v5, :cond_8

    .line 168
    .local v4, "i":I
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 169
    .local v6, "debugMessageObject":Lorg/json/JSONObject;
    if-eqz v6, :cond_2

    const-string v7, "message"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_2
    move-object v7, v1

    .line 170
    .local v7, "debugMessage":Ljava/lang/String;
    :goto_3
    if-eqz v6, :cond_3

    const-string/jumbo v8, "type"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_3
    move-object v8, v1

    .line 171
    .local v8, "debugMessageType":Ljava/lang/String;
    :goto_4
    if-eqz v6, :cond_4

    const-string v9, "link"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_4
    move-object v9, v1

    .line 172
    .local v9, "debugMessageLink":Ljava/lang/String;
    :goto_5
    if-eqz v7, :cond_7

    if-eqz v8, :cond_7

    .line 173
    sget-object v10, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_INFO:Lcom/facebook/LoggingBehavior;

    .line 174
    .local v10, "behavior":Lcom/facebook/LoggingBehavior;
    const-string/jumbo v11, "warning"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 175
    sget-object v10, Lcom/facebook/LoggingBehavior;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/LoggingBehavior;

    .line 177
    :cond_5
    invoke-static {v9}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 178
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " Link: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 180
    :cond_6
    sget-object v11, Lcom/facebook/internal/Logger;->Companion:Lcom/facebook/internal/Logger$Companion;

    sget-object v12, Lcom/facebook/GraphRequest;->Companion:Lcom/facebook/GraphRequest$Companion;

    invoke-virtual {v12}, Lcom/facebook/GraphRequest$Companion;->getTAG()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v10, v12, v7}, Lcom/facebook/internal/Logger$Companion;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .end local v6    # "debugMessageObject":Lorg/json/JSONObject;
    .end local v7    # "debugMessage":Ljava/lang/String;
    .end local v8    # "debugMessageType":Ljava/lang/String;
    .end local v9    # "debugMessageLink":Ljava/lang/String;
    .end local v10    # "behavior":Lcom/facebook/LoggingBehavior;
    :cond_7
    nop

    .end local v4    # "i":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 184
    :cond_8
    iget-object v1, p0, Lcom/facebook/GraphRequest$callback$wrapper$1;->$callback:Lcom/facebook/GraphRequest$Callback;

    if-eqz v1, :cond_9

    invoke-interface {v1, p1}, Lcom/facebook/GraphRequest$Callback;->onCompleted(Lcom/facebook/GraphResponse;)V

    .line 185
    .end local v0    # "responseObject":Lorg/json/JSONObject;
    .end local v2    # "debug":Lorg/json/JSONObject;
    .end local v3    # "debugMessages":Lorg/json/JSONArray;
    :cond_9
    return-void
.end method
