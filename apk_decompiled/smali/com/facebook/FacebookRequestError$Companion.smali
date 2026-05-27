.class public final Lcom/facebook/FacebookRequestError$Companion;
.super Ljava/lang/Object;
.source "FacebookRequestError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/FacebookRequestError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u001f\u001a\u0004\u0018\u00010\u00082\u0006\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u00012\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u0019X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0019X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001b\u001a\u00020\u001c8G\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006%"
    }
    d2 = {
        "Lcom/facebook/FacebookRequestError$Companion;",
        "",
        "()V",
        "BODY_KEY",
        "",
        "CODE_KEY",
        "CREATOR",
        "Landroid/os/Parcelable$Creator;",
        "Lcom/facebook/FacebookRequestError;",
        "ERROR_CODE_FIELD_KEY",
        "ERROR_CODE_KEY",
        "ERROR_IS_TRANSIENT_KEY",
        "ERROR_KEY",
        "ERROR_MESSAGE_FIELD_KEY",
        "ERROR_MSG_KEY",
        "ERROR_REASON_KEY",
        "ERROR_SUB_CODE_KEY",
        "ERROR_TYPE_FIELD_KEY",
        "ERROR_USER_MSG_KEY",
        "ERROR_USER_TITLE_KEY",
        "HTTP_RANGE_SUCCESS",
        "Lcom/facebook/FacebookRequestError$Range;",
        "getHTTP_RANGE_SUCCESS",
        "()Lcom/facebook/FacebookRequestError$Range;",
        "INVALID_ERROR_CODE",
        "",
        "INVALID_HTTP_STATUS_CODE",
        "errorClassification",
        "Lcom/facebook/internal/FacebookRequestErrorClassification;",
        "getErrorClassification",
        "()Lcom/facebook/internal/FacebookRequestErrorClassification;",
        "checkResponseAndCreateError",
        "singleResult",
        "Lorg/json/JSONObject;",
        "batchResult",
        "connection",
        "Ljava/net/HttpURLConnection;",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 260
    invoke-direct {p0}, Lcom/facebook/FacebookRequestError$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkResponseAndCreateError(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/FacebookRequestError;
    .locals 29
    .param p1, "singleResult"    # Lorg/json/JSONObject;
    .param p2, "batchResult"    # Ljava/lang/Object;
    .param p3, "connection"    # Ljava/net/HttpURLConnection;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v15, p1

    const-string v0, "error_code"

    const-string v1, "error"

    const-string v2, "FACEBOOK_NON_JSON_RESULT"

    const-string v3, "body"

    const-string v4, "code"

    const-string/jumbo v5, "singleResult"

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    nop

    .line 292
    const/4 v14, 0x0

    :try_start_0
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 293
    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move v13, v5

    .line 294
    .local v13, "responseCode":I
    nop

    .line 295
    nop

    .line 296
    nop

    .line 295
    invoke-static {v15, v3, v2}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 294
    move-object v12, v5

    .line 297
    .local v12, "body":Ljava/lang/Object;
    if-eqz v12, :cond_b

    instance-of v5, v12, Lorg/json/JSONObject;

    if-eqz v5, :cond_b

    .line 298
    move-object/from16 v16, v12

    .line 302
    .local v16, "jsonBody":Ljava/lang/Object;
    move-object v5, v14

    check-cast v5, Ljava/lang/String;

    .line 303
    .local v5, "errorType":Ljava/lang/String;
    move-object v6, v14

    check-cast v6, Ljava/lang/String;

    .line 304
    .local v6, "errorMessage":Ljava/lang/String;
    move-object v7, v14

    check-cast v7, Ljava/lang/String;

    .line 305
    .local v7, "errorUserMessage":Ljava/lang/String;
    move-object v8, v14

    check-cast v8, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    .line 306
    .local v8, "errorUserTitle":Ljava/lang/String;
    const/4 v9, 0x0

    .line 307
    .local v9, "errorIsTransient":Z
    const/4 v10, -0x1

    .line 308
    .local v10, "errorCode":I
    const/4 v11, -0x1

    .line 309
    .local v11, "errorSubCode":I
    const/16 v17, 0x0

    .line 310
    .local v17, "hasError":Z
    :try_start_1
    move-object/from16 v14, v16

    check-cast v14, Lorg/json/JSONObject;

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v19, v5

    .end local v5    # "errorType":Ljava/lang/String;
    .local v19, "errorType":Ljava/lang/String;
    const-string v5, "error_subcode"

    move-object/from16 v20, v6

    .end local v6    # "errorMessage":Ljava/lang/String;
    .local v20, "errorMessage":Ljava/lang/String;
    if-eqz v14, :cond_7

    .line 312
    :try_start_2
    move-object/from16 v0, v16

    check-cast v0, Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v14, 0x0

    :try_start_3
    invoke-static {v0, v1, v14}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    check-cast v0, Lorg/json/JSONObject;

    .line 313
    .local v0, "error":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "type"
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v14, 0x0

    :try_start_5
    invoke-virtual {v0, v1, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 314
    .end local v19    # "errorType":Ljava/lang/String;
    .local v1, "errorType":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    :try_start_6
    const-string v14, "message"
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    const/4 v6, 0x0

    :try_start_7
    invoke-virtual {v0, v14, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 375
    .end local v0    # "error":Lorg/json/JSONObject;
    .end local v1    # "errorType":Ljava/lang/String;
    .end local v7    # "errorUserMessage":Ljava/lang/String;
    .end local v8    # "errorUserTitle":Ljava/lang/String;
    .end local v9    # "errorIsTransient":Z
    .end local v10    # "errorCode":I
    .end local v11    # "errorSubCode":I
    .end local v12    # "body":Ljava/lang/Object;
    .end local v13    # "responseCode":I
    .end local v16    # "jsonBody":Ljava/lang/Object;
    .end local v17    # "hasError":Z
    .end local v20    # "errorMessage":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v18, v6

    goto/16 :goto_a

    .line 314
    .restart local v0    # "error":Lorg/json/JSONObject;
    .restart local v1    # "errorType":Ljava/lang/String;
    .restart local v7    # "errorUserMessage":Ljava/lang/String;
    .restart local v8    # "errorUserTitle":Ljava/lang/String;
    .restart local v9    # "errorIsTransient":Z
    .restart local v10    # "errorCode":I
    .restart local v11    # "errorSubCode":I
    .restart local v12    # "body":Ljava/lang/Object;
    .restart local v13    # "responseCode":I
    .restart local v16    # "jsonBody":Ljava/lang/Object;
    .restart local v17    # "hasError":Z
    .restart local v20    # "errorMessage":Ljava/lang/String;
    :cond_1
    const/4 v14, 0x0

    :goto_1
    move-object v6, v14

    .line 315
    .end local v20    # "errorMessage":Ljava/lang/String;
    .restart local v6    # "errorMessage":Ljava/lang/String;
    nop

    .line 316
    if-eqz v0, :cond_2

    const/4 v14, -0x1

    :try_start_8
    invoke-virtual {v0, v4, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_2

    :cond_2
    const/4 v4, -0x1

    :goto_2
    move v10, v4

    .line 317
    nop

    .line 318
    if-eqz v0, :cond_3

    const/4 v4, -0x1

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_3

    :cond_3
    const/4 v4, -0x1

    :goto_3
    move v11, v4

    .line 319
    if-eqz v0, :cond_4

    const-string v4, "error_user_msg"
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2

    const/4 v5, 0x0

    :try_start_9
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4

    .line 375
    .end local v0    # "error":Lorg/json/JSONObject;
    .end local v1    # "errorType":Ljava/lang/String;
    .end local v6    # "errorMessage":Ljava/lang/String;
    .end local v7    # "errorUserMessage":Ljava/lang/String;
    .end local v8    # "errorUserTitle":Ljava/lang/String;
    .end local v9    # "errorIsTransient":Z
    .end local v10    # "errorCode":I
    .end local v11    # "errorSubCode":I
    .end local v12    # "body":Ljava/lang/Object;
    .end local v13    # "responseCode":I
    .end local v16    # "jsonBody":Ljava/lang/Object;
    .end local v17    # "hasError":Z
    :catch_1
    move-exception v0

    move-object/from16 v18, v5

    goto/16 :goto_a

    .line 319
    .restart local v0    # "error":Lorg/json/JSONObject;
    .restart local v1    # "errorType":Ljava/lang/String;
    .restart local v6    # "errorMessage":Ljava/lang/String;
    .restart local v7    # "errorUserMessage":Ljava/lang/String;
    .restart local v8    # "errorUserTitle":Ljava/lang/String;
    .restart local v9    # "errorIsTransient":Z
    .restart local v10    # "errorCode":I
    .restart local v11    # "errorSubCode":I
    .restart local v12    # "body":Ljava/lang/Object;
    .restart local v13    # "responseCode":I
    .restart local v16    # "jsonBody":Ljava/lang/Object;
    .restart local v17    # "hasError":Z
    :cond_4
    const/4 v4, 0x0

    :goto_4
    move-object v7, v4

    .line 320
    if-eqz v0, :cond_5

    :try_start_a
    const-string v4, "error_user_title"
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_2

    const/4 v5, 0x0

    :try_start_b
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_5

    :cond_5
    const/4 v14, 0x0

    :goto_5
    move-object v8, v14

    .line 321
    const/4 v4, 0x0

    if-eqz v0, :cond_6

    :try_start_c
    const-string v5, "is_transient"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    :cond_6
    move v9, v4

    .line 322
    const/16 v17, 0x1

    move-object/from16 v19, v1

    move-object/from16 v20, v6

    move-object v0, v7

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, v17

    move-object/from16 v17, v8

    .end local v0    # "error":Lorg/json/JSONObject;
    goto/16 :goto_7

    .line 323
    .end local v1    # "errorType":Ljava/lang/String;
    .end local v6    # "errorMessage":Ljava/lang/String;
    .restart local v19    # "errorType":Ljava/lang/String;
    .restart local v20    # "errorMessage":Ljava/lang/String;
    :cond_7
    nop

    .line 324
    nop

    .line 325
    nop

    .line 323
    move-object/from16 v1, v16

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_2

    const-string v4, "error_msg"

    const-string v6, "error_reason"

    if-nez v1, :cond_9

    .line 324
    :try_start_d
    move-object/from16 v1, v16

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 325
    move-object/from16 v1, v16

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    move-object v0, v7

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, v17

    move-object/from16 v17, v8

    goto :goto_7

    .line 326
    :cond_9
    :goto_6
    move-object/from16 v1, v16

    check-cast v1, Lorg/json/JSONObject;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_2

    const/4 v14, 0x0

    :try_start_e
    invoke-virtual {v1, v6, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    .end local v19    # "errorType":Ljava/lang/String;
    .restart local v1    # "errorType":Ljava/lang/String;
    move-object/from16 v6, v16

    check-cast v6, Lorg/json/JSONObject;

    invoke-virtual {v6, v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 328
    .end local v20    # "errorMessage":Ljava/lang/String;
    .restart local v6    # "errorMessage":Ljava/lang/String;
    move-object/from16 v4, v16

    check-cast v4, Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_4

    const/4 v14, -0x1

    :try_start_f
    invoke-virtual {v4, v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    move v10, v0

    .line 329
    move-object/from16 v0, v16

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v5, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    move v11, v0

    .line 330
    const/16 v17, 0x1

    move-object/from16 v19, v1

    move-object/from16 v20, v6

    move-object v0, v7

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, v17

    move-object/from16 v17, v8

    .line 331
    .end local v1    # "errorType":Ljava/lang/String;
    .end local v6    # "errorMessage":Ljava/lang/String;
    .end local v7    # "errorUserMessage":Ljava/lang/String;
    .end local v8    # "errorUserTitle":Ljava/lang/String;
    .end local v9    # "errorIsTransient":Z
    .end local v10    # "errorCode":I
    .end local v11    # "errorSubCode":I
    .local v0, "errorUserMessage":Ljava/lang/String;
    .local v17, "errorUserTitle":Ljava/lang/String;
    .restart local v19    # "errorType":Ljava/lang/String;
    .restart local v20    # "errorMessage":Ljava/lang/String;
    .local v21, "errorIsTransient":Z
    .local v22, "errorCode":I
    .local v23, "errorSubCode":I
    .local v24, "hasError":Z
    :goto_7
    nop

    .line 332
    if-eqz v24, :cond_a

    .line 333
    new-instance v25, Lcom/facebook/FacebookRequestError;

    .line 334
    nop

    .line 335
    nop

    .line 336
    nop

    .line 337
    nop

    .line 338
    nop

    .line 339
    nop

    .line 340
    nop

    .line 341
    move-object/from16 v9, v16

    check-cast v9, Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_2

    .line 342
    nop

    .line 343
    nop

    .line 344
    nop

    .line 345
    const/4 v14, 0x0

    .line 346
    const/16 v26, 0x0

    .line 333
    move-object/from16 v1, v25

    move v2, v13

    move/from16 v3, v22

    move/from16 v4, v23

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v17

    move-object v8, v0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v27, v12

    .end local v12    # "body":Ljava/lang/Object;
    .local v27, "body":Ljava/lang/Object;
    move-object/from16 v12, p3

    move/from16 v28, v13

    .end local v13    # "responseCode":I
    .local v28, "responseCode":I
    move-object v13, v14

    const/16 v18, 0x0

    move/from16 v14, v21

    move-object/from16 v15, v26

    :try_start_10
    invoke-direct/range {v1 .. v15}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v25

    .line 332
    .end local v27    # "body":Ljava/lang/Object;
    .end local v28    # "responseCode":I
    .restart local v12    # "body":Ljava/lang/Object;
    .restart local v13    # "responseCode":I
    :cond_a
    move-object/from16 v27, v12

    move/from16 v28, v13

    const/16 v18, 0x0

    .end local v12    # "body":Ljava/lang/Object;
    .end local v13    # "responseCode":I
    .restart local v27    # "body":Ljava/lang/Object;
    .restart local v28    # "responseCode":I
    goto :goto_8

    .line 375
    .end local v0    # "errorUserMessage":Ljava/lang/String;
    .end local v16    # "jsonBody":Ljava/lang/Object;
    .end local v17    # "errorUserTitle":Ljava/lang/String;
    .end local v19    # "errorType":Ljava/lang/String;
    .end local v20    # "errorMessage":Ljava/lang/String;
    .end local v21    # "errorIsTransient":Z
    .end local v22    # "errorCode":I
    .end local v23    # "errorSubCode":I
    .end local v24    # "hasError":Z
    .end local v27    # "body":Ljava/lang/Object;
    .end local v28    # "responseCode":I
    :catch_2
    move-exception v0

    const/16 v18, 0x0

    goto/16 :goto_a

    .line 297
    .restart local v12    # "body":Ljava/lang/Object;
    .restart local v13    # "responseCode":I
    :cond_b
    move-object/from16 v27, v12

    move/from16 v28, v13

    move-object/from16 v18, v14

    .line 352
    .end local v12    # "body":Ljava/lang/Object;
    .end local v13    # "responseCode":I
    .restart local v27    # "body":Ljava/lang/Object;
    .restart local v28    # "responseCode":I
    :goto_8
    move-object/from16 v0, p0

    check-cast v0, Lcom/facebook/FacebookRequestError$Companion;

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError$Companion;->getHTTP_RANGE_SUCCESS()Lcom/facebook/FacebookRequestError$Range;

    move-result-object v0

    move/from16 v15, v28

    .end local v28    # "responseCode":I
    .local v15, "responseCode":I
    invoke-virtual {v0, v15}, Lcom/facebook/FacebookRequestError$Range;->contains(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 353
    new-instance v0, Lcom/facebook/FacebookRequestError;

    .line 354
    nop

    .line 355
    const/4 v4, -0x1

    .line 356
    const/4 v5, -0x1

    .line 357
    const/4 v6, 0x0

    .line 358
    const/4 v7, 0x0

    .line 359
    const/4 v8, 0x0

    .line 360
    const/4 v9, 0x0

    .line 361
    move-object/from16 v14, p1

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 362
    nop

    .line 363
    nop

    .line 362
    invoke-static {v14, v3, v2}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    move-object v10, v1

    goto :goto_9

    .line 366
    :cond_c
    move-object/from16 v10, v18

    .line 361
    :goto_9
    nop

    .line 368
    nop

    .line 369
    nop

    .line 370
    nop

    .line 371
    const/4 v13, 0x0

    .line 372
    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 353
    move-object v1, v0

    move v2, v15

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v14, v16

    move/from16 v16, v15

    .end local v15    # "responseCode":I
    .local v16, "responseCode":I
    move-object/from16 v15, v17

    invoke-direct/range {v1 .. v15}, Lcom/facebook/FacebookRequestError;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_3

    return-object v0

    .line 352
    .end local v16    # "responseCode":I
    .restart local v15    # "responseCode":I
    :cond_d
    move/from16 v16, v15

    .end local v15    # "responseCode":I
    .restart local v16    # "responseCode":I
    goto :goto_a

    .line 375
    .end local v16    # "responseCode":I
    .end local v27    # "body":Ljava/lang/Object;
    :catch_3
    move-exception v0

    goto :goto_a

    .line 292
    :cond_e
    move-object/from16 v18, v14

    goto :goto_a

    .line 375
    :catch_4
    move-exception v0

    move-object/from16 v18, v14

    .line 376
    :goto_a
    return-object v18
.end method

.method public final declared-synchronized getErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    monitor-enter p0

    .line 383
    nop

    .line 384
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    nop

    .line 386
    .local v0, "appSettings":Lcom/facebook/internal/FetchedAppSettings;
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings;->getErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 385
    .end local v0    # "appSettings":Lcom/facebook/internal/FetchedAppSettings;
    .end local p0    # "this":Lcom/facebook/FacebookRequestError$Companion;
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/internal/FacebookRequestErrorClassification;->Companion:Lcom/facebook/internal/FacebookRequestErrorClassification$Companion;

    invoke-virtual {v0}, Lcom/facebook/internal/FacebookRequestErrorClassification$Companion;->getDefaultErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getHTTP_RANGE_SUCCESS()Lcom/facebook/FacebookRequestError$Range;
    .locals 1

    .line 283
    invoke-static {}, Lcom/facebook/FacebookRequestError;->access$getHTTP_RANGE_SUCCESS$cp()Lcom/facebook/FacebookRequestError$Range;

    move-result-object v0

    return-object v0
.end method
