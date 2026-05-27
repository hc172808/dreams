.class public final Lcom/facebook/internal/FetchedAppSettingsManager;
.super Ljava/lang/Object;
.source "FetchedAppSettingsManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;,
        Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFetchedAppSettingsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchedAppSettingsManager.kt\ncom/facebook/internal/FetchedAppSettingsManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,341:1\n1#2:342\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002ABB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020$H\u0007J\u0010\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\u0004H\u0002J\u0014\u00104\u001a\u0004\u0018\u00010!2\u0008\u00103\u001a\u0004\u0018\u00010\u0004H\u0007J\u0008\u00105\u001a\u00020/H\u0007J\u0018\u00106\u001a\u00020!2\u0006\u00103\u001a\u00020\u00042\u0006\u00107\u001a\u000202H\u0007J*\u00108\u001a\u001a\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020:0 092\u0008\u0010;\u001a\u0004\u0018\u000102H\u0002J\u0008\u0010<\u001a\u00020/H\u0002J\u001a\u0010=\u001a\u0004\u0018\u00010!2\u0006\u00103\u001a\u00020\u00042\u0006\u0010>\u001a\u00020&H\u0007J\u0010\u0010?\u001a\u00020/2\u0006\u0010@\u001a\u00020&H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0015X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0015X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0015X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020!0 X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\'\u001a\u0010\u0012\u000c\u0012\n **\u0004\u0018\u00010)0)0(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006C"
    }
    d2 = {
        "Lcom/facebook/internal/FetchedAppSettingsManager;",
        "",
        "()V",
        "APPLICATION_FIELDS",
        "",
        "APP_SETTINGS_PREFS_KEY_FORMAT",
        "APP_SETTINGS_PREFS_STORE",
        "APP_SETTING_ANDROID_SDK_ERROR_CATEGORIES",
        "APP_SETTING_APP_EVENTS_AAM_RULE",
        "APP_SETTING_APP_EVENTS_EVENT_BINDINGS",
        "APP_SETTING_APP_EVENTS_FEATURE_BITMASK",
        "APP_SETTING_APP_EVENTS_SESSION_TIMEOUT",
        "APP_SETTING_DIALOG_CONFIGS",
        "APP_SETTING_FIELDS",
        "",
        "APP_SETTING_NUX_CONTENT",
        "APP_SETTING_NUX_ENABLED",
        "APP_SETTING_RESTRICTIVE_EVENT_FILTER_FIELD",
        "APP_SETTING_SMART_LOGIN_OPTIONS",
        "APP_SETTING_SUPPORTS_IMPLICIT_SDK_LOGGING",
        "AUTOMATIC_LOGGING_ENABLED_BITMASK_FIELD",
        "",
        "CODELESS_EVENTS_ENABLED_BITMASK_FIELD",
        "IAP_AUTOMATIC_LOGGING_ENABLED_BITMASK_FIELD",
        "MONITOR_ENABLED_BITMASK_FIELD",
        "SDK_UPDATE_MESSAGE",
        "SMART_LOGIN_BOOKMARK_ICON_URL",
        "SMART_LOGIN_MENU_ICON_URL",
        "SUGGESTED_EVENTS_SETTING",
        "TAG",
        "TRACK_UNINSTALL_ENABLED_BITMASK_FIELD",
        "fetchedAppSettings",
        "",
        "Lcom/facebook/internal/FetchedAppSettings;",
        "fetchedAppSettingsCallbacks",
        "Ljava/util/concurrent/ConcurrentLinkedQueue;",
        "Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;",
        "isUnityInit",
        "",
        "loadingState",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;",
        "kotlin.jvm.PlatformType",
        "printedSDKUpdatedMessage",
        "unityEventBindings",
        "Lorg/json/JSONArray;",
        "getAppSettingsAsync",
        "",
        "callback",
        "getAppSettingsQueryResponse",
        "Lorg/json/JSONObject;",
        "applicationId",
        "getAppSettingsWithoutQuery",
        "loadAppSettingsAsync",
        "parseAppSettingsFromJSON",
        "settingsJSON",
        "parseDialogConfigurations",
        "",
        "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
        "dialogConfigResponse",
        "pollCallbacks",
        "queryAppSettings",
        "forceRequery",
        "setIsUnityInit",
        "flag",
        "FetchAppSettingState",
        "FetchedAppSettingsCallback",
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
.field private static final APPLICATION_FIELDS:Ljava/lang/String; = "fields"

.field private static final APP_SETTINGS_PREFS_KEY_FORMAT:Ljava/lang/String; = "com.facebook.internal.APP_SETTINGS.%s"

.field private static final APP_SETTINGS_PREFS_STORE:Ljava/lang/String; = "com.facebook.internal.preferences.APP_SETTINGS"

.field private static final APP_SETTING_ANDROID_SDK_ERROR_CATEGORIES:Ljava/lang/String; = "android_sdk_error_categories"

.field private static final APP_SETTING_APP_EVENTS_AAM_RULE:Ljava/lang/String; = "aam_rules"

.field private static final APP_SETTING_APP_EVENTS_EVENT_BINDINGS:Ljava/lang/String; = "auto_event_mapping_android"

.field private static final APP_SETTING_APP_EVENTS_FEATURE_BITMASK:Ljava/lang/String; = "app_events_feature_bitmask"

.field private static final APP_SETTING_APP_EVENTS_SESSION_TIMEOUT:Ljava/lang/String; = "app_events_session_timeout"

.field private static final APP_SETTING_DIALOG_CONFIGS:Ljava/lang/String; = "android_dialog_configs"

.field private static final APP_SETTING_FIELDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final APP_SETTING_NUX_CONTENT:Ljava/lang/String; = "gdpv4_nux_content"

.field private static final APP_SETTING_NUX_ENABLED:Ljava/lang/String; = "gdpv4_nux_enabled"

.field private static final APP_SETTING_RESTRICTIVE_EVENT_FILTER_FIELD:Ljava/lang/String; = "restrictive_data_filter_params"

.field private static final APP_SETTING_SMART_LOGIN_OPTIONS:Ljava/lang/String; = "seamless_login"

.field private static final APP_SETTING_SUPPORTS_IMPLICIT_SDK_LOGGING:Ljava/lang/String; = "supports_implicit_sdk_logging"

.field private static final AUTOMATIC_LOGGING_ENABLED_BITMASK_FIELD:I = 0x8

.field private static final CODELESS_EVENTS_ENABLED_BITMASK_FIELD:I = 0x20

.field private static final IAP_AUTOMATIC_LOGGING_ENABLED_BITMASK_FIELD:I = 0x10

.field public static final INSTANCE:Lcom/facebook/internal/FetchedAppSettingsManager;

.field private static final MONITOR_ENABLED_BITMASK_FIELD:I = 0x4000

.field private static final SDK_UPDATE_MESSAGE:Ljava/lang/String; = "sdk_update_message"

.field private static final SMART_LOGIN_BOOKMARK_ICON_URL:Ljava/lang/String; = "smart_login_bookmark_icon_url"

.field private static final SMART_LOGIN_MENU_ICON_URL:Ljava/lang/String; = "smart_login_menu_icon_url"

.field private static final SUGGESTED_EVENTS_SETTING:Ljava/lang/String; = "suggested_events_setting"

.field private static final TAG:Ljava/lang/String;

.field private static final TRACK_UNINSTALL_ENABLED_BITMASK_FIELD:I = 0x100

.field private static final fetchedAppSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final fetchedAppSettingsCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static isUnityInit:Z

.field private static final loadingState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;",
            ">;"
        }
    .end annotation
