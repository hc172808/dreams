.class public Lcom/google/firebase/abt/AbtExperimentInfo;
.super Ljava/lang/Object;
.source "AbtExperimentInfo.java"


# static fields
.field private static final ALL_REQUIRED_KEYS:[Ljava/lang/String;

.field static final EXPERIMENT_ID_KEY:Ljava/lang/String; = "experimentId"

.field static final EXPERIMENT_START_TIME_KEY:Ljava/lang/String; = "experimentStartTime"

.field static final TIME_TO_LIVE_KEY:Ljava/lang/String; = "timeToLiveMillis"

.field static final TRIGGER_EVENT_KEY:Ljava/lang/String; = "triggerEvent"

.field static final TRIGGER_TIMEOUT_KEY:Ljava/lang/String; = "triggerTimeoutMillis"

.field static final VARIANT_ID_KEY:Ljava/lang/String; = "variantId"

.field static final protoTimestampStringParser:Ljava/text/DateFormat;


# instance fields
.field private final experimentId:Ljava/lang/String;

.field private final experimentStartTime:Ljava/util/Date;

.field private final timeToLiveInMillis:J

.field private final triggerEventName:Ljava/lang/String;

.field private final triggerTimeoutInMillis:J

.field private final variantId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 92
    const-string v0, "experimentId"

    const-string v1, "experimentStartTime"

    const-string v2, "timeToLiveMillis"

    const-string v3, "triggerTimeoutMillis"

    const-string v4, "variantId"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/abt/AbtExperimentInfo;->ALL_REQUIRED_KEYS:[Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/firebase/abt/AbtExperimentInfo;->protoTimestampStringParser:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JJ)V
    .locals 0
    .param p1, "experimentId"    # Ljava/lang/String;
    .param p2, "variantId"    # Ljava/lang/String;
    .param p3, "triggerEventName"    # Ljava/lang/String;
    .param p4, "experimentStartTime"    # Ljava/util/Date;
    .param p5, "triggerTimeoutInMillis"    # J
    .param p7, "timeToLiveInMillis"    # J

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/google/firebase/abt/AbtExperimentInfo;->experimentId:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lcom/google/firebase/abt/AbtExperimentInfo;->variantId:Ljava/lang/String;

    .line 140
    iput-object p3, p0, Lcom/google/firebase/abt/AbtExperimentInfo;->triggerEventName:Ljava/lang/String;

    .line 141
    iput-object p4, p0, Lcom/google/firebase/abt/AbtExperimentInfo;->experimentStartTime:Ljava/util/Date;

    .line 142
    iput-wide p5, p0, Lcom/google/firebase/abt/AbtExperimentInfo;->triggerTimeoutInMillis:J

    .line 143
    iput-wide p7, p0, Lcom/google/firebase/abt/AbtExperimentInfo;->timeToLiveInMillis:J

    .line 144
    return-void
.end method

.method static fromConditionalUserProperty(Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;)Lcom/google/firebase/abt/AbtExperimentInfo;
    .locals 11
    .param p0, "conditionalUserProperty"    # Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    .line 297
    const-string v0, ""

    .line 298
    .local v0, "triggerEventName":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggerEventName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggerEventName:Ljava/lang/String;

    .line 302
    :cond_0
    new-instance v10, Lcom/google/firebase/abt/AbtExperimentInfo;

    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->value:Ljava/lang/Object;

    .line 304
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->creationTimestamp:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    iget-wide v6, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggerTimeout:J

    iget-wide v8, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timeToLive:J

    move-object v1, v10

    move-object v4, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/firebase/abt/AbtExperimentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JJ)V

    .line 302
    return-object v10
.end method

.method static fromMap(Ljava/util/Map;)Lcom/google/firebase/abt/AbtExperimentInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/abt/AbtExperimentInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 160
    .local p0, "experimentInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "triggerEvent"

    invoke-static {p0}, Lcom/google/firebase/abt/AbtExperimentInfo;->validateExperimentInfoMap(Ljava/util/Map;)V

    .line 163
    :try_start_0
    sget-object v1, Lcom/google/firebase/abt/AbtExperimentInfo;->protoTimestampStringParser:Ljava/text/DateFormat;

    const-string v2, "experimentStartTime"

    .line 164
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 165
    .local v7, "experimentStartTime":Ljava/util/Date;
    const-string v1, "triggerTimeoutMillis"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 166
    .local v8, "triggerTimeoutInMillis":J
    const-string v1, "timeToLiveMillis"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 168
    .local v10, "timeToLiveInMillis":J
    new-instance v1, Lcom/google/firebase/abt/AbtExperimentInfo;

    const-string v2, "experimentId"

    .line 169
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const-string v2, "variantId"

    .line 170
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 171
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    goto :goto_0

    .line 173
    :cond_0
    const-string v0, ""

    move-object v6, v0

    :goto_0
    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/google/firebase/abt/AbtExperimentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JJ)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    return-object v1

    .line 180
    .end local v7    # "experimentStartTime":Ljava/util/Date;
    .end local v8    # "triggerTimeoutInMillis":J
    .end local v10    # "timeToLiveInMillis":J
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/firebase/abt/AbtException;

    const-string v2, "Could not process experiment: one of the durations could not be converted into a long."

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/abt/AbtException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 177
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 178
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Lcom/google/firebase/abt/AbtException;

    const-string v2, "Could not process experiment: parsing experiment start time failed."

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/abt/AbtException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method static validateAbtExperimentInfo(Lcom/google/firebase/abt/AbtExperimentInfo;)V
    .locals 1
    .param p0, "experimentInfo"    # Lcom/google/firebase/abt/AbtExperimentInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lcom/google/firebase/abt/AbtExperimentInfo;->toStringMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/abt/AbtExperimentInfo;->validateExperimentInfoMap(Ljava/util/Map;)V

    .line 241
    return-void
