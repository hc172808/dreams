.class public Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;
.super Ljava/lang/Object;
.source "DeviceRequestsHelper.java"


# static fields
.field static final DEVICE_INFO_DEVICE:Ljava/lang/String; = "device"

.field static final DEVICE_INFO_MODEL:Ljava/lang/String; = "model"

.field public static final DEVICE_INFO_PARAM:Ljava/lang/String; = "device_info"

.field public static final DEVICE_TARGET_USER_ID:Ljava/lang/String; = "target_user_id"

.field static final SDK_FLAVOR:Ljava/lang/String; = "android"

.field static final SDK_HEADER:Ljava/lang/String; = "fbsdk"

.field static final SERVICE_TYPE:Ljava/lang/String; = "_fb._tcp."

.field private static final TAG:Ljava/lang/String;

.field private static deviceRequestsListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/nsd/NsdManager$RegistrationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->TAG:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->deviceRequestsListeners:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanUpAdvertisementService(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 134
    .local p0, "userCode":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->cleanUpAdvertisementServiceImpl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    return-void

    .end local p0    # "userCode":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static cleanUpAdvertisementServiceImpl(Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 201
    .local p0, "userCode":Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->deviceRequestsListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/nsd/NsdManager$RegistrationListener;

    .line 202
    .local v1, "nsdRegistrationListener":Landroid/net/nsd/NsdManager$RegistrationListener;
    if-eqz v1, :cond_1

    .line 204
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "servicediscovery"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/nsd/NsdManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    .local v2, "nsdManager":Landroid/net/nsd/NsdManager;
    :try_start_1
    invoke-virtual {v2, v1}, Landroid/net/nsd/NsdManager;->unregisterService(Landroid/net/nsd/NsdManager$RegistrationListener;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    goto :goto_0

    .line 208
    :catch_0
    move-exception v3

    .line 209
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    sget-object v4, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 212
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    sget-object v3, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->deviceRequestsListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    .end local v2    # "nsdManager":Landroid/net/nsd/NsdManager;
    :cond_1
    return-void

    .end local v1    # "nsdRegistrationListener":Landroid/net/nsd/NsdManager$RegistrationListener;
    .end local p0    # "userCode":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static generateQRCode(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 19

    const-class v1, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object/from16 v4, p0

    .line 105
    .local v4, "url":Ljava/lang/String;
    const/4 v9, 0x0

    .line 106
    .local v9, "qrCode":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v0, Ljava/util/EnumMap;

    const-class v3, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v0, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object v10, v0

    .line 107
    .local v10, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    sget-object v0, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v10, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :try_start_1
    new-instance v3, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v3}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    const/16 v6, 0xc8

    const/16 v7, 0xc8

    .line 110
    move-object v8, v10

    invoke-virtual/range {v3 .. v8}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    .line 112
    .local v0, "matrix":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    .line 113
    .local v3, "h":I
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v5

    .line 114
    .local v5, "w":I
    mul-int v6, v3, v5

    new-array v6, v6, [I

    .line 116
    .local v6, "pixels":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v3, :cond_3

    .line 117
    mul-int v8, v7, v5

    .line 118
    .local v8, "offset":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v5, :cond_2

    .line 119
    add-int v12, v8, v11

    invoke-virtual {v0, v11, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    if-eqz v13, :cond_1

    const/high16 v13, -0x1000000

    goto :goto_2

    :cond_1
    const/4 v13, -0x1

    :goto_2
    aput v13, v6, v12

    .line 118
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 116
    .end local v8    # "offset":I
    .end local v11    # "j":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 123
    .end local v7    # "i":I
    :cond_3
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11
    :try_end_1
    .catch Lcom/google/zxing/WriterException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    .end local v9    # "qrCode":Landroid/graphics/Bitmap;
    .local v11, "qrCode":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v6

    move v14, v5

    move/from16 v17, v5

    move/from16 v18, v3

    :try_start_2
    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_2
    .catch Lcom/google/zxing/WriterException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    .end local v0    # "matrix":Lcom/google/zxing/common/BitMatrix;
    .end local v3    # "h":I
    .end local v5    # "w":I
    .end local v6    # "pixels":[I
    move-object v9, v11

    goto :goto_3

    .line 126
    :catch_0
    move-exception v0

    move-object v9, v11

    goto :goto_3

    .end local v11    # "qrCode":Landroid/graphics/Bitmap;
    .restart local v9    # "qrCode":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v0

    .line 130
    :goto_3
    return-object v9

    .end local v4    # "url":Ljava/lang/String;
    .end local v9    # "qrCode":Landroid/graphics/Bitmap;
    .end local v10    # "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static getDeviceInfo()Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 75
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .local v1, "deviceInfo":Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "device"

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v3, "model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    goto :goto_0

    .line 79
    :catch_0
    move-exception v3

    .line 82
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    .end local v1    # "deviceInfo":Lorg/json/JSONObject;
    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static isAvailable()Z
    .locals 5

    const-class v0, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 98
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v1

    .line 99
    .local v1, "settings":Lcom/facebook/internal/FetchedAppSettings;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v1}, Lcom/facebook/internal/FetchedAppSettings;->getSmartLoginOptions()Ljava/util/EnumSet;

    move-result-object v3

    sget-object v4, Lcom/facebook/internal/SmartLoginOption;->Enabled:Lcom/facebook/internal/SmartLoginOption;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 99
    :goto_0
    return v2

    .end local v1    # "settings":Lcom/facebook/internal/FetchedAppSettings;
    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static startAdvertisementService(Ljava/lang/String;)Z
    .locals 3

    const-class v0, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 86
    .local p0, "userCode":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-static {p0}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->startAdvertisementServiceImpl(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 90
    :cond_1
    return v2

    .end local p0    # "userCode":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method private static startAdvertisementServiceImpl(Ljava/lang/String;)Z
    .locals 10

    const-class v0, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 139
    .local p0, "userCode":Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->deviceRequestsListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 140
    return v3

    .line 144
    :cond_1
    invoke-static {}, Lcom/facebook/FacebookSdk;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2e

    const/16 v5, 0x7c

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "sdkVersion":Ljava/lang/String;
    const-string v4, "%s_%s_%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "fbsdk"

    aput-object v6, v5, v2

    const-string v6, "%s-%s"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, "android"

    aput-object v9, v8, v2

    aput-object v1, v8, v3

    .line 154
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object p0, v5, v7

    .line 148
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "nsdServiceName":Ljava/lang/String;
    new-instance v5, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v5}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    .line 162
    .local v5, "nsdLoginAdvertisementService":Landroid/net/nsd/NsdServiceInfo;
    const-string v6, "_fb._tcp."

    invoke-virtual {v5, v6}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v5, v4}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    .line 164
    const/16 v6, 0x50

    invoke-virtual {v5, v6}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    .line 167
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "servicediscovery"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/nsd/NsdManager;

    .line 169
    .local v6, "nsdManager":Landroid/net/nsd/NsdManager;
    new-instance v7, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper$1;

    invoke-direct {v7, v4, p0}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .local v7, "nsdRegistrationListener":Landroid/net/nsd/NsdManager$RegistrationListener;
    sget-object v8, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->deviceRequestsListeners:Ljava/util/HashMap;

    invoke-virtual {v8, p0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-virtual {v6, v5, v3, v7}, Landroid/net/nsd/NsdManager;->registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    return v3

    .end local v1    # "sdkVersion":Ljava/lang/String;
    .end local v4    # "nsdServiceName":Ljava/lang/String;
    .end local v5    # "nsdLoginAdvertisementService":Landroid/net/nsd/NsdServiceInfo;
    .end local v6    # "nsdManager":Landroid/net/nsd/NsdManager;
    .end local v7    # "nsdRegistrationListener":Landroid/net/nsd/NsdManager$RegistrationListener;
    .end local p0    # "userCode":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method
