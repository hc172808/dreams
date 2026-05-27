.class Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;
.super Ljava/lang/Object;
.source "SettingsV3JsonTransform.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonTransform;


# static fields
.field private static final CRASHLYTICS_APP_URL:Ljava/lang/String; = "https://update.crashlytics.com/spi/v1/platforms/android/apps"

.field private static final CRASHLYTICS_APP_URL_FORMAT:Ljava/lang/String; = "https://update.crashlytics.com/spi/v1/platforms/android/apps/%s"

.field private static final NDK_REPORTS_URL_FORMAT:Ljava/lang/String; = "https://reports.crashlytics.com/sdk-api/v1/platforms/android/apps/%s/minidumps"

.field private static final REPORTS_URL_FORMAT:Ljava/lang/String; = "https://reports.crashlytics.com/spi/v1/platforms/android/apps/%s/reports"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildAppDataFrom(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;
    .locals 22
    .param p0, "fabricJson"    # Lorg/json/JSONObject;
    .param p1, "appJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 75
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "status":Ljava/lang/String;
    const-string v3, "new"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 78
    .local v13, "isNewApp":Z
    const-string v3, "bundle_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 79
    .local v14, "bundleId":Ljava/lang/String;
    nop

    .line 80
    const-string v3, "org_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 83
    .local v15, "organizationId":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v13, :cond_0

    .line 84
    const-string v5, "https://update.crashlytics.com/spi/v1/platforms/android/apps"

    goto :goto_0

    .line 85
    :cond_0
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v14, v6, v4

    const-string v7, "https://update.crashlytics.com/spi/v1/platforms/android/apps/%s"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    nop

    .line 86
    .local v5, "url":Ljava/lang/String;
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v14, v7, v4

    const-string v8, "https://reports.crashlytics.com/spi/v1/platforms/android/apps/%s/reports"

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 87
    .local v16, "reportsUrl":Ljava/lang/String;
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v14, v3, v4

    const-string v7, "https://reports.crashlytics.com/sdk-api/v1/platforms/android/apps/%s/minidumps"

    invoke-static {v6, v7, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 89
    .local v17, "ndkReportsUrl":Ljava/lang/String;
    nop

    .line 90
    const-string v3, "update_required"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 94
    .local v18, "updateRequired":Z
    nop

    .line 95
    const-string v3, "report_upload_variant"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v19

    .line 99
    .local v19, "reportUploadVariant":I
    nop

    .line 100
    const-string v3, "native_report_upload_variant"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v20

    .line 104
    .local v20, "nativeReportUploadVariant":I
    new-instance v21, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    move-object/from16 v3, v21

    move-object v4, v2

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object v8, v14

    move-object v9, v15

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v12, v20

    invoke-direct/range {v3 .. v12}, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    return-object v21
.end method

.method private static buildFeaturesSessionDataFrom(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;
    .locals 2
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 117
    nop

    .line 118
    const-string v0, "collect_reports"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 124
    .local v0, "collectReports":Z
    new-instance v1, Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;

    invoke-direct {v1, v0}, Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;-><init>(Z)V

    return-object v1
.end method

.method private static defaultSessionData()Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;
    .locals 5

    .line 128
    const/16 v0, 0x8

    .line 130
    .local v0, "maxCustomExceptionEvents":I
    const/4 v1, 0x4

    .line 133
    .local v1, "maxCompleteSessionsCount":I
    new-instance v2, Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

    const/16 v3, 0x8

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;-><init>(II)V

    return-object v2
.end method

.method private static getExpiresAtFrom(Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;JLorg/json/JSONObject;)J
    .locals 6
    .param p0, "currentTimeProvider"    # Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;
    .param p1, "cacheDurationSeconds"    # J
    .param p3, "json"    # Lorg/json/JSONObject;

    .line 165
    const-wide/16 v0, 0x0

    .line 167
    .local v0, "expiresAtMillis":J
    const-string v2, "expires_at"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 173
    :cond_0
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;->getCurrentTimeMillis()J

    move-result-wide v2

    .line 174
    .local v2, "currentTimeMillis":J
    const-wide/16 v4, 0x3e8

    mul-long v4, v4, p1

    add-long v0, v2, v4

    .line 177
    .end local v2    # "currentTimeMillis":J
    :goto_0
    return-wide v0
.end method

.method private toAppJson(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "appData"    # Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 146
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->status:Ljava/lang/String;

    .line 148
    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-boolean v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->updateRequired:Z

    .line 149
    const-string v2, "update_required"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    iget v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->reportUploadVariant:I

    .line 150
    const-string v2, "report_upload_variant"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->nativeReportUploadVariant:I

    .line 151
    const-string v2, "native_report_upload_variant"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 155
    .local v0, "json":Lorg/json/JSONObject;
    return-object v0
.end method

.method private toFabricJson(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "appData"    # Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 137
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->bundleId:Ljava/lang/String;

    .line 139
    const-string v2, "bundle_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->organizationId:Ljava/lang/String;

    .line 140
    const-string v2, "org_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 142
    .local v0, "json":Lorg/json/JSONObject;
    return-object v0
.end method

.method private toFeaturesJson(Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "features"    # Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 159
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-boolean v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;->collectReports:Z

    .line 160
    const-string v2, "collect_reports"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 159
    return-object v0
.end method


# virtual methods
.method public buildFromJson(Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;
    .locals 18
    .param p1, "currentTimeProvider"    # Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;
    .param p2, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 40
    move-object/from16 v0, p2

    .line 41
    const-string v1, "settings_version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 43
    .local v1, "settingsVersion":I
    nop

    .line 44
    const-string v2, "cache_duration"

    const/16 v3, 0xe10

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 48
    .local v2, "cacheDuration":I
    nop

    .line 50
    const-string v3, "fabric"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 51
    const-string v4, "app"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 49
    invoke-static {v3, v4}, Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;->buildAppDataFrom(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    move-result-object v11

    .line 52
    .local v11, "appData":Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;->defaultSessionData()Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

    move-result-object v12

    .line 53
    .local v12, "sessionData":Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;
    nop

    .line 54
    const-string v3, "features"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;->buildFeaturesSessionDataFrom(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;

    move-result-object v13

    .line 56
    .local v13, "featureData":Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;
    int-to-long v3, v2

    move-object/from16 v14, p1

    invoke-static {v14, v3, v4, v0}, Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;->getExpiresAtFrom(Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;JLorg/json/JSONObject;)J

    move-result-wide v15

    .line 58
    .local v15, "expiresAtMillis":J
    new-instance v17, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;

    move-object/from16 v3, v17

    move-wide v4, v15

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move v9, v1

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;-><init>(JLcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;II)V

    return-object v17
.end method

.method public toJson(Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "settingsData"    # Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 64
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->expiresAtMillis:J

    .line 65
    const-string v3, "expires_at"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    iget v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->cacheDuration:I

    .line 66
    const-string v2, "cache_duration"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->settingsVersion:I

    .line 67
    const-string v2, "settings_version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->featuresData:Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;

    .line 68
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;->toFeaturesJson(Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "features"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->appData:Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    .line 69
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;->toAppJson(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->appData:Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    .line 70
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/settings/SettingsV3JsonTransform;->toFabricJson(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "fabric"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 64
    return-object v0
.end method
