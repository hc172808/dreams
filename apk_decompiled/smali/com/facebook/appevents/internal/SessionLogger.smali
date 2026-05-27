.class public final Lcom/facebook/appevents/internal/SessionLogger;
.super Ljava/lang/Object;
.source "SessionLogger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0007J,\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\nH\u0007J\u0008\u0010\u0015\u001a\u00020\u0010H\u0002J$\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00062\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/facebook/appevents/internal/SessionLogger;",
        "",
        "()V",
        "INACTIVE_SECONDS_QUANTA",
        "",
        "PACKAGE_CHECKSUM",
        "",
        "TAG",
        "computePackageChecksum",
        "context",
        "Landroid/content/Context;",
        "getQuantaIndex",
        "",
        "timeBetweenSessions",
        "",
        "logActivateApp",
        "",
        "activityName",
        "sourceApplicationInfo",
        "Lcom/facebook/appevents/internal/SourceApplicationInfo;",
        "appId",
        "logClockSkewEvent",
        "logDeactivateApp",
        "sessionInfo",
        "Lcom/facebook/appevents/internal/SessionInfo;",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final INACTIVE_SECONDS_QUANTA:[J

.field public static final INSTANCE:Lcom/facebook/appevents/internal/SessionLogger;

.field private static final PACKAGE_CHECKSUM:Ljava/lang/String; = "PCKGCHKSUM"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/facebook/appevents/internal/SessionLogger;

    invoke-direct {v0}, Lcom/facebook/appevents/internal/SessionLogger;-><init>()V

    sput-object v0, Lcom/facebook/appevents/internal/SessionLogger;->INSTANCE:Lcom/facebook/appevents/internal/SessionLogger;

    .line 41
    const-class v0, Lcom/facebook/appevents/internal/SessionLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/SessionLogger;->TAG:Ljava/lang/String;

    .line 43
    const/16 v0, 0x13

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 44
    nop

    .line 45
    nop

    .line 46
    nop

    .line 47
    nop

    .line 48
    nop

    .line 49
    nop

    .line 50
    nop

    .line 51
    nop

    .line 52
    nop

    .line 53
    nop

    .line 54
    nop

    .line 55
    nop

    .line 56
    nop

    .line 57
    nop

    .line 58
    nop

    .line 59
    nop

    .line 60
    nop

    .line 61
    nop

    .line 62
    nop

    .line 43
    sput-object v0, Lcom/facebook/appevents/internal/SessionLogger;->INACTIVE_SECONDS_QUANTA:[J

    return-void

    :array_0
    .array-data 8
        0x493e0
        0xdbba0
        0x1b7740
        0x36ee80
        0x1499700
        0x2932e00
        0x5265c00
        0xa4cb800
        0xf731400
        0x240c8400
        0x48190800
        0x6c258c00
        0x90321000L
        0x134fd9000L
        0x1cf7c5800L
        0x269fb2000L
        0x30479e800L
        0x39ef8b000L
        0x757b12c00L
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getQuantaIndex(J)I
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/internal/SessionLogger;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 125
    .local p0, "timeBetweenSessions":J
    :cond_0
    const/4 v1, 0x0

    .line 126
    .local v1, "quantaIndex":I
    :goto_0
    nop

    .line 127
    :try_start_0
    sget-object v3, Lcom/facebook/appevents/internal/SessionLogger;->INACTIVE_SECONDS_QUANTA:[J

    array-length v4, v3

    if-ge v1, v4, :cond_1

    aget-wide v4, v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, v4, p0

    if-gez v3, :cond_1

    .line 128
    add-int/lit8 v1, v1, 0x1

    .line 126
    goto :goto_0

    .line 130
    :cond_1
    return v1

    .end local v1    # "quantaIndex":I
    .end local p0    # "timeBetweenSessions":J
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static final logActivateApp(Ljava/lang/String;Lcom/facebook/appevents/internal/SourceApplicationInfo;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/internal/SessionLogger;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .local p0, "activityName":Ljava/lang/String;
    .local p1, "sourceApplicationInfo":Lcom/facebook/appevents/internal/SourceApplicationInfo;
    .local p2, "appId":Ljava/lang/String;
    .local p3, "context":Landroid/content/Context;
    :cond_0
    :try_start_0
    const-string v1, "activityName"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/appevents/internal/SourceApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Unclassified"

    .line 72
    .local v1, "sourAppInfoStr":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v2, "eventParams":Landroid/os/Bundle;
    const-string v3, "fb_mobile_launch_source"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    nop

    .line 75
    const-string v3, "fb_mobile_pckg_fp"

    sget-object v4, Lcom/facebook/appevents/internal/SessionLogger;->INSTANCE:Lcom/facebook/appevents/internal/SessionLogger;

    invoke-virtual {v4, p3}, Lcom/facebook/appevents/internal/SessionLogger;->computePackageChecksum(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v3, "fb_mobile_app_cert_hash"

    invoke-static {p3}, Lcom/facebook/internal/security/CertificateUtil;->getCertificateHash(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v3, Lcom/facebook/appevents/InternalAppEventsLogger;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p2, v4}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 78
    .local v3, "logger":Lcom/facebook/appevents/InternalAppEventsLogger;
    const-string v4, "fb_mobile_activate_app"

    invoke-virtual {v3, v4, v2}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 79
    sget-object v4, Lcom/facebook/appevents/InternalAppEventsLogger;->Companion:Lcom/facebook/appevents/InternalAppEventsLogger$Companion;

    invoke-virtual {v4}, Lcom/facebook/appevents/InternalAppEventsLogger$Companion;->getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    move-result-object v4

    sget-object v5, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    if-eq v4, v5, :cond_2

    .line 80
    invoke-virtual {v3}, Lcom/facebook/appevents/InternalAppEventsLogger;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_2
    return-void

    .end local v1    # "sourAppInfoStr":Ljava/lang/String;
    .end local v2    # "eventParams":Landroid/os/Bundle;
    .end local v3    # "logger":Lcom/facebook/appevents/InternalAppEventsLogger;
    .end local p0    # "activityName":Ljava/lang/String;
    .end local p1    # "sourceApplicationInfo":Lcom/facebook/appevents/internal/SourceApplicationInfo;
    .end local p2    # "appId":Ljava/lang/String;
    .end local p3    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private final logClockSkewEvent()V
    .locals 5

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 119
    .local v0, "this":Lcom/facebook/appevents/internal/SessionLogger;
    :try_start_0
    sget-object v1, Lcom/facebook/internal/Logger;->Companion:Lcom/facebook/internal/Logger$Companion;

    sget-object v2, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v3, Lcom/facebook/appevents/internal/SessionLogger;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v4, "Clock skew detected"

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/internal/Logger$Companion;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    return-void

    .end local v0    # "this":Lcom/facebook/appevents/internal/SessionLogger;
    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final logDeactivateApp(Ljava/lang/String;Lcom/facebook/appevents/internal/SessionInfo;Ljava/lang/String;)V
    .locals 18
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v1, Lcom/facebook/appevents/internal/SessionLogger;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    .local v0, "activityName":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "appId":Ljava/lang/String;
    move-object/from16 v3, p1

    .local v3, "sessionInfo":Lcom/facebook/appevents/internal/SessionInfo;
    :try_start_0
    const-string v4, "activityName"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    if-nez v3, :cond_1

    .line 87
    return-void

    .line 89
    :cond_1
    nop

    .line 90
    invoke-virtual {v3}, Lcom/facebook/appevents/internal/SessionInfo;->getDiskRestoreTime()Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionLastEventTime()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_0

    :cond_3
    move-wide v7, v5

    :goto_0
    sub-long v7, v5, v7

    .line 89
    :goto_1
    nop

    .line 91
    .local v7, "interruptionDurationMillis":J
    cmp-long v4, v7, v5

    if-gez v4, :cond_4

    .line 92
    const-wide/16 v7, 0x0

    .line 93
    sget-object v4, Lcom/facebook/appevents/internal/SessionLogger;->INSTANCE:Lcom/facebook/appevents/internal/SessionLogger;

    invoke-direct {v4}, Lcom/facebook/appevents/internal/SessionLogger;->logClockSkewEvent()V

    .line 95
    :cond_4
    invoke-virtual {v3}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionLength()J

    move-result-wide v9

    .line 96
    .local v9, "sessionLength":J
    cmp-long v4, v9, v5

    if-gez v4, :cond_5

    .line 97
    sget-object v4, Lcom/facebook/appevents/internal/SessionLogger;->INSTANCE:Lcom/facebook/appevents/internal/SessionLogger;

    invoke-direct {v4}, Lcom/facebook/appevents/internal/SessionLogger;->logClockSkewEvent()V

    .line 98
    const-wide/16 v9, 0x0

    .line 100
    :cond_5
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v4, "eventParams":Landroid/os/Bundle;
    nop

    .line 102
    const-string v11, "fb_mobile_app_interruptions"

    invoke-virtual {v3}, Lcom/facebook/appevents/internal/SessionInfo;->getInterruptionCount()I

    move-result v12

    .line 101
    invoke-virtual {v4, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    nop

    .line 104
    const-string v11, "fb_mobile_time_between_sessions"

    .line 105
    sget-object v12, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v13, "session_quanta_%d"

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7, v8}, Lcom/facebook/appevents/internal/SessionLogger;->getQuantaIndex(J)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v15, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v14

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "java.lang.String.format(locale, format, *args)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v4, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v3}, Lcom/facebook/appevents/internal/SessionInfo;->getSourceApplicationInfo()Lcom/facebook/appevents/internal/SourceApplicationInfo;

    move-result-object v11

    .line 107
    .local v11, "sourceApplicationInfo":Lcom/facebook/appevents/internal/SourceApplicationInfo;
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lcom/facebook/appevents/internal/SourceApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    goto :goto_2

    :cond_6
    const-string v12, "Unclassified"

    .line 108
    .local v12, "sourAppInfoStr":Ljava/lang/String;
    :goto_2
    const-string v13, "fb_mobile_launch_source"

    invoke-virtual {v4, v13, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    nop

    .line 110
    const-string v13, "_logTime"

    invoke-virtual {v3}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionLastEventTime()Ljava/lang/Long;

    move-result-object v14

    if-eqz v14, :cond_7

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :cond_7
    const/16 v14, 0x3e8

    int-to-long v14, v14

    div-long/2addr v5, v14

    .line 109
    invoke-virtual {v4, v13, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 111
    nop

    .line 112
    nop

    .line 111
    new-instance v5, Lcom/facebook/appevents/InternalAppEventsLogger;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v2, v6}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 113
    const-string v6, "fb_mobile_deactivate_app"

    .line 114
    long-to-double v13, v9

    move-object/from16 p0, v2

    move-object/from16 p1, v3

    .end local v2    # "appId":Ljava/lang/String;
    .end local v3    # "sessionInfo":Lcom/facebook/appevents/internal/SessionInfo;
    .local p0, "appId":Ljava/lang/String;
    .local p1, "sessionInfo":Lcom/facebook/appevents/internal/SessionInfo;
    const-wide/16 v2, 0x3e8

    long-to-double v2, v2

    div-double/2addr v13, v2

    .line 115
    nop

    .line 112
    invoke-virtual {v5, v6, v13, v14, v4}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    return-void

    .end local v0    # "activityName":Ljava/lang/String;
    .end local v4    # "eventParams":Landroid/os/Bundle;
    .end local v7    # "interruptionDurationMillis":J
    .end local v9    # "sessionLength":J
    .end local v11    # "sourceApplicationInfo":Lcom/facebook/appevents/internal/SourceApplicationInfo;
    .end local v12    # "sourAppInfoStr":Ljava/lang/String;
    .end local p0    # "appId":Ljava/lang/String;
    .end local p1    # "sessionInfo":Lcom/facebook/appevents/internal/SessionInfo;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final computePackageChecksum(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    move-object v0, p0

    .local v0, "this":Lcom/facebook/appevents/internal/SessionLogger;
    .local p1, "context":Landroid/content/Context;
    :try_start_0
    const-string v2, "context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    nop

    .line 136
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 137
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 138
    .local v3, "packageVersion":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PCKGCHKSUM;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "packageHashSharedPrefKey":Ljava/lang/String;
    nop

    .line 140
    const-string v6, "com.facebook.sdk.appEventPreferences"

    invoke-virtual {p1, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 139
    nop

    .line 141
    .local v6, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v6, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, "packageHash":Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x20

    if-ne v8, v9, :cond_1

    .line 143
    return-object v7

    .line 146
    .end local v0    # "this":Lcom/facebook/appevents/internal/SessionLogger;
    :cond_1
    invoke-static {p1, v1}, Lcom/facebook/appevents/internal/HashUtils;->computeChecksumWithPackageManager(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v8

    .line 147
    .local v8, "androidPackageManagerChecksum":Ljava/lang/String;
    nop

    .line 148
    if-eqz v8, :cond_2

    .line 149
    move-object v9, v8

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 153
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v9, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v9}, Lcom/facebook/appevents/internal/HashUtils;->computeChecksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 148
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    move-object v4, v9

    .line 155
    .end local v7    # "packageHash":Ljava/lang/String;
    .local v4, "packageHash":Ljava/lang/String;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    move-object v1, v4

    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "packageVersion":Ljava/lang/String;
    .end local v4    # "packageHash":Ljava/lang/String;
    .end local v5    # "packageHashSharedPrefKey":Ljava/lang/String;
    .end local v6    # "preferences":Landroid/content/SharedPreferences;
    .end local v8    # "androidPackageManagerChecksum":Ljava/lang/String;
    goto :goto_1

    .line 157
    :catch_0
    move-exception v2

    .line 158
    .local v2, "e":Ljava/lang/Exception;
    nop

    .line 134
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v1

    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method
