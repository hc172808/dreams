.class public final Lpaytm/assist/easypay/easypay/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "paytm.assist.easypay.easypay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BASE_URL:Ljava/lang/String; = "https://securegw.paytm.in/"

.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final DEBUG:Z

.field public static final FLAVOR:Ljava/lang/String; = ""

.field public static final IS_PROD:Z = true

.field public static final LIBRARY_PACKAGE_NAME:Ljava/lang/String; = "paytm.assist.easypay.easypay"

.field public static final LIB_DEBUG:Z = false

.field public static final LIB_LOGS:Z = false

.field public static final VERSION_CODE:I = -0x1

.field public static final VERSION_NAME:Ljava/lang/String; = ""

.field public static final WEB_DEBUG:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const-string v0, "true"

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lpaytm/assist/easypay/easypay/BuildConfig;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
