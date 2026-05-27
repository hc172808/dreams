.class Lcom/facebook/appevents/codeless/ViewIndexer$1;
.super Ljava/util/TimerTask;
.source "ViewIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/codeless/ViewIndexer;->schedule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/codeless/ViewIndexer;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/codeless/ViewIndexer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/appevents/codeless/ViewIndexer;

    .line 85
    iput-object p1, p0, Lcom/facebook/appevents/codeless/ViewIndexer$1;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer$1;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v0}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$000(Lcom/facebook/appevents/codeless/ViewIndexer;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 90
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/facebook/appevents/internal/AppEventUtility;->getRootView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 91
    .local v1, "rootView":Landroid/view/View;
    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 94
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "activityName":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessManager;->getIsAppIndexingEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 97
    return-void

    .line 100
    :cond_1
    invoke-static {}, Lcom/facebook/internal/InternalSettings;->isUnityApp()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 101
    invoke-static {}, Lcom/facebook/appevents/codeless/internal/UnityReflection;->captureViewHierarchy()V

    .line 102
    return-void

    .line 105
    :cond_2
    new-instance v3, Ljava/util/concurrent/FutureTask;

    new-instance v4, Lcom/facebook/appevents/codeless/ViewIndexer$ScreenshotTaker;

    invoke-direct {v4, v1}, Lcom/facebook/appevents/codeless/ViewIndexer$ScreenshotTaker;-><init>(Landroid/view/View;)V

    invoke-direct {v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 107
    .local v3, "screenshotFuture":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/facebook/appevents/codeless/ViewIndexer$1;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v4}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$100(Lcom/facebook/appevents/codeless/ViewIndexer;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    const-string v4, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 111
    .local v4, "screenshot":Ljava/lang/String;
    const-wide/16 v5, 0x1

    :try_start_1
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v7}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v5

    .line 114
    goto :goto_0

    .line 112
    :catch_0
    move-exception v5

    .line 113
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Failed to take screenshot."

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 119
    .local v5, "viewTree":Lorg/json/JSONObject;
    :try_start_3
    const-string v6, "screenname"

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v6, "screenshot"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 123
    .local v6, "viewArray":Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getDictionaryOfView(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v7

    .line 124
    .local v7, "rootViewInfo":Lorg/json/JSONObject;
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 125
    const-string/jumbo v8, "view"

    invoke-virtual {v5, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 128
    .end local v6    # "viewArray":Lorg/json/JSONArray;
    .end local v7    # "rootViewInfo":Lorg/json/JSONObject;
    goto :goto_1

    .line 126
    :catch_1
    move-exception v6

    .line 127
    .local v6, "e":Lorg/json/JSONException;
    :try_start_4
    invoke-static {}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Failed to create JSONObject"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, "tree":Ljava/lang/String;
    iget-object v7, p0, Lcom/facebook/appevents/codeless/ViewIndexer$1;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v7, v6}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$300(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 134
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "rootView":Landroid/view/View;
    .end local v2    # "activityName":Ljava/lang/String;
    .end local v3    # "screenshotFuture":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    .end local v4    # "screenshot":Ljava/lang/String;
    .end local v5    # "viewTree":Lorg/json/JSONObject;
    .end local v6    # "tree":Ljava/lang/String;
    goto :goto_3

    .line 92
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "rootView":Landroid/view/View;
    :cond_3
    :goto_2
    return-void

    .line 132
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "rootView":Landroid/view/View;
    :catch_2
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UI Component tree indexing failure!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method
