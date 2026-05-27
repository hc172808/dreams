.class public Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplayRegistrar;
.super Ljava/lang/Object;
.source "FirebaseInAppMessagingDisplayRegistrar.java"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildFirebaseInAppMessagingUI(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;
    .locals 6
    .param p1, "container"    # Lcom/google/firebase/components/ComponentContainer;

    .line 59
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 60
    .local v0, "firebaseApp":Lcom/google/firebase/FirebaseApp;
    const-class v1, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    invoke-interface {p1, v1}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    .line 61
    .local v1, "headless":Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    .line 64
    .local v2, "firebaseApplication":Landroid/app/Application;
    invoke-static {}, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->builder()Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$Builder;

    move-result-object v3

    new-instance v4, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;

    invoke-direct {v4, v2}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;-><init>(Landroid/app/Application;)V

    .line 65
    invoke-virtual {v3, v4}, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$Builder;->applicationModule(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;)Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$Builder;

    move-result-object v3

    .line 66
    invoke-virtual {v3}, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$Builder;->build()Lcom/google/firebase/inappmessaging/display/internal/injection/components/UniversalComponent;

    move-result-object v3

    .line 68
    .local v3, "universalComponent":Lcom/google/firebase/inappmessaging/display/internal/injection/components/UniversalComponent;
    invoke-static {}, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent;->builder()Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$Builder;

    move-result-object v4

    .line 69
    invoke-virtual {v4, v3}, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$Builder;->universalComponent(Lcom/google/firebase/inappmessaging/display/internal/injection/components/UniversalComponent;)Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$Builder;

    move-result-object v4

    new-instance v5, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/HeadlessInAppMessagingModule;

    invoke-direct {v5, v1}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/HeadlessInAppMessagingModule;-><init>(Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;)V

    .line 70
    invoke-virtual {v4, v5}, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$Builder;->headlessInAppMessagingModule(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/HeadlessInAppMessagingModule;)Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$Builder;

    move-result-object v4

    .line 71
    invoke-virtual {v4}, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerAppComponent$Builder;->build()Lcom/google/firebase/inappmessaging/display/internal/injection/components/AppComponent;

    move-result-object v4

    .line 73
    .local v4, "instance":Lcom/google/firebase/inappmessaging/display/internal/injection/components/AppComponent;
    nop

    .line 74
    invoke-interface {v4}, Lcom/google/firebase/inappmessaging/display/internal/injection/components/AppComponent;->providesFirebaseInAppMessagingUI()Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;

    move-result-object v5

    .line 75
    .local v5, "firebaseInAppMessagingDisplay":Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;
    invoke-virtual {v2, v5}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 76
    return-object v5
.end method

.method public static synthetic lambda$mFT7XCE3YJXhnGdhKohfXnpd5DM(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplayRegistrar;Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplayRegistrar;->buildFirebaseInAppMessagingUI(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/components/Component<",
            "*>;>;"
        }
    .end annotation

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/firebase/components/Component;

    const-class v1, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;

    .line 47
    invoke-static {v1}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v1

    const-class v2, Lcom/google/firebase/FirebaseApp;

    .line 48
    invoke-static {v2}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v1

    const-class v2, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 49
    invoke-static {v2}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v1

    const-class v2, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    .line 50
    invoke-static {v2}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/inappmessaging/display/-$$Lambda$FirebaseInAppMessagingDisplayRegistrar$mFT7XCE3YJXhnGdhKohfXnpd5DM;

    invoke-direct {v2, p0}, Lcom/google/firebase/inappmessaging/display/-$$Lambda$FirebaseInAppMessagingDisplayRegistrar$mFT7XCE3YJXhnGdhKohfXnpd5DM;-><init>(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplayRegistrar;)V

    .line 51
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/google/firebase/components/Component$Builder;->eagerInDefaultApp()Lcom/google/firebase/components/Component$Builder;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 54
    const-string v1, "fire-fiamd"

    const-string v2, "20.0.0"

    invoke-static {v1, v2}, Lcom/google/firebase/platforminfo/LibraryVersionComponent;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/Component;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 46
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
