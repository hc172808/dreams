.class public Lcom/payumoney/core/utils/ResponseParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/payumoney/core/entity/EmiTenure;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    new-instance v0, Lcom/payumoney/core/utils/ResponseParser$1;

    invoke-direct {v0, p0}, Lcom/payumoney/core/utils/ResponseParser$1;-><init>(Lcom/payumoney/core/utils/ResponseParser;)V

    iput-object v0, p0, Lcom/payumoney/core/utils/ResponseParser;->a:Ljava/util/Comparator;

    return-void
.end method

.method private a(Lorg/json/JSONObject;DLjava/util/List;)Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "D",
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/EmiThreshold;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 575
    move-object/from16 v1, p1

    const-string v2, "transactionAmount"

    const-string v3, "pgId"

    const-string v4, "bank"

    const-string v5, "title"

    const-string v6, "emi_value"

    const-string v7, "emi_interest_paid"

    const-string v8, "emiBankInterest"

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 576
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    .line 578
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 579
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 580
    new-instance v11, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-direct {v11}, Lcom/payumoney/core/entity/PaymentEntity;-><init>()V

    .line 581
    invoke-virtual {v11, v0}, Lcom/payumoney/core/entity/PaymentEntity;->setCode(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v11, v0}, Lcom/payumoney/core/entity/PaymentEntity;->setTitle(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_e

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "null"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 586
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 587
    new-instance v13, Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v13}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v14

    .line 591
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 593
    :try_start_0
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 594
    new-instance v15, Lcom/payumoney/core/entity/EmiTenure;

    invoke-direct {v15}, Lcom/payumoney/core/entity/EmiTenure;-><init>()V

    .line 596
    invoke-virtual {v15, v0}, Lcom/payumoney/core/entity/EmiTenure;->setTenureId(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 600
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v16, :cond_9

    .line 601
    move-object/from16 v16, v13

    move-object/from16 v17, v14

    :try_start_1
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 602
    const-wide/16 v18, 0x0

    cmpl-double v20, v13, v18

    if-lez v20, :cond_8

    .line 603
    invoke-virtual {v15, v13, v14}, Lcom/payumoney/core/entity/EmiTenure;->setEmiBankInterest(D)V

    .line 607
    nop

    .line 611
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 612
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 613
    cmpl-double v20, v13, v18

    if-lez v20, :cond_6

    .line 614
    invoke-virtual {v15, v13, v14}, Lcom/payumoney/core/entity/EmiTenure;->setEmiInterestPaid(D)V

    .line 618
    nop

    .line 622
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 623
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 624
    cmpl-double v20, v13, v18

    if-lez v20, :cond_0

    .line 625
    invoke-virtual {v15, v13, v14}, Lcom/payumoney/core/entity/EmiTenure;->setEmiValue(D)V

    .line 627
    :cond_0
    nop

    .line 631
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 632
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Lcom/payumoney/core/entity/EmiTenure;->setTitle(Ljava/lang/String;)V

    .line 635
    :cond_1
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 636
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Lcom/payumoney/core/entity/EmiTenure;->setBank(Ljava/lang/String;)V

    .line 639
    :cond_2
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 640
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Lcom/payumoney/core/entity/EmiTenure;->setPgID(Ljava/lang/String;)V

    .line 643
    :cond_3
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 644
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    invoke-virtual {v15, v13, v14}, Lcom/payumoney/core/entity/EmiTenure;->setTransactionAmount(D)V

    .line 647
    :cond_4
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 628
    :cond_5
    move-object/from16 v13, v16

    move-object/from16 v14, v17

    goto/16 :goto_1

    .line 616
    :cond_6
    move-object/from16 v13, v16

    move-object/from16 v14, v17

    goto/16 :goto_1

    .line 619
    :cond_7
    move-object/from16 v13, v16

    move-object/from16 v14, v17

    goto/16 :goto_1

    .line 605
    :cond_8
    move-object/from16 v13, v16

    move-object/from16 v14, v17

    goto/16 :goto_1

    .line 648
    :catch_0
    move-exception v0

    goto :goto_2

    .line 608
    :cond_9
    move-object/from16 v16, v13

    move-object/from16 v17, v14

    goto/16 :goto_1

    .line 648
    :catch_1
    move-exception v0

    move-object/from16 v16, v13

    move-object/from16 v17, v14

    .line 649
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 650
    :goto_3
    move-object/from16 v13, v16

    move-object/from16 v14, v17

    goto/16 :goto_1

    .line 653
    :cond_a
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 655
    if-eqz p4, :cond_c

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 656
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/payumoney/core/entity/EmiThreshold;

    .line 657
    invoke-virtual {v13}, Lcom/payumoney/core/entity/EmiThreshold;->getEmiBankCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 658
    invoke-virtual {v13}, Lcom/payumoney/core/entity/EmiThreshold;->getThreshouldAmount()D

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Lcom/payumoney/core/entity/PaymentEntity;->setEmiThresholdAmount(D)V

    .line 661
    invoke-virtual {v13}, Lcom/payumoney/core/entity/EmiThreshold;->getEmiBankTitle()Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_c

    .line 663
    invoke-virtual {v11, v0}, Lcom/payumoney/core/entity/PaymentEntity;->setTitle(Ljava/lang/String;)V

    goto :goto_5

    .line 669
    :cond_b
    goto :goto_4

    .line 672
    :cond_c
    :goto_5
    move-object/from16 v13, p0

    iget-object v0, v13, Lcom/payumoney/core/utils/ResponseParser;->a:Ljava/util/Comparator;

    invoke-static {v12, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 673
    invoke-virtual {v11, v12}, Lcom/payumoney/core/entity/PaymentEntity;->setEmiTenures(Ljava/util/List;)V

    goto :goto_6

    .line 653
    :cond_d
    move-object/from16 v13, p0

    goto :goto_6

    .line 585
    :cond_e
    move-object/from16 v13, p0

    .line 678
    :goto_6
    invoke-virtual {v11}, Lcom/payumoney/core/entity/PaymentEntity;->getEmiTenures()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v11}, Lcom/payumoney/core/entity/PaymentEntity;->getEmiTenures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 680
    invoke-virtual {v11}, Lcom/payumoney/core/entity/PaymentEntity;->getEmiThresholdAmount()D

    move-result-wide v14

    cmpl-double v0, p2, v14

    if-ltz v0, :cond_f

    .line 681
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    :cond_f
    goto/16 :goto_0

    .line 686
    :cond_10
    move-object/from16 v13, p0

    return-object v9
.end method


# virtual methods
.method public errorFromResponse(Lorg/json/JSONObject;)Lcom/payumoney/core/response/ErrorResponse;
    .locals 6
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/payumoney/core/utils/PayUMoneyCustomException;
        }
    .end annotation

    .line 88
    const-string v0, "guid"

    const-string v1, "errorCode"

    const-string v2, "message"

    const-string v3, "status"

    new-instance v4, Lcom/payumoney/core/response/ErrorResponse;

    invoke-direct {v4}, Lcom/payumoney/core/response/ErrorResponse;-><init>()V

    .line 90
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 91
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/payumoney/core/response/ErrorResponse;->setStatus(Ljava/lang/String;)V

    .line 93
    :cond_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/payumoney/core/response/ErrorResponse;->setMessage(Ljava/lang/String;)V

    .line 96
    :cond_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/payumoney/core/response/ErrorResponse;->setErrorCode(Ljava/lang/String;)V

    .line 99
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/payumoney/core/response/ErrorResponse;->setGuid(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_3
    return-object v4

    .line 103
    :catch_0
    move-exception v0

    .line 104
    new-instance v0, Lcom/payumoney/core/utils/PayUMoneyCustomException;

    const-string v1, "Something went wrong"

    invoke-direct {v0, v1}, Lcom/payumoney/core/utils/PayUMoneyCustomException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public errorFromResponse(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/payumoney/core/response/ErrorResponse;
    .locals 5
    .param p1, "response"    # Lorg/json/JSONObject;
    .param p2, "messagekey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/payumoney/core/utils/PayUMoneyCustomException;
        }
    .end annotation

    .line 117
    const-string v0, "guid"

    const-string v1, "errorCode"

    const-string v2, "status"

    new-instance v3, Lcom/payumoney/core/response/ErrorResponse;

    invoke-direct {v3}, Lcom/payumoney/core/response/ErrorResponse;-><init>()V

    .line 119
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/payumoney/core/response/ErrorResponse;->setStatus(Ljava/lang/String;)V

    .line 122
    :cond_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/payumoney/core/response/ErrorResponse;->setMessage(Ljava/lang/String;)V

    .line 125
    :cond_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/payumoney/core/response/ErrorResponse;->setErrorCode(Ljava/lang/String;)V

    .line 128
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/payumoney/core/response/ErrorResponse;->setGuid(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_3
    return-object v3

    .line 132
    :catch_0
    move-exception v0

    .line 133
    new-instance v0, Lcom/payumoney/core/utils/PayUMoneyCustomException;

    const-string v1, "Something went wrong"

    invoke-direct {v0, v1}, Lcom/payumoney/core/utils/PayUMoneyCustomException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParseNetBankingStatusList(Lorg/json/JSONObject;)Lcom/payumoney/core/response/PayUMoneyAPIResponse;
    .locals 12
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/payumoney/core/utils/PayUMoneyCustomException;
        }
    .end annotation

    .line 813
    const-string v0, "up_status"

    const-string v1, "title"

    const-string v2, "ibibo_code"

    const-string v3, "result"

    const-string v4, "status"

    :try_start_0
    const-string v5, "-1"

    .line 814
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 815
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 817
    :cond_0
    const-string v4, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 818
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 819
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 820
    new-instance v4, Lcom/payumoney/core/response/NetBankingStatusResponse;

    invoke-direct {v4}, Lcom/payumoney/core/response/NetBankingStatusResponse;-><init>()V

    .line 821
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 823
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 824
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 825
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 826
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 827
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 828
    new-instance v10, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-direct {v10}, Lcom/payumoney/core/entity/PaymentEntity;-><init>()V

    .line 829
    invoke-virtual {v10, v9}, Lcom/payumoney/core/entity/PaymentEntity;->setCode(Ljava/lang/String;)V

    .line 830
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 831
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 832
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/payumoney/core/entity/PaymentEntity;->setPgID(Ljava/lang/String;)V

    .line 834
    :cond_1
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 835
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/payumoney/core/entity/PaymentEntity;->setTitle(Ljava/lang/String;)V

    .line 837
    :cond_2
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 838
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v10, v9}, Lcom/payumoney/core/entity/PaymentEntity;->setUpStatus(I)V

    .line 840
    :cond_3
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    goto :goto_1

    .line 823
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 843
    :cond_5
    invoke-virtual {v4, v5}, Lcom/payumoney/core/response/NetBankingStatusResponse;->setNetBankList(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    return-object v4

    .line 849
    :cond_6
    goto :goto_2

    .line 847
    :catch_0
    move-exception v0

    .line 848
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 850
    :goto_2
    invoke-virtual {p0, p1}, Lcom/payumoney/core/utils/ResponseParser;->errorFromResponse(Lorg/json/JSONObject;)Lcom/payumoney/core/response/ErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public parseBinDetail(Lorg/json/JSONObject;)Lcom/payumoney/core/response/PayUMoneyAPIResponse;
    .locals 11
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/payumoney/core/utils/PayUMoneyCustomException;
        }
    .end annotation

    .line 921
    const-string v0, "bankCode"

    const-string v1, "countryCode"

    const-string v2, "cardProgram"

    const-string v3, "bankName"

    const-string v4, "category"

    const-string v5, "binOwner"

    const-string v6, "cardBin"

    const-string v7, "result"

    const-string v8, "status"

    :try_start_0
    const-string v9, ""

    .line 922
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 923
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 925
    :cond_0
    const-string v8, "0"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 926
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 927
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 928
    new-instance v8, Lcom/payumoney/core/response/BinDetail;

    invoke-direct {v8}, Lcom/payumoney/core/response/BinDetail;-><init>()V

    .line 929
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 930
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/payumoney/core/response/BinDetail;->setCardBin(Ljava/lang/String;)V

    .line 932
    :cond_1
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 933
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/payumoney/core/response/BinDetail;->setBinOwner(Ljava/lang/String;)V

    .line 935
    :cond_2
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 936
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/payumoney/core/response/BinDetail;->setCategory(Ljava/lang/String;)V

    .line 938
    :cond_3
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 939
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/payumoney/core/response/BinDetail;->setBankName(Ljava/lang/String;)V

    .line 941
    :cond_4
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 942
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/payumoney/core/response/BinDetail;->setCardProgram(Ljava/lang/String;)V

    .line 944
    :cond_5
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 945
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/payumoney/core/response/BinDetail;->setCountryCode(Ljava/lang/String;)V

    .line 948
    :cond_6
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 949
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/payumoney/core/response/BinDetail;->setBankCode(Ljava/lang/String;)V

    .line 951
    :cond_7
    return-object v8

    .line 953
    :cond_8
    invoke-virtual {p0, p1}, Lcom/payumoney/core/utils/ResponseParser;->errorFromResponse(Lorg/json/JSONObject;)Lcom/payumoney/core/response/ErrorResponse;

    move-result-object v0

    return-object v0

    .line 956
    :cond_9
    invoke-virtual {p0, p1}, Lcom/payumoney/core/utils/ResponseParser;->errorFromResponse(Lorg/json/JSONObject;)Lcom/payumoney/core/response/ErrorResponse;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 959
    :catch_0
    move-exception v0

    .line 960
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 961
    new-instance v0, Lcom/payumoney/core/utils/PayUMoneyCustomException;

    const-string v1, "Something went wrong"

    invoke-direct {v0, v1}, Lcom/payumoney/core/utils/PayUMoneyCustomException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseEmiInterestsForBankResponse(Lorg/json/JSONObject;DLjava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "response"    # Lorg/json/JSONObject;
    .param p2, "totalAmount"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "D",
            "Ljava/util/List<",
            "Lcom/payumoney/core/entity/EmiThreshold;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/payumoney/core/utils/PayUMoneyCustomException;
        }
    .end annotation

    .line 554
    .local p4, "emiThresholds":Ljava/util/List;, "Ljava/util/List<Lcom/payumoney/core/entity/EmiThreshold;>;"
    const-string v0, "result"

    const-string v1, "status"

    .line 556
    :try_start_0
    const-string v2, "-1"

    .line 557
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 558
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 561
    :cond_0
    const-string v1, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 562
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 563
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 564
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/payumoney/core/utils/ResponseParser;->a(Lorg/json/JSONObject;DLjava/util/List;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 569
    :cond_1
    const/4 v0, 0x0

    :goto_0
    nop

    .line 571
    return-object v0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    new-instance v0, Lcom/payumoney/core/utils/PayUMoneyCustomException;

    const-string v1, "Something went wrong"

    invoke-direct {v0, v1}, Lcom/payumoney/core/utils/PayUMoneyCustomException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseFetchMerchant(Lorg/json/JSONObject;)Lcom/payumoney/core/response/PayUMoneyAPIResponse;
    .locals 11
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/payumoney/core/utils/PayUMoneyCustomException;
        }
    .end annotation

    .line 43
    const-string v0, "updatedOn"

    const-string v1, "updatedBy"

    const-string v2, "addedOn"

    const-string v3, "paramValue"

    const-string v4, "paramKey"

    const-string v5, "merchantId"

    const-string v6, "merchantParamsId"

    const-string v7, "result"

    const-string v8, "status"

    :try_start_0
    const-string v9, ""

    .line 44
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 45
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 47
    :cond_0
    const-string v8, "0"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 48
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 49
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 50
    new-instance v8, Lcom/payumoney/core/response/MerchantLoginResponse;

    invoke-direct {v8}, Lcom/payumoney/core/response/MerchantLoginResponse;-><init>()V

    .line 51
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 52
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/payumoney/core/response/MerchantLoginResponse;->setMerchantparamsId(Ljava/lang/String;)V

    .line 54
    :cond_1
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 55
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/payumoney/core/response/MerchantLoginResponse;->setMerchantId(Ljava/lang/String;)V

    .line 57
    :cond_2
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 58
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/payumoney/core/response/MerchantLoginResponse;->setParamKey(Ljava/lang/String;)V

    .line 60
    :cond_3
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 61
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/payumoney/core/response/MerchantLoginResponse;->setParamsValue(Ljava/lang/String;)V

    .line 63
    :cond_4
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 64
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/payumoney/core/response/MerchantLoginResponse;->setAddedOn(Ljava/lang/String;)V

    .line 66
    :cond_5
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 67
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/payumoney/core/response/MerchantLoginResponse;->setUpdatedBy(Ljava/lang/String;)V

    .line 69
    :cond_6
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 70
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/payumoney/core/response/MerchantLoginResponse;->setUpdatedOn(Ljava/lang/String;)V

    .line 72
    :cond_7
    return-object v8

    .line 74
    :cond_8
    invoke-virtual {p0, p1}, Lcom/payumoney/core/utils/ResponseParser;->errorFromResponse(Lorg/json/JSONObject;)Lcom/payumoney/core/response/ErrorResponse;

    move-result-object v0

    return-object v0

    .line 77
    :cond_9
    invoke-virtual {p0, p1}, Lcom/payumoney/core/utils/ResponseParser;->errorFromResponse(Lorg/json/JSONObject;)Lcom/payumoney/core/response/ErrorResponse;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    new-instance v0, Lcom/payumoney/core/utils/PayUMoneyCustomException;

    const-string v1, "Something went wrong"

    invoke-direct {v0, v1}, Lcom/payumoney/core/utils/PayUMoneyCustomException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseLoginResponse(Lorg/json/JSONObject;)Lcom/payumoney/core/response/PayUMoneyAPIResponse;
    .locals 6
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/payumoney/core/utils/PayUMoneyCustomException;
        }
    .end annotation

    .line 140
    const-string v0, "scope"

    const-string v1, "expires_in"

    const-string v2, "refresh_token"

    const-string v3, "token_type"

    const-string v4, "access_token"

    :try_start_0
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 141
    new-instance v5, Lcom/payumoney/core/response/PayUMoneyLoginResponse;

    invoke-direct {v5}, Lcom/payumoney/core/response/PayUMoneyLoginResponse;-><init>()V

    .line 142
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/payumoney/core/response/PayUMoneyLoginResponse;->setAccessToken(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/payumoney/core/response/PayUMoneyLoginResponse;->setTokenType(Ljava/lang/String;)V

    .line 146
    :cond_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/payumoney/core/response/PayUMoneyLoginResponse;->setRefreshToken(Ljava/lang/String;)V

    .line 149
    :cond_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/payumoney/core/response/PayUMoneyLoginResponse;->setExpiresIn(Ljava/lang/String;)V

    .line 152
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 153
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/payumoney/core/response/PayUMoneyLoginResponse;->setScope(Ljava/lang/String;)V

    .line 155
    :cond_3
    return-object v5

    .line 157
    :cond_4
    invoke-virtual {p0, p1}, Lcom/payumoney/core/utils/ResponseParser;->errorFromResponse(Lorg/json/JSONObject;)Lcom/payumoney/core/response/ErrorResponse;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    new-instance v0, Lcom/payumoney/core/utils/PayUMoneyCustomException;

    const-string v1, "Something went wrong"

    invoke-direct {v0, v1}, Lcom/payumoney/core/utils/PayUMoneyCustomException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseMultipleBinDetail(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 16
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/payumoney/core/response/BinDetail;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/payumoney/core/utils/PayUMoneyCustomException;
        }
    .end annotation

    .line 858
    move-object/from16 v1, p1

    const-string v0, "bankCode"

    const-string v2, "countryCode"

    const-string v3, "cardProgram"

    const-string v4, "bankName"

    const-string v5, "category"

    const-string v6, "binOwner"

    const-string v7, "cardBin"

    const-string v8, "result"

    const-string v9, "status"

    :try_start_0
    const-string v10, ""

    .line 859
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 860
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 862
    :cond_0
    const-string v9, "0"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_b

    .line 863
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 864
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 865
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 866
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    .line 867
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 868
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 869
    new-instance v13, Lcom/payumoney/core/response/BinDetail;

    invoke-direct {v13}, Lcom/payumoney/core/response/BinDetail;-><init>()V

    .line 872
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "null"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 873
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    .line 874
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 875
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 876
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/payumoney/core/response/BinDetail;->setCardBin(Ljava/lang/String;)V

    .line 878
    :cond_1
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 879
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/payumoney/core/response/BinDetail;->setBinOwner(Ljava/lang/String;)V

    .line 881
    :cond_2
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 882
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/payumoney/core/response/BinDetail;->setCategory(Ljava/lang/String;)V

    .line 884
    :cond_3
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 885
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/payumoney/core/response/BinDetail;->setBankName(Ljava/lang/String;)V

    .line 887
    :cond_4
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 888
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/payumoney/core/response/BinDetail;->setCardProgram(Ljava/lang/String;)V

    .line 890
    :cond_5
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 891
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/payumoney/core/response/BinDetail;->setCountryCode(Ljava/lang/String;)V

    .line 893
    :cond_6
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 894
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/payumoney/core/response/BinDetail;->setBankCode(Ljava/lang/String;)V

    .line 898
    :cond_7
    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    goto :goto_1

    .line 901
    :cond_8
    invoke-virtual {v9, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :goto_1
    goto/16 :goto_0

    .line 905
    :cond_9
    return-object v9

    .line 907
    :cond_a
    return-object v10

    .line 910
    :cond_b
    return-object v10

    .line 912
    :catch_0
    move-exception v0

    .line 913
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 914
    new-instance v0, Lcom/payumoney/core/utils/PayUMoneyCustomException;

    const-string v2, "Something went wrong"

    invoke-direct {v0, v2}, Lcom/payumoney/core/utils/PayUMoneyCustomException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parsePaymentOption(Lorg/json/JSONObject;)Lcom/payumoney/core/response/PayUMoneyAPIResponse;
    .locals 30
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/payumoney/core/utils/PayUMoneyCustomException;
        }
    .end annotation

    .line 203
    move-object/from16 v1, p1

    const-string v2, "ShortTitle"

    const-string v3, "nb"

    const-string v4, "savedCards"

    const-string v5, "configData"

    const-string v6, "status"

    const-string v7, "emi"

    const-string v8, "upi"

    const-string v9, "cc"

    const-string v10, "dc"

    const-string v11, "emiIssuerCodes"

    const-string v12, "convenienceCharges"

    const-string v13, "cashcard"

    const-string v14, "paymentOptions"

    .line 204
    :try_start_0
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v15, "-1"

    if-eqz v0, :cond_0

    .line 205
    :try_start_1
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_0
    move-object v0, v15

    .line 207
    :goto_0
    move-object/from16 v16, v5

    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 208
    const-string v0, "result"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 209
    const-string v0, "result"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 210
    new-instance v1, Lcom/payumoney/core/response/PaymentOptionDetails;

    invoke-direct {v1}, Lcom/payumoney/core/response/PaymentOptionDetails;-><init>()V

    .line 211
    const-string v0, "merchant"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "merchant"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 212
    new-instance v0, Lcom/payumoney/core/entity/MerchantDetails;

    invoke-direct {v0}, Lcom/payumoney/core/entity/MerchantDetails;-><init>()V

    .line 213
    move-object/from16 v17, v7

    const-string v7, "merchant"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 214
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v18

    .line 215
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 216
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v13

    move-object/from16 v13, v19

    check-cast v13, Ljava/lang/String;

    const/16 v19, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v21
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v22, v8

    const-string v8, "displayName"

    move-object/from16 v23, v2

    const-string v2, "logo"

    move-object/from16 v24, v3

    const-string v3, "merchantId"

    sparse-switch v21, :sswitch_data_0

    :cond_1
    goto :goto_2

    :sswitch_0
    :try_start_2
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/16 v19, 0x1

    goto :goto_2

    :sswitch_1
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/16 v19, 0x0

    goto :goto_2

    :sswitch_2
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/16 v19, 0x2

    :goto_2
    packed-switch v19, :pswitch_data_0

    goto :goto_3

    .line 226
    :pswitch_0
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 227
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/payumoney/core/entity/MerchantDetails;->setMerchantId(Ljava/lang/String;)V

    goto :goto_3

    .line 222
    :pswitch_1
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 223
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/payumoney/core/entity/MerchantDetails;->setDisplayName(Ljava/lang/String;)V

    goto :goto_3

    .line 218
    :pswitch_2
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 219
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/payumoney/core/entity/MerchantDetails;->setLogoUrl(Ljava/lang/String;)V

    .line 230
    :cond_2
    :goto_3
    move-object/from16 v13, v20

    move-object/from16 v8, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    goto/16 :goto_1

    .line 234
    :cond_3
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v22, v8

    move-object/from16 v20, v13

    invoke-virtual {v1, v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->setMerchantDetails(Lcom/payumoney/core/entity/MerchantDetails;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 211
    :cond_4
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v17, v7

    move-object/from16 v22, v8

    move-object/from16 v20, v13

    .line 237
    :goto_4
    const-wide/16 v2, 0x0

    .line 239
    :try_start_3
    const-string v0, "payment"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 240
    const-string v0, "payment"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 241
    const-string v7, "orderAmount"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "orderAmount"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 242
    const-string v7, "orderAmount"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 247
    :cond_5
    goto :goto_5

    .line 245
    :catch_0
    move-exception v0

    .line 246
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 249
    :goto_5
    const-string v0, "paymentId"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 251
    const-string v0, "paymentId"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->setPaymentID(Ljava/lang/String;)V

    .line 253
    const-string v0, "user"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const-string v7, "wallet"

    const-string v8, "null"

    if-eqz v0, :cond_17

    :try_start_5
    const-string v0, "user"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 254
    new-instance v0, Lcom/payumoney/core/response/UserDetail;

    invoke-direct {v0}, Lcom/payumoney/core/response/UserDetail;-><init>()V

    .line 255
    const-string v13, "user"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 256
    move-wide/from16 v18, v2

    const-string v2, "userId"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 257
    const-string v2, "userId"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/payumoney/core/response/UserDetail;->setUserID(Ljava/lang/String;)V

    .line 259
    :cond_6
    const-string v2, "phone"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 260
    const-string v2, "phone"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/payumoney/core/response/UserDetail;->setPhoneNumber(Ljava/lang/String;)V

    .line 263
    :cond_7
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 264
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 265
    new-instance v3, Lcom/payumoney/core/entity/Wallet;

    invoke-direct {v3}, Lcom/payumoney/core/entity/Wallet;-><init>()V

    .line 266
    move-object/from16 v21, v9

    const-string v9, "amount"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 267
    const-string v9, "amount"

    move-object/from16 v25, v10

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/payumoney/core/entity/Wallet;->setAmount(D)V

    .line 268
    invoke-static {}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getInstance()Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;

    move-result-object v9

    const-string v10, "amount"

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->setWalletAmount(D)V

    goto :goto_6

    .line 266
    :cond_8
    move-object/from16 v25, v10

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    .line 270
    :goto_6
    const-string v9, "availableAmount"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 271
    const-string v9, "availableAmount"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/payumoney/core/entity/Wallet;->setAvailableAmount(D)V

    .line 273
    :cond_9
    const-string v9, "minLimit"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 274
    const-string v9, "minLimit"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/payumoney/core/entity/Wallet;->setMinLimit(D)V

    .line 276
    :cond_a
    const-string v9, "maxLimit"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 277
    const-string v9, "maxLimit"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/payumoney/core/entity/Wallet;->setMaxLimit(D)V

    .line 279
    :cond_b
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 280
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/payumoney/core/entity/Wallet;->setStatus(D)V

    .line 282
    :cond_c
    const-string v6, "message"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 283
    const-string v6, "message"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/payumoney/core/entity/Wallet;->setMesssage(Ljava/lang/String;)V

    .line 285
    :cond_d
    invoke-virtual {v0, v3}, Lcom/payumoney/core/response/UserDetail;->setWalletDetails(Lcom/payumoney/core/entity/Wallet;)V

    goto :goto_7

    .line 263
    :cond_e
    move-object/from16 v21, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    .line 287
    :goto_7
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 288
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 289
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 290
    const/4 v4, 0x0

    :goto_8
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_16

    .line 291
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 292
    new-instance v9, Lcom/payumoney/core/entity/CardDetail;

    invoke-direct {v9}, Lcom/payumoney/core/entity/CardDetail;-><init>()V

    .line 293
    const-string v10, "cardId"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 294
    const-string v10, "cardId"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Lcom/payumoney/core/entity/CardDetail;->setId(J)V

    .line 296
    :cond_f
    const-string v10, "cardName"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 297
    const-string v10, "cardName"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/payumoney/core/entity/CardDetail;->setName(Ljava/lang/String;)V

    .line 299
    :cond_10
    const-string v10, "cardToken"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 300
    const-string v10, "cardToken"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/payumoney/core/entity/CardDetail;->setToken(Ljava/lang/String;)V

    .line 302
    :cond_11
    const-string v10, "cardType"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 303
    const-string v10, "cardType"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/payumoney/core/entity/CardDetail;->setType(Ljava/lang/String;)V

    .line 305
    :cond_12
    const-string v10, "ccnum"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 306
    const-string v10, "ccnum"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/payumoney/core/entity/CardDetail;->setNumber(Ljava/lang/String;)V

    .line 308
    :cond_13
    const-string v10, "pg"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 309
    const-string v10, "pg"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/payumoney/core/entity/CardDetail;->setPg(Ljava/lang/String;)V

    .line 311
    :cond_14
    const-string v10, "oneclickcheckout"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 312
    const-string v10, "oneclickcheckout"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v9, v6}, Lcom/payumoney/core/entity/CardDetail;->setOneClickCheckout(Z)V

    .line 314
    :cond_15
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    .line 316
    :cond_16
    invoke-virtual {v0, v3}, Lcom/payumoney/core/response/UserDetail;->setSaveCardList(Ljava/util/ArrayList;)V

    .line 317
    invoke-virtual {v1, v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->setUserDetails(Lcom/payumoney/core/response/UserDetail;)V

    goto :goto_9

    .line 253
    :cond_17
    move-wide/from16 v18, v2

    move-object/from16 v21, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    .line 321
    :cond_18
    :goto_9
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const-string v2, ""

    if-eqz v0, :cond_1b

    :try_start_6
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 322
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 323
    new-instance v3, Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    invoke-direct {v3}, Lcom/payumoney/core/entity/PayumoneyConvenienceFee;-><init>()V

    .line 324
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 326
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 327
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 328
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 329
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 330
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 331
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    .line 332
    :goto_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_19

    .line 333
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 334
    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    goto :goto_b

    .line 336
    :cond_19
    invoke-interface {v4, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    goto :goto_a

    .line 338
    :cond_1a
    invoke-virtual {v3, v4}, Lcom/payumoney/core/entity/PayumoneyConvenienceFee;->setConvenienceFeeMap(Ljava/util/Map;)V

    .line 339
    invoke-virtual {v1, v3}, Lcom/payumoney/core/response/PaymentOptionDetails;->setConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;)V

    .line 343
    :cond_1b
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 344
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 346
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 347
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 348
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 349
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 350
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 352
    const-string v10, "minAmount"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 353
    const-string v10, "minAmount"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 354
    const-string v12, "emiBankName"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 356
    new-instance v12, Lcom/payumoney/core/entity/EmiThreshold;

    invoke-direct {v12, v6, v10, v11, v9}, Lcom/payumoney/core/entity/EmiThreshold;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_1c
    goto :goto_c

    .line 360
    :cond_1d
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 361
    invoke-virtual {v1, v3}, Lcom/payumoney/core/response/PaymentOptionDetails;->setEmiThresholds(Ljava/util/ArrayList;)V

    .line 365
    :cond_1e
    move-object/from16 v3, v26

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 366
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "options"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "options"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 367
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "options"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 368
    move-object/from16 v4, v25

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    const-string v9, "title"

    const-string v10, "pgId"

    if-eqz v6, :cond_22

    :try_start_7
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_22

    .line 369
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v11, v27

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_23

    .line 370
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 371
    new-instance v12, Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 374
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_21

    .line 375
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 376
    new-instance v14, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-direct {v14}, Lcom/payumoney/core/entity/PaymentEntity;-><init>()V

    .line 377
    invoke-virtual {v14, v13}, Lcom/payumoney/core/entity/PaymentEntity;->setCode(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 379
    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1f

    .line 380
    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/payumoney/core/entity/PaymentEntity;->setPgID(Ljava/lang/String;)V

    .line 382
    :cond_1f
    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_20

    .line 383
    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Lcom/payumoney/core/entity/PaymentEntity;->setTitle(Ljava/lang/String;)V

    .line 385
    :cond_20
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    goto :goto_d

    .line 387
    :cond_21
    invoke-virtual {v1, v6}, Lcom/payumoney/core/response/PaymentOptionDetails;->setDebitCardList(Ljava/util/ArrayList;)V

    goto :goto_e

    .line 368
    :cond_22
    move-object/from16 v11, v27

    .line 390
    :cond_23
    :goto_e
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_24

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 391
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/payumoney/core/response/PaymentOptionDetails;->setWallet(Ljava/lang/String;)V

    .line 395
    :cond_24
    move-object/from16 v4, v21

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_28

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_28

    .line 396
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_28

    .line 397
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 398
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 401
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_27

    .line 402
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 403
    new-instance v13, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-direct {v13}, Lcom/payumoney/core/entity/PaymentEntity;-><init>()V

    .line 404
    invoke-virtual {v13, v12}, Lcom/payumoney/core/entity/PaymentEntity;->setCode(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 406
    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_25

    .line 407
    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/payumoney/core/entity/PaymentEntity;->setPgID(Ljava/lang/String;)V

    .line 409
    :cond_25
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_26

    .line 410
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Lcom/payumoney/core/entity/PaymentEntity;->setTitle(Ljava/lang/String;)V

    .line 412
    :cond_26
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    goto :goto_f

    .line 414
    :cond_27
    invoke-virtual {v1, v6}, Lcom/payumoney/core/response/PaymentOptionDetails;->setCreditCardList(Ljava/util/ArrayList;)V

    .line 418
    :cond_28
    move-object/from16 v4, v24

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2d

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2d

    .line 419
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 420
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 423
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2c

    .line 424
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 425
    new-instance v13, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-direct {v13}, Lcom/payumoney/core/entity/PaymentEntity;-><init>()V

    .line 426
    invoke-virtual {v13, v12}, Lcom/payumoney/core/entity/PaymentEntity;->setCode(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 428
    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_29

    .line 429
    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/payumoney/core/entity/PaymentEntity;->setPgID(Ljava/lang/String;)V

    .line 431
    :cond_29
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2a

    .line 432
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/payumoney/core/entity/PaymentEntity;->setTitle(Ljava/lang/String;)V

    .line 434
    :cond_2a
    move-object/from16 v14, v23

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2b

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2b

    .line 435
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2b

    .line 436
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Lcom/payumoney/core/entity/PaymentEntity;->setShortTitle(Ljava/lang/String;)V

    .line 438
    :cond_2b
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    move-object/from16 v23, v14

    goto :goto_10

    .line 440
    :cond_2c
    invoke-virtual {v1, v6}, Lcom/payumoney/core/response/PaymentOptionDetails;->setNetBankingList(Ljava/util/ArrayList;)V

    .line 443
    :cond_2d
    move-object/from16 v4, v22

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 444
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_31

    .line 445
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_31

    .line 446
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_31

    .line 447
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 448
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 451
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_30

    .line 452
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 453
    new-instance v13, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-direct {v13}, Lcom/payumoney/core/entity/PaymentEntity;-><init>()V

    .line 454
    invoke-virtual {v13, v12}, Lcom/payumoney/core/entity/PaymentEntity;->setCode(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 456
    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2e

    .line 457
    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/payumoney/core/entity/PaymentEntity;->setPgID(Ljava/lang/String;)V

    .line 459
    :cond_2e
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2f

    .line 460
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Lcom/payumoney/core/entity/PaymentEntity;->setTitle(Ljava/lang/String;)V

    .line 462
    :cond_2f
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    goto :goto_11

    .line 464
    :cond_30
    invoke-virtual {v1, v6}, Lcom/payumoney/core/response/PaymentOptionDetails;->setUpiList(Ljava/util/ArrayList;)V

    .line 468
    :cond_31
    move-object/from16 v4, v20

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_35

    .line 469
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_35

    .line 470
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 471
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 472
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 473
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 476
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_34

    .line 477
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 478
    new-instance v12, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-direct {v12}, Lcom/payumoney/core/entity/PaymentEntity;-><init>()V

    .line 479
    invoke-virtual {v12, v7}, Lcom/payumoney/core/entity/PaymentEntity;->setCode(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 481
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_32

    .line 482
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/payumoney/core/entity/PaymentEntity;->setPgID(Ljava/lang/String;)V

    .line 484
    :cond_32
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_33

    .line 485
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Lcom/payumoney/core/entity/PaymentEntity;->setTitle(Ljava/lang/String;)V

    .line 487
    :cond_33
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    goto :goto_12

    .line 490
    :cond_34
    invoke-virtual {v1, v2}, Lcom/payumoney/core/response/PaymentOptionDetails;->setCashCardList(Ljava/util/ArrayList;)V

    .line 494
    :cond_35
    move-object/from16 v2, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_37

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_37

    .line 495
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 496
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v1}, Lcom/payumoney/core/response/PaymentOptionDetails;->getEmiThresholds()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-object/from16 v2, p0

    move-wide/from16 v6, v18

    :try_start_8
    invoke-direct {v2, v4, v6, v7, v0}, Lcom/payumoney/core/utils/ResponseParser;->a(Lorg/json/JSONObject;DLjava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 498
    invoke-virtual {v1, v0}, Lcom/payumoney/core/response/PaymentOptionDetails;->setEmiList(Ljava/util/ArrayList;)V

    goto :goto_13

    .line 495
    :cond_36
    move-object/from16 v2, p0

    goto :goto_13

    .line 494
    :cond_37
    move-object/from16 v2, p0

    goto :goto_13

    .line 366
    :cond_38
    move-object/from16 v2, p0

    .line 503
    :goto_13
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "config"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 504
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "config"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 505
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "config"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 506
    const-string v3, "publicKey"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 507
    const-string v3, "publicKey"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/payumoney/core/response/PaymentOptionDetails;->setPublicKey(Ljava/lang/String;)V

    .line 508
    invoke-static {}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getInstance()Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;

    move-result-object v3

    const-string v4, "publicKey"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->setPublicKey(Ljava/lang/String;)V

    .line 511
    :cond_39
    goto :goto_14

    .line 365
    :cond_3a
    move-object/from16 v2, p0

    .line 519
    :cond_3b
    :goto_14
    move-object/from16 v3, v16

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 520
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 521
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 522
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 523
    const-string v3, "nitroEnabled"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const-string v3, "nitroEnabled"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 524
    invoke-static {}, Lcom/payumoney/core/SdkSession;->getInstanceForService()Lcom/payumoney/core/SdkSession;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/payumoney/core/SdkSession;->setNitroEnabled(Z)V

    .line 525
    const-string v3, "true"

    invoke-virtual {v1, v3}, Lcom/payumoney/core/response/PaymentOptionDetails;->setNitroEnabled(Ljava/lang/String;)V

    goto :goto_15

    .line 527
    :cond_3c
    invoke-static {}, Lcom/payumoney/core/SdkSession;->getInstanceForService()Lcom/payumoney/core/SdkSession;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/payumoney/core/SdkSession;->setNitroEnabled(Z)V

    .line 528
    const-string v3, "false"

    invoke-virtual {v1, v3}, Lcom/payumoney/core/response/PaymentOptionDetails;->setNitroEnabled(Ljava/lang/String;)V

    .line 532
    :goto_15
    const-string v3, "userSignupDisabled"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 533
    invoke-static {}, Lcom/payumoney/core/SdkSession;->getInstanceForService()Lcom/payumoney/core/SdkSession;

    move-result-object v3

    const-string v4, "userSignupDisabled"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/payumoney/core/SdkSession;->setUserSignUpDisabled(Z)V

    .line 538
    :cond_3d
    return-object v1

    .line 516
    :cond_3e
    move-object/from16 v2, p0

    invoke-virtual/range {p0 .. p1}, Lcom/payumoney/core/utils/ResponseParser;->errorFromResponse(Lorg/json/JSONObject;)Lcom/payumoney/core/response/ErrorResponse;

    move-result-object v0

    return-object v0

    .line 541
    :cond_3f
    move-object/from16 v2, p0

    invoke-virtual/range {p0 .. p1}, Lcom/payumoney/core/utils/ResponseParser;->errorFromResponse(Lorg/json/JSONObject;)Lcom/payumoney/core/response/ErrorResponse;

    move-result-object v0

    return-object v0

    .line 545
    :cond_40
    move-object/from16 v2, p0

    invoke-virtual/range {p0 .. p1}, Lcom/payumoney/core/utils/ResponseParser;->errorFromResponse(Lorg/json/JSONObject;)Lcom/payumoney/core/response/ErrorResponse;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    return-object v0

    .line 548
    :catch_1
    move-exception v0

    goto :goto_16

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    .line 549
    :goto_16
    new-instance v0, Lcom/payumoney/core/utils/PayUMoneyCustomException;

    const-string v1, "Something went wrong"

    invoke-direct {v0, v1}, Lcom/payumoney/core/utils/PayUMoneyCustomException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0xf697efd -> :sswitch_2
        0x32c5ab -> :sswitch_1
        0x662bd66d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parseUserAccountDetail(Lorg/json/JSONObject;)Lcom/payumoney/core/response/PayUMoneyAPIResponse;
    .locals 24
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/payumoney/core/utils/PayUMoneyCustomException;
        }
    .end annotation

    .line 730
    move-object/from16 v1, p1

    const-string v0, "oneclickcheckout"

    const-string v2, "pg"

    const-string v3, "ccnum"

    const-string v4, "message"

    const-string v5, "cardType"

    const-string v6, "cardToken"

    const-string v7, "maxLimit"

    const-string v8, "cardName"

    const-string v9, "minLimit"

    const-string v10, "cardId"

    const-string v11, "availableAmount"

    const-string v12, "UserDataDTO"

    const-string v13, "amount"

    const-string v14, "result"

    const-string v15, "wallet"

    move-object/from16 v16, v4

    const-string v4, "savedCards"

    move-object/from16 v17, v7

    const-string v7, "status"

    :try_start_0
    const-string v18, "-1"

    .line 731
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 732
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v7

    move-object/from16 v7, v18

    goto :goto_0

    .line 731
    :cond_0
    move-object/from16 v19, v7

    move-object/from16 v7, v18

    .line 734
    :goto_0
    move-object/from16 v18, v9

    const-string v9, "0"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 735
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 736
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 737
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 738
    new-instance v9, Lcom/payumoney/core/response/UserDetail;

    invoke-direct {v9}, Lcom/payumoney/core/response/UserDetail;-><init>()V

    .line 739
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v14, "null"

    if-eqz v12, :cond_b

    .line 740
    :try_start_1
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 741
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 742
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 743
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 744
    const/16 v20, 0x0

    const/4 v1, 0x0

    :goto_1
    move-object/from16 v20, v11

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v1, v11, :cond_8

    .line 745
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 746
    move-object/from16 v21, v4

    new-instance v4, Lcom/payumoney/core/entity/CardDetail;

    invoke-direct {v4}, Lcom/payumoney/core/entity/CardDetail;-><init>()V

    .line 747
    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 748
    move-object/from16 v22, v13

    move-object/from16 v23, v14

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v4, v13, v14}, Lcom/payumoney/core/entity/CardDetail;->setId(J)V

    goto :goto_2

    .line 747
    :cond_1
    move-object/from16 v22, v13

    move-object/from16 v23, v14

    .line 750
    :goto_2
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 751
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/payumoney/core/entity/CardDetail;->setName(Ljava/lang/String;)V

    .line 753
    :cond_2
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 754
    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/payumoney/core/entity/CardDetail;->setToken(Ljava/lang/String;)V

    .line 756
    :cond_3
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 757
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/payumoney/core/entity/CardDetail;->setType(Ljava/lang/String;)V

    .line 759
    :cond_4
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 760
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/payumoney/core/entity/CardDetail;->setNumber(Ljava/lang/String;)V

    .line 762
    :cond_5
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 763
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/payumoney/core/entity/CardDetail;->setPg(Ljava/lang/String;)V

    .line 765
    :cond_6
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 766
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v4, v11}, Lcom/payumoney/core/entity/CardDetail;->setOneClickCheckout(Z)V

    .line 768
    :cond_7
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v11, v20

    move-object/from16 v4, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    goto/16 :goto_1

    .line 770
    :cond_8
    move-object/from16 v22, v13

    move-object/from16 v23, v14

    invoke-virtual {v9, v12}, Lcom/payumoney/core/response/UserDetail;->setSaveCardList(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 741
    :cond_9
    move-object/from16 v20, v11

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    goto :goto_3

    .line 740
    :cond_a
    move-object/from16 v20, v11

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    goto :goto_3

    .line 739
    :cond_b
    move-object/from16 v20, v11

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    .line 773
    :goto_3
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 774
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 775
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 776
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 777
    new-instance v1, Lcom/payumoney/core/entity/Wallet;

    invoke-direct {v1}, Lcom/payumoney/core/entity/Wallet;-><init>()V

    .line 778
    move-object/from16 v2, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 779
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/payumoney/core/entity/Wallet;->setAmount(D)V

    .line 780
    invoke-static {}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getInstance()Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;

    move-result-object v3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->setWalletAmount(D)V

    .line 782
    :cond_c
    move-object/from16 v2, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 783
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/payumoney/core/entity/Wallet;->setAvailableAmount(D)V

    .line 785
    :cond_d
    move-object/from16 v2, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 786
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/payumoney/core/entity/Wallet;->setMinLimit(D)V

    .line 788
    :cond_e
    move-object/from16 v2, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 789
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/payumoney/core/entity/Wallet;->setMaxLimit(D)V

    .line 791
    :cond_f
    move-object/from16 v2, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 792
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/payumoney/core/entity/Wallet;->setStatus(D)V

    .line 794
    :cond_10
    move-object/from16 v2, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 795
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/payumoney/core/entity/Wallet;->setMesssage(Ljava/lang/String;)V

    .line 797
    :cond_11
    invoke-virtual {v9, v1}, Lcom/payumoney/core/response/UserDetail;->setWalletDetails(Lcom/payumoney/core/entity/Wallet;)V

    .line 799
    :cond_12
    return-object v9

    .line 803
    :cond_13
    invoke-virtual/range {p0 .. p1}, Lcom/payumoney/core/utils/ResponseParser;->errorFromResponse(Lorg/json/JSONObject;)Lcom/payumoney/core/response/ErrorResponse;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 805
    :catch_0
    move-exception v0

    .line 806
    new-instance v0, Lcom/payumoney/core/utils/PayUMoneyCustomException;

    const-string v1, "Something went wrong"

    invoke-direct {v0, v1}, Lcom/payumoney/core/utils/PayUMoneyCustomException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseUserDetailsForNitroFlow(Lorg/json/JSONObject;)Lcom/payumoney/core/response/PayUMoneyAPIResponse;
    .locals 24
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/payumoney/core/utils/PayUMoneyCustomException;
        }
    .end annotation

    .line 968
    move-object/from16 v1, p1

    const-string v0, "ccnum"

    const-string v2, "message"

    const-string v3, "cardType"

    const-string v4, "cardToken"

    const-string v5, "maxLimit"

    const-string v6, "cardName"

    const-string v7, "minLimit"

    const-string v8, "cardId"

    const-string v9, "availableAmount"

    const-string v10, "email"

    const-string v11, "phone"

    const-string v12, "result"

    const-string v13, "amount"

    const-string v14, "userEnabled"

    const-string v15, "savedCards"

    move-object/from16 v16, v0

    const-string v0, "userId"

    move-object/from16 v17, v3

    const-string v3, "status"

    move-object/from16 v18, v4

    const-string v4, "wallet"

    .line 969
    :try_start_0
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v20, v6

    const-string v6, ""

    if-eqz v19, :cond_0

    .line 970
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v23, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v23

    goto :goto_0

    .line 969
    :cond_0
    move-object/from16 v19, v8

    move-object v8, v6

    .line 972
    :goto_0
    move-object/from16 v21, v15

    const-string v15, "0"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 974
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 976
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 977
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_13

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_13

    .line 978
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 979
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 982
    const-string v15, "-1"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12

    const-string v12, "1"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 984
    invoke-static {}, Lcom/payumoney/core/SdkSession;->getInstanceForService()Lcom/payumoney/core/SdkSession;

    move-result-object v12

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lcom/payumoney/core/SdkSession;->setUserAccountActive(Z)V

    .line 986
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 987
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 989
    const-string v14, "null"

    if-eqz v12, :cond_1

    :try_start_2
    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_1

    .line 990
    invoke-static {}, Lcom/payumoney/core/SdkSession;->getInstanceForService()Lcom/payumoney/core/SdkSession;

    move-result-object v15

    invoke-virtual {v15, v12}, Lcom/payumoney/core/SdkSession;->setRegisteredUserName(Ljava/lang/String;)V

    .line 991
    invoke-static {}, Lcom/payumoney/core/SdkSession;->getInstanceForService()Lcom/payumoney/core/SdkSession;

    move-result-object v12

    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Lcom/payumoney/core/SdkSession;->setMobileNumberRegistered(Z)V

    goto :goto_1

    .line 993
    :cond_1
    invoke-static {}, Lcom/payumoney/core/SdkSession;->getInstanceForService()Lcom/payumoney/core/SdkSession;

    move-result-object v12

    invoke-virtual {v12, v15}, Lcom/payumoney/core/SdkSession;->setRegisteredUserName(Ljava/lang/String;)V

    .line 994
    invoke-static {}, Lcom/payumoney/core/SdkSession;->getInstanceForService()Lcom/payumoney/core/SdkSession;

    move-result-object v12

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Lcom/payumoney/core/SdkSession;->setMobileNumberRegistered(Z)V

    .line 997
    :goto_1
    new-instance v12, Lcom/payumoney/core/response/UserDetail;

    invoke-direct {v12}, Lcom/payumoney/core/response/UserDetail;-><init>()V

    .line 998
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/payumoney/core/response/UserDetail;->setUserID(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/payumoney/core/response/UserDetail;->setPhoneNumber(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/payumoney/core/response/UserDetail;->setEmail(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1003
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1004
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1005
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1006
    new-instance v4, Lcom/payumoney/core/entity/Wallet;

    invoke-direct {v4}, Lcom/payumoney/core/entity/Wallet;-><init>()V

    .line 1007
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1008
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/payumoney/core/entity/Wallet;->setAmount(D)V

    .line 1009
    invoke-static {}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getInstance()Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;

    move-result-object v6

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->setWalletAmount(D)V

    .line 1011
    :cond_2
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1012
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Lcom/payumoney/core/entity/Wallet;->setAvailableAmount(D)V

    .line 1014
    :cond_3
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1015
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/payumoney/core/entity/Wallet;->setMinLimit(D)V

    .line 1017
    :cond_4
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1018
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/payumoney/core/entity/Wallet;->setMaxLimit(D)V

    .line 1020
    :cond_5
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1021
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/payumoney/core/entity/Wallet;->setStatus(D)V

    .line 1023
    :cond_6
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1024
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/payumoney/core/entity/Wallet;->setMesssage(Ljava/lang/String;)V

    .line 1026
    :cond_7
    invoke-virtual {v12, v4}, Lcom/payumoney/core/response/UserDetail;->setWalletDetails(Lcom/payumoney/core/entity/Wallet;)V

    .line 1029
    :cond_8
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1030
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1031
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1032
    const/4 v15, 0x0

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v15, v3, :cond_10

    .line 1033
    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1034
    new-instance v4, Lcom/payumoney/core/entity/CardDetail;

    invoke-direct {v4}, Lcom/payumoney/core/entity/CardDetail;-><init>()V

    .line 1035
    move-object/from16 v5, v19

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1036
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/payumoney/core/entity/CardDetail;->setId(J)V

    .line 1038
    :cond_9
    move-object/from16 v6, v20

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1039
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/payumoney/core/entity/CardDetail;->setName(Ljava/lang/String;)V

    .line 1041
    :cond_a
    move-object/from16 v7, v18

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1042
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/payumoney/core/entity/CardDetail;->setToken(Ljava/lang/String;)V

    .line 1044
    :cond_b
    move-object/from16 v8, v17

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1045
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/payumoney/core/entity/CardDetail;->setType(Ljava/lang/String;)V

    .line 1047
    :cond_c
    move-object/from16 v9, v16

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1048
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/payumoney/core/entity/CardDetail;->setNumber(Ljava/lang/String;)V

    .line 1050
    :cond_d
    const-string v10, "pg"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1051
    const-string v10, "pg"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/payumoney/core/entity/CardDetail;->setPg(Ljava/lang/String;)V

    .line 1053
    :cond_e
    const-string v10, "oneclickcheckout"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1054
    const-string v10, "oneclickcheckout"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/payumoney/core/entity/CardDetail;->setOneClickCheckout(Z)V

    .line 1056
    :cond_f
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1032
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    move-object/from16 v16, v9

    goto/16 :goto_2

    .line 1058
    :cond_10
    invoke-virtual {v12, v2}, Lcom/payumoney/core/response/UserDetail;->setSaveCardList(Ljava/util/ArrayList;)V

    .line 1061
    :cond_11
    return-object v12

    .line 1064
    :cond_12
    invoke-static {}, Lcom/payumoney/core/SdkSession;->getInstanceForService()Lcom/payumoney/core/SdkSession;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/payumoney/core/SdkSession;->setUserAccountActive(Z)V

    .line 1065
    invoke-virtual/range {p0 .. p1}, Lcom/payumoney/core/utils/ResponseParser;->errorFromResponse(Lorg/json/JSONObject;)Lcom/payumoney/core/response/ErrorResponse;

    move-result-object v0

    return-object v0

    .line 1068
    :cond_13
    invoke-virtual/range {p0 .. p1}, Lcom/payumoney/core/utils/ResponseParser;->errorFromResponse(Lorg/json/JSONObject;)Lcom/payumoney/core/response/ErrorResponse;

    move-result-object v0

    return-object v0

    .line 1072
    :cond_14
    invoke-virtual/range {p0 .. p1}, Lcom/payumoney/core/utils/ResponseParser;->errorFromResponse(Lorg/json/JSONObject;)Lcom/payumoney/core/response/ErrorResponse;

    move-result-object v0

    return-object v0

    .line 1075
    :cond_15
    invoke-virtual/range {p0 .. p1}, Lcom/payumoney/core/utils/ResponseParser;->errorFromResponse(Lorg/json/JSONObject;)Lcom/payumoney/core/response/ErrorResponse;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 1077
    :catch_0
    move-exception v0

    .line 1078
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1080
    invoke-virtual/range {p0 .. p1}, Lcom/payumoney/core/utils/ResponseParser;->errorFromResponse(Lorg/json/JSONObject;)Lcom/payumoney/core/response/ErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public parseValidateWalletResponse(Lorg/json/JSONObject;)Lcom/payumoney/core/response/PayUMoneyAPIResponse;
    .locals 5
    .param p1, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/payumoney/core/utils/PayUMoneyCustomException;
        }
    .end annotation

    .line 172
    const-string v0, "result"

    const-string v1, "status"

    const-string v2, "configDTO"

    :try_start_0
    const-string v3, "-1"

    .line 173
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    :cond_0
    const-string v1, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "msg"

    if-eqz v1, :cond_3

    .line 177
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    new-instance v1, Lcom/payumoney/core/response/PayUMoneyLoginResponse;

    invoke-direct {v1}, Lcom/payumoney/core/response/PayUMoneyLoginResponse;-><init>()V

    .line 179
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 181
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 183
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 184
    const-string v2, "userToken"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/payumoney/core/response/PayUMoneyLoginResponse;->setAccessToken(Ljava/lang/String;)V

    .line 186
    nop

    .line 189
    return-object v1

    .line 187
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/payumoney/core/utils/ResponseParser;->errorFromResponse(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/payumoney/core/response/ErrorResponse;

    move-result-object v0

    return-object v0

    .line 191
    :cond_2
    invoke-virtual {p0, p1, v3}, Lcom/payumoney/core/utils/ResponseParser;->errorFromResponse(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/payumoney/core/response/ErrorResponse;

    move-result-object v0

    return-object v0

    .line 194
    :cond_3
    invoke-virtual {p0, p1, v3}, Lcom/payumoney/core/utils/ResponseParser;->errorFromResponse(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/payumoney/core/response/ErrorResponse;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    new-instance v0, Lcom/payumoney/core/utils/PayUMoneyCustomException;

    const-string v1, "Something went wrong"

    invoke-direct {v0, v1}, Lcom/payumoney/core/utils/PayUMoneyCustomException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
