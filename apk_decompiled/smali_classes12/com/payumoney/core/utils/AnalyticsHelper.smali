.class public Lcom/payumoney/core/utils/AnalyticsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/net/NetworkInfo;)I
    .locals 3

    .line 303
    const/4 p2, 0x0

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 304
    nop

    .line 306
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_6

    .line 308
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    .line 309
    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 310
    instance-of v2, v1, Landroid/telephony/CellInfoGsm;

    if-eqz v2, :cond_0

    .line 311
    check-cast v1, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v0

    .line 313
    goto :goto_1

    :cond_0
    instance-of v2, v1, Landroid/telephony/CellInfoCdma;

    if-eqz v2, :cond_1

    .line 314
    check-cast v1, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->getDbm()I

    move-result v0

    .line 316
    goto :goto_1

    :cond_1
    instance-of v2, v1, Landroid/telephony/CellInfoLte;

    if-eqz v2, :cond_3

    .line 317
    check-cast v1, Landroid/telephony/CellInfoLte;

    invoke-virtual {v1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v0

    .line 319
    :cond_2
    goto :goto_1

    :cond_3
    instance-of v2, v1, Landroid/telephony/CellInfoWcdma;

    if-eqz v2, :cond_2

    .line 320
    check-cast v1, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :cond_4
    :goto_1
    goto :goto_0

    .line 308
    :cond_5
    move p2, v0

    .line 327
    :cond_6
    return p2

    .line 328
    :catch_0
    move-exception p1

    .line 329
    return p2
.end method

.method private static a()Z
    .locals 2

    .line 274
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 275
    if-eqz v0, :cond_0

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 392
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    .line 393
    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static b()Z
    .locals 10

    .line 279
    const-string v0, "/system/app/Superuser.apk"

    const-string v1, "/sbin/su"

    const-string v2, "/system/bin/su"

    const-string v3, "/system/xbin/su"

    const-string v4, "/data/local/xbin/su"

    const-string v5, "/data/local/bin/su"

    const-string v6, "/system/sd/xbin/su"

    const-string v7, "/system/bin/failsafe/su"

    const-string v8, "/data/local/su"

    const-string v9, "/su/bin/su"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 281
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    .line 282
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    .line 281
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    :cond_1
    return v1
.end method

.method private static c()Z
    .locals 5

    .line 288
    nop

    .line 290
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "/system/xbin/which"

    const-string v4, "su"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 291
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 292
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 297
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 292
    :cond_0
    return v0

    .line 293
    :cond_1
    nop

    .line 297
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 293
    :cond_2
    return v0

    .line 294
    :catchall_0
    move-exception v2

    .line 295
    nop

    .line 297
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 295
    :cond_3
    return v0
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 214
    const-string v0, "NA"

    if-eqz p0, :cond_3

    .line 215
    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 216
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 217
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 220
    const-string v0, "WIFI"

    return-object v0

    .line 221
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_3

    .line 222
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .line 223
    packed-switch v1, :pswitch_data_0

    .line 247
    const-string v0, "Mobile"

    goto :goto_0

    .line 245
    :pswitch_0
    const-string v0, "4G"

    return-object v0

    .line 243
    :pswitch_1
    const-string v0, "3G"

    return-object v0

    .line 232
    :pswitch_2
    const-string v0, "2G"

    return-object v0

    .line 229
    :pswitch_3
    const-string v0, "CDMA"

    return-object v0

    .line 239
    :pswitch_4
    const-string v0, "HSPA"

    return-object v0

    .line 227
    :pswitch_5
    const-string v0, "EDGE"

    return-object v0

    .line 225
    :pswitch_6
    const-string v0, "GPRS"

    return-object v0

    .line 247
    :goto_0
    return-object v0

    .line 218
    :cond_2
    :goto_1
    const-string v0, "Not connected"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 251
    :catch_0
    move-exception v1

    .line 252
    return-object v0

    .line 253
    :cond_3
    nop

    .line 254
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isDeviceRooted()Z
    .locals 1

    .line 270
    invoke-static {}, Lcom/payumoney/core/utils/AnalyticsHelper;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/payumoney/core/utils/AnalyticsHelper;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/payumoney/core/utils/AnalyticsHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isFingerPrintHardwareAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 259
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 261
    const/4 v0, 0x1

    return v0

    .line 263
    :cond_0
    return v0

    .line 264
    :catch_0
    move-exception v1

    .line 265
    return v0
.end method


# virtual methods
.method public getAccuracy(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "applicationContext"    # Landroid/content/Context;

    .line 150
    const-string v0, "network"

    const-string v1, "gps"

    const-string v2, ""

    .line 151
    nop

    .line 153
    :try_start_0
    const-string v3, "location"

    .line 154
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 156
    invoke-virtual {v3, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    .line 157
    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v5

    .line 159
    nop

    .line 160
    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v6}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v6}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    return-object v2

    .line 162
    :cond_1
    :goto_0
    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 163
    invoke-virtual {v3, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    goto :goto_1

    .line 162
    :cond_2
    move-object v1, v6

    .line 164
    :goto_1
    if-eqz v5, :cond_3

    .line 165
    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_2

    .line 164
    :cond_3
    move-object v0, v6

    .line 167
    :goto_2
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 170
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 171
    goto :goto_4

    .line 173
    :cond_4
    goto :goto_3

    .line 175
    :cond_5
    if-eqz v1, :cond_6

    .line 176
    nop

    .line 183
    :goto_3
    move-object v6, v1

    goto :goto_5

    .line 177
    :cond_6
    if-eqz v0, :cond_7

    .line 178
    nop

    .line 183
    :goto_4
    move-object v6, v0

    :cond_7
    :goto_5
    if-eqz v6, :cond_8

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 186
    :cond_8
    return-object v2

    .line 189
    :catch_0
    move-exception v0

    .line 190
    return-object v2
.end method

.method public getCountryCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 203
    nop

    .line 204
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 205
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 206
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    const-string v0, "Unknown"

    .line 209
    :cond_0
    return-object v0
.end method

.method public getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 199
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "applicationContext"    # Landroid/content/Context;

    .line 56
    const-string v0, "network"

    const-string v1, "gps"

    const-string v2, ""

    .line 57
    nop

    .line 59
    :try_start_0
    const-string v3, "location"

    .line 60
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 62
    invoke-virtual {v3, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    .line 63
    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v5

    .line 65
    nop

    .line 66
    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v6}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v6}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    return-object v2

    .line 68
    :cond_1
    :goto_0
    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 69
    invoke-virtual {v3, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    goto :goto_1

    .line 68
    :cond_2
    move-object v1, v6

    .line 70
    :goto_1
    if-eqz v5, :cond_3

    .line 71
    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_2

    .line 70
    :cond_3
    move-object v0, v6

    .line 73
    :goto_2
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 76
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 77
    goto :goto_4

    .line 79
    :cond_4
    goto :goto_3

    .line 81
    :cond_5
    if-eqz v1, :cond_6

    .line 82
    nop

    .line 89
    :goto_3
    move-object v6, v1

    goto :goto_5

    .line 83
    :cond_6
    if-eqz v0, :cond_7

    .line 84
    nop

    .line 89
    :goto_4
    move-object v6, v0

    :cond_7
    :goto_5
    if-eqz v6, :cond_8

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 92
    :cond_8
    return-object v2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    return-object v2
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 195
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongitude(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p1, "applicationContext"    # Landroid/content/Context;

    .line 102
    const-string v0, "network"

    const-string v1, "gps"

    const-string v2, ""

    .line 103
    nop

    .line 105
    :try_start_0
    const-string v3, "location"

    .line 106
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 108
    invoke-virtual {v3, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    .line 109
    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v5

    .line 111
    nop

    .line 112
    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v6}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v6}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    return-object v2

    .line 114
    :cond_1
    :goto_0
    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 115
    invoke-virtual {v3, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    goto :goto_1

    .line 114
    :cond_2
    move-object v1, v6

    .line 116
    :goto_1
    if-eqz v5, :cond_3

    .line 117
    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_2

    .line 116
    :cond_3
    move-object v0, v6

    .line 119
    :goto_2
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 122
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 123
    goto :goto_4

    .line 125
    :cond_4
    goto :goto_3

    .line 130
    :cond_5
    if-eqz v1, :cond_6

    .line 131
    nop

    .line 137
    :goto_3
    move-object v6, v1

    goto :goto_5

    .line 132
    :cond_6
    if-eqz v0, :cond_7

    .line 133
    nop

    .line 137
    :goto_4
    move-object v6, v0

    :cond_7
    :goto_5
    if-eqz v6, :cond_8

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 140
    :cond_8
    return-object v2

    .line 143
    :catch_0
    move-exception v0

    .line 144
    return-object v2
.end method

.method public getNetWorkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 8
    .param p1, "mContext"    # Landroid/content/Context;

    .line 335
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 336
    nop

    .line 337
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-lt v1, v4, :cond_2

    .line 338
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    .line 339
    array-length v4, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v1, v2

    .line 340
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 341
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v6, v7}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 342
    move-object v3, v5

    .line 339
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 345
    :cond_1
    goto :goto_2

    .line 347
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    .line 348
    if-eqz v0, :cond_4

    .line 349
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v4, v0, v2

    .line 350
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_3

    .line 351
    move-object v3, v4

    .line 349
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 357
    :cond_4
    :goto_2
    return-object v3
.end method

.method public getNetworkStrength(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 362
    invoke-virtual {p0, p1}, Lcom/payumoney/core/utils/AnalyticsHelper;->getNetWorkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 364
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 365
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MOBILE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    invoke-direct {p0, p1, v0}, Lcom/payumoney/core/utils/AnalyticsHelper;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)I

    move-result v0

    return v0

    .line 367
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-direct {p0, p1, v0}, Lcom/payumoney/core/utils/AnalyticsHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 370
    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 371
    if-eqz v0, :cond_1

    .line 373
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    const/4 v2, 0x5

    invoke-static {v0, v2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 377
    :cond_1
    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 379
    :cond_2
    :goto_0
    return v1

    .line 381
    :cond_3
    return v1
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .line 46
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .line 50
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
