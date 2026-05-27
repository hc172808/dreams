.class public Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;
.super Ljava/lang/Object;
.source "FirebaseInAppMessagingRegistrar.java"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$yuRjTv1KXsUvxlnapxQ_8E9rSoY(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->providesFirebaseInAppMessaging(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    move-result-object p0

    return-object p0
.end method

.method private providesFirebaseInAppMessaging(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;
    .locals 10
    .param p1, "container"    # Lcom/google/firebase/components/ComponentContainer;

    .line 74
    const-class v0, Lcom/google/firebase/FirebaseApp;

    invoke-interface {p1, v0}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/FirebaseApp;

    .line 75
    .local v0, "firebaseApp":Lcom/google/firebase/FirebaseApp;
    const-class v1, Lcom/google/firebase/installations/FirebaseInstallationsApi;

    invoke-interface {p1, v1}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 76
    .local v1, "firebaseInstallations":Lcom/google/firebase/installations/FirebaseInstallationsApi;
    const-class v2, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 77
    invoke-interface {p1, v2}, Lcom/google/firebase/components/ComponentContainer;->getDeferred(Ljava/lang/Class;)Lcom/google/firebase/inject/Deferred;

    move-result-object v2

    .line 78
    .local v2, "analyticsConnector":Lcom/google/firebase/inject/Deferred;, "Lcom/google/firebase/inject/Deferred<Lcom/google/firebase/analytics/connector/AnalyticsConnector;>;"
    const-class v3, Lcom/google/firebase/events/Subscriber;

    invoke-interface {p1, v3}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/events/Subscriber;

    .line 80
    .local v3, "firebaseEventsSubscriber":Lcom/google/firebase/events/Subscriber;
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Application;

    .line 83
    .local v4, "application":Landroid/app/Application;
    invoke-static {}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerUniversalComponent;->builder()Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerUniversalComponent$Builder;

    move-result-object v5

    new-instance v6, Lcom/google/firebase/inappmessaging/internal/injection/modules/ApplicationModule;

    invoke-direct {v6, v4}, Lcom/google/firebase/inappmessaging/internal/injection/modules/ApplicationModule;-><init>(Landroid/app/Application;)V

    .line 84
    invoke-virtual {v5, v6}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerUniversalComponent$Builder;->applicationModule(Lcom/google/firebase/inappmessaging/internal/injection/modules/ApplicationModule;)Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerUniversalComponent$Builder;

    move-result-object v5

    new-instance v6, Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule;

    invoke-direct {v6, v2, v3}, Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule;-><init>(Lcom/google/firebase/inject/Deferred;Lcom/google/firebase/events/Subscriber;)V

    .line 85
    invoke-virtual {v5, v6}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerUniversalComponent$Builder;->appMeasurementModule(Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule;)Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerUniversalComponent$Builder;

    move-result-object v5

    new-instance v6, Lcom/google/firebase/inappmessaging/internal/injection/modules/AnalyticsEventsModule;

    invoke-direct {v6}, Lcom/google/firebase/inappmessaging/internal/injection/modules/AnalyticsEventsModule;-><init>()V

    .line 87
    invoke-virtual {v5, v6}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerUniversalComponent$Builder;->analyticsEventsModule(Lcom/google/firebase/inappmessaging/internal/injection/modules/AnalyticsEventsModule;)Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerUniversalComponent$Builder;

    move-result-object v5

    new-instance v6, Lcom/google/firebase/inappmessaging/internal/injection/modules/ProgrammaticContextualTriggerFlowableModule;

    new-instance v7, Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;

    invoke-direct {v7}, Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;-><init>()V

    invoke-direct {v6, v7}, Lcom/google/firebase/inappmessaging/internal/injection/modules/ProgrammaticContextualTriggerFlowableModule;-><init>(Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;)V

    .line 88
    invoke-virtual {v5, v6}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerUniversalComponent$Builder;->programmaticContextualTriggerFlowableModule(Lcom/google/firebase/inappmessaging/internal/injection/modules/ProgrammaticContextualTriggerFlowableModule;)Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerUniversalComponent$Builder;

    move-result-object v5

    .line 91
    invoke-virtual {v5}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerUniversalComponent$Builder;->build()Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;

    move-result-object v5

    .line 94
    .local v5, "universalComponent":Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;
    invoke-static {}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;->builder()Lcom/google/firebase/inappmessaging/internal/injection/components/AppComponent$Builder;

    move-result-object v6

    new-instance v7, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    const-class v8, Lcom/google/firebase/abt/component/AbtComponent;

    .line 98
    invoke-interface {p1, v8}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/abt/component/AbtComponent;

    .line 99
    const-string v9, "fiam"

    invoke-virtual {v8, v9}, Lcom/google/firebase/abt/component/AbtComponent;->get(Ljava/lang/String;)Lcom/google/firebase/abt/FirebaseABTesting;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;-><init>(Lcom/google/firebase/abt/FirebaseABTesting;)V

    .line 95
    invoke-interface {v6, v7}, Lcom/google/firebase/inappmessaging/internal/injection/components/AppComponent$Builder;->abtIntegrationHelper(Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;)Lcom/google/firebase/inappmessaging/internal/injection/components/AppComponent$Builder;

    move-result-object v6

    new-instance v7, Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;

    .line 101
    invoke-interface {v5}, Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;->clock()Lcom/google/firebase/inappmessaging/internal/time/Clock;

    move-result-object v8

    invoke-direct {v7, v0, v1, v8}, Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inappmessaging/internal/time/Clock;)V

    .line 100
    invoke-interface {v6, v7}, Lcom/google/firebase/inappmessaging/internal/injection/components/AppComponent$Builder;->apiClientModule(Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;)Lcom/google/firebase/inappmessaging/internal/injection/components/AppComponent$Builder;

    move-result-object v6

    new-instance v7, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;

    invoke-direct {v7, v0}, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;-><init>(Lcom/google/firebase/FirebaseApp;)V

    .line 102
    invoke-interface {v6, v7}, Lcom/google/firebase/inappmessaging/internal/injection/components/AppComponent$Builder;->grpcClientModule(Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;)Lcom/google/firebase/inappmessaging/internal/injection/components/AppComponent$Builder;

    move-result-object v6

    .line 103
    invoke-interface {v6, v5}, Lcom/google/firebase/inappmessaging/internal/injection/components/AppComponent$Builder;->universalComponent(Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;)Lcom/google/firebase/inappmessaging/internal/injection/components/AppComponent$Builder;

    move-result-object v6

    const-class v7, Lcom/google/android/datatransport/TransportFactory;

    .line 104
    invoke-interface {p1, v7}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/datatransport/TransportFactory;

    invoke-interface {v6, v7}, Lcom/google/firebase/inappmessaging/internal/injection/components/AppComponent$Builder;->transportFactory(Lcom/google/android/datatransport/TransportFactory;)Lcom/google/firebase/inappmessaging/internal/injection/components/AppComponent$Builder;

    move-result-object v6

    .line 105
    invoke-interface {v6}, Lcom/google/firebase/inappmessaging/internal/injection/components/AppComponent$Builder;->build()Lcom/google/firebase/inappmessaging/internal/injection/components/AppComponent;

    move-result-object v6

    .line 107
    .local v6, "instance":Lcom/google/firebase/inappmessaging/internal/injection/components/AppComponent;
    invoke-interface {v6}, Lcom/google/firebase/inappmessaging/internal/injection/components/AppComponent;->providesFirebaseInAppMessaging()Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    move-result-object v7

    return-object v7
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

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/firebase/components/Component;

    const-class v1, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    .line 59
    invoke-static {v1}, Lcom/google/firebase/components/Component;->builder(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    .line 60
    invoke-static {v2}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v1

    const-class v2, Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 61
    invoke-static {v2}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v1

    const-class v2, Lcom/google/firebase/FirebaseApp;

    .line 62
    invoke-static {v2}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v1

    const-class v2, Lcom/google/firebase/abt/component/AbtComponent;

    .line 63
    invoke-static {v2}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v1

    const-class v2, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 64
    invoke-static {v2}, Lcom/google/firebase/components/Dependency;->deferred(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v1

    const-class v2, Lcom/google/android/datatransport/TransportFactory;

    .line 65
    invoke-static {v2}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v1

    const-class v2, Lcom/google/firebase/events/Subscriber;

    .line 66
    invoke-static {v2}, Lcom/google/firebase/components/Dependency;->required(Ljava/lang/Class;)Lcom/google/firebase/components/Dependency;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/Component$Builder;->add(Lcom/google/firebase/components/Dependency;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/inappmessaging/-$$Lambda$FirebaseInAppMessagingRegistrar$yuRjTv1KXsUvxlnapxQ_8E9rSoY;

    invoke-direct {v2, p0}, Lcom/google/firebase/inappmessaging/-$$Lambda$FirebaseInAppMessagingRegistrar$yuRjTv1KXsUvxlnapxQ_8E9rSoY;-><init>(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;)V

    .line 67
    invoke-virtual {v1, v2}, Lcom/google/firebase/components/Component$Builder;->factory(Lcom/google/firebase/components/ComponentFactory;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/google/firebase/components/Component$Builder;->eagerInDefaultApp()Lcom/google/firebase/components/Component$Builder;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/google/firebase/components/Component$Builder;->build()Lcom/google/firebase/components/Component;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 70
    const-string v1, "fire-fiam"

    const-string v2, "20.0.0"

    invoke-static {v1, v2}, Lcom/google/firebase/platforminfo/LibraryVersionComponent;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/components/Component;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 58
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
