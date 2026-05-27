.class public Lcom/payumoney/core/utils/SdkHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static SBI_MAES_BIN:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static a:J

.field public static pnpVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/payumoney/core/utils/SdkHelper;->a:J

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/payumoney/core/utils/SdkHelper;->pnpVersion:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/payumoney/core/utils/SdkHelper;->SBI_MAES_BIN:Ljava/util/Set;

    .line 58
    const-string v1, "504435"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/payumoney/core/utils/SdkHelper;->SBI_MAES_BIN:Ljava/util/Set;

    const-string v1, "504645"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/payumoney/core/utils/SdkHelper;->SBI_MAES_BIN:Ljava/util/Set;

    const-string v1, "504775"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/payumoney/core/utils/SdkHelper;->SBI_MAES_BIN:Ljava/util/Set;

    const-string v1, "504809"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/payumoney/core/utils/SdkHelper;->SBI_MAES_BIN:Ljava/util/Set;

    const-string v1, "504993"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/payumoney/core/utils/SdkHelper;->SBI_MAES_BIN:Ljava/util/Set;

    const-string v1, "600206"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/payumoney/core/utils/SdkHelper;->SBI_MAES_BIN:Ljava/util/Set;

    const-string v1, "603845"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/payumoney/core/utils/SdkHelper;->SBI_MAES_BIN:Ljava/util/Set;

    const-string v1, "622018"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/payumoney/core/utils/SdkHelper;->SBI_MAES_BIN:Ljava/util/Set;

    const-string v1, "504774"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;Z)D
    .locals 4

    .line 660
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getInstance()Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;

    move-result-object p2

    invoke-virtual {p2}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getWalletAmount()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p2, v0, v2

    if-gez p2, :cond_0

    goto :goto_0

    .line 663
    :cond_0
    sget-object p2, Lcom/payumoney/core/PayUmoneyConstants;->CC_INT:Ljava/lang/String;

    invoke-static {p2, p0, p1}, Lcom/payumoney/core/utils/SdkHelper;->a(Ljava/lang/String;Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide p1

    .line 664
    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->getWalletConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;)D

    move-result-wide v0

    .line 663
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0

    .line 661
    :cond_1
    :goto_0
    sget-object p2, Lcom/payumoney/core/PayUmoneyConstants;->CC_INT:Ljava/lang/String;

    invoke-static {p2, p0, p1}, Lcom/payumoney/core/utils/SdkHelper;->a(Ljava/lang/String;Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method private static a(Ljava/lang/String;Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D
    .locals 2

    .line 783
    if-eqz p1, :cond_3

    .line 784
    invoke-virtual {p1}, Lcom/payumoney/core/entity/PayumoneyConvenienceFee;->getConvenienceFeeMap()Ljava/util/Map;

    move-result-object v0

    .line 785
    if-eqz v0, :cond_3

    .line 786
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 788
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 789
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    .line 791
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    sget-object p1, Lcom/payumoney/core/PayUmoneyConstants;->DEFAULT:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    .line 795
    :cond_1
    sget-object v0, Lcom/payumoney/core/PayUmoneyConstants;->CC_INT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 796
    sget-object p0, Lcom/payumoney/core/PayUmoneyConstants;->CC:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/payumoney/core/utils/SdkHelper;->getConvenienceFee(Ljava/lang/String;Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0

    .line 798
    :cond_2
    sget-object p0, Lcom/payumoney/core/PayUmoneyConstants;->DC:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/payumoney/core/utils/SdkHelper;->getConvenienceFee(Ljava/lang/String;Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0

    .line 803
    :cond_3
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static a()Ljava/lang/String;
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 828
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 829
    nop

    .line 831
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    goto :goto_0

    .line 832
    :catch_0
    move-exception p0

    const/4 p0, 0x0

    .line 834
    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string p0, "???"

    :goto_1
    check-cast p0, Ljava/lang/String;

    check-cast p0, Ljava/lang/String;

    .line 835
    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 190
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 194
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    return-object p0

    .line 197
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 191
    :cond_2
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static addDeviceAnalyticsAttributes(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 5
    .param p0, "applicationContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 481
    .local p1, "eventData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, ""

    :try_start_0
    new-instance v1, Lcom/payumoney/core/utils/AnalyticsHelper;

    invoke-direct {v1}, Lcom/payumoney/core/utils/AnalyticsHelper;-><init>()V

    .line 482
    const-string v2, "device_id"

    invoke-virtual {v1, p0}, Lcom/payumoney/core/utils/AnalyticsHelper;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    const-string v2, "uuid"

    invoke-virtual {v1}, Lcom/payumoney/core/utils/AnalyticsHelper;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const-string v2, "d_ua"

    invoke-virtual {v1, p0}, Lcom/payumoney/core/utils/AnalyticsHelper;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const-string v2, "u_lat"

    invoke-virtual {v1, p0}, Lcom/payumoney/core/utils/AnalyticsHelper;->getLatitude(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const-string v2, "u_lon"

    invoke-virtual {v1, p0}, Lcom/payumoney/core/utils/AnalyticsHelper;->getLongitude(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string v2, "u_acu"

    invoke-virtual {v1, p0}, Lcom/payumoney/core/utils/AnalyticsHelper;->getAccuracy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const-string v2, "app_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const-string v2, "package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const-string v2, "app_version_name"

    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->appVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const-string v2, "app_version_code"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->appVersionCode(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const-string v2, "d_locale"

    invoke-virtual {v1}, Lcom/payumoney/core/utils/AnalyticsHelper;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    const-string v2, "d_ccid"

    invoke-virtual {v1, p0}, Lcom/payumoney/core/utils/AnalyticsHelper;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string v2, "d_lang"

    invoke-virtual {v1}, Lcom/payumoney/core/utils/AnalyticsHelper;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v2, "d_make"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const-string v2, "d_model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string v2, "d_os"

    const-string v3, "Android"

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string v2, "d_osv"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string v2, "sdk_build"

    const-string v3, "18"

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-string v2, "sdk_version"

    const-string v3, "7.6.0"

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string v2, "d_mfg"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string v2, "d_nw_type"

    invoke-static {p0}, Lcom/payumoney/core/utils/AnalyticsHelper;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string v2, "d_ss"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/payumoney/core/utils/AnalyticsHelper;->getNetworkStrength(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const-string v1, "d_scrn_sz"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->getScreenSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const-string v0, "d_scrn_res"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const-string v0, "ip"

    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const-string v0, "app_name"

    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    const-string v0, "env"

    invoke-static {}, Lcom/payumoney/core/PayUmoneySdkInitializer;->IsDebugMode()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DEBUG"

    goto :goto_0

    :cond_0
    const-string v1, "PRODUCTION"

    :goto_0
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const-string v0, "EventSource"

    const-string v1, "SDK"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    const-string v0, "d_rooted"

    invoke-static {}, Lcom/payumoney/core/utils/AnalyticsHelper;->isDeviceRooted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const-string v0, "d_biohw"

    invoke-static {p0}, Lcom/payumoney/core/utils/AnalyticsHelper;->isFingerPrintHardwareAvailable(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v0, Lcom/payumoney/core/utils/SdkHelper;->pnpVersion:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 517
    const-string v0, "pnp_version"

    sget-object v1, Lcom/payumoney/core/utils/SdkHelper;->pnpVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :cond_1
    goto :goto_1

    .line 519
    :catch_0
    move-exception v0

    .line 520
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 522
    :goto_1
    return-object p1
.end method

.method public static appVersionCode(Landroid/content/Context;)I
    .locals 3
    .param p0, "applicationContext"    # Landroid/content/Context;

    .line 887
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 888
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    return v0

    .line 890
    :catch_0
    move-exception v1

    .line 891
    return v0
.end method

.method public static appVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "applicationContext"    # Landroid/content/Context;

    .line 873
    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 874
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    if-nez v1, :cond_0

    .line 876
    return-object v0

    .line 878
    :cond_0
    return-object v1

    .line 879
    :catch_0
    move-exception v1

    .line 880
    return-object v0
.end method

.method private static b(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;Z)D
    .locals 4

    .line 678
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getInstance()Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;

    move-result-object p2

    invoke-virtual {p2}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getWalletAmount()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p2, v0, v2

    if-gez p2, :cond_0

    goto :goto_0

    .line 681
    :cond_0
    sget-object p2, Lcom/payumoney/core/PayUmoneyConstants;->DC_INT:Ljava/lang/String;

    invoke-static {p2, p0, p1}, Lcom/payumoney/core/utils/SdkHelper;->a(Ljava/lang/String;Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide p1

    .line 682
    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->getWalletConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;)D

    move-result-wide v0

    .line 681
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0

    .line 679
    :cond_1
    :goto_0
    sget-object p2, Lcom/payumoney/core/PayUmoneyConstants;->DC_INT:Ljava/lang/String;

    invoke-static {p2, p0, p1}, Lcom/payumoney/core/utils/SdkHelper;->a(Ljava/lang/String;Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 840
    const-string p0, ""

    .line 842
    nop

    .line 843
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 844
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 845
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 846
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 847
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    .line 848
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 850
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    .line 852
    :goto_2
    nop

    .line 853
    if-eqz v3, :cond_1

    .line 854
    move-object p0, v2

    .line 863
    :cond_1
    goto :goto_1

    .line 864
    :cond_2
    goto :goto_0

    .line 866
    :cond_3
    goto :goto_3

    .line 865
    :catch_0
    move-exception v0

    .line 867
    :goto_3
    return-object p0
.end method

.method public static checkNetwork(Landroid/content/Context;)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .line 71
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 72
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 75
    :cond_0
    return v1

    .line 77
    :cond_1
    return v1
.end method

.method public static getAndroidID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 101
    if-nez p0, :cond_0

    .line 102
    const-string v0, ""

    return-object v0

    .line 103
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    return-object v0
.end method

.method public static getCCConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;Z)D
    .locals 5
    .param p0, "convenienceFee"    # Lcom/payumoney/core/entity/PayumoneyConvenienceFee;
    .param p1, "bankDetails"    # Ljava/lang/String;
    .param p2, "isSplitPayment"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 614
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getInstance()Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getWalletAmount()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    .line 617
    :cond_0
    sget-object v0, Lcom/payumoney/core/PayUmoneyConstants;->CC:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/payumoney/core/utils/SdkHelper;->getConvenienceFee(Ljava/lang/String;Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide v0

    .line 618
    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->getWalletConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;)D

    move-result-wide v2

    .line 617
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0

    .line 615
    :cond_1
    :goto_0
    sget-object v0, Lcom/payumoney/core/PayUmoneyConstants;->CC:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/payumoney/core/utils/SdkHelper;->getConvenienceFee(Ljava/lang/String;Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getCCConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;ZLjava/lang/String;)D
    .locals 5
    .param p0, "convenienceFee"    # Lcom/payumoney/core/entity/PayumoneyConvenienceFee;
    .param p1, "bankDetails"    # Ljava/lang/String;
    .param p2, "isSplitPayment"    # Z
    .param p3, "countryCode"    # Ljava/lang/String;

    .line 633
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IN"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    invoke-static {p0, p1, p2}, Lcom/payumoney/core/utils/SdkHelper;->a(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;Z)D

    move-result-wide v0

    return-wide v0

    .line 641
    :cond_0
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getInstance()Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getWalletAmount()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    goto :goto_0

    .line 644
    :cond_1
    sget-object v0, Lcom/payumoney/core/PayUmoneyConstants;->CC:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/payumoney/core/utils/SdkHelper;->getConvenienceFee(Ljava/lang/String;Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide v0

    .line 645
    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->getWalletConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;)D

    move-result-wide v2

    .line 644
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0

    .line 642
    :cond_2
    :goto_0
    sget-object v0, Lcom/payumoney/core/PayUmoneyConstants;->CC:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/payumoney/core/utils/SdkHelper;->getConvenienceFee(Ljava/lang/String;Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getCardType(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "cardType"    # Ljava/lang/String;

    .line 314
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "MAESTRO"

    const-string v2, "DISCOVER"

    const-string v3, "VISA"

    const-string v4, "AMEX"

    const-string v5, "JCB"

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "SMAESTRO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_3
    const-string v0, "RUPAY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_5
    const-string v0, "SMAE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "MAST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_7
    const-string v0, "MAES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_8
    const-string v0, "DINR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_9
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_a
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_b
    const-string v0, "DINR CLUB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 336
    const-string v0, ""

    return-object v0

    .line 334
    :pswitch_0
    return-object v5

    .line 332
    :pswitch_1
    return-object v3

    .line 330
    :pswitch_2
    return-object v2

    .line 328
    :pswitch_3
    return-object v1

    .line 323
    :pswitch_4
    const-string v0, "RPAY"

    return-object v0

    .line 321
    :pswitch_5
    const-string v0, "DINERS"

    return-object v0

    .line 318
    :pswitch_6
    return-object v4

    .line 316
    :pswitch_7
    const-string v0, "MASTER_CARD"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x52a6ba93 -> :sswitch_b
        0x11e29 -> :sswitch_a
        0x1eb5df -> :sswitch_9
        0x200509 -> :sswitch_8
        0x23fd42 -> :sswitch_7
        0x23fef5 -> :sswitch_6
        0x26e3fe -> :sswitch_5
        0x283441 -> :sswitch_4
        0x4ab5f65 -> :sswitch_3
        0xa1fb55c -> :sswitch_2
        0x3eee67e9 -> :sswitch_1
        0x5c1e290f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCommaSeparatedBins(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 924
    .local p0, "numbersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 926
    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    goto :goto_0

    .line 929
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConvenienceFee(Ljava/lang/String;Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D
    .locals 4
    .param p0, "paymentMode"    # Ljava/lang/String;
    .param p1, "convenienceFee"    # Lcom/payumoney/core/entity/PayumoneyConvenienceFee;
    .param p2, "cardType"    # Ljava/lang/String;

    .line 808
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    .line 809
    invoke-virtual {p1}, Lcom/payumoney/core/entity/PayumoneyConvenienceFee;->getConvenienceFeeMap()Ljava/util/Map;

    move-result-object v2

    .line 810
    if-eqz v2, :cond_2

    .line 811
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 813
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 816
    :cond_0
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/payumoney/core/PayUmoneyConstants;->DEFAULT:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 820
    :cond_1
    return-wide v0

    .line 824
    :cond_2
    return-wide v0
.end method

.method public static getDCConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;Z)D
    .locals 5
    .param p0, "convenienceFee"    # Lcom/payumoney/core/entity/PayumoneyConvenienceFee;
    .param p1, "cardType"    # Ljava/lang/String;
    .param p2, "isSplitPayment"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 698
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getInstance()Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getWalletAmount()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    .line 701
    :cond_0
    sget-object v0, Lcom/payumoney/core/PayUmoneyConstants;->DC:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/payumoney/core/utils/SdkHelper;->getConvenienceFee(Ljava/lang/String;Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide v0

    .line 702
    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->getWalletConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;)D

    move-result-wide v2

    .line 701
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0

    .line 699
    :cond_1
    :goto_0
    sget-object v0, Lcom/payumoney/core/PayUmoneyConstants;->DC:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/payumoney/core/utils/SdkHelper;->getConvenienceFee(Ljava/lang/String;Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getDCConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;ZLjava/lang/String;)D
    .locals 5
    .param p0, "convenienceFee"    # Lcom/payumoney/core/entity/PayumoneyConvenienceFee;
    .param p1, "cardType"    # Ljava/lang/String;
    .param p2, "isSplitPayment"    # Z
    .param p3, "countryCode"    # Ljava/lang/String;

    .line 717
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IN"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 719
    invoke-static {p0, p1, p2}, Lcom/payumoney/core/utils/SdkHelper;->b(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;Z)D

    move-result-wide v0

    return-wide v0

    .line 725
    :cond_0
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getInstance()Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getWalletAmount()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    goto :goto_0

    .line 728
    :cond_1
    sget-object v0, Lcom/payumoney/core/PayUmoneyConstants;->DC:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/payumoney/core/utils/SdkHelper;->getConvenienceFee(Ljava/lang/String;Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide v0

    .line 729
    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->getWalletConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;)D

    move-result-wide v2

    .line 728
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0

    .line 726
    :cond_2
    :goto_0
    sget-object v0, Lcom/payumoney/core/PayUmoneyConstants;->DC:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/payumoney/core/utils/SdkHelper;->getConvenienceFee(Ljava/lang/String;Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getDeviceCustomPropertyJsonString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .line 154
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 156
    :try_start_0
    const-string v1, "screenWidth"

    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    const-string v1, "screenHeight"

    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    const-string v1, "wifi"

    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 159
    const-string v1, "hasNFC"

    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->hasNFC(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 160
    const-string v1, "hasTelephone"

    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->hasTelephony(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 161
    const-string v1, "deviceId"

    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v1, "deviceName"

    invoke-static {}, Lcom/payumoney/core/utils/SdkHelper;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v1, "os"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string v1, "osVersion"

    invoke-static {}, Lcom/payumoney/core/utils/SdkHelper;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v1, "brVersion"

    const-string v2, "Payumoney APP"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    const-string v0, ""

    return-object v0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 3

    .line 179
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 180
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 181
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    invoke-static {v1}, Lcom/payumoney/core/utils/SdkHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/payumoney/core/utils/SdkHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmiConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D
    .locals 2
    .param p0, "convenienceFee"    # Lcom/payumoney/core/entity/PayumoneyConvenienceFee;
    .param p1, "emiBankCode"    # Ljava/lang/String;

    .line 736
    sget-object v0, Lcom/payumoney/core/PayUmoneyConstants;->EMI:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/payumoney/core/utils/SdkHelper;->getConvenienceFee(Ljava/lang/String;Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getHttpsConn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p0, "strURL"    # Ljava/lang/String;
    .param p1, "postData"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;

    .line 351
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 353
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 354
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 355
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 357
    :cond_0
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v1, "Content-Length"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    if-eqz p4, :cond_1

    .line 360
    const-string v1, "X-Auth-Token"

    invoke-virtual {v0, v1, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 363
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 364
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    return-object v0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 368
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIssuer(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "mCardNumber"    # Ljava/lang/String;

    .line 963
    const-string v0, "4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    const-string v0, "VISA"

    return-object v0

    .line 965
    :cond_0
    const-string v0, "^508[5-9][0-9][0-9]|60698[5-9]|60699[0-9]|607[0-8][0-9][0-9]|6079[0-7][0-9]|60798[0-4]|(?!608000)608[0-4][0-9][0-9]|608500|6521[5-9][0-9]|652[2-9][0-9][0-9]|6530[0-9][0-9]|6531[0-4][0-9]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 966
    const-string v0, "RUPAY"

    return-object v0

    .line 967
    :cond_1
    const-string v0, "^((6304)|(6706)|(6771)|(6709))[\\d]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "LASER"

    if-eqz v0, :cond_2

    .line 968
    return-object v1

    .line 969
    :cond_2
    const-string v0, "6(?:011|5[0-9]{2})[0-9]{12}[\\d]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 970
    return-object v1

    .line 971
    :cond_3
    const-string v0, "(5[06-8]|6\\d)\\d{14}(\\d{2,3})?[\\d]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "(5[06-8]|6\\d)[\\d]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "((504([435|645|774|775|809|993]))|(60([0206]|[3845]))|(622[018])\\d)[\\d]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 978
    :cond_4
    const-string v0, "^5[1-5][\\d]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 979
    const-string v0, "MAST"

    return-object v0

    .line 980
    :cond_5
    const-string v0, "^3[47][\\d]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 981
    const-string v0, "AMEX"

    return-object v0

    .line 982
    :cond_6
    const-string v0, "36"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "^30[0-5][\\d]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "2(014|149)[\\d]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    .line 984
    :cond_7
    const-string v0, "^35(2[89]|[3-8][0-9])[\\d]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 985
    const-string v0, "JCB"

    return-object v0

    .line 987
    :cond_8
    const-string v0, ""

    return-object v0

    .line 983
    :cond_9
    :goto_0
    const-string v0, "DINR"

    return-object v0

    .line 972
    :cond_a
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_b

    .line 973
    sget-object v0, Lcom/payumoney/core/utils/SdkHelper;->SBI_MAES_BIN:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 974
    const-string v0, "SMAE"

    return-object v0

    .line 977
    :cond_b
    const-string v0, "MAES"

    return-object v0
.end method

.method public static getLongPreference(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 109
    nop

    .line 110
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 111
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 114
    :cond_0
    return-wide v1
.end method

.method public static getNBConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;Z)D
    .locals 5
    .param p0, "convenienceFee"    # Lcom/payumoney/core/entity/PayumoneyConvenienceFee;
    .param p1, "bankCode"    # Ljava/lang/String;
    .param p2, "isSplitPayment"    # Z

    .line 749
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getInstance()Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/utils/PayUmoneyTransactionDetails;->getWalletAmount()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    .line 752
    :cond_0
    sget-object v0, Lcom/payumoney/core/PayUmoneyConstants;->NB:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/payumoney/core/utils/SdkHelper;->getConvenienceFee(Ljava/lang/String;Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide v0

    .line 753
    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->getWalletConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;)D

    move-result-wide v2

    .line 752
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0

    .line 750
    :cond_1
    :goto_0
    sget-object v0, Lcom/payumoney/core/PayUmoneyConstants;->NB:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/payumoney/core/utils/SdkHelper;->getConvenienceFee(Ljava/lang/String;Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 246
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 247
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 136
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static getScreenSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 526
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 527
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    .line 528
    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v5, v0

    float-to-double v5, v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    .line 529
    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 130
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static getStringBufferFromInputStream(Ljava/io/InputStream;)Ljava/lang/StringBuffer;
    .locals 5
    .param p0, "responseInputStream"    # Ljava/io/InputStream;

    .line 380
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 381
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 382
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 383
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    :cond_0
    return-object v0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 390
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 91
    nop

    .line 92
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    :cond_0
    return-object v1
.end method

.method public static getThirdPartyWalletsConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D
    .locals 2
    .param p0, "convenienceFee"    # Lcom/payumoney/core/entity/PayumoneyConvenienceFee;
    .param p1, "bankCode"    # Ljava/lang/String;

    .line 766
    sget-object v0, Lcom/payumoney/core/PayUmoneyConstants;->CASH:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/payumoney/core/utils/SdkHelper;->getConvenienceFee(Ljava/lang/String;Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getUPIConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D
    .locals 2
    .param p0, "convenienceFee"    # Lcom/payumoney/core/entity/PayumoneyConvenienceFee;
    .param p1, "bankCode"    # Ljava/lang/String;

    .line 778
    sget-object v0, Lcom/payumoney/core/PayUmoneyConstants;->UPI:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/payumoney/core/utils/SdkHelper;->getConvenienceFee(Ljava/lang/String;Lcom/payumoney/core/entity/PayumoneyConvenienceFee;Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized getUserSessionId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "c"    # Landroid/content/Context;

    const-class v0, Lcom/payumoney/core/utils/SdkHelper;

    monitor-enter v0

    .line 222
    if-nez p0, :cond_0

    .line 223
    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 225
    :cond_0
    :try_start_1
    const-string v1, "timestamp"

    invoke-static {p0, v1}, Lcom/payumoney/core/utils/SdkHelper;->getLongPreference(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    .line 227
    nop

    .line 228
    const-wide/32 v3, 0x1b7740

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    const-string v2, "session_id"

    invoke-static {p0, v2, v1}, Lcom/payumoney/core/utils/SdkHelper;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 232
    :cond_1
    const-string v1, "session_id"

    invoke-static {p0, v1}, Lcom/payumoney/core/utils/SdkHelper;->getStringPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    const-string v2, "session_id"

    invoke-static {p0, v2, v1}, Lcom/payumoney/core/utils/SdkHelper;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 239
    :cond_2
    :goto_0
    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p0, v2, v3, v4}, Lcom/payumoney/core/utils/SdkHelper;->setLongPreference(Landroid/content/Context;Ljava/lang/String;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    monitor-exit v0

    return-object v1

    .line 221
    .end local p0    # "c":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getWalletConvenienceFee(Lcom/payumoney/core/entity/PayumoneyConvenienceFee;)D
    .locals 2
    .param p0, "convenienceFee"    # Lcom/payumoney/core/entity/PayumoneyConvenienceFee;

    .line 595
    if-eqz p0, :cond_0

    .line 596
    invoke-virtual {p0}, Lcom/payumoney/core/entity/PayumoneyConvenienceFee;->getConvenienceFeeMap()Ljava/util/Map;

    move-result-object v0

    .line 597
    sget-object v1, Lcom/payumoney/core/PayUmoneyConstants;->PAYUMONEY_WALLET:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lcom/payumoney/core/PayUmoneyConstants;->DEFAULT:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 599
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static hasNFC(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 140
    if-eqz p0, :cond_0

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 143
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 941
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 942
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 943
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 944
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    .line 945
    const/4 v0, 0x1

    return v0

    .line 943
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 951
    :cond_1
    goto :goto_1

    .line 949
    :catch_0
    move-exception v1

    .line 950
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 952
    :goto_1
    return v0
.end method

.method public static hasTelephony(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 147
    if-eqz p0, :cond_0

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 150
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isBankStatusIsUp(Lcom/payumoney/core/entity/PaymentEntity;Ljava/util/ArrayList;)Z
    .locals 5
    .param p0, "netbank"    # Lcom/payumoney/core/entity/PaymentEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            "Ljava/util/ArrayList<",
            "Lcom/payumoney/core/entity/PaymentEntity;",
            ">;)Z"
        }
    .end annotation

    .line 903
    .local p1, "enableNetBankList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/payumoney/core/entity/PaymentEntity;>;"
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 904
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 905
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v3}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 906
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {v2}, Lcom/payumoney/core/entity/PaymentEntity;->getUpStatus()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 907
    return v0

    .line 909
    :cond_0
    return v1

    .line 904
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 914
    :cond_2
    return v0
.end method

.method public static isCitiNetBankingSelected(Lcom/payumoney/core/entity/PaymentEntity;)Z
    .locals 2
    .param p0, "paymentEntity"    # Lcom/payumoney/core/entity/PaymentEntity;

    .line 461
    invoke-virtual {p0}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CITNB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isConnectedWifi(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 258
    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 259
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isExpiryValid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "month"    # Ljava/lang/String;
    .param p1, "year"    # Ljava/lang/String;
    .param p2, "issuer"    # Ljava/lang/String;

    .line 560
    const-string v0, ""

    const/4 v1, 0x1

    if-eqz p2, :cond_8

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 563
    :cond_0
    const-string v3, "SMAE"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 564
    return v1

    .line 566
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x30

    if-ne v3, v5, :cond_2

    .line 567
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object p0, v0

    .line 570
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 571
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 572
    if-lez v3, :cond_7

    const/16 v5, 0xc

    if-le v3, v5, :cond_3

    goto :goto_0

    .line 575
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 577
    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 578
    return v2

    .line 579
    :cond_4
    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v0, v6, :cond_6

    .line 581
    sub-int/2addr v3, v1

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v3, v0, :cond_5

    .line 582
    return v2

    .line 584
    :cond_5
    return v1

    .line 587
    :cond_6
    return v1

    .line 573
    :cond_7
    :goto_0
    return v2

    .line 589
    :catch_0
    move-exception v0

    .line 590
    return v2

    .line 561
    :cond_8
    :goto_1
    return v1
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .line 457
    const-string v0, "[0-9]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPhoneNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "userName"    # Ljava/lang/String;

    .line 453
    const-string v0, "^((\\+91)?|[0]?)[6-9]\\d{9}$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isUPIPaymentOptionAvailable(Lcom/payumoney/core/response/PaymentOptionDetails;)Z
    .locals 4
    .param p0, "paymentOptionDetails"    # Lcom/payumoney/core/response/PaymentOptionDetails;

    .line 1005
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getUpiList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getUpiList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 1008
    :cond_0
    invoke-virtual {p0}, Lcom/payumoney/core/response/PaymentOptionDetails;->getUpiList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/payumoney/core/entity/PaymentEntity;

    .line 1009
    invoke-virtual {v2}, Lcom/payumoney/core/entity/PaymentEntity;->getCode()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/payumoney/core/PayUmoneyConstants;->UPI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1010
    const/4 v0, 0x1

    return v0

    .line 1012
    :cond_1
    goto :goto_0

    .line 1014
    :cond_2
    return v0

    .line 1006
    :cond_3
    :goto_1
    return v0
.end method

.method public static isUpdateSessionRequired(Landroid/content/Context;)Z
    .locals 7
    .param p0, "c"    # Landroid/content/Context;

    .line 203
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 204
    return v0

    .line 206
    :cond_0
    const-string v1, "last_send_timestamp"

    invoke-static {p0, v1}, Lcom/payumoney/core/utils/SdkHelper;->getLongPreference(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 208
    const-wide/32 v4, 0x927c0

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v1, v2, v3}, Lcom/payumoney/core/utils/SdkHelper;->setLongPreference(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 210
    const/4 v0, 0x1

    return v0

    .line 212
    :cond_1
    return v0
.end method

.method public static isValidAmount(Ljava/lang/Double;)Z
    .locals 2
    .param p0, "amount"    # Ljava/lang/Double;

    .line 418
    invoke-virtual {p0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^\\d+(?:\\.\\d\\d?)?$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    const/4 v0, 0x1

    return v0

    .line 421
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isValidCvv(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "cvv"    # Ljava/lang/String;
    .param p1, "issuer"    # Ljava/lang/String;

    .line 541
    nop

    .line 542
    const/4 v0, 0x1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 545
    :cond_0
    const-string v1, "SMAE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    return v0

    .line 547
    :cond_1
    const/4 v1, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_6

    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->isNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 549
    :cond_2
    const-string v2, "AMEX"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    .line 550
    return v0

    .line 551
    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 552
    return v0

    .line 554
    :cond_5
    return v1

    .line 548
    :cond_6
    :goto_1
    return v1

    .line 543
    :cond_7
    :goto_2
    return v0
.end method

.method public static isValidEmail(Ljava/lang/String;)Z
    .locals 1
    .param p0, "email"    # Ljava/lang/String;

    .line 407
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isValidNumber(Ljava/lang/String;)Z
    .locals 2
    .param p0, "phone"    # Ljava/lang/String;

    .line 435
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^((\\+91)?|[0]?)[6-9]\\d{9}$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    const/4 v0, 0x1

    return v0

    .line 438
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isValidVPA(Ljava/lang/String;)Z
    .locals 1
    .param p0, "vpa"    # Ljava/lang/String;

    .line 996
    const-string v0, "^[^@]+@[^@]+$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isValidateUsername(Ljava/lang/String;)Z
    .locals 1
    .param p0, "username"    # Ljava/lang/String;

    .line 394
    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->isValidNumber(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 397
    :cond_0
    invoke-static {p0}, Lcom/payumoney/core/utils/SdkHelper;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static resetSessionUpdateTimeStamp(Landroid/content/Context;)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .line 216
    if-eqz p0, :cond_0

    .line 217
    const-wide/16 v0, 0x0

    const-string v2, "last_send_timestamp"

    invoke-static {p0, v2, v0, v1}, Lcom/payumoney/core/utils/SdkHelper;->setLongPreference(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 218
    :cond_0
    return-void
.end method

.method public static setLongPreference(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 118
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 81
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0

    .line 87
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static validateCardNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "ccNumber"    # Ljava/lang/String;
    .param p1, "issuer"    # Ljava/lang/String;

    .line 264
    nop

    .line 265
    nop

    .line 266
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ltz v1, :cond_1

    .line 267
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 268
    if-eqz v4, :cond_0

    .line 269
    mul-int/lit8 v5, v5, 0x2

    .line 270
    const/16 v6, 0x9

    if-le v5, v6, :cond_0

    .line 271
    rem-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v2

    .line 274
    :cond_0
    add-int/2addr v3, v5

    .line 275
    nop

    .line 266
    xor-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 278
    :cond_1
    rem-int/lit8 v3, v3, 0xa

    if-nez v3, :cond_e

    .line 279
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 283
    :cond_2
    const-string v1, "VISA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0x13

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0xd

    if-lt v1, v4, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_3

    .line 284
    return v2

    .line 285
    :cond_3
    const-string v1, "LASER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v4, 0x10

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v4, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_4

    .line 286
    return v2

    .line 287
    :cond_4
    const-string v1, "MAST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 288
    return v2

    .line 289
    :cond_5
    const-string v1, "MAES"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0xc

    if-lt v1, v5, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_6

    .line 290
    return v2

    .line 291
    :cond_6
    const-string v1, "DINR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0xe

    if-eq v1, v5, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_8

    .line 292
    :cond_7
    return v2

    .line 293
    :cond_8
    const-string v1, "AMEX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v5, 0xf

    if-ne v1, v5, :cond_9

    .line 294
    return v2

    .line 295
    :cond_9
    const-string v1, "JCB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v4, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_a

    .line 296
    return v2

    .line 297
    :cond_a
    const-string v1, "RUPAY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v4, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_b

    .line 298
    return v2

    .line 299
    :cond_b
    const-string v1, "SMAE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_c

    .line 300
    return v2

    .line 301
    :cond_c
    const-string v1, "6(?:011|5[0-9]{2})[0-9]{12}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v4, :cond_e

    .line 302
    return v2

    .line 280
    :cond_d
    :goto_1
    return v2

    .line 306
    :cond_e
    return v0

    .line 307
    :catch_0
    move-exception v1

    .line 308
    return v0
.end method


# virtual methods
.method public deviceAnalytics(Landroid/content/Context;Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;)V
    .locals 3
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "param"    # Lcom/payumoney/core/PayUmoneySdkInitializer$PaymentParam;

    .line 466
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 467
    invoke-static {p1, v0}, Lcom/payumoney/core/utils/SdkHelper;->addDeviceAnalyticsAttributes(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    .line 468
    const-string v1, "SDKInit"

    const-string v2, "clevertap"

    invoke-static {p1, v1, v0, v2}, Lcom/payumoney/core/analytics/LogAnalytics;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 470
    return-void
.end method
