.class public Leasypay/utils/EasypayLoaderService;
.super Landroidx/core/app/JobIntentService;
.source "EasypayLoaderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leasypay/utils/EasypayLoaderService$JsonDownloadListener;
    }
.end annotation


# static fields
.field private static final JOB_ID:I = 0x4d2

.field private static final TAG:Ljava/lang/String; = "EasypayLoaderService"


# instance fields
.field editorETAG:Landroid/content/SharedPreferences$Editor;

.field private jsonDownloadListener:Leasypay/utils/EasypayLoaderService$JsonDownloadListener;

.field private sharedPref:Landroid/content/SharedPreferences;

.field sharedPrefETag:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Leasypay/utils/EasypayLoaderService$JsonDownloadListener;)V
    .locals 0
    .param p1, "jsonDownloadListener"    # Leasypay/utils/EasypayLoaderService$JsonDownloadListener;

    .line 35
    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    .line 36
    iput-object p1, p0, Leasypay/utils/EasypayLoaderService;->jsonDownloadListener:Leasypay/utils/EasypayLoaderService$JsonDownloadListener;

    .line 37
    return-void
.end method

.method public static enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 39
    const-class v0, Leasypay/utils/EasypayLoaderService;

    const/16 v1, 0x4d2

    invoke-static {p0, v0, v1, p1}, Leasypay/utils/EasypayLoaderService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    .line 40
    return-void
.end method


