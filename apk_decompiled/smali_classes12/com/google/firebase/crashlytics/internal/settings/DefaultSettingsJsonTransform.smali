.class Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsJsonTransform;
.super Ljava/lang/Object;
.source "DefaultSettingsJsonTransform.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/settings/SettingsJsonTransform;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildAppDataFrom(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;
    .locals 12
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 82
    const-string v0, "status"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "status":Ljava/lang/String;
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 84
    .local v7, "url":Ljava/lang/String;
    const-string v1, "reports_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, "reportsUrl":Ljava/lang/String;
    const-string v1, "ndk_reports_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 86
    .local v9, "ndkReportsUrl":Ljava/lang/String;
    nop

    .line 87
    const-string v1, "update_required"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 91
    .local v10, "updateRequired":Z
    new-instance v11, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    move-object v1, v11

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v11
.end method

.method private static buildFeaturesSessionDataFrom(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;
    .locals 2
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 95
    nop

    .line 96
    const-string v0, "collect_reports"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 100
    .local v0, "collectReports":Z
    new-instance v1, Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;

    invoke-direct {v1, v0}, Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;-><init>(Z)V

    return-object v1
.end method

.method private static buildSessionDataFrom(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;

    .line 104
    nop

    .line 105
    const-string v0, "max_custom_exception_events"

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 108
    .local v0, "maxCustomExceptionEvents":I
    const/4 v1, 0x4

    .line 111
    .local v1, "maxCompleteSessionsCount":I
    new-instance v2, Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;-><init>(II)V

    return-object v2
.end method

.method static defaultSettings(Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;)Lcom/google/firebase/crashlytics/internal/settings/model/Settings;
    .locals 18
    .param p0, "currentTimeProvider"    # Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "settingsVersion":I
    const/16 v1, 0xe10

    .line 59
    .local v1, "cacheDuration":I
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .local v2, "empty":Lorg/json/JSONObject;
    const/4 v11, 0x0

    .line 61
    .local v11, "appData":Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsJsonTransform;->buildSessionDataFrom(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

    move-result-object v12

    .line 62
    .local v12, "settingsData":Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsJsonTransform;->buildFeaturesSessionDataFrom(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;

    move-result-object v13

    .line 64
    .local v13, "featureData":Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;
    const-wide/16 v3, 0xe10

    move-object/from16 v14, p0

    invoke-static {v14, v3, v4, v2}, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsJsonTransform;->getExpiresAtFrom(Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;JLorg/json/JSONObject;)J

    move-result-wide v15

    .line 66
    .local v15, "expiresAtMillis":J
    new-instance v17, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;

    const/4 v9, 0x0

    const/16 v10, 0xe10

    move-object/from16 v3, v17

    move-wide v4, v15

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    invoke-direct/range {v3 .. v10}, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;-><init>(JLcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;II)V

    return-object v17
.end method

.method private static getExpiresAtFrom(Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;JLorg/json/JSONObject;)J
    .locals 6
    .param p0, "currentTimeProvider"    # Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;
    .param p1, "cacheDurationSeconds"    # J
    .param p3, "json"    # Lorg/json/JSONObject;

    .line 116
    const-wide/16 v0, 0x0

    .line 118
    .local v0, "expiresAtMillis":J
    const-string v2, "expires_at"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 124
    :cond_0
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;->getCurrentTimeMillis()J

    move-result-wide v2

    .line 125
    .local v2, "currentTimeMillis":J
    const-wide/16 v4, 0x3e8

    mul-long v4, v4, p1

    add-long v0, v2, v4

    .line 128
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

    .line 132
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->status:Ljava/lang/String;

    .line 134
    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->url:Ljava/lang/String;

    .line 135
    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->reportsUrl:Ljava/lang/String;

    .line 136
    const-string v2, "reports_url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->ndkReportsUrl:Ljava/lang/String;

    .line 137
    const-string v2, "ndk_reports_url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-boolean v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;->updateRequired:Z

    .line 138
    const-string v2, "update_required"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 140
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

    .line 144
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-boolean v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;->collectReports:Z

    .line 145
    const-string v2, "collect_reports"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 144
    return-object v0
.end method

.method private toSessionJson(Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "data"    # Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 149
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;->maxCustomExceptionEvents:I

    .line 150
    const-string v2, "max_custom_exception_events"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;->maxCompleteSessionsCount:I

    .line 153
    const-string v2, "max_complete_sessions_count"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 149
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

    .line 33
    move-object/from16 v0, p2

    .line 34
    const-string v1, "settings_version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 36
    .local v1, "settingsVersion":I
    nop

    .line 37
    const-string v2, "cache_duration"

    const/16 v3, 0xe10

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 41
    .local v2, "cacheDuration":I
    nop

    .line 42
    const-string v3, "app"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsJsonTransform;->buildAppDataFrom(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    move-result-object v11

    .line 43
    .local v11, "appData":Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;
    nop

    .line 44
    const-string v3, "session"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsJsonTransform;->buildSessionDataFrom(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

    move-result-object v12

    .line 45
    .local v12, "settingsData":Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;
    nop

    .line 46
    const-string v3, "features"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsJsonTransform;->buildFeaturesSessionDataFrom(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;

    move-result-object v13

    .line 48
    .local v13, "featureData":Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;
    int-to-long v3, v2

    move-object/from16 v14, p1

    invoke-static {v14, v3, v4, v0}, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsJsonTransform;->getExpiresAtFrom(Lcom/google/firebase/crashlytics/internal/common/CurrentTimeProvider;JLorg/json/JSONObject;)J

    move-result-wide v15

    .line 50
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

    .line 72
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->expiresAtMillis:J

    .line 73
    const-string v3, "expires_at"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    iget v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->cacheDuration:I

    .line 74
    const-string v2, "cache_duration"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->settingsVersion:I

    .line 75
    const-string v2, "settings_version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->featuresData:Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;

    .line 76
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsJsonTransform;->toFeaturesJson(Lcom/google/firebase/crashlytics/internal/settings/model/FeaturesSettingsData;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "features"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->appData:Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;

    .line 77
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsJsonTransform;->toAppJson(Lcom/google/firebase/crashlytics/internal/settings/model/AppSettingsData;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p1, Lcom/google/firebase/crashlytics/internal/settings/model/SettingsData;->sessionData:Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

    .line 78
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/settings/DefaultSettingsJsonTransform;->toSessionJson(Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "session"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 72
    return-object v0
.end method
