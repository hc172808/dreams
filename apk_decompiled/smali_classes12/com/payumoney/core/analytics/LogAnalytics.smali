.class public Lcom/payumoney/core/analytics/LogAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 27
    .local p2, "eventData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "clevertap"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "com.payumoney.core.analytics"

    invoke-static {p0, v0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/payumoney/core/analytics/AnalyticsDataManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->logEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 30
    :cond_0
    return-void
.end method

.method public static pushAllPendingEvents(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .line 38
    const-string v0, "clevertap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const-string v0, "com.payumoney.core.analytics"

    invoke-static {p0, v0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/payumoney/core/analytics/AnalyticsDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payumoney/core/analytics/AnalyticsDataManager;->pushAllPendingEvents()V

    .line 42
    :cond_0
    return-void
.end method
