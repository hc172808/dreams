.class Lcom/facebook/appevents/suggestedevents/ViewObserver$1;
.super Ljava/lang/Object;
.source "ViewObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/suggestedevents/ViewObserver;->process()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/suggestedevents/ViewObserver;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/suggestedevents/ViewObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/appevents/suggestedevents/ViewObserver;

    .line 115
    iput-object p1, p0, Lcom/facebook/appevents/suggestedevents/ViewObserver$1;->this$0:Lcom/facebook/appevents/suggestedevents/ViewObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 119
    .local v0, "this":Lcom/facebook/appevents/suggestedevents/ViewObserver$1;
    :try_start_0
    iget-object v1, v0, Lcom/facebook/appevents/suggestedevents/ViewObserver$1;->this$0:Lcom/facebook/appevents/suggestedevents/ViewObserver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1}, Lcom/facebook/appevents/suggestedevents/ViewObserver;->access$000(Lcom/facebook/appevents/suggestedevents/ViewObserver;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/facebook/appevents/internal/AppEventUtility;->getRootView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 120
    .local v1, "rootView":Landroid/view/View;
    iget-object v2, v0, Lcom/facebook/appevents/suggestedevents/ViewObserver$1;->this$0:Lcom/facebook/appevents/suggestedevents/ViewObserver;

    invoke-static {v2}, Lcom/facebook/appevents/suggestedevents/ViewObserver;->access$000(Lcom/facebook/appevents/suggestedevents/ViewObserver;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 121
    .local v2, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_5

    if-nez v2, :cond_1

    goto :goto_1

    .line 125
    :cond_1
    nop

    .line 126
    invoke-static {v1}, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;->getAllClickableViews(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    .line 127
    .local v3, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 128
    .local v5, "view":Landroid/view/View;
    invoke-static {v5}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isSensitiveUserData(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 129
    goto :goto_0

    .line 132
    :cond_2
    invoke-static {v5}, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;->getTextOfViewRecursively(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, "text":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x12c

    if-gt v7, v8, :cond_3

    .line 134
    invoke-virtual {v2}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v1, v7}, Lcom/facebook/appevents/suggestedevents/ViewOnClickListener;->attachListener(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    .end local v0    # "this":Lcom/facebook/appevents/suggestedevents/ViewObserver$1;
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "text":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 139
    .end local v1    # "rootView":Landroid/view/View;
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_4
    goto :goto_2

    .line 122
    .restart local v1    # "rootView":Landroid/view/View;
    .restart local v2    # "activity":Landroid/app/Activity;
    :cond_5
    :goto_1
    return-void

    .line 137
    .end local v1    # "rootView":Landroid/view/View;
    .end local v2    # "activity":Landroid/app/Activity;
    :catch_0
    move-exception v1

    goto :goto_2

    .line 140
    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    .line 137
    .restart local v0    # "this":Lcom/facebook/appevents/suggestedevents/ViewObserver$1;
    :catch_1
    move-exception v1

    .line 140
    :goto_2
    return-void
.end method
