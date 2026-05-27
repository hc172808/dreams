.class public Lcom/facebook/appevents/codeless/internal/ViewHierarchy;
.super Ljava/lang/Object;
.source "ViewHierarchy.java"


# static fields
.field private static final CLASS_RCTROOTVIEW:Ljava/lang/String; = "com.facebook.react.ReactRootView"

.field private static final CLASS_RCTTEXTVIEW:Ljava/lang/String; = "com.facebook.react.views.view.ReactTextView"

.field private static final CLASS_RCTVIEWGROUP:Ljava/lang/String; = "com.facebook.react.views.view.ReactViewGroup"

.field private static final CLASS_TOUCHTARGETHELPER:Ljava/lang/String; = "com.facebook.react.uimanager.TouchTargetHelper"

.field private static final ICON_MAX_EDGE_LENGTH:I = 0x2c

.field private static final METHOD_FIND_TOUCHTARGET_VIEW:Ljava/lang/String; = "findTouchTargetView"

.field private static RCTRootViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static methodFindTouchTargetView:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->RCTRootViewReference:Ljava/lang/ref/WeakReference;

    .line 80
    sput-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->methodFindTouchTargetView:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findRCTRootView(Landroid/view/View;)Landroid/view/View;
    .locals 4

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 496
    .local p0, "view":Landroid/view/View;
    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    .line 497
    :try_start_0
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->isRCTRootView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    return-object p0

    .line 500
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 501
    .local v1, "viewParent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 502
    move-object v3, v1

    check-cast v3, Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p0, v3

    .line 506
    .end local v1    # "viewParent":Landroid/view/ViewParent;
    goto :goto_0

    .line 507
    .end local p0    # "view":Landroid/view/View;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .restart local p0    # "view":Landroid/view/View;
    :cond_2
    return-object v2
.end method

