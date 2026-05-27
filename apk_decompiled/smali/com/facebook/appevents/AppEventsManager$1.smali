.class final Lcom/facebook/appevents/AppEventsManager$1;
.super Ljava/lang/Object;
.source "AppEventsManager.java"

# interfaces
.implements Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventsManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 0

    .line 107
    return-void
.end method

.method public onSuccess(Lcom/facebook/internal/FetchedAppSettings;)V
    .locals 2
    .param p1, "fetchedAppSettings"    # Lcom/facebook/internal/FetchedAppSettings;

    .line 50
    sget-object v0, Lcom/facebook/internal/FeatureManager$Feature;->AAM:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v1, Lcom/facebook/appevents/AppEventsManager$1$1;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/AppEventsManager$1$1;-><init>(Lcom/facebook/appevents/AppEventsManager$1;)V

    invoke-static {v0, v1}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 61
    sget-object v0, Lcom/facebook/internal/FeatureManager$Feature;->RestrictiveDataFiltering:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v1, Lcom/facebook/appevents/AppEventsManager$1$2;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/AppEventsManager$1$2;-><init>(Lcom/facebook/appevents/AppEventsManager$1;)V

    invoke-static {v0, v1}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 72
    sget-object v0, Lcom/facebook/internal/FeatureManager$Feature;->PrivacyProtection:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v1, Lcom/facebook/appevents/AppEventsManager$1$3;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/AppEventsManager$1$3;-><init>(Lcom/facebook/appevents/AppEventsManager$1;)V

    invoke-static {v0, v1}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 83
    sget-object v0, Lcom/facebook/internal/FeatureManager$Feature;->EventDeactivation:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v1, Lcom/facebook/appevents/AppEventsManager$1$4;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/AppEventsManager$1$4;-><init>(Lcom/facebook/appevents/AppEventsManager$1;)V

    invoke-static {v0, v1}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 94
    sget-object v0, Lcom/facebook/internal/FeatureManager$Feature;->IapLogging:Lcom/facebook/internal/FeatureManager$Feature;

    new-instance v1, Lcom/facebook/appevents/AppEventsManager$1$5;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/AppEventsManager$1$5;-><init>(Lcom/facebook/appevents/AppEventsManager$1;)V

    invoke-static {v0, v1}, Lcom/facebook/internal/FeatureManager;->checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 104
    return-void
.end method
