.class public Leasypay/utils/EasyPayUtils;
.super Ljava/lang/Object;
.source "EasyPayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSavedEtag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bankName"    # Ljava/lang/String;
    .param p2, "paytype"    # Ljava/lang/String;
    .param p3, "cardScheme"    # Ljava/lang/String;

    .line 100
    const-string v0, ""

    .line 103
    .local v0, "etag":Ljava/lang/String;
    :try_start_0
    const-string v1, "com.paytm.com.paytm.pgsdk.easypay.NEW_PREFERENCE_FILE_KEY"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 104
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "configList"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "bankListJson":Ljava/lang/String;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 107
    .local v3, "gson":Lcom/google/gson/Gson;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 108
    const-class v4, Leasypay/entity/PreferenceList;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leasypay/entity/PreferenceList;

    .line 109
    .local v4, "prefList":Leasypay/entity/PreferenceList;
    if-eqz v4, :cond_1

    .line 110
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v4}, Leasypay/entity/PreferenceList;->getPrefList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 111
    invoke-virtual {v4}, Leasypay/entity/PreferenceList;->getPrefList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Leasypay/entity/AssistDetailsResponse;

    .line 112
    .local v6, "item":Leasypay/entity/AssistDetailsResponse;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Leasypay/entity/AssistDetailsResponse;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 113
    invoke-virtual {v6}, Leasypay/entity/AssistDetailsResponse;->getEtag()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    .line 114
    goto :goto_1

    .line 110
    .end local v6    # "item":Leasypay/entity/AssistDetailsResponse;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v2    # "bankListJson":Ljava/lang/String;
    .end local v3    # "gson":Lcom/google/gson/Gson;
    .end local v4    # "prefList":Leasypay/entity/PreferenceList;
    .end local v5    # "i":I
    :cond_1
    :goto_1
    goto :goto_2

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    const-string v2, "EXCEPTION"

    invoke-static {v2, v1}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method public static saveConfigWithEtag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "etag"    # Ljava/lang/String;

    .line 22
    const-string v0, "configList"

    :try_start_0
    const-string v1, "com.paytm.com.paytm.pgsdk.easypay.NEW_PREFERENCE_FILE_KEY"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 23
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, ""

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, "bankListJson":Ljava/lang/String;
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 26
    .local v4, "gson":Lcom/google/gson/Gson;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "config"

    if-nez v5, :cond_9

    .line 27
    :try_start_1
    const-class v5, Leasypay/entity/NewConfigResponse;

    invoke-virtual {v4, p1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leasypay/entity/NewConfigResponse;

    .line 28
    .local v5, "serverResponse":Leasypay/entity/NewConfigResponse;
    if-eqz v5, :cond_8

    .line 30
    invoke-virtual {v5}, Leasypay/entity/NewConfigResponse;->getResponseCode()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v5}, Leasypay/entity/NewConfigResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 31
    invoke-virtual {v5}, Leasypay/entity/NewConfigResponse;->getResponseCode()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x193

    if-eq v7, v8, :cond_8

    invoke-virtual {v5}, Leasypay/entity/NewConfigResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Bank name is not supported"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_4

    .line 35
    :cond_0
    invoke-virtual {v5}, Leasypay/entity/NewConfigResponse;->getAssistBaseSRO()Leasypay/entity/AssistDetailsResponse;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 36
    invoke-virtual {v5}, Leasypay/entity/NewConfigResponse;->getAssistBaseSRO()Leasypay/entity/AssistDetailsResponse;

    move-result-object v7

    invoke-virtual {v7, p2}, Leasypay/entity/AssistDetailsResponse;->setEtag(Ljava/lang/String;)V

    .line 38
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 39
    new-instance v2, Leasypay/entity/PreferenceList;

    invoke-direct {v2}, Leasypay/entity/PreferenceList;-><init>()V

    .line 40
    .local v2, "prefList":Leasypay/entity/PreferenceList;
    invoke-virtual {v2}, Leasypay/entity/PreferenceList;->getPrefList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5}, Leasypay/entity/NewConfigResponse;->getAssistBaseSRO()Leasypay/entity/AssistDetailsResponse;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 43
    .end local v2    # "prefList":Leasypay/entity/PreferenceList;
    :cond_2
    const-class v7, Leasypay/entity/PreferenceList;

    invoke-virtual {v4, v3, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Leasypay/entity/PreferenceList;

    .line 44
    .local v7, "prefList":Leasypay/entity/PreferenceList;
    const/4 v8, -0x1

    .line 45
    .local v8, "indexFound":I
    if-eqz v7, :cond_7

    .line 46
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v7}, Leasypay/entity/PreferenceList;->getPrefList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 47
    invoke-virtual {v7}, Leasypay/entity/PreferenceList;->getPrefList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Leasypay/entity/AssistDetailsResponse;

    .line 48
    .local v10, "item":Leasypay/entity/AssistDetailsResponse;
    invoke-virtual {v5}, Leasypay/entity/NewConfigResponse;->getAssistBaseSRO()Leasypay/entity/AssistDetailsResponse;

    move-result-object v11

    invoke-virtual {v11, v10}, Leasypay/entity/AssistDetailsResponse;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 49
    move v8, v9

    .line 50
    goto :goto_1

    .line 46
    .end local v10    # "item":Leasypay/entity/AssistDetailsResponse;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 53
    .end local v9    # "i":I
    :cond_4
    :goto_1
    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    .line 54
    invoke-virtual {v7}, Leasypay/entity/PreferenceList;->getPrefList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5}, Leasypay/entity/NewConfigResponse;->getAssistBaseSRO()Leasypay/entity/AssistDetailsResponse;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 56
    :cond_5
    invoke-virtual {v7}, Leasypay/entity/PreferenceList;->getPrefList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x5

    if-ge v9, v10, :cond_6

    .line 57
    invoke-virtual {v7}, Leasypay/entity/PreferenceList;->getPrefList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5}, Leasypay/entity/NewConfigResponse;->getAssistBaseSRO()Leasypay/entity/AssistDetailsResponse;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 59
    :cond_6
    invoke-virtual {v7}, Leasypay/entity/PreferenceList;->getPrefList()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7}, Leasypay/entity/PreferenceList;->getPrefList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 60
    invoke-virtual {v7}, Leasypay/entity/PreferenceList;->getPrefList()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v5}, Leasypay/entity/NewConfigResponse;->getAssistBaseSRO()Leasypay/entity/AssistDetailsResponse;

    move-result-object v10

    invoke-interface {v9, v2, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 66
    .end local v8    # "indexFound":I
    :cond_7
    :goto_2
    move-object v2, v7

    .end local v7    # "prefList":Leasypay/entity/PreferenceList;
    .restart local v2    # "prefList":Leasypay/entity/PreferenceList;
    :goto_3
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 67
    .local v7, "mEditor":Landroid/content/SharedPreferences$Editor;
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v8, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v0, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5}, Leasypay/entity/NewConfigResponse;->getAssistBaseSRO()Leasypay/entity/AssistDetailsResponse;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    .end local v2    # "prefList":Leasypay/entity/PreferenceList;
    .end local v5    # "serverResponse":Leasypay/entity/NewConfigResponse;
    .end local v7    # "mEditor":Landroid/content/SharedPreferences$Editor;
    :cond_8
    :goto_4
    goto :goto_6

    .line 76
    :cond_9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 77
    const-class v0, Leasypay/entity/PreferenceList;

    invoke-virtual {v4, v3, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leasypay/entity/PreferenceList;

    .line 78
    .local v0, "prefList":Leasypay/entity/PreferenceList;
    if-eqz v0, :cond_b

    .line 79
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    invoke-virtual {v0}, Leasypay/entity/PreferenceList;->getPrefList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_b

    .line 80
    invoke-virtual {v0}, Leasypay/entity/PreferenceList;->getPrefList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leasypay/entity/AssistDetailsResponse;

    .line 81
    .local v5, "item":Leasypay/entity/AssistDetailsResponse;
    invoke-virtual {v5}, Leasypay/entity/AssistDetailsResponse;->getEtag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 82
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 83
    .restart local v7    # "mEditor":Landroid/content/SharedPreferences$Editor;
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v8, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    goto :goto_6

    .line 79
    .end local v5    # "item":Leasypay/entity/AssistDetailsResponse;
    .end local v7    # "mEditor":Landroid/content/SharedPreferences$Editor;
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 95
    .end local v0    # "prefList":Leasypay/entity/PreferenceList;
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v2    # "i":I
    .end local v3    # "bankListJson":Ljava/lang/String;
    .end local v4    # "gson":Lcom/google/gson/Gson;
    :cond_b
    :goto_6
    goto :goto_7

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    return-void
.end method