.method public static getChildrenOfView(Landroid/view/View;)Ljava/util/List;
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

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 97
    .local p0, "view":Landroid/view/View;
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 100
    move-object v3, p0

    check-cast v3, Landroid/view/ViewGroup;

    .line 101
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 102
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 103
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 107
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    .end local v4    # "count":I
    .end local v5    # "i":I
    :cond_1
    return-object v1

    .end local v1    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local p0    # "view":Landroid/view/View;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static getClassTypeBitmask(Landroid/view/View;)I
    .locals 4

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 202
    .local p0, "view":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    .line 203
    .local v1, "bitmask":I
    :try_start_0
    instance-of v3, p0, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 204
    or-int/lit8 v1, v1, 0x2

    .line 207
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 208
    or-int/lit8 v1, v1, 0x20

    .line 210
    :cond_2
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->isAdapterViewItem(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 211
    or-int/lit16 v1, v1, 0x200

    .line 214
    :cond_3
    instance-of v3, p0, Landroid/widget/TextView;

    if-eqz v3, :cond_6

    .line 215
    or-int/lit16 v1, v1, 0x400

    .line 216
    or-int/lit8 v1, v1, 0x1

    .line 218
    instance-of v3, p0, Landroid/widget/Button;

    if-eqz v3, :cond_5

    .line 219
    or-int/lit8 v1, v1, 0x4

    .line 221
    instance-of v3, p0, Landroid/widget/Switch;

    if-eqz v3, :cond_4

    .line 222
    or-int/lit16 v1, v1, 0x2000

    goto :goto_0

    .line 223
    :cond_4
    instance-of v3, p0, Landroid/widget/CheckBox;

    if-eqz v3, :cond_5

    .line 224
    const v3, 0x8000

    or-int/2addr v1, v3

    .line 228
    :cond_5
    :goto_0
    instance-of v0, p0, Landroid/widget/EditText;

    if-eqz v0, :cond_b

    .line 229
    or-int/lit16 v1, v1, 0x800

    goto :goto_2

    .line 231
    :cond_6
    instance-of v3, p0, Landroid/widget/Spinner;

    if-nez v3, :cond_a

    instance-of v3, p0, Landroid/widget/DatePicker;

    if-eqz v3, :cond_7

    goto :goto_1

    .line 233
    :cond_7
    instance-of v3, p0, Landroid/widget/RatingBar;

    if-eqz v3, :cond_8

    .line 234
    const/high16 v0, 0x10000

    or-int/2addr v1, v0

    goto :goto_2

    .line 235
    :cond_8
    instance-of v3, p0, Landroid/widget/RadioGroup;

    if-eqz v3, :cond_9

    .line 236
    or-int/lit16 v1, v1, 0x4000

    goto :goto_2

    .line 237
    :cond_9
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_b

    sget-object v3, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->RCTRootViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {p0, v3}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->isRCTButton(Landroid/view/View;Landroid/view/View;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_b

    .line 238
    or-int/lit8 v1, v1, 0x40

    goto :goto_2

    .line 232
    :cond_a
    :goto_1
    or-int/lit16 v1, v1, 0x1000

    .line 241
    :cond_b
    :goto_2
    return v1

    .end local v1    # "bitmask":I
    .end local p0    # "view":Landroid/view/View;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static getDictionaryOfView(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 8

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 177
    .local p0, "view":Landroid/view/View;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.facebook.react.ReactRootView"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->RCTRootViewReference:Ljava/lang/ref/WeakReference;

    .line 181
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_1
    invoke-static {p0, v1}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->updateBasicInfoOfView(Landroid/view/View;Lorg/json/JSONObject;)V

    .line 186
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 187
    .local v3, "childViews":Lorg/json/JSONArray;
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getChildrenOfView(Landroid/view/View;)Ljava/util/List;

    move-result-object v4

    .line 188
    .local v4, "children":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 189
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 190
    .local v6, "child":Landroid/view/View;
    invoke-static {v6}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getDictionaryOfView(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v7

    .line 191
    .local v7, "childInfo":Lorg/json/JSONObject;
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 188
    nop

    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "childInfo":Lorg/json/JSONObject;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 193
    .end local v5    # "i":I
    :cond_2
    const-string v5, "childviews"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    .end local v3    # "childViews":Lorg/json/JSONArray;
    .end local v4    # "children":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    goto :goto_1

    .line 194
    :catch_0
    move-exception v3

    .line 195
    .local v3, "e":Lorg/json/JSONException;
    :try_start_2
    sget-object v4, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    const-string v5, "Failed to create JSONObject for view."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v1

    .end local v1    # "json":Lorg/json/JSONObject;
    .end local p0    # "view":Landroid/view/View;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static getDimensionOfView(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 6

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 324
    .local p0, "view":Landroid/view/View;
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    .local v1, "dimension":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v3, "top"

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 328
    const-string v3, "left"

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 329
    const-string/jumbo v3, "width"

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 330
    const-string v3, "height"

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 331
    const-string v3, "scrollx"

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 332
    const-string v3, "scrolly"

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 333
    const-string/jumbo v3, "visibility"

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    goto :goto_0

    .line 334
    :catch_0
    move-exception v3

    .line 335
    .local v3, "e":Lorg/json/JSONException;
    :try_start_2
    sget-object v4, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    const-string v5, "Failed to create JSONObject for dimension."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_0
    return-object v1

    .end local v1    # "dimension":Lorg/json/JSONObject;
    .end local p0    # "view":Landroid/view/View;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static getExistingClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 539
    .local p0, "className":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 541
    .end local p0    # "className":Ljava/lang/String;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2

    .line 540
    .restart local p0    # "className":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    return-object v2
.end method

.method public static getExistingOnClickListener(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 8

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 344
    .local p0, "view":Landroid/view/View;
    :cond_0
    :try_start_0
    const-string v1, "android.view.View"

    .line 345
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "mListenerInfo"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 346
    .local v1, "listenerInfoField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 347
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 350
    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 351
    .local v4, "listenerObj":Ljava/lang/Object;
    if-nez v4, :cond_2

    .line 352
    return-object v2

    .line 355
    :cond_2
    const/4 v5, 0x0

    .line 356
    .local v5, "listener":Landroid/view/View$OnClickListener;
    const-string v6, "android.view.View$ListenerInfo"

    .line 357
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mOnClickListener"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 358
    .local v6, "listenerField":Ljava/lang/reflect/Field;
    if-eqz v6, :cond_3

    .line 359
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 360
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnClickListener;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v3

    .line 363
    :cond_3
    return-object v5

    .line 371
    .end local v1    # "listenerInfoField":Ljava/lang/reflect/Field;
    .end local v4    # "listenerObj":Ljava/lang/Object;
    .end local v5    # "listener":Landroid/view/View$OnClickListener;
    .end local v6    # "listenerField":Ljava/lang/reflect/Field;
    .end local p0    # "view":Landroid/view/View;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2

    .line 368
    .restart local p0    # "view":Landroid/view/View;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 366
    :catch_1
    move-exception v0

    goto :goto_0

    .line 364
    :catch_2
    move-exception v0

    .line 370
    :goto_0
    nop

    .line 371
    :goto_1
    return-object v2
.end method

.method public static getExistingOnTouchListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 8

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 418
    .local p0, "view":Landroid/view/View;
    :cond_0
    :try_start_0
    const-string v1, "android.view.View"

    .line 419
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "mListenerInfo"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 420
    .local v1, "listenerInfoField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 421
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 424
    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 425
    .local v4, "listenerObj":Ljava/lang/Object;
    if-nez v4, :cond_2

    .line 426
    return-object v2

    .line 429
    :cond_2
    const/4 v5, 0x0

    .line 430
    .local v5, "listener":Landroid/view/View$OnTouchListener;
    const-string v6, "android.view.View$ListenerInfo"

    .line 431
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mOnTouchListener"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 432
    .local v6, "listenerField":Ljava/lang/reflect/Field;
    if-eqz v6, :cond_3

    .line 433
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 434
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnTouchListener;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v3

    .line 437
    :cond_3
    return-object v5

    .line 445
    .end local v1    # "listenerInfoField":Ljava/lang/reflect/Field;
    .end local v4    # "listenerObj":Ljava/lang/Object;
    .end local v5    # "listener":Landroid/view/View$OnTouchListener;
    .end local v6    # "listenerField":Ljava/lang/reflect/Field;
    .end local p0    # "view":Landroid/view/View;
    :catchall_0
    move-exception p0

    goto :goto_2

    .line 442
    .restart local p0    # "view":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 443
    .local v1, "e":Ljava/lang/IllegalAccessException;
    :try_start_1
    sget-object v3, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 440
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 441
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 438
    :catch_2
    move-exception v1

    .line 439
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    sget-object v3, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    nop

    .line 445
    :goto_1
    return-object v2

    .end local p0    # "view":Landroid/view/View;
    :goto_2
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static getHintOfView(Landroid/view/View;)Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 313
    .local p0, "view":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    .line 314
    .local v1, "hintObj":Ljava/lang/CharSequence;
    :try_start_0
    instance-of v3, p0, Landroid/widget/EditText;

    if-eqz v3, :cond_1

    .line 315
    move-object v3, p0

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 316
    :cond_1
    instance-of v3, p0, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 317
    move-object v3, p0

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v1, v3

    .line 320
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    const-string v0, ""

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object v0

    .end local v1    # "hintObj":Ljava/lang/CharSequence;
    .end local p0    # "view":Landroid/view/View;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static getParentOfView(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 4

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 84
    .local p0, "view":Landroid/view/View;
    :cond_0
    if-nez p0, :cond_1

    .line 85
    return-object v2

    .line 88
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 89
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 90
    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 93
    :cond_2
    return-object v2

    .end local v1    # "parent":Landroid/view/ViewParent;
    .end local p0    # "view":Landroid/view/View;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static getTextOfView(Landroid/view/View;)Ljava/lang/String;
    .locals 13

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 265
    .local p0, "view":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    .line 266
    .local v1, "textObj":Ljava/lang/Object;
    :try_start_0
    instance-of v3, p0, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 267
    move-object v3, p0

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object v1, v3

    .line 269
    instance-of v3, p0, Landroid/widget/Switch;

    if-eqz v3, :cond_a

    .line 270
    move-object v3, p0

    check-cast v3, Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    .line 271
    .local v3, "isOn":Z
    if-eqz v3, :cond_1

    const-string v4, "1"

    goto :goto_0

    :cond_1
    const-string v4, "0"

    :goto_0
    move-object v1, v4

    .line 272
    .end local v3    # "isOn":Z
    goto/16 :goto_3

    .line 273
    :cond_2
    instance-of v3, p0, Landroid/widget/Spinner;

    if-eqz v3, :cond_4

    .line 274
    move-object v3, p0

    check-cast v3, Landroid/widget/Spinner;

    .line 275
    .local v3, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v3}, Landroid/widget/Spinner;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 276
    move-object v4, p0

    check-cast v4, Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    .line 277
    .local v4, "selectedItem":Ljava/lang/Object;
    if-eqz v4, :cond_3

    .line 278
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 281
    .end local v3    # "spinner":Landroid/widget/Spinner;
    .end local v4    # "selectedItem":Ljava/lang/Object;
    :cond_3
    goto/16 :goto_3

    :cond_4
    instance-of v3, p0, Landroid/widget/DatePicker;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_5

    .line 282
    move-object v3, p0

    check-cast v3, Landroid/widget/DatePicker;

    .line 283
    .local v3, "picker":Landroid/widget/DatePicker;
    invoke-virtual {v3}, Landroid/widget/DatePicker;->getYear()I

    move-result v7

    .line 284
    .local v7, "y":I
    invoke-virtual {v3}, Landroid/widget/DatePicker;->getMonth()I

    move-result v8

    .line 285
    .local v8, "m":I
    invoke-virtual {v3}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v9

    .line 286
    .local v9, "d":I
    const-string v10, "%04d-%02d-%02d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v11, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v11, v4

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 287
    .end local v3    # "picker":Landroid/widget/DatePicker;
    .end local v7    # "y":I
    .end local v8    # "m":I
    .end local v9    # "d":I
    goto/16 :goto_3

    :cond_5
    instance-of v3, p0, Landroid/widget/TimePicker;

    if-eqz v3, :cond_6

    .line 288
    move-object v3, p0

    check-cast v3, Landroid/widget/TimePicker;

    .line 289
    .local v3, "picker":Landroid/widget/TimePicker;
    invoke-virtual {v3}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 290
    .local v7, "h":I
    invoke-virtual {v3}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 291
    .restart local v8    # "m":I
    const-string v9, "%02d:%02d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 292
    .end local v3    # "picker":Landroid/widget/TimePicker;
    .end local v7    # "h":I
    .end local v8    # "m":I
    goto :goto_3

    :cond_6
    instance-of v3, p0, Landroid/widget/RadioGroup;

    if-eqz v3, :cond_8

    .line 293
    move-object v3, p0

    check-cast v3, Landroid/widget/RadioGroup;

    .line 294
    .local v3, "radioGroup":Landroid/widget/RadioGroup;
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v4

    .line 295
    .local v4, "checkedId":I
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v5

    .line 296
    .local v5, "childCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_9

    .line 297
    invoke-virtual {v3, v6}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 298
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    if-ne v8, v4, :cond_7

    instance-of v8, v7, Landroid/widget/RadioButton;

    if-eqz v8, :cond_7

    .line 299
    move-object v8, v7

    check-cast v8, Landroid/widget/RadioButton;

    invoke-virtual {v8}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    move-object v1, v8

    .line 300
    goto :goto_2

    .line 296
    .end local v7    # "child":Landroid/view/View;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 303
    .end local v3    # "radioGroup":Landroid/widget/RadioGroup;
    .end local v4    # "checkedId":I
    .end local v5    # "childCount":I
    .end local v6    # "i":I
    :cond_8
    instance-of v3, p0, Landroid/widget/RatingBar;

    if-eqz v3, :cond_9

    .line 304
    move-object v3, p0

    check-cast v3, Landroid/widget/RatingBar;

    .line 305
    .local v3, "bar":Landroid/widget/RatingBar;
    invoke-virtual {v3}, Landroid/widget/RatingBar;->getRating()F

    move-result v4

    .line 306
    .local v4, "rating":F
    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    goto :goto_3

    .line 303
    .end local v3    # "bar":Landroid/widget/RatingBar;
    .end local v4    # "rating":F
    :cond_9
    :goto_2
    nop

    .line 309
    :cond_a
    :goto_3
    if-nez v1, :cond_b

    const-string v0, ""

    goto :goto_4

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    return-object v0

    .end local v1    # "textObj":Ljava/lang/Object;
    .end local p0    # "view":Landroid/view/View;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static getTouchReactView([FLandroid/view/View;)Landroid/view/View;
    .locals 5

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 450
    .local p0, "location":[F
    .local p1, "RCTRootView":Landroid/view/View;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->initTouchTargetHelperMethods()V

    .line 451
    sget-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->methodFindTouchTargetView:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    if-nez p1, :cond_1

    goto :goto_1

    .line 456
    :cond_1
    const/4 v3, 0x2

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 457
    .local v1, "nativeTargetView":Landroid/view/View;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    if-lez v3, :cond_3

    .line 458
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    .line 459
    .local v0, "reactTargetView":Landroid/view/View;
    if-eqz v0, :cond_2

    move-object v2, v0

    :cond_2
    return-object v2

    .line 463
    .end local v0    # "reactTargetView":Landroid/view/View;
    .end local v1    # "nativeTargetView":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 464
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    sget-object v3, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 461
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 462
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v3, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 465
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_3
    nop

    .line 467
    :goto_0
    return-object v2

    .line 452
    :cond_4
    :goto_1
    return-object v2

    .line 467
    .end local p0    # "location":[F
    .end local p1    # "RCTRootView":Landroid/view/View;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static getViewLocationOnScreen(Landroid/view/View;)[F
    .locals 6

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 511
    .local p0, "view":Landroid/view/View;
    :cond_0
    const/4 v1, 0x2

    :try_start_0
    new-array v3, v1, [I

    .line 512
    .local v3, "location":[I
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 513
    new-array v1, v1, [F

    .line 514
    .local v1, "result":[F
    const/4 v4, 0x0

    aget v5, v3, v4

    int-to-float v5, v5

    aput v5, v1, v4

    .line 515
    const/4 v4, 0x1

    aget v5, v3, v4

    int-to-float v5, v5

    aput v5, v1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    return-object v1

    .end local v1    # "result":[F
    .end local v3    # "location":[I
    .end local p0    # "view":Landroid/view/View;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static initTouchTargetHelperMethods()V
    .locals 6

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 520
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->methodFindTouchTargetView:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 521
    return-void

    .line 525
    :cond_1
    :try_start_1
    const-string v1, "com.facebook.react.uimanager.TouchTargetHelper"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 526
    .local v1, "RCTTouchTargetHelper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "findTouchTargetView"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, [F

    aput-object v5, v3, v4

    const-class v4, Landroid/view/ViewGroup;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 527
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->methodFindTouchTargetView:Ljava/lang/reflect/Method;

    .line 529
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "RCTTouchTargetHelper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 532
    :catch_0
    move-exception v1

    .line 533
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    :try_start_2
    sget-object v2, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 530
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 531
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v2, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 534
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 535
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static isAdapterViewItem(Landroid/view/View;)Z
    .locals 6

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 245
    .local p0, "view":Landroid/view/View;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 246
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/widget/AdapterView;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 247
    return v4

    .line 250
    :cond_1
    const-string v3, "android.support.v4.view.NestedScrollingChild"

    .line 251
    invoke-static {v3}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getExistingClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 252
    .local v3, "nestedScrollingChildClass":Ljava/lang/Class;
    if-eqz v3, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 253
    return v4

    .line 256
    :cond_2
    const-string v5, "androidx.core.view.NestedScrollingChild"

    invoke-static {v5}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getExistingClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    .line 257
    if-eqz v3, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 258
    return v4

    .line 261
    :cond_3
    return v2

    .end local v1    # "parent":Landroid/view/ViewParent;
    .end local v3    # "nestedScrollingChildClass":Ljava/lang/Class;
    .end local p0    # "view":Landroid/view/View;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static isRCTButton(Landroid/view/View;Landroid/view/View;)Z
    .locals 6

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 472
    .local p0, "view":Landroid/view/View;
    .local p1, "RCTRootView":Landroid/view/View;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "className":Ljava/lang/String;
    const-string v3, "com.facebook.react.views.view.ReactViewGroup"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 474
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getViewLocationOnScreen(Landroid/view/View;)[F

    move-result-object v3

    .line 475
    .local v3, "location":[F
    invoke-static {v3, p1}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTouchReactView([FLandroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 476
    .local v4, "touchTargetView":Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 479
    .end local v3    # "location":[F
    .end local v4    # "touchTargetView":Landroid/view/View;
    :cond_2
    return v2

    .end local v1    # "className":Ljava/lang/String;
    .end local p0    # "view":Landroid/view/View;
    .end local p1    # "RCTRootView":Landroid/view/View;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static isRCTRootView(Landroid/view/View;)Z
    .locals 4

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 483
    .local p0, "view":Landroid/view/View;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.facebook.react.ReactRootView"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .end local p0    # "view":Landroid/view/View;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static isRCTTextView(Landroid/view/View;)Z
    .locals 4

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 487
    .local p0, "view":Landroid/view/View;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.facebook.react.views.view.ReactTextView"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .end local p0    # "view":Landroid/view/View;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static isRCTViewGroup(Landroid/view/View;)Z
    .locals 4

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 491
    .local p0, "view":Landroid/view/View;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.facebook.react.views.view.ReactViewGroup"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .end local p0    # "view":Landroid/view/View;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 5

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 376
    .local p0, "view":Landroid/view/View;
    .local p1, "newListener":Landroid/view/View$OnClickListener;
    :cond_0
    const/4 v1, 0x0

    .line 377
    .local v1, "listenerInfoField":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .line 379
    .local v2, "listenerField":Ljava/lang/reflect/Field;
    :try_start_0
    const-string v3, "android.view.View"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mListenerInfo"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object v1, v3

    .line 380
    const-string v3, "android.view.View$ListenerInfo"

    .line 381
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mOnClickListener"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    goto :goto_0

    .line 413
    .end local v1    # "listenerInfoField":Ljava/lang/reflect/Field;
    .end local v2    # "listenerField":Ljava/lang/reflect/Field;
    .end local p0    # "view":Landroid/view/View;
    .end local p1    # "newListener":Landroid/view/View$OnClickListener;
    :catchall_0
    move-exception p0

    goto :goto_4

    .line 410
    .restart local p0    # "view":Landroid/view/View;
    .restart local p1    # "newListener":Landroid/view/View$OnClickListener;
    :catch_0
    move-exception v0

    goto :goto_5

    .line 384
    .restart local v1    # "listenerInfoField":Ljava/lang/reflect/Field;
    .restart local v2    # "listenerField":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v3

    goto :goto_1

    .line 382
    :catch_2
    move-exception v3

    .line 386
    :goto_0
    nop

    .line 388
    :goto_1
    if-eqz v1, :cond_3

    if-nez v2, :cond_1

    goto :goto_3

    .line 393
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 394
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    const/4 v4, 0x0

    .line 398
    .local v4, "listenerObj":Ljava/lang/Object;
    :try_start_2
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 399
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v3

    .line 402
    goto :goto_2

    .line 400
    :catch_3
    move-exception v3

    .line 404
    :goto_2
    if-nez v4, :cond_2

    .line 405
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    return-void

    .line 409
    :cond_2
    invoke-virtual {v2, v4, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 412
    .end local v1    # "listenerInfoField":Ljava/lang/reflect/Field;
    .end local v2    # "listenerField":Ljava/lang/reflect/Field;
    .end local v4    # "listenerObj":Ljava/lang/Object;
    goto :goto_5

    .line 389
    .restart local v1    # "listenerInfoField":Ljava/lang/reflect/Field;
    .restart local v2    # "listenerField":Ljava/lang/reflect/Field;
    :cond_3
    :goto_3
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 390
    return-void

    .line 413
    .end local v1    # "listenerInfoField":Ljava/lang/reflect/Field;
    .end local v2    # "listenerField":Ljava/lang/reflect/Field;
    .end local p0    # "view":Landroid/view/View;
    .end local p1    # "newListener":Landroid/view/View$OnClickListener;
    :goto_4
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .restart local p0    # "view":Landroid/view/View;
    .restart local p1    # "newListener":Landroid/view/View$OnClickListener;
    :goto_5
    return-void
.end method

.method public static updateAppearanceOfView(Landroid/view/View;Lorg/json/JSONObject;F)V
    .locals 8

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 144
    .local p0, "view":Landroid/view/View;
    .local p1, "json":Lorg/json/JSONObject;
    .local p2, "displayDensity":F
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 145
    .local v1, "textStyle":Lorg/json/JSONObject;
    instance-of v2, p0, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 146
    move-object v2, p0

    check-cast v2, Landroid/widget/TextView;

    .line 147
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    .line 148
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-eqz v3, :cond_1

    .line 149
    const-string v4, "font_size"

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 150
    const-string v4, "is_bold"

    invoke-virtual {v3}, Landroid/graphics/Typeface;->isBold()Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 151
    const-string v4, "is_italic"

    invoke-virtual {v3}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 152
    const-string/jumbo v4, "text_style"

    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    .end local v2    # "textView":Landroid/widget/TextView;
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_1
    instance-of v2, p0, Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 156
    move-object v2, p0

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 157
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, p2

    const/high16 v4, 0x42300000    # 44.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, p2

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    .line 160
    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 161
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_2

    .line 162
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 163
    .local v4, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v3, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 164
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 165
    .local v5, "byteArray":[B
    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, "encoded":Ljava/lang/String;
    const-string v7, "icon_image"

    invoke-virtual {p1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .end local v1    # "textStyle":Lorg/json/JSONObject;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "byteArray":[B
    .end local v6    # "encoded":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 174
    .end local p0    # "view":Landroid/view/View;
    .end local p1    # "json":Lorg/json/JSONObject;
    .end local p2    # "displayDensity":F
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 171
    .restart local p0    # "view":Landroid/view/View;
    .restart local p1    # "json":Lorg/json/JSONObject;
    .restart local p2    # "displayDensity":F
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Lorg/json/JSONException;
    :try_start_1
    sget-object v2, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-void

    .end local p0    # "view":Landroid/view/View;
    .end local p1    # "json":Lorg/json/JSONObject;
    .end local p2    # "displayDensity":F
    :goto_1
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static updateBasicInfoOfView(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 8

    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 112
    .local p0, "view":Landroid/view/View;
    .local p1, "json":Lorg/json/JSONObject;
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "text":Ljava/lang/String;
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getHintOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "hint":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 115
    .local v3, "tag":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    .line 117
    .local v4, "description":Ljava/lang/CharSequence;
    const-string v5, "classname"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v5, "classtypebitmask"

    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getClassTypeBitmask(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 119
    const-string v5, "id"

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 120
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isSensitiveUserData(Landroid/view/View;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v6, "text"

    const-string v7, ""

    if-nez v5, :cond_1

    .line 121
    :try_start_1
    invoke-static {v1}, Lcom/facebook/internal/Utility;->sha256hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v5, "is_user_input"

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 126
    :goto_0
    const-string v5, "hint"

    invoke-static {v2}, Lcom/facebook/internal/Utility;->sha256hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    if-eqz v3, :cond_2

    .line 128
    const-string/jumbo v5, "tag"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/internal/Utility;->sha256hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    :cond_2
    if-eqz v4, :cond_3

    .line 131
    const-string v5, "description"

    .line 133
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/internal/Utility;->sha256hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 131
    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    :cond_3
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getDimensionOfView(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    .line 136
    .local v5, "dimension":Lorg/json/JSONObject;
    const-string v6, "dimension"

    invoke-virtual {p1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "hint":Ljava/lang/String;
    .end local v3    # "tag":Ljava/lang/Object;
    .end local v4    # "description":Ljava/lang/CharSequence;
    .end local v5    # "dimension":Lorg/json/JSONObject;
    goto :goto_1

    .line 140
    .end local p0    # "view":Landroid/view/View;
    .end local p1    # "json":Lorg/json/JSONObject;
    :catchall_0
    move-exception p0

    goto :goto_2

    .line 137
    .restart local p0    # "view":Landroid/view/View;
    .restart local p1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    sget-object v2, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-void

    .end local p0    # "view":Landroid/view/View;
    .end local p1    # "json":Lorg/json/JSONObject;
    :goto_2
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
