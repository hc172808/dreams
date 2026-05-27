.class public Lcom/payumoney/core/presenter/MakePayment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;


# instance fields
.field public final a:I

.field b:Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;

.field c:Landroid/app/Activity;

.field d:Lcom/payumoney/core/request/PaymentRequest;

.field private final e:I

.field private final f:I

.field private g:Landroid/app/ProgressDialog;

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;Lcom/payumoney/core/request/PaymentRequest;ZLandroid/app/Activity;Ljava/lang/String;)V
    .locals 26
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;
    .param p2, "request"    # Lcom/payumoney/core/request/PaymentRequest;
    .param p3, "validateCardDetails"    # Z
    .param p4, "activity"    # Landroid/app/Activity;
    .param p5, "tag"    # Ljava/lang/String;

    .line 75
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v6, 0x2

    iput v6, v0, Lcom/payumoney/core/presenter/MakePayment;->a:I

    .line 45
    const/4 v7, 0x1

    iput v7, v0, Lcom/payumoney/core/presenter/MakePayment;->e:I

    .line 46
    const/4 v8, 0x0

    iput v8, v0, Lcom/payumoney/core/presenter/MakePayment;->f:I

    .line 52
    new-instance v8, Lcom/payumoney/core/presenter/MakePayment$1;

    invoke-direct {v8, v0}, Lcom/payumoney/core/presenter/MakePayment$1;-><init>(Lcom/payumoney/core/presenter/MakePayment;)V

    iput-object v8, v0, Lcom/payumoney/core/presenter/MakePayment;->h:Landroid/content/BroadcastReceiver;

    .line 76
    iput-object v1, v0, Lcom/payumoney/core/presenter/MakePayment;->b:Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;

    .line 77
    iput-object v2, v0, Lcom/payumoney/core/presenter/MakePayment;->d:Lcom/payumoney/core/request/PaymentRequest;

    .line 78
    iput-object v4, v0, Lcom/payumoney/core/presenter/MakePayment;->c:Landroid/app/Activity;

    .line 81
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 82
    const-string v9, "EventSource"

    const-string v10, "SDK"

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getPg()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_45

    .line 85
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getPg()Ljava/lang/String;

    move-result-object v11

    const-string v12, "NB"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "payment ID is empty"

    const-string v13, "bank code is empty"

    const-string v14, "paymentMethodSelected"

    const-string v15, ""

    if-eqz v11, :cond_5

    .line 86
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getBankCode()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getBankCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_1

    .line 91
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getPaymentID()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getPaymentID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getBankCode()Ljava/lang/String;

    move-result-object v11

    const-string v6, "CITNB"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 96
    const-string v6, "CITI Netbanking not allowed"

    invoke-interface {v1, v6, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void

    .line 100
    :cond_2
    const-string v6, "Bank"

    invoke-virtual {v8, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 92
    :cond_3
    :goto_0
    invoke-interface {v1, v12, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void

    .line 87
    :cond_4
    :goto_1
    invoke-interface {v1, v13, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void

    .line 103
    :cond_5
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getPg()Ljava/lang/String;

    move-result-object v6

    const-string v11, "UPI"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 104
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getBankCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getBankCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_5

    .line 109
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getPaymentID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getPaymentID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_4

    .line 114
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getVpa()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getVpa()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_3

    .line 120
    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getVpa()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/payumoney/core/utils/SdkHelper;->isValidVPA(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 121
    new-instance v6, Lcom/payumoney/core/response/ErrorResponse;

    invoke-direct {v6}, Lcom/payumoney/core/response/ErrorResponse;-><init>()V

    .line 122
    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/payumoney/core/R$string;->error_incorrect_upi_id:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/payumoney/core/response/ErrorResponse;->setMessage(Ljava/lang/String;)V

    .line 123
    invoke-interface {v1, v6, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V

    .line 124
    return-void

    .line 127
    :cond_9
    invoke-virtual {v8, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 115
    :cond_a
    :goto_3
    const-string v6, "vpa is empty"

    invoke-interface {v1, v6, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void

    .line 110
    :cond_b
    :goto_4
    invoke-interface {v1, v12, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void

    .line 105
    :cond_c
    :goto_5
    invoke-interface {v1, v13, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void

    .line 130
    :cond_d
    :goto_6
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getPg()Ljava/lang/String;

    move-result-object v6

    const-string v11, "wallet"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-string v11, "amount"

    if-eqz v6, :cond_10

    .line 131
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getConvenienceFee()D

    move-result-wide v20

    add-double v18, v18, v20

    invoke-static {}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getInstance()Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getWalletAmount()D

    move-result-wide v20

    cmpl-double v6, v18, v20

    if-lez v6, :cond_e

    .line 132
    const-string v6, "Insufficient amount in wallet"

    invoke-interface {v1, v6, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void

    .line 135
    :cond_e
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    cmpg-double v6, v18, v16

    if-gez v6, :cond_f

    .line 136
    const-string v6, "Amount less than 1 rupee for wallet transaction not allowed"

    invoke-interface {v1, v6, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void

    .line 140
    :cond_f
    const-string v6, "PUMWallet"

    invoke-virtual {v8, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getPg()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "Cards cannot be saved for guest users"

    const-string v4, "123"

    move-object/from16 v19, v11

    const-string v11, "International Cards cannot be saved to user account (Err: storeCard=true; should be storeCard=false)"

    move-object/from16 v20, v9

    const-string v9, "IN"

    move-object/from16 v21, v10

    const-string v10, "null"

    move-object/from16 v22, v13

    const-string v13, "country code is empty"

    move-object/from16 v23, v8

    const-string v8, "Card detail empty"

    if-nez v6, :cond_12

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getPg()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v24, v14

    const-string v14, "DC"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    goto :goto_7

    :cond_11
    move-object/from16 v25, v4

    move-object/from16 v6, v23

    move-object/from16 v14, v24

    goto/16 :goto_b

    :cond_12
    move-object/from16 v24, v14

    .line 144
    :goto_7
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCardNumber()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_13

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCardtoken()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_13

    .line 145
    invoke-interface {v1, v8, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void

    .line 149
    :cond_13
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCardNumber()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_14

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 150
    :cond_14
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_15

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_16

    .line 151
    :cond_15
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_17

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 153
    :cond_16
    invoke-interface {v1, v13, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void

    .line 158
    :cond_17
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCardNumber()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_18

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_18

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->isStoreCard()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 159
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 160
    invoke-interface {v1, v11, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void

    .line 164
    :cond_18
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getBankCode()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_44

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getBankCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_19

    move-object/from16 v4, p4

    move-object/from16 v6, v22

    goto/16 :goto_11

    .line 169
    :cond_19
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payumoney/core/PayUmoneySDK;->isUserLoggedIn()Z

    move-result v6

    if-nez v6, :cond_1b

    .line 170
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payumoney/core/PayUmoneySDK;->isNitroEnabled()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payumoney/core/PayUmoneySDK;->isUserAccountActive()Z

    move-result v6

    if-nez v6, :cond_1b

    .line 171
    :cond_1a
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->isStoreCard()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 172
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payumoney/core/PayUmoneySDK;->isUserSignUpDisabled()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 173
    invoke-interface {v1, v7, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void

    .line 177
    :cond_1b
    const/4 v6, 0x1

    if-ne v3, v6, :cond_1c

    .line 178
    invoke-virtual {v0, v1, v2, v5}, Lcom/payumoney/core/presenter/MakePayment;->validateCardDetails(Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;Lcom/payumoney/core/request/PaymentRequest;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1c

    .line 179
    return-void

    .line 183
    :cond_1c
    if-ne v3, v6, :cond_23

    .line 184
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCvv()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1d

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCvv()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 185
    :cond_1d
    invoke-virtual {v2, v4}, Lcom/payumoney/core/request/PaymentRequest;->setCvv(Ljava/lang/String;)V

    .line 188
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCardtoken()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_22

    .line 189
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getExpiryMonth()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_20

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getExpiryMonth()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    goto :goto_8

    :cond_1f
    move-object/from16 v25, v4

    goto :goto_9

    .line 190
    :cond_20
    :goto_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    move-object/from16 v25, v4

    const/4 v4, 0x2

    invoke-virtual {v14, v4}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/4 v4, 0x1

    add-int/2addr v14, v4

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/payumoney/core/request/PaymentRequest;->setExpiryMonth(Ljava/lang/String;)V

    .line 193
    :goto_9
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getExpiryYear()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_21

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getExpiryYear()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 194
    :cond_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/payumoney/core/request/PaymentRequest;->setExpiryYear(Ljava/lang/String;)V

    goto :goto_a

    .line 188
    :cond_22
    move-object/from16 v25, v4

    goto :goto_a

    .line 183
    :cond_23
    move-object/from16 v25, v4

    .line 200
    :cond_24
    :goto_a
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getPaymentID()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_25

    .line 201
    invoke-interface {v1, v12, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void

    .line 205
    :cond_25
    const-string v4, "Cards"

    move-object/from16 v6, v23

    move-object/from16 v14, v24

    invoke-virtual {v6, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :goto_b
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getPg()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v23, v6

    const-string v6, "EMI"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 209
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCardNumber()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_26

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCardtoken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_26

    .line 210
    invoke-interface {v1, v8, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void

    .line 214
    :cond_26
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCardNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_27

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 215
    :cond_27
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_28

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_29

    .line 216
    :cond_28
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2a

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 218
    :cond_29
    invoke-interface {v1, v13, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void

    .line 223
    :cond_2a
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCardNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2b

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2b

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->isStoreCard()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 224
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 225
    invoke-interface {v1, v11, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void

    .line 229
    :cond_2b
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getBankCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_37

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getBankCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2c

    goto/16 :goto_c

    .line 235
    :cond_2c
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/payumoney/core/PayUmoneySDK;->isUserLoggedIn()Z

    move-result v4

    if-nez v4, :cond_2e

    .line 236
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/payumoney/core/PayUmoneySDK;->isNitroEnabled()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/payumoney/core/PayUmoneySDK;->isUserAccountActive()Z

    move-result v4

    if-nez v4, :cond_2e

    .line 237
    :cond_2d
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->isStoreCard()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 238
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v4

    invoke-virtual {v4}, Lcom/payumoney/core/PayUmoneySDK;->isUserSignUpDisabled()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 239
    invoke-interface {v1, v7, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void

    .line 243
    :cond_2e
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2f

    .line 244
    invoke-virtual {v0, v1, v2, v5}, Lcom/payumoney/core/presenter/MakePayment;->validateCardDetails(Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;Lcom/payumoney/core/request/PaymentRequest;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2f

    .line 245
    return-void

    .line 249
    :cond_2f
    if-ne v3, v4, :cond_35

    .line 250
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCvv()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_30

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCvv()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 251
    :cond_30
    move-object/from16 v4, v25

    invoke-virtual {v2, v4}, Lcom/payumoney/core/request/PaymentRequest;->setCvv(Ljava/lang/String;)V

    .line 254
    :cond_31
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getCardtoken()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_35

    .line 255
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getExpiryMonth()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_32

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getExpiryMonth()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 256
    :cond_32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/payumoney/core/request/PaymentRequest;->setExpiryMonth(Ljava/lang/String;)V

    .line 259
    :cond_33
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getExpiryYear()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_34

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getExpiryYear()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 260
    :cond_34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x5

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/payumoney/core/request/PaymentRequest;->setExpiryYear(Ljava/lang/String;)V

    .line 266
    :cond_35
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getPaymentID()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_36

    .line 267
    invoke-interface {v1, v12, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void

    .line 271
    :cond_36
    move-object/from16 v4, v23

    invoke-virtual {v4, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v22

    goto :goto_d

    .line 230
    :cond_37
    :goto_c
    move-object/from16 v6, v22

    invoke-interface {v1, v6, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void

    .line 208
    :cond_38
    move-object/from16 v6, v22

    move-object/from16 v4, v23

    .line 274
    :goto_d
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getPg()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CASHCARD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "clevertap"

    if-eqz v7, :cond_3e

    .line 275
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getBankCode()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3d

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getBankCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_39

    goto :goto_f

    .line 280
    :cond_39
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getPaymentID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3c

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getPaymentID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3a

    goto :goto_e

    .line 285
    :cond_3a
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->isSplitPayment()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 286
    const-string v4, "split payment not allowed"

    invoke-interface {v1, v4, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void

    .line 290
    :cond_3b
    const-string v6, "3PWallet"

    invoke-virtual {v4, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 294
    move-object/from16 v9, v20

    move-object/from16 v7, v21

    invoke-virtual {v6, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getBankCode()Ljava/lang/String;

    move-result-object v7

    const-string v9, "walletSelected"

    invoke-virtual {v6, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v9, "3PWalletPayment"

    invoke-static {v7, v9, v6, v8}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_10

    .line 281
    :cond_3c
    :goto_e
    invoke-interface {v1, v12, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void

    .line 276
    :cond_3d
    :goto_f
    invoke-interface {v1, v6, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void

    .line 299
    :cond_3e
    :goto_10
    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->isSplitPayment()Z

    move-result v6

    if-eqz v6, :cond_42

    .line 300
    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/payumoney/core/PayUmoneySDK;->isUserLoggedIn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3f

    .line 301
    const-string v4, "Split payment not allowed - user is not logged in"

    invoke-interface {v1, v4, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void

    .line 305
    :cond_3f
    invoke-static {}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getInstance()Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getWalletAmount()D

    move-result-wide v6

    cmpg-double v9, v6, v16

    if-gez v9, :cond_40

    .line 306
    const-string v4, "Wallet balance less then 1 rupee transaction not allowed "

    invoke-interface {v1, v4, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-void

    .line 309
    :cond_40
    invoke-static {}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getInstance()Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;

    move-result-object v6

    invoke-virtual {v6}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getWalletAmount()D

    move-result-wide v6

    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v9

    invoke-virtual {v9}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v9

    invoke-virtual {v9}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v9

    move-object/from16 v10, v19

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual/range {p2 .. p2}, Lcom/payumoney/core/request/PaymentRequest;->getConvenienceFee()D

    move-result-wide v11

    add-double/2addr v9, v11

    cmpl-double v11, v6, v9

    if-ltz v11, :cond_41

    .line 310
    const-string v4, "Split payment not allowed"

    invoke-interface {v1, v4, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void

    .line 314
    :cond_41
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PUMWallet|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_42
    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "PaymentOptionSelected"

    invoke-static {v6, v7, v4, v8}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 323
    move-object/from16 v4, p4

    if-eqz v4, :cond_43

    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_43

    .line 324
    invoke-virtual/range {p4 .. p4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/payumoney/core/SdkSession;->getInstance(Landroid/content/Context;)Lcom/payumoney/core/SdkSession;

    move-result-object v6

    invoke-virtual {v6, v2, v0, v5}, Lcom/payumoney/core/SdkSession;->sendToPayU(Lcom/payumoney/core/request/PaymentRequest;Lcom/payumoney/core/listener/OnPaymentDetailsReceivedFromPayuMoney;Ljava/lang/String;)V

    .line 325
    new-instance v6, Landroid/app/ProgressDialog;

    invoke-direct {v6, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/payumoney/core/presenter/MakePayment;->g:Landroid/app/ProgressDialog;

    .line 326
    const-string v7, "Please Wait..."

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v6, v0, Lcom/payumoney/core/presenter/MakePayment;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->show()V

    .line 329
    :cond_43
    return-void

    .line 164
    :cond_44
    move-object/from16 v4, p4

    move-object/from16 v6, v22

    .line 165
    :goto_11
    invoke-interface {v1, v6, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void

    .line 320
    :cond_45
    const-string v6, "invalid pg value"

    invoke-interface {v1, v6, v5}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method static synthetic a(Lcom/payumoney/core/presenter/MakePayment;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/payumoney/core/presenter/MakePayment;->h:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 332
    const-string v0, "(-+BEGIN PUBLIC KEY-+\\r?\\n|-+END PUBLIC KEY-+\\r?\\n?)"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 334
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 335
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "PayUMoneySdk"

    invoke-static {v2, v1}, Lcom/payumoney/core/utils/SdkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 337
    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public OnPaymentDetailsReceivedFromPayuMoney(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 10
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "tag"    # Ljava/lang/String;

    .line 344
    const-string v0, "merchantKey"

    const-string v1, "Something went wrong"

    const-string v2, "status"

    const-string v3, "null"

    const-string v4, "paymentId"

    const-string v5, "hash"

    const-string v6, "transactionDto"

    :try_start_0
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v8, ""

    const-string v9, "result"

    if-eqz v7, :cond_9

    :try_start_1
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 346
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 347
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 348
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 349
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    move-object p1, v1

    .line 385
    iget-object v1, p0, Lcom/payumoney/core/presenter/MakePayment;->g:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 386
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 389
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/payumoney/core/presenter/MakePayment;->c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/payumoney/core/SdkWebViewActivityNew;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 390
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const-string v2, "mode"

    iget-object v3, p0, Lcom/payumoney/core/presenter/MakePayment;->d:Lcom/payumoney/core/request/PaymentRequest;

    invoke-virtual {v3}, Lcom/payumoney/core/request/PaymentRequest;->getPg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    iget-object v2, p0, Lcom/payumoney/core/presenter/MakePayment;->d:Lcom/payumoney/core/request/PaymentRequest;

    invoke-virtual {v2}, Lcom/payumoney/core/request/PaymentRequest;->getPaymentID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    const-string v2, "payment_request"

    iget-object v3, p0, Lcom/payumoney/core/presenter/MakePayment;->d:Lcom/payumoney/core/request/PaymentRequest;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 394
    iget-object v2, p0, Lcom/payumoney/core/presenter/MakePayment;->d:Lcom/payumoney/core/request/PaymentRequest;

    invoke-virtual {v2}, Lcom/payumoney/core/request/PaymentRequest;->getPg()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/payumoney/core/presenter/MakePayment;->d:Lcom/payumoney/core/request/PaymentRequest;

    .line 395
    invoke-virtual {v2}, Lcom/payumoney/core/request/PaymentRequest;->getPg()Ljava/lang/String;

    move-result-object v2

    const-string v5, "UPI"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 396
    iget-object v2, p0, Lcom/payumoney/core/presenter/MakePayment;->d:Lcom/payumoney/core/request/PaymentRequest;

    invoke-virtual {v2}, Lcom/payumoney/core/request/PaymentRequest;->getCardName()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v5, "card_name"

    if-eqz v2, :cond_1

    .line 397
    :try_start_2
    iget-object v2, p0, Lcom/payumoney/core/presenter/MakePayment;->d:Lcom/payumoney/core/request/PaymentRequest;

    invoke-virtual {v2}, Lcom/payumoney/core/request/PaymentRequest;->getCardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 399
    :cond_1
    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    :goto_0
    iget-object v2, p0, Lcom/payumoney/core/presenter/MakePayment;->d:Lcom/payumoney/core/request/PaymentRequest;

    invoke-virtual {v2}, Lcom/payumoney/core/request/PaymentRequest;->getCardtoken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 402
    const-string v2, "store_card_token"

    iget-object v5, p0, Lcom/payumoney/core/presenter/MakePayment;->d:Lcom/payumoney/core/request/PaymentRequest;

    invoke-virtual {v5}, Lcom/payumoney/core/request/PaymentRequest;->getCardtoken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    :cond_2
    iget-object v2, p0, Lcom/payumoney/core/presenter/MakePayment;->d:Lcom/payumoney/core/request/PaymentRequest;

    invoke-virtual {v2}, Lcom/payumoney/core/request/PaymentRequest;->isStoreCard()Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v5, "store_card"

    if-ne v2, v3, :cond_3

    .line 406
    :try_start_3
    const-string v2, "1"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 408
    :cond_3
    const-string v2, "0"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/payumoney/core/presenter/MakePayment;->d:Lcom/payumoney/core/request/PaymentRequest;

    invoke-virtual {v2}, Lcom/payumoney/core/request/PaymentRequest;->getBankCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 415
    const-string v2, "bankcode"

    iget-object v5, p0, Lcom/payumoney/core/presenter/MakePayment;->d:Lcom/payumoney/core/request/PaymentRequest;

    invoke-virtual {v5}, Lcom/payumoney/core/request/PaymentRequest;->getBankCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    :cond_5
    const-string v2, "otpAutoRead"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 418
    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 420
    :try_start_4
    const-string v0, "payment"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 423
    goto :goto_2

    .line 421
    :catch_0
    move-exception v0

    .line 422
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 424
    :goto_2
    iget-object v0, p0, Lcom/payumoney/core/presenter/MakePayment;->c:Landroid/app/Activity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 425
    :cond_6
    goto/16 :goto_4

    .line 351
    :cond_7
    iget-object v0, p0, Lcom/payumoney/core/presenter/MakePayment;->g:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_8

    .line 352
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 356
    :cond_8
    new-instance v0, Lcom/payumoney/core/response/ErrorResponse;

    invoke-direct {v0}, Lcom/payumoney/core/response/ErrorResponse;-><init>()V

    .line 357
    invoke-virtual {v0, v1}, Lcom/payumoney/core/response/ErrorResponse;->setMessage(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 361
    :try_start_6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 362
    const-string v3, "EventSource"

    const-string v4, "SDK"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v3, "reason"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v1, "Amount"

    invoke-static {}, Lcom/payumoney/core/PayUmoneySDK;->getInstance()Lcom/payumoney/core/PayUmoneySDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/PayUmoneySDK;->getPaymentParam()Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    move-result-object v3

    invoke-virtual {v3}, Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;->getParams()Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "amount"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iget-object v5, p0, Lcom/payumoney/core/presenter/MakePayment;->d:Lcom/payumoney/core/request/PaymentRequest;

    invoke-virtual {v5}, Lcom/payumoney/core/request/PaymentRequest;->getConvenienceFee()D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v1, p0, Lcom/payumoney/core/presenter/MakePayment;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "PaymentFailed"

    const-string v4, "clevertap"

    invoke-static {v1, v3, v2, v4}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 368
    goto :goto_3

    .line 366
    :catch_1
    move-exception v1

    .line 367
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 370
    :goto_3
    iget-object v1, p0, Lcom/payumoney/core/presenter/MakePayment;->b:Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;

    invoke-interface {v1, v0, p2}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V

    .line 371
    return-void

    .line 425
    :cond_9
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "frmPostBack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 426
    iget-object v0, p0, Lcom/payumoney/core/presenter/MakePayment;->g:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_a

    .line 427
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 429
    :cond_a
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 430
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 431
    iget-object v0, p0, Lcom/payumoney/core/presenter/MakePayment;->b:Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8, p2}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 433
    :cond_b
    iget-object v0, p0, Lcom/payumoney/core/presenter/MakePayment;->b:Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8, p2}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->onFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 445
    :cond_c
    :goto_4
    goto :goto_5

    .line 439
    :catch_2
    move-exception v0

    .line 440
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 441
    iget-object v0, p0, Lcom/payumoney/core/presenter/MakePayment;->g:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_d

    .line 442
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 447
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/payumoney/core/presenter/MakePayment;->c:Landroid/app/Activity;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/core/presenter/MakePayment;->h:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "paymentstatus"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 450
    return-void
.end method

.method public missingParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 461
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 454
    iget-object v0, p0, Lcom/payumoney/core/presenter/MakePayment;->b:Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;

    invoke-interface {v0, p1, p2}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method public onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V
    .locals 1
    .param p1, "response"    # Lcom/payumoney/core/response/ErrorResponse;
    .param p2, "tag"    # Ljava/lang/String;

    .line 465
    iget-object v0, p0, Lcom/payumoney/core/presenter/MakePayment;->g:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/payumoney/core/presenter/MakePayment;->b:Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;

    invoke-interface {v0, p1, p2}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->onFailureResponse(Lcom/payumoney/core/response/ErrorResponse;Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method public validateCardDetails(Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;Lcom/payumoney/core/request/PaymentRequest;Ljava/lang/String;)Z
    .locals 10
    .param p1, "listener"    # Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;
    .param p2, "request"    # Lcom/payumoney/core/request/PaymentRequest;
    .param p3, "tag"    # Ljava/lang/String;

    .line 474
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 475
    const-string v1, "EventSource"

    const-string v2, "SDK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    invoke-virtual {p2}, Lcom/payumoney/core/request/PaymentRequest;->getProcessor()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/payumoney/core/request/PaymentRequest;->getProcessor()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 480
    :cond_0
    invoke-virtual {p2}, Lcom/payumoney/core/request/PaymentRequest;->getCardtoken()Ljava/lang/String;

    move-result-object v1

    const-string v3, "clevertap"

    const-string v4, "InvalidPaymentInfo"

    const-string v5, "reason"

    const-string v6, "Card"

    const-string v7, "paymentMethodSelected"

    if-nez v1, :cond_2

    .line 481
    invoke-virtual {p2}, Lcom/payumoney/core/request/PaymentRequest;->getCardNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/payumoney/core/request/PaymentRequest;->getProcessor()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/payumoney/core/utils/SdkHelper;->validateCardNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 482
    const-string v1, "Invalid Card Number"

    invoke-interface {p1, v1, p3}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v1, p0, Lcom/payumoney/core/presenter/MakePayment;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v0, v3}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 488
    return v2

    .line 490
    :cond_1
    invoke-virtual {p2}, Lcom/payumoney/core/request/PaymentRequest;->getExpiryMonth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/payumoney/core/request/PaymentRequest;->getExpiryYear()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/payumoney/core/request/PaymentRequest;->getProcessor()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v8, v9}, Lcom/payumoney/core/utils/SdkHelper;->isExpiryValid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 491
    const-string v0, "Invalid card expiry details"

    invoke-interface {p1, v0, p3}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    return v2

    .line 496
    :cond_2
    invoke-virtual {p2}, Lcom/payumoney/core/request/PaymentRequest;->getCvv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/payumoney/core/request/PaymentRequest;->getProcessor()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/payumoney/core/utils/SdkHelper;->isValidCvv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 497
    const-string v1, "Invalid CVV"

    invoke-interface {p1, v1, p3}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v1, p0, Lcom/payumoney/core/presenter/MakePayment;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v0, v3}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 503
    return v2

    .line 505
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 477
    :cond_4
    :goto_0
    const-string v0, "Issuer is empty"

    invoke-interface {p1, v0, p3}, Lcom/payumoney/core/listener/OnPaymentStatusReceivedListener;->missingParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return v2
.end method
