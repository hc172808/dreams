.class Lcom/facebook/appevents/AppEventsManager$1$5;
.super Ljava/lang/Object;
.source "AppEventsManager.java"

# interfaces
.implements Lcom/facebook/internal/FeatureManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventsManager$1;->onSuccess(Lcom/facebook/internal/FetchedAppSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/AppEventsManager$1;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/AppEventsManager$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/appevents/AppEventsManager$1;

    .line 96
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsManager$1$5;->this$0:Lcom/facebook/appevents/AppEventsManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 99
    if-eqz p1, :cond_0

    .line 100
    invoke-static {}, Lcom/facebook/appevents/iap/InAppPurchaseManager;->enableAutoLogging()V

    .line 102
    :cond_0
    return-void
.end method
