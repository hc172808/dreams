.class public Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "MyFirebaseMessagingService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private notificationId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->notificationId:Ljava/lang/Integer;

    return-void
.end method

.method public static getBitmapFromUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 275
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 277
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 278
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 279
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 280
    .local v2, "input":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 281
    .end local v0    # "url":Ljava/net/URL;
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "input":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 283
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleDataMessage(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    .line 94
    const-string v0, "click_action"

    sget-object v1, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "push json: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :try_start_0
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 99
    .local v2, "data":Lorg/json/JSONObject;
    const-string v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "title":Ljava/lang/String;
    const-string v4, "message"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "message":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "click_action":Ljava/lang/String;
    const-string v6, "image"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, "imageUrl":Ljava/lang/String;
    const-string v7, "payload"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 108
    .local v7, "payload":Lorg/json/JSONObject;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "title: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "payload: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "imageUrl: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/definiteautomation/dreamludofantacy/utils/NotificationUtils;->isAppIsInBackground(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Landroid/content/Intent;

    const-string v8, "pushNotification"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, "pushNotification":Landroid/content/Intent;
    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 123
    new-instance v0, Lcom/definiteautomation/dreamludofantacy/utils/NotificationUtils;

    invoke-direct {v0}, Lcom/definiteautomation/dreamludofantacy/utils/NotificationUtils;-><init>()V

    .line 124
    .local v0, "notificationUtils":Lcom/definiteautomation/dreamludofantacy/utils/NotificationUtils;
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/definiteautomation/dreamludofantacy/utils/NotificationUtils;->playNotificationSound(Landroid/content/Context;)V

    .line 125
    .end local v0    # "notificationUtils":Lcom/definiteautomation/dreamludofantacy/utils/NotificationUtils;
    .end local v1    # "pushNotification":Landroid/content/Intent;
    goto :goto_0

    .line 129
    :cond_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    invoke-direct {p0, v3, v4, v5}, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->showNotificationMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_1
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->showNotificationMessageWithBigImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v2    # "data":Lorg/json/JSONObject;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "click_action":Ljava/lang/String;
    .end local v6    # "imageUrl":Ljava/lang/String;
    .end local v7    # "payload":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 137
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Json Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    nop

    .line 141
    :goto_1
    return-void
.end method

.method private incrementNotificationId()Ljava/lang/Integer;
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->notificationId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->notificationId:Ljava/lang/Integer;

    return-object v0
.end method

.method private showNotificationMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "message",
            "action"
        }
    .end annotation

    .line 150
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v1, "KEY_IS_AUTO_LOGIN"

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "click_action"

    if-eqz v0, :cond_0

    const-string v0, "MainActivity"

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .local v0, "resultIntent":Landroid/content/Intent;
    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 154
    .end local v0    # "resultIntent":Landroid/content/Intent;
    :cond_0
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HistoryActivity"

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .restart local v0    # "resultIntent":Landroid/content/Intent;
    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 158
    .end local v0    # "resultIntent":Landroid/content/Intent;
    :cond_1
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "default"

    if-eqz v0, :cond_2

    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v4, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    .restart local v0    # "resultIntent":Landroid/content/Intent;
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 163
    .end local v0    # "resultIntent":Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v4, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .restart local v0    # "resultIntent":Landroid/content/Intent;
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    :goto_0
    const-string v1, "my_channel_01"

    .line 168
    .local v1, "CHANNEL_ID":Ljava/lang/String;
    const-string v2, "my_channel"

    .line 169
    .local v2, "name":Ljava/lang/CharSequence;
    const-string v3, "This is my channel"

    .line 170
    .local v3, "Description":Ljava/lang/String;
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 171
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    const/4 v5, 0x2

    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v5

    .line 172
    .local v5, "notificationSound":Landroid/net/Uri;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    const/4 v8, 0x1

    if-lt v6, v7, :cond_3

    .line 173
    const/4 v6, 0x4

    .line 174
    .local v6, "importance":I
    new-instance v7, Landroid/app/NotificationChannel;

    invoke-direct {v7, v1, v2, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 175
    .local v7, "mChannel":Landroid/app/NotificationChannel;
    invoke-virtual {v7, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v7, v8}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 177
    const/high16 v9, -0x10000

    invoke-virtual {v7, v9}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 178
    invoke-virtual {v7, v8}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 179
    if-eqz v4, :cond_3

    .line 180
    invoke-virtual {v4, v7}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 184
    .end local v6    # "importance":I
    .end local v7    # "mChannel":Landroid/app/NotificationChannel;
    :cond_3
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v6

    .line 185
    .local v6, "stackBuilder":Landroid/app/TaskStackBuilder;
    invoke-virtual {v6, v0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 187
    const/high16 v7, 0x8000000

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v7}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v7

    .line 188
    .local v7, "resultPendingIntent":Landroid/app/PendingIntent;
    new-instance v10, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v10, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v10, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    .line 190
    invoke-virtual {v10, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    .line 191
    invoke-virtual {v10, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    const v11, 0x7f07005f

    .line 192
    invoke-virtual {v10, v11}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v10

    .line 193
    invoke-virtual {v10, v9}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v9

    .line 194
    invoke-virtual {v9, v8}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 195
    invoke-virtual {v8, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 196
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1060013

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    .line 198
    .local v8, "builder":Landroidx/core/app/NotificationCompat$Builder;
    if-eqz v4, :cond_4

    .line 199
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->incrementNotificationId()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 200
    invoke-direct {p0}, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->incrementNotificationId()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 202
    :cond_4
    return-void
.end method

.method private showNotificationMessageWithBigImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "imageUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "message",
            "action",
            "imageUrl"
        }
    .end annotation

    .line 211
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static/range {p0 .. p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v3

    const-string v4, "KEY_IS_AUTO_LOGIN"

    invoke-virtual {v3, v4}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "click_action"

    if-eqz v3, :cond_0

    const-string v3, "MainActivity"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    new-instance v3, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .local v3, "resultIntent":Landroid/content/Intent;
    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 215
    .end local v3    # "resultIntent":Landroid/content/Intent;
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "HistoryActivity"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    new-instance v3, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/definiteautomation/dreamludofantacy/activity/HistoryActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .restart local v3    # "resultIntent":Landroid/content/Intent;
    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 219
    .end local v3    # "resultIntent":Landroid/content/Intent;
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "default"

    if-eqz v3, :cond_2

    .line 220
    new-instance v3, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v7, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    .restart local v3    # "resultIntent":Landroid/content/Intent;
    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 224
    .end local v3    # "resultIntent":Landroid/content/Intent;
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v7, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-direct {v3, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .restart local v3    # "resultIntent":Landroid/content/Intent;
    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    :goto_0
    const-string v4, "my_channel_01"

    .line 229
    .local v4, "CHANNEL_ID":Ljava/lang/String;
    const-string v5, "my_channel"

    .line 230
    .local v5, "name":Ljava/lang/CharSequence;
    const-string v6, "This is my channel"

    .line 231
    .local v6, "Description":Ljava/lang/String;
    const-string v7, "notification"

    invoke-virtual {v0, v7}, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 232
    .local v7, "notificationManager":Landroid/app/NotificationManager;
    const/4 v8, 0x2

    invoke-static {v8}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v8

    .line 233
    .local v8, "notificationSound":Landroid/net/Uri;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    const/4 v11, 0x1

    if-lt v9, v10, :cond_3

    .line 234
    const/4 v9, 0x4

    .line 235
    .local v9, "importance":I
    new-instance v10, Landroid/app/NotificationChannel;

    invoke-direct {v10, v4, v5, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 236
    .local v10, "mChannel":Landroid/app/NotificationChannel;
    invoke-virtual {v10, v6}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v10, v11}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 238
    const/high16 v12, -0x10000

    invoke-virtual {v10, v12}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 239
    invoke-virtual {v10, v11}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 240
    if-eqz v7, :cond_3

    .line 242
    invoke-virtual {v7, v10}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 246
    .end local v9    # "importance":I
    .end local v10    # "mChannel":Landroid/app/NotificationChannel;
    :cond_3
    invoke-static/range {p0 .. p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v9

    .line 247
    .local v9, "stackBuilder":Landroid/app/TaskStackBuilder;
    invoke-virtual {v9, v3}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 249
    const/high16 v10, 0x8000000

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v10}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v10

    .line 251
    .local v10, "resultPendingIntent":Landroid/app/PendingIntent;
    new-instance v13, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v13, v0, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    move-object/from16 v14, p1

    invoke-virtual {v13, v14}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v13

    .line 253
    invoke-virtual {v13, v8}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v13

    new-instance v15, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v15}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 254
    invoke-static/range {p4 .. p4}, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->getBitmapFromUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v15, v11}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object v11

    invoke-virtual {v13, v11}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v11

    .line 255
    invoke-virtual {v11, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v11

    const v13, 0x7f07005f

    .line 256
    invoke-virtual {v11, v13}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v11

    .line 257
    invoke-virtual {v11, v12}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v11

    .line 258
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v11

    .line 259
    invoke-virtual {v11, v10}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v11

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1060013

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v11

    .line 262
    .local v11, "builder":Landroidx/core/app/NotificationCompat$Builder;
    if-eqz v7, :cond_4

    .line 263
    invoke-direct/range {p0 .. p0}, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->incrementNotificationId()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->incrementNotificationId()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/app/NotificationManager;->cancel(I)V

    .line 266
    :cond_4
    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 10
    .param p1, "remoteMessage"    # Lcom/google/firebase/messaging/RemoteMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remoteMessage"
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "From: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v1

    .line 55
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/messaging/RemoteMessage$Notification;

    invoke-virtual {v2}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBody()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getClickAction()Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "click_action":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getImageUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, "img_uri":Ljava/lang/String;
    const-string v6, "action"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 61
    .local v6, "action":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMessageReceived: title : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMessageReceived: message : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMessageReceived: imageUrl : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMessageReceived: action : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v7, "null"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 67
    invoke-direct {p0, v2, v3, v4}, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->showNotificationMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->showNotificationMessageWithBigImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 74
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notification Body: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 79
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data Payload: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "json":Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->handleDataMessage(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    .end local v0    # "json":Lorg/json/JSONObject;
    goto :goto_1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v7, Lcom/definiteautomation/dreamludofantacy/services/MyFirebaseMessagingService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "click_action":Ljava/lang/String;
    .end local v5    # "img_uri":Ljava/lang/String;
    .end local v6    # "action":Ljava/lang/String;
    :cond_2
    :goto_1
    goto :goto_2

    .line 88
    :catch_1
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 91
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_2
    return-void
.end method
