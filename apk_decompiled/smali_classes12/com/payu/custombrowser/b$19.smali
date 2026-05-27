.class Lcom/payu/custombrowser/b$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/b;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/b;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/b;)V
    .locals 0

    .line 1085
    iput-object p1, p0, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .line 1088
    move-object/from16 v1, p0

    .line 1089
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v3, v3, Lcom/payu/custombrowser/b;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "initialize"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".js"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1090
    invoke-static {v2}, Lcom/payu/custombrowser/util/c;->b(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v2

    .line 1092
    const-string v4, "sp_image_download_time_out"

    const-string v5, "com.payu.custombrowser.payucustombrowser"

    const-string v6, "0"

    const-string v9, "\')"

    const-string v10, "(\'"

    const-string v11, "snooze_image_download_time"

    const-string v12, "snooze_config"

    const-string v13, "surepay_s2s"

    const-string v14, ""

    if-eqz v2, :cond_b

    :try_start_0
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v15

    const/16 v7, 0xc8

    if-ne v15, v7, :cond_b

    .line 1093
    iget-object v7, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v7, v7, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v15, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v15, v15, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v15, v3, v8}, Lcom/payu/custombrowser/util/c;->a(Ljava/io/InputStream;Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    .line 1099
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_1

    .line 1096
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1097
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1100
    :try_start_2
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v2, v2, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    if-eqz v2, :cond_11

    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v2, v2, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1101
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    new-instance v7, Lorg/json/JSONObject;

    iget-object v8, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v8, v8, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v8, v3}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/payu/custombrowser/util/c;->a(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v7, v2, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    .line 1102
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    invoke-virtual {v2}, Lcom/payu/custombrowser/b;->j()V

    .line 1103
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-boolean v2, v2, Lcom/payu/custombrowser/b;->H:Z

    if-nez v2, :cond_0

    .line 1104
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    const/4 v3, 0x1

    invoke-virtual {v2, v14, v3}, Lcom/payu/custombrowser/b;->checkStatusFromJS(Ljava/lang/String;I)V

    .line 1105
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    const/4 v3, 0x2

    invoke-virtual {v2, v14, v3}, Lcom/payu/custombrowser/b;->checkStatusFromJS(Ljava/lang/String;I)V

    .line 1109
    :cond_0
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v2, v2, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v3, v3, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v14

    .line 1110
    :goto_0
    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v3, v3, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v3, v3, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/payu/custombrowser/b;->snoozeImageDownloadTimeout:I

    .line 1113
    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v3, v3, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v6, Lcom/payu/custombrowser/b;->snoozeImageDownloadTimeout:I

    invoke-static {v3, v5, v4, v6}, Lcom/payu/custombrowser/util/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1115
    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v3, v3, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    iget-object v4, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    sget v5, Lcom/payu/custombrowser/R$string;->sp_internet_restored_ttl:I

    invoke-virtual {v4, v5}, Lcom/payu/custombrowser/b;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v4, v4, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    iget-object v5, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    sget v6, Lcom/payu/custombrowser/R$string;->sp_internet_restored_ttl:I

    invoke-virtual {v5, v6}, Lcom/payu/custombrowser/b;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1117
    :cond_3
    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v3, v3, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    new-instance v4, Lcom/payu/custombrowser/b$19$1;

    invoke-direct {v4, v1, v2}, Lcom/payu/custombrowser/b$19$1;-><init>(Lcom/payu/custombrowser/b$19;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1124
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v2, v2, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    new-instance v3, Lcom/payu/custombrowser/b$19$2;

    invoke-direct {v3, v1, v14}, Lcom/payu/custombrowser/b$19$2;-><init>(Lcom/payu/custombrowser/b$19;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1131
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v2, v2, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1132
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v2, v2, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v3, v3, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    iget-object v4, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v4, v4, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v13, v4}, Lcom/payu/custombrowser/util/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    :cond_4
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-boolean v2, v2, Lcom/payu/custombrowser/b;->an:Z

    if-eqz v2, :cond_11

    .line 1136
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v2, v2, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    if-eqz v2, :cond_11

    .line 1137
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v2, v2, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    new-instance v3, Lcom/payu/custombrowser/b$19$3;

    invoke-direct {v3, v1}, Lcom/payu/custombrowser/b$19$3;-><init>(Lcom/payu/custombrowser/b$19;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    goto/16 :goto_9

    .line 1146
    :catch_1
    move-exception v0

    goto/16 :goto_8

    :catch_2
    move-exception v0

    goto/16 :goto_8

    .line 1100
    :goto_1
    :try_start_3
    iget-object v7, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v7, v7, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    if-eqz v7, :cond_a

    iget-object v7, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v7, v7, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_a

    .line 1101
    iget-object v7, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    new-instance v8, Lorg/json/JSONObject;

    iget-object v15, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v15, v15, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v15, v3}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/payu/custombrowser/util/c;->a(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v8, v7, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    .line 1102
    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    invoke-virtual {v3}, Lcom/payu/custombrowser/b;->j()V

    .line 1103
    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-boolean v3, v3, Lcom/payu/custombrowser/b;->H:Z

    if-nez v3, :cond_5

    .line 1104
    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    const/4 v7, 0x1

    invoke-virtual {v3, v14, v7}, Lcom/payu/custombrowser/b;->checkStatusFromJS(Ljava/lang/String;I)V

    .line 1105
    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    const/4 v7, 0x2

    invoke-virtual {v3, v14, v7}, Lcom/payu/custombrowser/b;->checkStatusFromJS(Ljava/lang/String;I)V

    .line 1109
    :cond_5
    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v3, v3, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v7, v7, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    move-object v3, v14

    .line 1110
    :goto_2
    iget-object v7, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v7, v7, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v6, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v6, v6, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_7
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/payu/custombrowser/b;->snoozeImageDownloadTimeout:I

    .line 1113
    iget-object v6, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v6, v6, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/payu/custombrowser/b;->snoozeImageDownloadTimeout:I

    invoke-static {v6, v5, v4, v7}, Lcom/payu/custombrowser/util/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1115
    iget-object v4, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v4, v4, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    iget-object v5, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    sget v6, Lcom/payu/custombrowser/R$string;->sp_internet_restored_ttl:I

    invoke-virtual {v5, v6}, Lcom/payu/custombrowser/b;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v5, v5, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    iget-object v6, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    sget v7, Lcom/payu/custombrowser/R$string;->sp_internet_restored_ttl:I

    invoke-virtual {v6, v7}, Lcom/payu/custombrowser/b;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1117
    :cond_8
    iget-object v4, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v4, v4, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    new-instance v5, Lcom/payu/custombrowser/b$19$1;

    invoke-direct {v5, v1, v3}, Lcom/payu/custombrowser/b$19$1;-><init>(Lcom/payu/custombrowser/b$19;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1124
    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v3, v3, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    new-instance v4, Lcom/payu/custombrowser/b$19$2;

    invoke-direct {v4, v1, v14}, Lcom/payu/custombrowser/b$19$2;-><init>(Lcom/payu/custombrowser/b$19;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1131
    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v3, v3, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1132
    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v3, v3, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    iget-object v4, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v4, v4, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    iget-object v5, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v5, v5, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v13, v5}, Lcom/payu/custombrowser/util/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    :cond_9
    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-boolean v3, v3, Lcom/payu/custombrowser/b;->an:Z

    if-eqz v3, :cond_a

    .line 1136
    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v3, v3, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    if-eqz v3, :cond_a

    .line 1137
    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v3, v3, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    new-instance v4, Lcom/payu/custombrowser/b$19$3;

    invoke-direct {v4, v1}, Lcom/payu/custombrowser/b$19$3;-><init>(Lcom/payu/custombrowser/b$19;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 1149
    :catch_3
    move-exception v0

    move-object v3, v0

    .line 1150
    iget-object v4, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    invoke-virtual {v4}, Lcom/payu/custombrowser/b;->h()V

    .line 1151
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 1146
    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    :goto_3
    move-object v3, v0

    .line 1147
    iget-object v4, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    invoke-virtual {v4}, Lcom/payu/custombrowser/b;->h()V

    .line 1148
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1152
    :cond_a
    :goto_4
    nop

    .line 1153
    :goto_5
    throw v2

    .line 1100
    :cond_b
    :goto_6
    :try_start_4
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v2, v2, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    if-eqz v2, :cond_11

    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v2, v2, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1101
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    new-instance v7, Lorg/json/JSONObject;

    iget-object v8, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v8, v8, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v8, v3}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/payu/custombrowser/util/c;->a(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v7, v2, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    .line 1102
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    invoke-virtual {v2}, Lcom/payu/custombrowser/b;->j()V

    .line 1103
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-boolean v2, v2, Lcom/payu/custombrowser/b;->H:Z

    if-nez v2, :cond_c

    .line 1104
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    const/4 v3, 0x1

    invoke-virtual {v2, v14, v3}, Lcom/payu/custombrowser/b;->checkStatusFromJS(Ljava/lang/String;I)V

    .line 1105
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    const/4 v3, 0x2

    invoke-virtual {v2, v14, v3}, Lcom/payu/custombrowser/b;->checkStatusFromJS(Ljava/lang/String;I)V

    .line 1109
    :cond_c
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v2, v2, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v3, v3, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_d
    move-object v2, v14

    .line 1110
    :goto_7
    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v3, v3, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v3, v3, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_e
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/payu/custombrowser/b;->snoozeImageDownloadTimeout:I

    .line 1113
    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v3, v3, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v6, Lcom/payu/custombrowser/b;->snoozeImageDownloadTimeout:I

    invoke-static {v3, v5, v4, v6}, Lcom/payu/custombrowser/util/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1115
    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v3, v3, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    iget-object v4, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    sget v5, Lcom/payu/custombrowser/R$string;->sp_internet_restored_ttl:I

    invoke-virtual {v4, v5}, Lcom/payu/custombrowser/b;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v4, v4, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    iget-object v5, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    sget v6, Lcom/payu/custombrowser/R$string;->sp_internet_restored_ttl:I

    invoke-virtual {v5, v6}, Lcom/payu/custombrowser/b;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1117
    :cond_f
    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v3, v3, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    new-instance v4, Lcom/payu/custombrowser/b$19$1;

    invoke-direct {v4, v1, v2}, Lcom/payu/custombrowser/b$19$1;-><init>(Lcom/payu/custombrowser/b$19;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1124
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v2, v2, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    new-instance v3, Lcom/payu/custombrowser/b$19$2;

    invoke-direct {v3, v1, v14}, Lcom/payu/custombrowser/b$19$2;-><init>(Lcom/payu/custombrowser/b$19;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1131
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v2, v2, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1132
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v2, v2, Lcom/payu/custombrowser/b;->L:Lcom/payu/custombrowser/util/c;

    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v3, v3, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    iget-object v4, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v4, v4, Lcom/payu/custombrowser/b;->h:Lorg/json/JSONObject;

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v13, v4}, Lcom/payu/custombrowser/util/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    :cond_10
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-boolean v2, v2, Lcom/payu/custombrowser/b;->an:Z

    if-eqz v2, :cond_11

    .line 1136
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v2, v2, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    if-eqz v2, :cond_11

    .line 1137
    iget-object v2, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    iget-object v2, v2, Lcom/payu/custombrowser/b;->f:Landroid/app/Activity;

    new-instance v3, Lcom/payu/custombrowser/b$19$3;

    invoke-direct {v3, v1}, Lcom/payu/custombrowser/b$19$3;-><init>(Lcom/payu/custombrowser/b$19;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_9

    .line 1149
    :catch_6
    move-exception v0

    move-object v2, v0

    .line 1150
    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    invoke-virtual {v3}, Lcom/payu/custombrowser/b;->h()V

    .line 1151
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1153
    goto :goto_a

    .line 1146
    :catch_7
    move-exception v0

    goto :goto_8

    :catch_8
    move-exception v0

    :goto_8
    move-object v2, v0

    .line 1147
    iget-object v3, v1, Lcom/payu/custombrowser/b$19;->a:Lcom/payu/custombrowser/b;

    invoke-virtual {v3}, Lcom/payu/custombrowser/b;->h()V

    .line 1148
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1152
    :cond_11
    :goto_9
    nop

    .line 1155
    :goto_a
    return-void
.end method