# virtual methods
.method public downloadConfigFile()V
    .locals 15

    .line 71
    iget-object v0, p0, Leasypay/utils/EasypayLoaderService;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "easypay_configuration_load_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 72
    .local v4, "timestamp":J
    iget-object v0, p0, Leasypay/utils/EasypayLoaderService;->sharedPref:Landroid/content/SharedPreferences;

    const-string v6, "easypay_configuration_ttl"

    invoke-interface {v0, v6, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 75
    .local v2, "ttl":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-string v0, "EasypayLoaderService"

    cmp-long v8, v6, v2

    if-lez v8, :cond_1

    .line 76
    const-string v6, "kanish"

    const-string v7, "loader service :json not expired"

    invoke-static {v6, v7}, Leasypay/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JsonData={\"MID\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Leasypay/utils/EasypayLoaderService;->sharedPref:Landroid/content/SharedPreferences;

    const-string v8, "merchant_mid"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\"}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, "params":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "queryString":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Leasypay/manager/Constants;->getDbUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 83
    .local v8, "path":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Json download path:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Leasypay/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v9, "easypay_configuration.json"

    .line 86
    .local v9, "filename":Ljava/lang/String;
    invoke-virtual {p0, v8, v9}, Leasypay/utils/EasypayLoaderService;->downloadFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 88
    .local v10, "downloadSuccess":Z
    if-eqz v10, :cond_0

    .line 89
    const-string v11, "com.paytm.com.paytm.pgsdk.easypay.PREFERENCE_FILE_KEY"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Leasypay/utils/EasypayLoaderService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 90
    .local v11, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 91
    .local v12, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-interface {v12, v1, v13, v14}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 93
    const-string v1, "downloaded - easypay_configuration.json"

    invoke-static {v0, v1}, Leasypay/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v6    # "params":Ljava/lang/String;
    .end local v7    # "queryString":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "filename":Ljava/lang/String;
    .end local v10    # "downloadSuccess":Z
    .end local v11    # "sharedPref":Landroid/content/SharedPreferences;
    .end local v12    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 97
    :cond_0
    :goto_0
    goto :goto_1

    .line 100
    :cond_1
    const-string v1, "not downloading - easypay_configuration.json"

    invoke-static {v0, v1}, Leasypay/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_1
    return-void
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 26
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 107
    move-object/from16 v1, p0

    const-string v0, "LastRequestTimestamp"

    const-string v2, "ETAGValue"

    :try_start_0
    new-instance v4, Ljava/net/URL;

    move-object/from16 v5, p1

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 108
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 109
    .local v6, "ucon":Ljava/net/HttpURLConnection;
    const/16 v7, 0x3a98

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 110
    const/16 v7, 0x4e20

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 111
    const-string v7, "GET"

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 113
    iget-object v7, v1, Leasypay/utils/EasypayLoaderService;->sharedPrefETag:Landroid/content/SharedPreferences;

    const-string v8, "0"

    invoke-interface {v7, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 114
    .local v7, "ETagPrevious":Ljava/lang/String;
    iget-object v8, v1, Leasypay/utils/EasypayLoaderService;->sharedPrefETag:Landroid/content/SharedPreferences;

    const-wide/16 v9, 0x0

    invoke-interface {v8, v0, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 115
    .local v8, "prevTimestamp":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 116
    .local v10, "currentTime":J
    const-wide/32 v12, 0xa4cb80

    .line 117
    .local v12, "Hrs03":J
    const-string v14, "If-None-Match"

    invoke-virtual {v6, v14, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 119
    const-string v14, "ETag"

    invoke-virtual {v6, v14}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 120
    .local v14, "ETagCurrent":Ljava/lang/String;
    iget-object v15, v1, Leasypay/utils/EasypayLoaderService;->sharedPrefETag:Landroid/content/SharedPreferences;

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    iput-object v15, v1, Leasypay/utils/EasypayLoaderService;->editorETAG:Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-interface {v15, v2, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 122
    iget-object v2, v1, Leasypay/utils/EasypayLoaderService;->editorETAG:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    add-long v15, v8, v12

    const-string v3, "com.drc.paytm_example.EASYPAY_CONFIG_DOWNLOADED"

    const-string v2, "EasypayLoaderService"

    cmp-long v17, v10, v15

    if-gez v17, :cond_0

    .line 126
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-virtual {v1, v0}, Leasypay/utils/EasypayLoaderService;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    const-string v3, "No need to download file"

    invoke-static {v2, v3}, Leasypay/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v2, 0x1

    return v2

    .line 132
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v15, v1, Leasypay/utils/EasypayLoaderService;->sharedPrefETag:Landroid/content/SharedPreferences;

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    iput-object v15, v1, Leasypay/utils/EasypayLoaderService;->editorETAG:Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-interface {v15, v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 134
    iget-object v0, v1, Leasypay/utils/EasypayLoaderService;->editorETAG:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 137
    .local v0, "is":Ljava/io/InputStream;
    new-instance v15, Ljava/io/BufferedInputStream;

    move-object/from16 v16, v4

    .end local v4    # "url":Ljava/net/URL;
    .local v16, "url":Ljava/net/URL;
    const/16 v4, 0x1400

    invoke-direct {v15, v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v4, v15

    .line 139
    .local v4, "inStream":Ljava/io/BufferedInputStream;
    new-instance v15, Ljava/io/File;

    move-object/from16 v17, v0

    .end local v0    # "is":Ljava/io/InputStream;
    .local v17, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Leasypay/utils/EasypayLoaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v15

    .line 141
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 143
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 145
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v15

    .line 147
    .local v15, "isFileCreated":Z
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 148
    .local v5, "outStream":Ljava/io/FileOutputStream;
    move-object/from16 v18, v0

    .end local v0    # "file":Ljava/io/File;
    .local v18, "file":Ljava/io/File;
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 151
    .local v0, "buff":[B
    new-instance v19, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v20, v19

    .line 153
    .local v20, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    move-object/from16 v19, v6

    .end local v6    # "ucon":Ljava/net/HttpURLConnection;
    .local v19, "ucon":Ljava/net/HttpURLConnection;
    invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    move/from16 v21, v6

    move-object/from16 v22, v7

    .end local v7    # "ETagPrevious":Ljava/lang/String;
    .local v21, "len":I
    .local v22, "ETagPrevious":Ljava/lang/String;
    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 155
    move-object/from16 v6, v20

    move/from16 v7, v21

    move-wide/from16 v20, v8

    const/4 v8, 0x0

    .end local v8    # "prevTimestamp":J
    .end local v21    # "len":I
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    .local v7, "len":I
    .local v20, "prevTimestamp":J
    invoke-virtual {v6, v0, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 156
    invoke-virtual {v5, v0, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V

    move-wide/from16 v8, v20

    move-object/from16 v7, v22

    move-object/from16 v20, v6

    move-object/from16 v6, v19

    goto :goto_0

    .line 159
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "len":I
    .restart local v8    # "prevTimestamp":J
    .local v20, "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v21    # "len":I
    :cond_2
    move-object/from16 v6, v20

    move/from16 v7, v21

    move-wide/from16 v20, v8

    .end local v8    # "prevTimestamp":J
    .end local v21    # "len":I
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "len":I
    .local v20, "prevTimestamp":J
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 160
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 161
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 163
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 164
    .local v8, "buf":[B
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([B)V

    .line 166
    .local v9, "str":Ljava/lang/String;
    move-object/from16 v23, v0

    .end local v0    # "buff":[B
    .local v23, "buff":[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v4

    .end local v4    # "inStream":Ljava/io/BufferedInputStream;
    .local v24, "inStream":Ljava/io/BufferedInputStream;
    const-string v4, "baos data is :- "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    move-object/from16 v25, v5

    .end local v5    # "outStream":Ljava/io/FileOutputStream;
    .local v25, "outStream":Ljava/io/FileOutputStream;
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Leasypay/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "easypay_configuration downloaded!"

    invoke-static {v2, v0}, Leasypay/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 172
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    invoke-virtual {v1, v0}, Leasypay/utils/EasypayLoaderService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "len":I
    .end local v8    # "buf":[B
    .end local v9    # "str":Ljava/lang/String;
    .end local v10    # "currentTime":J
    .end local v12    # "Hrs03":J
    .end local v14    # "ETagCurrent":Ljava/lang/String;
    .end local v15    # "isFileCreated":Z
    .end local v16    # "url":Ljava/net/URL;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local v18    # "file":Ljava/io/File;
    .end local v19    # "ucon":Ljava/net/HttpURLConnection;
    .end local v20    # "prevTimestamp":J
    .end local v22    # "ETagPrevious":Ljava/lang/String;
    .end local v23    # "buff":[B
    .end local v24    # "inStream":Ljava/io/BufferedInputStream;
    .end local v25    # "outStream":Ljava/io/FileOutputStream;
    nop

    .line 181
    const/4 v0, 0x1

    return v0

    .line 176
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return v2
.end method

.method public onCreate()V
    .locals 0

    .line 54
    invoke-super {p0}, Landroidx/core/app/JobIntentService;->onCreate()V

    .line 55
    return-void
.end method

.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 59
    const-string v0, "com.paytm.com.paytm.pgsdk.easypay.PREFERENCE_FILE_KEY"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Leasypay/utils/EasypayLoaderService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Leasypay/utils/EasypayLoaderService;->sharedPref:Landroid/content/SharedPreferences;

    .line 60
    const-string v0, "ETAGPreference"

    invoke-virtual {p0, v0, v1}, Leasypay/utils/EasypayLoaderService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Leasypay/utils/EasypayLoaderService;->sharedPrefETag:Landroid/content/SharedPreferences;

    .line 61
    iget-object v0, p0, Leasypay/utils/EasypayLoaderService;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 62
    .local v0, "mEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "enableEasyPay"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 63
    .local v1, "allowEasypay":Z
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    invoke-virtual {p0}, Leasypay/utils/EasypayLoaderService;->downloadConfigFile()V

    .line 67
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .line 49
    invoke-super {p0, p1, p2}, Landroidx/core/app/JobIntentService;->onStart(Landroid/content/Intent;I)V

    .line 50
    return-void
.end method

.method public setJsonDownloadListener(Leasypay/utils/EasypayLoaderService$JsonDownloadListener;)V
    .locals 2
    .param p1, "jsonDownloadListener"    # Leasypay/utils/EasypayLoaderService$JsonDownloadListener;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EasypayLoaderService"

    invoke-static {v1, v0}, Leasypay/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Leasypay/utils/EasypayLoaderService;->jsonDownloadListener:Leasypay/utils/EasypayLoaderService$JsonDownloadListener;

    .line 45
    return-void
.end method
