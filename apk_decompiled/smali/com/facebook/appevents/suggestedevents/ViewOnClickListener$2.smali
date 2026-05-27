.class Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;
.super Ljava/lang/Object;
.source "ViewOnClickListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;->predictAndProcess(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;

.field final synthetic val$buttonText:Ljava/lang/String;

.field final synthetic val$pathID:Ljava/lang/String;

.field final synthetic val$viewData:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;

    .line 137
    iput-object p1, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->this$0:Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;

    iput-object p2, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->val$viewData:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->val$buttonText:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->val$pathID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 142
    .local v0, "this":Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1}, Lcom/facebook/internal/Utility;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "appName":Ljava/lang/String;
    iget-object v2, v0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->val$viewData:Lorg/json/JSONObject;

    invoke-static {v2, v1}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->getDenseFeatures(Lorg/json/JSONObject;Ljava/lang/String;)[F

    move-result-object v2

    .line 144
    .local v2, "dense":[F
    iget-object v3, v0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->val$buttonText:Ljava/lang/String;

    iget-object v4, v0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->this$0:Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;

    .line 145
    invoke-static {v4}, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;->access$100(Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->getTextFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "textFeature":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 147
    return-void

    .line 150
    :cond_1
    sget-object v4, Lcom/facebook/appevents/ml/ModelManager$Task;->MTML_APP_EVENT_PREDICTION:Lcom/facebook/appevents/ml/ModelManager$Task;

    const/4 v5, 0x1

    new-array v6, v5, [[F

    const/4 v7, 0x0

    aput-object v2, v6, v7

    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v7

    .line 151
    invoke-static {v4, v6, v5}, Lcom/facebook/appevents/ml/ModelManager;->predict(Lcom/facebook/appevents/ml/ModelManager$Task;[[F[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "predictedEvents":[Ljava/lang/String;
    if-nez v4, :cond_2

    .line 156
    return-void

    .line 159
    :cond_2
    aget-object v5, v4, v7

    .line 160
    .local v5, "predictedEvent":Ljava/lang/String;
    iget-object v6, v0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->val$pathID:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/facebook/appevents/suggestedevents/PredictionHistoryManager;->addPrediction(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v6, "other"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 162
    iget-object v6, v0, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;->val$buttonText:Ljava/lang/String;

    invoke-static {v5, v6, v2}, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;->access$000(Ljava/lang/String;Ljava/lang/String;[F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    .end local v0    # "this":Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;
    .end local v1    # "appName":Ljava/lang/String;
    .end local v2    # "dense":[F
    .end local v3    # "textFeature":Ljava/lang/String;
    .end local v4    # "predictedEvents":[Ljava/lang/String;
    .end local v5    # "predictedEvent":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    .line 164
    .restart local v0    # "this":Lcom/facebook/appevents/suggestedevents/ViewOnClickListener$2;
    :catch_1
    move-exception v1

    .line 167
    :goto_0
    return-void
.end method