.end field

.field private static printedSDKUpdatedMessage:Z

.field private static unityEventBindings:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 51
    new-instance v0, Lcom/facebook/internal/FetchedAppSettingsManager;

    invoke-direct {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;-><init>()V

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->INSTANCE:Lcom/facebook/internal/FetchedAppSettingsManager;

    .line 52
    const-class v0, Lcom/facebook/internal/FetchedAppSettingsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FetchedAppSettingsManager::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->TAG:Ljava/lang/String;

    .line 79
    nop

    .line 80
    nop

    .line 81
    nop

    .line 82
    nop

    .line 83
    nop

    .line 84
    nop

    .line 85
    nop

    .line 86
    nop

    .line 87
    nop

    .line 88
    nop

    .line 89
    nop

    .line 90
    nop

    .line 91
    nop

    .line 92
    nop

    .line 93
    const-string/jumbo v2, "supports_implicit_sdk_logging"

    const-string v3, "gdpv4_nux_content"

    const-string v4, "gdpv4_nux_enabled"

    const-string v5, "android_dialog_configs"

    const-string v6, "android_sdk_error_categories"

    const-string v7, "app_events_session_timeout"

    const-string v8, "app_events_feature_bitmask"

    const-string v9, "auto_event_mapping_android"

    const-string v10, "seamless_login"

    const-string/jumbo v11, "smart_login_bookmark_icon_url"

    const-string/jumbo v12, "smart_login_menu_icon_url"

    const-string v13, "restrictive_data_filter_params"

    const-string v14, "aam_rules"

    const-string/jumbo v15, "suggested_events_setting"

    filled-new-array/range {v2 .. v15}, [Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->APP_SETTING_FIELDS:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->NOT_LOADED:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 97
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettingsCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAppSettingsQueryResponse(Lcom/facebook/internal/FetchedAppSettingsManager;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/internal/FetchedAppSettingsManager;
    .param p1, "applicationId"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getFetchedAppSettings$p(Lcom/facebook/internal/FetchedAppSettingsManager;)Ljava/util/Map;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/internal/FetchedAppSettingsManager;

    .line 51
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getLoadingState$p(Lcom/facebook/internal/FetchedAppSettingsManager;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/internal/FetchedAppSettingsManager;

    .line 51
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingState:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public static final synthetic access$getPrintedSDKUpdatedMessage$p(Lcom/facebook/internal/FetchedAppSettingsManager;)Z
    .locals 1
    .param p0, "$this"    # Lcom/facebook/internal/FetchedAppSettingsManager;

    .line 51
    sget-boolean v0, Lcom/facebook/internal/FetchedAppSettingsManager;->printedSDKUpdatedMessage:Z

    return v0
.end method

.method public static final synthetic access$getTAG$p(Lcom/facebook/internal/FetchedAppSettingsManager;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/internal/FetchedAppSettingsManager;

    .line 51
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$pollCallbacks(Lcom/facebook/internal/FetchedAppSettingsManager;)V
    .locals 0
    .param p0, "$this"    # Lcom/facebook/internal/FetchedAppSettingsManager;

    .line 51
    invoke-direct {p0}, Lcom/facebook/internal/FetchedAppSettingsManager;->pollCallbacks()V

    return-void
.end method

.method public static final synthetic access$setPrintedSDKUpdatedMessage$p(Lcom/facebook/internal/FetchedAppSettingsManager;Z)V
    .locals 0
    .param p0, "$this"    # Lcom/facebook/internal/FetchedAppSettingsManager;
    .param p1, "<set-?>"    # Z

    .line 51
    sput-boolean p1, Lcom/facebook/internal/FetchedAppSettingsManager;->printedSDKUpdatedMessage:Z

    return-void
.end method

.method public static final getAppSettingsAsync(Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "callback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettingsCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->loadAppSettingsAsync()V

    .line 183
    return-void
.end method

.method private final getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "applicationId"    # Ljava/lang/String;

    .line 291
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 292
    .local v0, "appSettingsParams":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    move-object v2, v1

    .line 342
    .local v2, "$this$apply":Ljava/util/List;
    const/4 v3, 0x0

    .line 292
    .local v3, "$i$a$-apply-FetchedAppSettingsManager$getAppSettingsQueryResponse$appSettingFields$1":I
    sget-object v4, Lcom/facebook/internal/FetchedAppSettingsManager;->APP_SETTING_FIELDS:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 293
    .end local v2    # "$this$apply":Ljava/util/List;
    .end local v3    # "$i$a$-apply-FetchedAppSettingsManager$getAppSettingsQueryResponse$appSettingFields$1":I
    .local v1, "appSettingFields":Ljava/util/List;
    nop

    .line 296
    const-string v2, ","

    check-cast v2, Ljava/lang/CharSequence;

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fields"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v2, Lcom/facebook/GraphRequest;->Companion:Lcom/facebook/GraphRequest$Companion;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1, v3}, Lcom/facebook/GraphRequest$Companion;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 298
    .local v2, "request":Lcom/facebook/GraphRequest;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    .line 299
    invoke-virtual {v2, v0}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 300
    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/GraphResponse;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    return-object v3
.end method

.method public static final getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;
    .locals 1
    .param p0, "applicationId"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 170
    if-eqz p0, :cond_0

    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/FetchedAppSettings;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final loadAppSettingsAsync()V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 104
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 105
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "applicationId":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    sget-object v2, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->ERROR:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 108
    sget-object v2, Lcom/facebook/internal/FetchedAppSettingsManager;->INSTANCE:Lcom/facebook/internal/FetchedAppSettingsManager;

    invoke-direct {v2}, Lcom/facebook/internal/FetchedAppSettingsManager;->pollCallbacks()V

    .line 109
    return-void

    .line 110
    :cond_0
    sget-object v2, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    sget-object v2, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->SUCCESS:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 112
    sget-object v2, Lcom/facebook/internal/FetchedAppSettingsManager;->INSTANCE:Lcom/facebook/internal/FetchedAppSettingsManager;

    invoke-direct {v2}, Lcom/facebook/internal/FetchedAppSettingsManager;->pollCallbacks()V

    .line 113
    return-void

    .line 114
    :cond_1
    nop

    .line 115
    nop

    .line 116
    nop

    .line 117
    nop

    .line 116
    sget-object v2, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->NOT_LOADED:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    sget-object v4, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->LOADING:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_3

    .line 117
    sget-object v3, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->ERROR:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    sget-object v6, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->LOADING:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    invoke-virtual {v2, v3, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 115
    :goto_1
    nop

    .line 118
    .local v2, "canStartLoading":Z
    if-nez v2, :cond_4

    .line 119
    sget-object v3, Lcom/facebook/internal/FetchedAppSettingsManager;->INSTANCE:Lcom/facebook/internal/FetchedAppSettingsManager;

    invoke-direct {v3}, Lcom/facebook/internal/FetchedAppSettingsManager;->pollCallbacks()V

    .line 120
    return-void

    .line 122
    :cond_4
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "com.facebook.internal.APP_SETTINGS.%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .local v3, "settingsKey":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/facebook/internal/FetchedAppSettingsManager$loadAppSettingsAsync$1;

    invoke-direct {v5, v0, v3, v1}, Lcom/facebook/internal/FetchedAppSettingsManager$loadAppSettingsAsync$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Runnable;

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method

.method private final parseDialogConfigurations(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 8
    .param p1, "dialogConfigResponse"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
            ">;>;"
        }
    .end annotation

    .line 306
    nop

    .line 307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 306
    nop

    .line 308
    .local v0, "dialogConfigMap":Ljava/util/HashMap;
    if-eqz p1, :cond_2

    .line 309
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 310
    .local v1, "dialogConfigData":Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    .line 311
    const/4 v2, 0x0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    .line 312
    .local v2, "i":I
    nop

    .line 313
    sget-object v4, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->Companion:Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig$Companion;

    .line 314
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "dialogConfigData.optJSONObject(i)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v4, v5}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig$Companion;->parseDialogConfig(Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 312
    nop

    .line 316
    .local v4, "dialogConfig":Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    invoke-virtual {v4}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->getDialogName()Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, "dialogName":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 318
    .local v6, "featureMap":Ljava/util/Map;
    if-nez v6, :cond_0

    .line 319
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move-object v6, v7

    check-cast v6, Ljava/util/Map;

    .line 320
    move-object v7, v0

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :cond_0
    invoke-virtual {v4}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->getFeatureName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 315
    .end local v4    # "dialogConfig":Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    .end local v5    # "dialogName":Ljava/lang/String;
    .end local v6    # "featureMap":Ljava/util/Map;
    :cond_1
    nop

    .line 311
    :goto_1
    nop

    .end local v2    # "i":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 326
    .end local v1    # "dialogConfigData":Lorg/json/JSONArray;
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    return-object v1
.end method

.method private final declared-synchronized pollCallbacks()V
    .locals 6

    monitor-enter p0

    .line 191
    :try_start_0
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    .line 192
    .local v0, "currentState":Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;
    nop

    .line 193
    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->NOT_LOADED:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    if-eq v1, v0, :cond_4

    sget-object v1, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->LOADING:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    if-ne v1, v0, :cond_0

    goto :goto_2

    .line 196
    :cond_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "applicationId":Ljava/lang/String;
    sget-object v2, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/internal/FetchedAppSettings;

    .line 198
    .local v2, "appSettings":Lcom/facebook/internal/FetchedAppSettings;
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 199
    .local v3, "handler":Landroid/os/Handler;
    sget-object v4, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->ERROR:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    if-ne v4, v0, :cond_2

    .line 200
    :goto_0
    sget-object v4, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettingsCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 201
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;

    .line 202
    .local v4, "callback":Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;
    new-instance v5, Lcom/facebook/internal/FetchedAppSettingsManager$pollCallbacks$1;

    invoke-direct {v5, v4}, Lcom/facebook/internal/FetchedAppSettingsManager$pollCallbacks$1;-><init>(Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;)V

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    nop

    .end local v4    # "callback":Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;
    goto :goto_0

    .line 204
    .end local p0    # "this":Lcom/facebook/internal/FetchedAppSettingsManager;
    :cond_1
    monitor-exit p0

    return-void

    .line 206
    :cond_2
    :goto_1
    :try_start_1
    sget-object v4, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettingsCallbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 207
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;

    .line 208
    .restart local v4    # "callback":Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;
    new-instance v5, Lcom/facebook/internal/FetchedAppSettingsManager$pollCallbacks$2;

    invoke-direct {v5, v4, v2}, Lcom/facebook/internal/FetchedAppSettingsManager$pollCallbacks$2;-><init>(Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;Lcom/facebook/internal/FetchedAppSettings;)V

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    nop

    .end local v4    # "callback":Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;
    goto :goto_1

    .line 210
    :cond_3
    monitor-exit p0

    return-void

    .line 194
    .end local v1    # "applicationId":Ljava/lang/String;
    .end local v2    # "appSettings":Lcom/facebook/internal/FetchedAppSettings;
    .end local v3    # "handler":Landroid/os/Handler;
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    .line 190
    .end local v0    # "currentState":Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static final queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;
    .locals 5
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "forceRequery"    # Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "applicationId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    if-nez p1, :cond_0

    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/FetchedAppSettings;

    return-object v0

    .line 221
    :cond_0
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->INSTANCE:Lcom/facebook/internal/FetchedAppSettingsManager;

    invoke-direct {v0, p0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsQueryResponse(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 222
    .local v1, "response":Lorg/json/JSONObject;
    invoke-virtual {v0, p0, v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v2

    .line 223
    .local v2, "fetchedAppSettings":Lcom/facebook/internal/FetchedAppSettings;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    sget-object v3, Lcom/facebook/internal/FetchedAppSettingsManager;->loadingState:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v4, Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;->SUCCESS:Lcom/facebook/internal/FetchedAppSettingsManager$FetchAppSettingState;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 225
    invoke-direct {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->pollCallbacks()V

    .line 227
    :cond_1
    return-object v2

    .line 221
    .end local v1    # "response":Lorg/json/JSONObject;
    .end local v2    # "fetchedAppSettings":Lcom/facebook/internal/FetchedAppSettings;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final setIsUnityInit(Z)V
    .locals 1
    .param p0, "flag"    # Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 281
    sput-boolean p0, Lcom/facebook/internal/FetchedAppSettingsManager;->isUnityInit:Z

    .line 282
    sget-object v0, Lcom/facebook/internal/FetchedAppSettingsManager;->unityEventBindings:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 283
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/UnityReflection;->sendEventMapping(Ljava/lang/String;)V

    .line 285
    :cond_0
    return-void
.end method


# virtual methods
.method public final parseAppSettingsFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings;
    .locals 28
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "settingsJSON"    # Lorg/json/JSONObject;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "applicationId"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "settingsJSON"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    nop

    .line 236
    const-string v2, "android_sdk_error_categories"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 235
    nop

    .line 237
    .local v2, "errorClassificationJSON":Lorg/json/JSONArray;
    nop

    .line 238
    sget-object v3, Lcom/facebook/internal/FacebookRequestErrorClassification;->Companion:Lcom/facebook/internal/FacebookRequestErrorClassification$Companion;

    invoke-virtual {v3, v2}, Lcom/facebook/internal/FacebookRequestErrorClassification$Companion;->createFromJSON(Lorg/json/JSONArray;)Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v12, v3

    goto :goto_0

    .line 239
    :cond_0
    sget-object v3, Lcom/facebook/internal/FacebookRequestErrorClassification;->Companion:Lcom/facebook/internal/FacebookRequestErrorClassification$Companion;

    invoke-virtual {v3}, Lcom/facebook/internal/FacebookRequestErrorClassification$Companion;->getDefaultErrorClassification()Lcom/facebook/internal/FacebookRequestErrorClassification;

    move-result-object v3

    move-object v12, v3

    .line 237
    :goto_0
    nop

    .line 240
    .local v12, "errorClassification":Lcom/facebook/internal/FacebookRequestErrorClassification;
    const-string v3, "app_events_feature_bitmask"

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 241
    .local v3, "featureBitmask":I
    and-int/lit8 v4, v3, 0x8

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 242
    .local v11, "automaticLoggingEnabled":Z
    :goto_1
    nop

    .line 243
    and-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    .line 242
    :goto_2
    nop

    .line 244
    .local v15, "inAppPurchaseAutomaticLoggingEnabled":Z
    and-int/lit8 v4, v3, 0x20

    if-eqz v4, :cond_3

    const/16 v16, 0x1

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    .line 245
    .local v16, "codelessEventsEnabled":Z
    :goto_3
    and-int/lit16 v4, v3, 0x100

    if-eqz v4, :cond_4

    const/16 v19, 0x1

    goto :goto_4

    :cond_4
    const/16 v19, 0x0

    .line 246
    .local v19, "trackUninstallEnabled":Z
    :goto_4
    and-int/lit16 v4, v3, 0x4000

    if-eqz v4, :cond_5

    const/16 v20, 0x1

    goto :goto_5

    :cond_5
    const/16 v20, 0x0

    .line 247
    .local v20, "monitorEnabled":Z
    :goto_5
    const-string v4, "auto_event_mapping_android"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 248
    .local v24, "eventBindings":Lorg/json/JSONArray;
    sput-object v24, Lcom/facebook/internal/FetchedAppSettingsManager;->unityEventBindings:Lorg/json/JSONArray;

    .line 249
    if-eqz v24, :cond_7

    invoke-static {}, Lcom/facebook/internal/InternalSettings;->isUnityApp()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 250
    if-eqz v24, :cond_6

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_6
    invoke-static {v4}, Lcom/facebook/appevents/codeless/internal/UnityReflection;->sendEventMapping(Ljava/lang/String;)V

    .line 252
    :cond_7
    nop

    .line 253
    new-instance v25, Lcom/facebook/internal/FetchedAppSettings;

    move-object/from16 v4, v25

    .line 254
    const-string/jumbo v5, "supports_implicit_sdk_logging"

    invoke-virtual {v1, v5, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 255
    const-string v6, "gdpv4_nux_content"

    const-string v8, ""

    invoke-virtual {v1, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    const-string v9, "settingsJSON.optString(A\u2026_SETTING_NUX_CONTENT, \"\")"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    const-string v8, "gdpv4_nux_enabled"

    invoke-virtual {v1, v8, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 257
    nop

    .line 258
    nop

    .line 259
    invoke-static {}, Lcom/facebook/appevents/internal/Constants;->getDefaultAppEventsSessionTimeoutInSeconds()I

    move-result v8

    .line 257
    const-string v9, "app_events_session_timeout"

    invoke-virtual {v1, v9, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 260
    sget-object v9, Lcom/facebook/internal/SmartLoginOption;->Companion:Lcom/facebook/internal/SmartLoginOption$Companion;

    const-string v10, "seamless_login"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Lcom/facebook/internal/SmartLoginOption$Companion;->parseOptions(J)Ljava/util/EnumSet;

    move-result-object v9

    .line 261
    const-string v10, "android_dialog_configs"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    move-object/from16 v14, p0

    invoke-direct {v14, v10}, Lcom/facebook/internal/FetchedAppSettingsManager;->parseDialogConfigurations(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v10

    .line 262
    nop

    .line 263
    nop

    .line 264
    const-string/jumbo v13, "smart_login_bookmark_icon_url"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v13

    move-object/from16 v26, v2

    .end local v2    # "errorClassificationJSON":Lorg/json/JSONArray;
    .local v26, "errorClassificationJSON":Lorg/json/JSONArray;
    const-string v2, "settingsJSON.optString(S\u2026_LOGIN_BOOKMARK_ICON_URL)"

    move/from16 v27, v3

    move-object/from16 v3, v17

    .end local v3    # "featureBitmask":I
    .local v27, "featureBitmask":I
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    const-string/jumbo v2, "smart_login_menu_icon_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    const-string v3, "settingsJSON.optString(SMART_LOGIN_MENU_ICON_URL)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    nop

    .line 267
    nop

    .line 268
    nop

    .line 269
    const-string v2, "sdk_update_message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    const-string v3, "settingsJSON.optString(SDK_UPDATE_MESSAGE)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    nop

    .line 271
    nop

    .line 272
    const-string v2, "aam_rules"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 273
    const-string/jumbo v2, "suggested_events_setting"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 274
    const-string v2, "restrictive_data_filter_params"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 253
    move-object/from16 v17, v24

    invoke-direct/range {v4 .. v23}, Lcom/facebook/internal/FetchedAppSettings;-><init>(ZLjava/lang/String;ZILjava/util/EnumSet;Ljava/util/Map;ZLcom/facebook/internal/FacebookRequestErrorClassification;Ljava/lang/String;Ljava/lang/String;ZZLorg/json/JSONArray;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    move-object/from16 v2, v25

    .line 275
    .local v2, "result":Lcom/facebook/internal/FetchedAppSettings;
    sget-object v3, Lcom/facebook/internal/FetchedAppSettingsManager;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    return-object v2
.end method
