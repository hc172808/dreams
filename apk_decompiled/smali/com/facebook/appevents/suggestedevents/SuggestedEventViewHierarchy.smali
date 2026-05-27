.class Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;
.super Ljava/lang/Object;
.source "SuggestedEventViewHierarchy.java"


# static fields
.field static final TAG:Ljava/lang/String;

.field private static final blacklistedViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 46
    const-class v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/widget/Switch;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/widget/Spinner;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Landroid/widget/DatePicker;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Landroid/widget/TimePicker;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Landroid/widget/RadioGroup;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Landroid/widget/RatingBar;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Landroid/widget/EditText;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, Landroid/widget/AdapterView;

    aput-object v3, v1, v2

    .line 49
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;->blacklistedViews:Ljava/util/List;

    .line 47
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAllClickableViews(Landroid/view/View;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 103
    .local p0, "view":Landroid/view/View;
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v1, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    sget-object v3, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;->blacklistedViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 106
    .local v4, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    invoke-virtual {v4, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 107
    return-object v1

    .line 109
    .end local v4    # "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    :cond_1
    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 112
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_3
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getChildrenOfView(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    .line 116
    .local v3, "children":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 117
    .local v5, "child":Landroid/view/View;
    invoke-static {v5}, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;->getAllClickableViews(Landroid/view/View;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    nop

    .end local v5    # "child":Landroid/view/View;
    goto :goto_1

    .line 119
    :cond_4
    return-object v1

    .end local v1    # "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v3    # "children":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local p0    # "view":Landroid/view/View;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static getDictionaryOfView(Landroid/view/View;Landroid/view/View;)Lorg/json/JSONObject;
    .locals 8

    const-class v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 60
    .local p0, "view":Landroid/view/View;
    .local p1, "clickedView":Landroid/view/View;
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .local v1, "json":Lorg/json/JSONObject;
    if-ne p0, p1, :cond_1

    .line 63
    :try_start_1
    const-string v3, "is_interacted"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 65
    :cond_1
    invoke-static {p0, v1}, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;->updateBasicInfo(Landroid/view/View;Lorg/json/JSONObject;)V

    .line 67
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 68
    .local v3, "childViews":Lorg/json/JSONArray;
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getChildrenOfView(Landroid/view/View;)Ljava/util/List;

    move-result-object v4

    .line 69
    .local v4, "children":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 70
    .local v6, "child":Landroid/view/View;
    invoke-static {v6, p1}, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;->getDictionaryOfView(Landroid/view/View;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v7

    .line 71
    .local v7, "childInfo":Lorg/json/JSONObject;
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 72
    nop

    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "childInfo":Lorg/json/JSONObject;
    goto :goto_0

    .line 73
    :cond_2
    const-string v5, "childviews"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    nop

    .end local v3    # "childViews":Lorg/json/JSONArray;
    .end local v4    # "children":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 78
    :goto_1
    return-object v1

    .end local v1    # "json":Lorg/json/JSONObject;
    .end local p0    # "view":Landroid/view/View;
    .end local p1    # "clickedView":Landroid/view/View;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static getTextOfChildren(Landroid/view/View;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 132
    .local p0, "view":Landroid/view/View;
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v1, "childrenText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getChildrenOfView(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    .line 134
    .local v3, "childrenView":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 135
    .local v5, "childView":Landroid/view/View;
    invoke-static {v5}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, "childText":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 137
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_1
    invoke-static {v5}, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;->getTextOfChildren(Landroid/view/View;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    nop

    .end local v5    # "childView":Landroid/view/View;
    .end local v6    # "childText":Ljava/lang/String;
    goto :goto_0

    .line 141
    :cond_2
    return-object v1

    .end local v1    # "childrenText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "childrenView":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local p0    # "view":Landroid/view/View;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static getTextOfViewRecursively(Landroid/view/View;)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 123
    .local p0, "hostView":Landroid/view/View;
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 125
    return-object v1

    .line 127
    :cond_1
    invoke-static {p0}, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;->getTextOfChildren(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    .line 128
    .local v3, "childrenText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, " "

    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local v1    # "text":Ljava/lang/String;
    .end local v3    # "childrenText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p0    # "hostView":Landroid/view/View;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static updateBasicInfo(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 5

    const-class v0, Lcom/facebook/appevents/suggestedevents/SuggestedEventViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 83
    .local p0, "view":Landroid/view/View;
    .local p1, "json":Lorg/json/JSONObject;
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "text":Ljava/lang/String;
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getHintOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "hint":Ljava/lang/String;
    const-string v3, "classname"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v3, "classtypebitmask"

    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getClassTypeBitmask(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 89
    const-string/jumbo v3, "text"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 92
    const-string v3, "hint"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    :cond_2
    instance-of v3, p0, Landroid/widget/EditText;

    if-eqz v3, :cond_3

    .line 95
    const-string v3, "inputtype"

    move-object v4, p0

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getInputType()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "hint":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 100
    .end local p0    # "view":Landroid/view/View;
    .end local p1    # "json":Lorg/json/JSONObject;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    .line 97
    .restart local p0    # "view":Landroid/view/View;
    .restart local p1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 100
    :goto_0
    return-void
.end method
