.class public final Lcom/facebook/internal/AttributionIdentifiers$Companion;
.super Ljava/lang/Object;
.source "AttributionIdentifiers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/AttributionIdentifiers;
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u000fH\u0002J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0007J\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010 \u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\u0019H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006!"
    }
    d2 = {
        "Lcom/facebook/internal/AttributionIdentifiers$Companion;",
        "",
        "()V",
        "ANDROID_ID_COLUMN_NAME",
        "",
        "ATTRIBUTION_ID_COLUMN_NAME",
        "ATTRIBUTION_ID_CONTENT_PROVIDER",
        "ATTRIBUTION_ID_CONTENT_PROVIDER_WAKIZASHI",
        "CONNECTION_RESULT_SUCCESS",
        "",
        "IDENTIFIER_REFRESH_INTERVAL_MILLIS",
        "",
        "LIMIT_TRACKING_COLUMN_NAME",
        "TAG",
        "<set-?>",
        "Lcom/facebook/internal/AttributionIdentifiers;",
        "cachedIdentifiers",
        "getCachedIdentifiers",
        "()Lcom/facebook/internal/AttributionIdentifiers;",
        "setCachedIdentifiers",
        "(Lcom/facebook/internal/AttributionIdentifiers;)V",
        "cacheAndReturnIdentifiers",
        "identifiers",
        "getAndroidId",
        "context",
        "Landroid/content/Context;",
        "getAndroidIdViaReflection",
        "getAndroidIdViaService",
        "getAttributionIdentifiers",
        "getInstallerPackageName",
        "isGooglePlayServicesAvailable",
        "",
        "isTrackingLimited",
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

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 69
    invoke-direct {p0}, Lcom/facebook/internal/AttributionIdentifiers$Companion;-><init>()V

    return-void
.end method

.method private final cacheAndReturnIdentifiers(Lcom/facebook/internal/AttributionIdentifiers;)Lcom/facebook/internal/AttributionIdentifiers;
    .locals 2
    .param p1, "identifiers"    # Lcom/facebook/internal/AttributionIdentifiers;

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/facebook/internal/AttributionIdentifiers;->access$setFetchTime$p(Lcom/facebook/internal/AttributionIdentifiers;J)V

    .line 234
    move-object v0, p0

    check-cast v0, Lcom/facebook/internal/AttributionIdentifiers$Companion;

    invoke-direct {v0, p1}, Lcom/facebook/internal/AttributionIdentifiers$Companion;->setCachedIdentifiers(Lcom/facebook/internal/AttributionIdentifiers;)V

    .line 235
    return-object p1
.end method

.method private final getAndroidId(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    move-object v0, p0

    check-cast v0, Lcom/facebook/internal/AttributionIdentifiers$Companion;

    invoke-direct {v0, p1}, Lcom/facebook/internal/AttributionIdentifiers$Companion;->getAndroidIdViaReflection(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    .line 87
    .local v0, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    if-nez v0, :cond_0

    .line 88
    move-object v1, p0

    check-cast v1, Lcom/facebook/internal/AttributionIdentifiers$Companion;

    invoke-direct {v1, p1}, Lcom/facebook/internal/AttributionIdentifiers$Companion;->getAndroidIdViaService(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    .line 89
    if-nez v0, :cond_0

    .line 90
    new-instance v1, Lcom/facebook/internal/AttributionIdentifiers;

    invoke-direct {v1}, Lcom/facebook/internal/AttributionIdentifiers;-><init>()V

    move-object v0, v1

    .line 93
    :cond_0
    return-object v0
.end method

.method private final getAndroidIdViaReflection(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    nop

    .line 98
    const/4 v0, 0x0

    :try_start_0
    move-object v1, p0

    check-cast v1, Lcom/facebook/internal/AttributionIdentifiers$Companion;

    invoke-direct {v1, p1}, Lcom/facebook/internal/AttributionIdentifiers$Companion;->isGooglePlayServicesAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    return-object v0

    .line 101
    :cond_0
    nop

    .line 102
    nop

    .line 103
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 104
    const-string v2, "getAdvertisingIdInfo"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 105
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 102
    invoke-static {v1, v2, v4}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 101
    nop

    .line 107
    .local v1, "getAdvertisingIdInfo":Ljava/lang/reflect/Method;
    nop

    .line 108
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 107
    nop

    .line 109
    .local v2, "advertisingInfo":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getId"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 110
    .local v3, "getId":Ljava/lang/reflect/Method;
    nop

    .line 111
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "isLimitAdTrackingEnabled"

    new-array v7, v6, [Ljava/lang/Class;

    invoke-static {v4, v5, v7}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 110
    nop

    .line 112
    .local v4, "isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_3

    if-nez v4, :cond_1

    goto :goto_0

    .line 115
    :cond_1
    new-instance v5, Lcom/facebook/internal/AttributionIdentifiers;

    invoke-direct {v5}, Lcom/facebook/internal/AttributionIdentifiers;-><init>()V

    .line 116
    .local v5, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    nop

    .line 117
    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v7}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/facebook/internal/AttributionIdentifiers;->access$setAndroidAdvertiserIdValue$p(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;)V

    .line 118
    nop

    .line 119
    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v2, v4, v7}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    :cond_2
    invoke-static {v5, v6}, Lcom/facebook/internal/AttributionIdentifiers;->access$setTrackingLimited$p(Lcom/facebook/internal/AttributionIdentifiers;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    return-object v5

    .line 113
    .end local v5    # "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    :cond_3
    :goto_0
    return-object v0

    .line 108
    .end local v2    # "advertisingInfo":Ljava/lang/Object;
    .end local v3    # "getId":Ljava/lang/reflect/Method;
    .end local v4    # "isLimitAdTrackingEnabled":Ljava/lang/reflect/Method;
    :cond_4
    return-object v0

    .line 106
    .end local v1    # "getAdvertisingIdInfo":Ljava/lang/reflect/Method;
    :cond_5
    return-object v0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "android_id"

    invoke-static {v2, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 123
    .end local v1    # "e":Ljava/lang/Exception;
    nop

    .line 124
    return-object v0
.end method

.method private final getAndroidIdViaService(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 146
    new-instance v0, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;

    invoke-direct {v0}, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;-><init>()V

    .line 147
    .local v0, "connection":Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    move-object v2, v0

    check-cast v2, Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    nop

    .line 151
    :try_start_0
    new-instance v2, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;

    invoke-virtual {v0}, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;-><init>(Landroid/os/IBinder;)V

    .line 152
    .local v2, "adInfo":Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;
    new-instance v3, Lcom/facebook/internal/AttributionIdentifiers;

    invoke-direct {v3}, Lcom/facebook/internal/AttributionIdentifiers;-><init>()V

    .line 153
    .local v3, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    invoke-virtual {v2}, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;->getAdvertiserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/internal/AttributionIdentifiers;->access$setAndroidAdvertiserIdValue$p(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v2}, Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;->isTrackingLimited()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/facebook/internal/AttributionIdentifiers;->access$setTrackingLimited$p(Lcom/facebook/internal/AttributionIdentifiers;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    nop

    .line 159
    move-object v4, v0

    check-cast v4, Landroid/content/ServiceConnection;

    invoke-virtual {p1, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 155
    return-object v3

    .line 160
    .end local v2    # "adInfo":Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;
    .end local v3    # "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 156
    :catch_0
    move-exception v2

    .line 157
    .local v2, "exception":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "android_id"

    invoke-static {v3, v2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    .end local v2    # "exception":Ljava/lang/Exception;
    move-object v2, v0

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-virtual {p1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 160
    goto :goto_1

    .line 159
    :goto_0
    move-object v3, v0

    check-cast v3, Landroid/content/ServiceConnection;

    invoke-virtual {p1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v2

    .line 160
    :cond_0
    :goto_1
    nop

    .line 162
    const/4 v2, 0x0

    return-object v2
.end method

.method private final getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 240
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private final isGooglePlayServicesAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 135
    nop

    .line 136
    nop

    .line 137
    nop

    .line 138
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 139
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 136
    const-string v2, "com.google.android.gms.common.GooglePlayServicesUtil"

    const-string v4, "isGooglePlayServicesAvailable"

    invoke-static {v2, v4, v1}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 135
    nop

    .line 141
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {v2, v1, v4}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 142
    .local v2, "connectionResult":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v0

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 140
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "connectionResult":Ljava/lang/Object;
    :cond_1
    return v3
.end method

.method private final setCachedIdentifiers(Lcom/facebook/internal/AttributionIdentifiers;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/facebook/internal/AttributionIdentifiers;

    .line 82
    invoke-static {p1}, Lcom/facebook/internal/AttributionIdentifiers;->access$setCachedIdentifiers$cp(Lcom/facebook/internal/AttributionIdentifiers;)V

    return-void
.end method


# virtual methods
.method public final getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v1, p1

    const-string v0, "limit_tracking"

    const-string v2, "androidid"

    const-string v3, "aid"

    const-string v4, "context"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    move-object/from16 v4, p0

    check-cast v4, Lcom/facebook/internal/AttributionIdentifiers$Companion;

    invoke-direct {v4, v1}, Lcom/facebook/internal/AttributionIdentifiers$Companion;->getAndroidId(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v4

    .line 168
    .local v4, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, Landroid/database/Cursor;

    .line 169
    .local v6, "c":Landroid/database/Cursor;
    nop

    .line 172
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 175
    move-object/from16 v7, p0

    check-cast v7, Lcom/facebook/internal/AttributionIdentifiers$Companion;

    invoke-virtual {v7}, Lcom/facebook/internal/AttributionIdentifiers$Companion;->getCachedIdentifiers()Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v7

    .line 176
    .local v7, "cachedIdentifiers":Lcom/facebook/internal/AttributionIdentifiers;
    nop

    .line 177
    nop

    .line 178
    if-eqz v7, :cond_0

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v7}, Lcom/facebook/internal/AttributionIdentifiers;->access$getFetchTime$p(Lcom/facebook/internal/AttributionIdentifiers;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x36ee80

    cmp-long v12, v8, v10

    if-gez v12, :cond_0

    .line 179
    nop

    .line 225
    nop

    .line 179
    return-object v7

    .line 181
    :cond_0
    nop

    .line 182
    filled-new-array {v3, v2, v0}, [Ljava/lang/String;

    move-result-object v15

    .line 181
    nop

    .line 183
    .local v15, "projection":[Ljava/lang/String;
    move-object v8, v5

    check-cast v8, Landroid/net/Uri;

    .line 184
    .local v8, "providerUri":Landroid/net/Uri;
    nop

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.facebook.katana.provider.AttributionIdProvider"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v9

    .line 184
    nop

    .line 186
    .local v9, "contentProviderInfo":Landroid/content/pm/ProviderInfo;
    nop

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 188
    const-string v12, "com.facebook.wakizashi.provider.AttributionIdProvider"

    .line 187
    invoke-virtual {v10, v12, v11}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v10

    .line 186
    nop

    .line 189
    .local v10, "wakizashiProviderInfo":Landroid/content/pm/ProviderInfo;
    nop

    .line 190
    if-eqz v9, :cond_1

    iget-object v11, v9, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const-string v12, "contentProviderInfo.packageName"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v11}, Lcom/facebook/internal/FacebookSignatureValidator;->validateSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 191
    const-string v11, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    move-object v8, v11

    goto :goto_0

    .line 192
    :cond_1
    nop

    .line 193
    if-eqz v10, :cond_2

    iget-object v11, v10, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v12, "wakizashiProviderInfo.packageName"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v11}, Lcom/facebook/internal/FacebookSignatureValidator;->validateSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 194
    const-string v11, "content://com.facebook.wakizashi.provider.AttributionIdProvider"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    move-object v8, v11

    .line 195
    :cond_2
    :goto_0
    nop

    .line 196
    move-object/from16 v11, p0

    check-cast v11, Lcom/facebook/internal/AttributionIdentifiers$Companion;

    invoke-direct {v11, v1}, Lcom/facebook/internal/AttributionIdentifiers$Companion;->getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 197
    .local v11, "installerPackageName":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 198
    invoke-static {v4, v11}, Lcom/facebook/internal/AttributionIdentifiers;->access$setAndroidInstallerPackage$p(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;)V

    .line 200
    :cond_3
    if-nez v8, :cond_4

    .line 201
    move-object/from16 v0, p0

    check-cast v0, Lcom/facebook/internal/AttributionIdentifiers$Companion;

    invoke-direct {v0, v4}, Lcom/facebook/internal/AttributionIdentifiers$Companion;->cacheAndReturnIdentifiers(Lcom/facebook/internal/AttributionIdentifiers;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    .line 225
    nop

    .line 201
    return-object v0

    .line 203
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v8

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    move-object v6, v12

    .line 204
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_1

    .line 207
    :cond_5
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 208
    .local v3, "attributionColumnIndex":I
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 209
    .local v2, "androidIdColumnIndex":I
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 210
    .local v0, "limitTrackingColumnIndex":I
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/facebook/internal/AttributionIdentifiers;->access$setAttributionId$p(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;)V

    .line 214
    nop

    .line 215
    nop

    .line 216
    if-lez v2, :cond_6

    if-lez v0, :cond_6

    invoke-virtual {v4}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_6

    .line 217
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/facebook/internal/AttributionIdentifiers;->access$setAndroidAdvertiserIdValue$p(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;)V

    .line 218
    nop

    .line 219
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v4, v12}, Lcom/facebook/internal/AttributionIdentifiers;->access$setTrackingLimited$p(Lcom/facebook/internal/AttributionIdentifiers;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .end local v0    # "limitTrackingColumnIndex":I
    .end local v2    # "androidIdColumnIndex":I
    .end local v3    # "attributionColumnIndex":I
    .end local v7    # "cachedIdentifiers":Lcom/facebook/internal/AttributionIdentifiers;
    .end local v8    # "providerUri":Landroid/net/Uri;
    .end local v9    # "contentProviderInfo":Landroid/content/pm/ProviderInfo;
    .end local v10    # "wakizashiProviderInfo":Landroid/content/pm/ProviderInfo;
    .end local v11    # "installerPackageName":Ljava/lang/String;
    .end local v15    # "projection":[Ljava/lang/String;
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 226
    nop

    .line 227
    move-object/from16 v0, p0

    check-cast v0, Lcom/facebook/internal/AttributionIdentifiers$Companion;

    invoke-direct {v0, v4}, Lcom/facebook/internal/AttributionIdentifiers$Companion;->cacheAndReturnIdentifiers(Lcom/facebook/internal/AttributionIdentifiers;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    return-object v0

    .line 205
    .restart local v7    # "cachedIdentifiers":Lcom/facebook/internal/AttributionIdentifiers;
    .restart local v8    # "providerUri":Landroid/net/Uri;
    .restart local v9    # "contentProviderInfo":Landroid/content/pm/ProviderInfo;
    .restart local v10    # "wakizashiProviderInfo":Landroid/content/pm/ProviderInfo;
    .restart local v11    # "installerPackageName":Ljava/lang/String;
    .restart local v15    # "projection":[Ljava/lang/String;
    :cond_7
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    check-cast v0, Lcom/facebook/internal/AttributionIdentifiers$Companion;

    invoke-direct {v0, v4}, Lcom/facebook/internal/AttributionIdentifiers$Companion;->cacheAndReturnIdentifiers(Lcom/facebook/internal/AttributionIdentifiers;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_8
    return-object v0

    .line 173
    .end local v7    # "cachedIdentifiers":Lcom/facebook/internal/AttributionIdentifiers;
    .end local v8    # "providerUri":Landroid/net/Uri;
    .end local v9    # "contentProviderInfo":Landroid/content/pm/ProviderInfo;
    .end local v10    # "wakizashiProviderInfo":Landroid/content/pm/ProviderInfo;
    .end local v11    # "installerPackageName":Ljava/lang/String;
    .end local v15    # "projection":[Ljava/lang/String;
    :cond_9
    :try_start_2
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v2, "getAttributionIdentifiers cannot be called on the main thread."

    invoke-direct {v0, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    .end local v4    # "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local p1    # "context":Landroid/content/Context;
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    .restart local v4    # "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/facebook/internal/AttributionIdentifiers;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caught unexpected exception in getAttributionId(): "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    nop

    .line 225
    if-eqz v6, :cond_a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 223
    :cond_a
    return-object v5

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v6, :cond_b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0
.end method

.method public final getCachedIdentifiers()Lcom/facebook/internal/AttributionIdentifiers;
    .locals 1

    .line 82
    invoke-static {}, Lcom/facebook/internal/AttributionIdentifiers;->access$getCachedIdentifiers$cp()Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    return-object v0
.end method

.method public final isTrackingLimited(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    move-object v0, p0

    check-cast v0, Lcom/facebook/internal/AttributionIdentifiers$Companion;

    invoke-virtual {v0, p1}, Lcom/facebook/internal/AttributionIdentifiers$Companion;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    .line 131
    .local v0, "attributionIdentifiers":Lcom/facebook/internal/AttributionIdentifiers;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/internal/AttributionIdentifiers;->isTrackingLimited()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