.end method

.method private static validateExperimentInfoMap(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 225
    .local p0, "experimentInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v0, "missingKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/google/firebase/abt/AbtExperimentInfo;->ALL_REQUIRED_KEYS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 227
    .local v5, "key":Ljava/lang/String;
    invoke-interface {p0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 228
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    .end local v5    # "key":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 232
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    return-void

    .line 233
    :cond_2
    new-instance v1, Lcom/google/firebase/abt/AbtException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    .line 234
    const-string v3, "The following keys are missing from the experiment info map: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/firebase/abt/AbtException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method getExperimentId()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/google/firebase/abt/AbtExperimentInfo;->experimentId:Ljava/lang/String;

    return-object v0
.end method

.method getStartTimeInMillisSinceEpoch()J
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/google/firebase/abt/AbtExperimentInfo;->experimentStartTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method getTimeToLiveInMillis()J
    .locals 2

    .line 214
    iget-wide v0, p0, Lcom/google/firebase/abt/AbtExperimentInfo;->timeToLiveInMillis:J

    return-wide v0
.end method

.method getTriggerEventName()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/google/firebase/abt/AbtExperimentInfo;->triggerEventName:Ljava/lang/String;

    return-object v0
.end method

.method getTriggerTimeoutInMillis()J
    .locals 2

    .line 209
    iget-wide v0, p0, Lcom/google/firebase/abt/AbtExperimentInfo;->triggerTimeoutInMillis:J

    return-wide v0
.end method

.method getVariantId()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/google/firebase/abt/AbtExperimentInfo;->variantId:Ljava/lang/String;

    return-object v0
.end method

.method toConditionalUserProperty(Ljava/lang/String;)Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;
    .locals 3
    .param p1, "originService"    # Ljava/lang/String;

    .line 268
    new-instance v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    invoke-direct {v0}, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;-><init>()V

    .line 270
    .local v0, "conditionalUserProperty":Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;
    iput-object p1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->origin:Ljava/lang/String;

    .line 271
    invoke-virtual {p0}, Lcom/google/firebase/abt/AbtExperimentInfo;->getStartTimeInMillisSinceEpoch()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->creationTimestamp:J

    .line 272
    iget-object v1, p0, Lcom/google/firebase/abt/AbtExperimentInfo;->experimentId:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    .line 273
    iget-object v1, p0, Lcom/google/firebase/abt/AbtExperimentInfo;->variantId:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->value:Ljava/lang/Object;

    .line 277
    nop

    .line 278
    iget-object v1, p0, Lcom/google/firebase/abt/AbtExperimentInfo;->triggerEventName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/abt/AbtExperimentInfo;->triggerEventName:Ljava/lang/String;

    :goto_0
    iput-object v1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggerEventName:Ljava/lang/String;

    .line 279
    iget-wide v1, p0, Lcom/google/firebase/abt/AbtExperimentInfo;->triggerTimeoutInMillis:J

    iput-wide v1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggerTimeout:J

    .line 280
    iget-wide v1, p0, Lcom/google/firebase/abt/AbtExperimentInfo;->timeToLiveInMillis:J

    iput-wide v1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timeToLive:J

    .line 282
    return-object v0
.end method

.method toStringMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 252
    .local v0, "experimentInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/firebase/abt/AbtExperimentInfo;->experimentId:Ljava/lang/String;

    const-string v2, "experimentId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v1, p0, Lcom/google/firebase/abt/AbtExperimentInfo;->variantId:Ljava/lang/String;

    const-string v2, "variantId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v1, p0, Lcom/google/firebase/abt/AbtExperimentInfo;->triggerEventName:Ljava/lang/String;

    const-string v2, "triggerEvent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v1, Lcom/google/firebase/abt/AbtExperimentInfo;->protoTimestampStringParser:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/google/firebase/abt/AbtExperimentInfo;->experimentStartTime:Ljava/util/Date;

    .line 256
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 255
    const-string v2, "experimentStartTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-wide v1, p0, Lcom/google/firebase/abt/AbtExperimentInfo;->triggerTimeoutInMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "triggerTimeoutMillis"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-wide v1, p0, Lcom/google/firebase/abt/AbtExperimentInfo;->timeToLiveInMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timeToLiveMillis"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    return-object v0
.end method
