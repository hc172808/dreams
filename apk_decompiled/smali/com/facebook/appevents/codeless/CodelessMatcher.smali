.class Lcom/facebook/appevents/codeless/CodelessMatcher;
.super Ljava/lang/Object;
.source "CodelessMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;,
        Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;
    }
.end annotation


# static fields
.field private static final CURRENT_CLASS_NAME:Ljava/lang/String; = "."

.field private static final PARENT_CLASS_NAME:Ljava/lang/String; = ".."

.field private static final TAG:Ljava/lang/String;

.field private static codelessMatcher:Lcom/facebook/appevents/codeless/CodelessMatcher;


# instance fields
.field private activitiesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private activityToListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private listenerSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final uiThreadHandler:Landroid/os/Handler;

.field private viewMatchers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lcom/facebook/appevents/codeless/CodelessMatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/codeless/CodelessMatcher;->TAG:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/appevents/codeless/CodelessMatcher;->codelessMatcher:Lcom/facebook/appevents/codeless/CodelessMatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->uiThreadHandler:Landroid/os/Handler;

    .line 76
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activitiesSet:Ljava/util/Set;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->viewMatchers:Ljava/util/Set;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->listenerSet:Ljava/util/HashSet;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activityToListenerMap:Ljava/util/HashMap;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/appevents/codeless/CodelessMatcher;)V
    .locals 2

    const-class v0, Lcom/facebook/appevents/codeless/CodelessMatcher;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 61
    .local p0, "x0":Lcom/facebook/appevents/codeless/CodelessMatcher;
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/appevents/codeless/CodelessMatcher;->matchViews()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .end local p0    # "x0":Lcom/facebook/appevents/codeless/CodelessMatcher;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/facebook/appevents/codeless/CodelessMatcher;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 61
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessMatcher;->TAG:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static declared-synchronized getInstance()Lcom/facebook/appevents/codeless/CodelessMatcher;
    .locals 3

    const-class v0, Lcom/facebook/appevents/codeless/CodelessMatcher;

    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    .line 83
    :cond_0
    :try_start_1
    sget-object v1, Lcom/facebook/appevents/codeless/CodelessMatcher;->codelessMatcher:Lcom/facebook/appevents/codeless/CodelessMatcher;

    if-nez v1, :cond_1

    .line 84
    new-instance v1, Lcom/facebook/appevents/codeless/CodelessMatcher;

    invoke-direct {v1}, Lcom/facebook/appevents/codeless/CodelessMatcher;-><init>()V

    sput-object v1, Lcom/facebook/appevents/codeless/CodelessMatcher;->codelessMatcher:Lcom/facebook/appevents/codeless/CodelessMatcher;

    .line 86
    :cond_1
    sget-object v1, Lcom/facebook/appevents/codeless/CodelessMatcher;->codelessMatcher:Lcom/facebook/appevents/codeless/CodelessMatcher;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v2

    .line 82
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getParameters(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)Landroid/os/Bundle;
    .locals 18

    const-class v1, Lcom/facebook/appevents/codeless/CodelessMatcher;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object/from16 v0, p0

    .local v0, "mapping":Lcom/facebook/appevents/codeless/internal/EventBinding;
    move-object/from16 v4, p2

    .local v4, "hostView":Landroid/view/View;
    move-object/from16 v10, p1

    .line 127
    .local v10, "rootView":Landroid/view/View;
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v15, v3

    .line 129
    .local v15, "params":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 130
    return-object v15

    .line 133
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getViewParameters()Ljava/util/List;

    move-result-object v3

    move-object/from16 v16, v3

    .line 134
    .local v16, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/internal/ParameterComponent;>;"
    if-eqz v16, :cond_8

    .line 135
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/appevents/codeless/internal/ParameterComponent;

    move-object v14, v3

    .line 136
    .local v14, "component":Lcom/facebook/appevents/codeless/internal/ParameterComponent;
    iget-object v3, v14, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->value:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v14, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 137
    iget-object v3, v14, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->name:Ljava/lang/String;

    iget-object v5, v14, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->value:Ljava/lang/String;

    invoke-virtual {v15, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 138
    :cond_2
    iget-object v3, v14, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->path:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 140
    iget-object v3, v14, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->pathType:Ljava/lang/String;

    move-object v13, v3

    .line 141
    .local v13, "pathType":Ljava/lang/String;
    const-string v3, "relative"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 142
    iget-object v5, v14, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->path:Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 144
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    .line 143
    move-object v3, v0

    invoke-static/range {v3 .. v8}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findViewByPath(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object v5, v3

    move-object v6, v13

    move-object v3, v14

    .local v3, "matchedViews":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;>;"
    goto :goto_1

    .line 146
    .end local v3    # "matchedViews":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;>;"
    :cond_3
    iget-object v11, v14, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->path:Ljava/util/List;

    const/4 v12, 0x0

    const/4 v3, -0x1

    .line 148
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 147
    move-object v9, v0

    move-object v6, v13

    .end local v13    # "pathType":Ljava/lang/String;
    .local v6, "pathType":Ljava/lang/String;
    move v13, v3

    move-object v3, v14

    .end local v14    # "component":Lcom/facebook/appevents/codeless/internal/ParameterComponent;
    .local v3, "component":Lcom/facebook/appevents/codeless/internal/ParameterComponent;
    move-object v14, v5

    invoke-static/range {v9 .. v14}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findViewByPath(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 151
    .local v5, "matchedViews":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;

    .line 152
    .local v8, "view":Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;
    invoke-virtual {v8}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getView()Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_4

    .line 153
    goto :goto_2

    .line 155
    :cond_4
    invoke-virtual {v8}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getView()Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    .line 156
    .local v9, "text":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 157
    iget-object v7, v3, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->name:Ljava/lang/String;

    invoke-virtual {v15, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    goto :goto_3

    .line 160
    .end local v8    # "view":Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;
    .end local v9    # "text":Ljava/lang/String;
    :cond_5
    goto :goto_2

    .line 138
    .end local v3    # "component":Lcom/facebook/appevents/codeless/internal/ParameterComponent;
    .end local v5    # "matchedViews":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;>;"
    .end local v6    # "pathType":Ljava/lang/String;
    .restart local v14    # "component":Lcom/facebook/appevents/codeless/internal/ParameterComponent;
    :cond_6
    move-object v3, v14

    .line 162
    .end local v14    # "component":Lcom/facebook/appevents/codeless/internal/ParameterComponent;
    :cond_7
    :goto_3
    goto/16 :goto_0

    .line 165
    :cond_8
    return-object v15

    .end local v0    # "mapping":Lcom/facebook/appevents/codeless/internal/EventBinding;
    .end local v4    # "hostView":Landroid/view/View;
    .end local v10    # "rootView":Landroid/view/View;
    .end local v15    # "params":Landroid/os/Bundle;
    .end local v16    # "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/internal/ParameterComponent;>;"
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private matchViews()V
    .locals 8

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 183
    .local v0, "this":Lcom/facebook/appevents/codeless/CodelessMatcher;
    :try_start_0
    iget-object v1, v0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activitiesSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 184
    .local v2, "activity":Landroid/app/Activity;
    if-eqz v2, :cond_1

    .line 185
    invoke-static {v2}, Lcom/facebook/appevents/internal/AppEventUtility;->getRootView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v3

    .line 186
    .local v3, "rootView":Landroid/view/View;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "activityName":Ljava/lang/String;
    new-instance v5, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;

    iget-object v6, v0, Lcom/facebook/appevents/codeless/CodelessMatcher;->uiThreadHandler:Landroid/os/Handler;

    iget-object v7, v0, Lcom/facebook/appevents/codeless/CodelessMatcher;->listenerSet:Ljava/util/HashSet;

    invoke-direct {v5, v3, v6, v7, v4}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;-><init>(Landroid/view/View;Landroid/os/Handler;Ljava/util/HashSet;Ljava/lang/String;)V

    .line 188
    .local v5, "matcher":Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;
    iget-object v6, v0, Lcom/facebook/appevents/codeless/CodelessMatcher;->viewMatchers:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    .end local v0    # "this":Lcom/facebook/appevents/codeless/CodelessMatcher;
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "rootView":Landroid/view/View;
    .end local v4    # "activityName":Ljava/lang/String;
    .end local v5    # "matcher":Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;
    :cond_1
    goto :goto_0

    .line 191
    :cond_2
    return-void

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private startTracking()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 169
    .local v0, "this":Lcom/facebook/appevents/codeless/CodelessMatcher;
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 170
    invoke-direct {v0}, Lcom/facebook/appevents/codeless/CodelessMatcher;->matchViews()V

    goto :goto_0

    .line 172
    .end local v0    # "this":Lcom/facebook/appevents/codeless/CodelessMatcher;
    :cond_1
    iget-object v1, v0, Lcom/facebook/appevents/codeless/CodelessMatcher;->uiThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/appevents/codeless/CodelessMatcher$1;

    invoke-direct {v2, v0}, Lcom/facebook/appevents/codeless/CodelessMatcher$1;-><init>(Lcom/facebook/appevents/codeless/CodelessMatcher;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public add(Landroid/app/Activity;)V
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 91
    .local v0, "this":Lcom/facebook/appevents/codeless/CodelessMatcher;
    .local p1, "activity":Landroid/app/Activity;
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/InternalSettings;->isUnityApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    return-void

    .line 94
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 97
    iget-object v1, v0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activitiesSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v1, v0, Lcom/facebook/appevents/codeless/CodelessMatcher;->listenerSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 99
    iget-object v1, v0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activityToListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    iget-object v1, v0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activityToListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    iput-object v1, v0, Lcom/facebook/appevents/codeless/CodelessMatcher;->listenerSet:Ljava/util/HashSet;

    .line 102
    .end local v0    # "this":Lcom/facebook/appevents/codeless/CodelessMatcher;
    :cond_2
    invoke-direct {v0}, Lcom/facebook/appevents/codeless/CodelessMatcher;->startTracking()V

    .line 103
    return-void

    .line 95
    :cond_3
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Can\'t add activity to CodelessMatcher on non-UI thread"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local p1    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public destroy(Landroid/app/Activity;)V
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 121
    .local v0, "this":Lcom/facebook/appevents/codeless/CodelessMatcher;
    .local p1, "activity":Landroid/app/Activity;
    :try_start_0
    iget-object v1, v0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activityToListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    return-void

    .end local v0    # "this":Lcom/facebook/appevents/codeless/CodelessMatcher;
    .end local p1    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public remove(Landroid/app/Activity;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 107
    .local v0, "this":Lcom/facebook/appevents/codeless/CodelessMatcher;
    .local p1, "activity":Landroid/app/Activity;
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/InternalSettings;->isUnityApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    return-void

    .line 110
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 113
    iget-object v1, v0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activitiesSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 114
    iget-object v1, v0, Lcom/facebook/appevents/codeless/CodelessMatcher;->viewMatchers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 115
    iget-object v1, v0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activityToListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Lcom/facebook/appevents/codeless/CodelessMatcher;->listenerSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v1, v0, Lcom/facebook/appevents/codeless/CodelessMatcher;->listenerSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 117
    return-void

    .line 111
    .end local v0    # "this":Lcom/facebook/appevents/codeless/CodelessMatcher;
    :cond_2
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Can\'t remove activity from CodelessMatcher on non-UI thread"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local p1    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
