.class public final Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;
.super Ljava/lang/Object;
.source "DaggerUniversalComponent.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/display/internal/injection/components/UniversalComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$Builder;
    }
.end annotation


# instance fields
.field private bindingWrapperFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;",
            ">;"
        }
    .end annotation
.end field

.field private fiamWindowManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private final inflaterConfigModule:Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;

.field private providesApplicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private providesBannerLandscapeLayoutConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;",
            ">;"
        }
    .end annotation
.end field

.field private providesBannerPortraitLayoutConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;",
            ">;"
        }
    .end annotation
.end field

.field private providesCardLandscapeConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;",
            ">;"
        }
    .end annotation
.end field

.field private providesCardPortraitConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;",
            ">;"
        }
    .end annotation
.end field

.field private providesDisplayMetricsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private providesLandscapeImageLayoutConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;",
            ">;"
        }
    .end annotation
.end field

.field private providesModalLandscapeConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;",
            ">;"
        }
    .end annotation
.end field

.field private providesModalPortraitConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;",
            ">;"
        }
    .end annotation
.end field

.field private providesPortraitImageLayoutConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;)V
    .locals 0
    .param p1, "applicationModuleParam"    # Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;
    .param p2, "inflaterConfigModuleParam"    # Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->inflaterConfigModule:Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->initialize(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;)V

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;
    .param p2, "x1"    # Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;
    .param p3, "x2"    # Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$1;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;-><init>(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;)V

    return-void
.end method

.method public static builder()Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$Builder;
    .locals 2

    .line 67
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$Builder;-><init>(Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;)V
    .locals 1
    .param p1, "applicationModuleParam"    # Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;
    .param p2, "inflaterConfigModuleParam"    # Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;

    .line 73
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule_ProvidesApplicationFactory;->create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule_ProvidesApplicationFactory;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesApplicationProvider:Ljavax/inject/Provider;

    .line 74
    invoke-static {}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager_Factory;->create()Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager_Factory;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->fiamWindowManagerProvider:Ljavax/inject/Provider;

    .line 75
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesApplicationProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory_Factory;->create(Ljavax/inject/Provider;)Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory_Factory;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->bindingWrapperFactoryProvider:Ljavax/inject/Provider;

    .line 76
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesApplicationProvider:Ljavax/inject/Provider;

    invoke-static {p2, v0}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesDisplayMetricsFactory;->create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;Ljavax/inject/Provider;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesDisplayMetricsFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesDisplayMetricsProvider:Ljavax/inject/Provider;

    .line 77
    invoke-static {p2, v0}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesPortraitImageLayoutConfigFactory;->create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;Ljavax/inject/Provider;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesPortraitImageLayoutConfigFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesPortraitImageLayoutConfigProvider:Ljavax/inject/Provider;

    .line 78
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesDisplayMetricsProvider:Ljavax/inject/Provider;

    invoke-static {p2, v0}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesLandscapeImageLayoutConfigFactory;->create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;Ljavax/inject/Provider;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesLandscapeImageLayoutConfigFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesLandscapeImageLayoutConfigProvider:Ljavax/inject/Provider;

    .line 79
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesDisplayMetricsProvider:Ljavax/inject/Provider;

    invoke-static {p2, v0}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesModalLandscapeConfigFactory;->create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;Ljavax/inject/Provider;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesModalLandscapeConfigFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesModalLandscapeConfigProvider:Ljavax/inject/Provider;

    .line 80
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesDisplayMetricsProvider:Ljavax/inject/Provider;

    invoke-static {p2, v0}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesModalPortraitConfigFactory;->create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;Ljavax/inject/Provider;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesModalPortraitConfigFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesModalPortraitConfigProvider:Ljavax/inject/Provider;

    .line 81
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesDisplayMetricsProvider:Ljavax/inject/Provider;

    invoke-static {p2, v0}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesCardLandscapeConfigFactory;->create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;Ljavax/inject/Provider;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesCardLandscapeConfigFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesCardLandscapeConfigProvider:Ljavax/inject/Provider;

    .line 82
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesDisplayMetricsProvider:Ljavax/inject/Provider;

    invoke-static {p2, v0}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesCardPortraitConfigFactory;->create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;Ljavax/inject/Provider;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesCardPortraitConfigFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesCardPortraitConfigProvider:Ljavax/inject/Provider;

    .line 83
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesDisplayMetricsProvider:Ljavax/inject/Provider;

    invoke-static {p2, v0}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesBannerPortraitLayoutConfigFactory;->create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;Ljavax/inject/Provider;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesBannerPortraitLayoutConfigFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesBannerPortraitLayoutConfigProvider:Ljavax/inject/Provider;

    .line 84
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesDisplayMetricsProvider:Ljavax/inject/Provider;

    invoke-static {p2, v0}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesBannerLandscapeLayoutConfigFactory;->create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;Ljavax/inject/Provider;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesBannerLandscapeLayoutConfigFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesBannerLandscapeLayoutConfigProvider:Ljavax/inject/Provider;

    .line 85
    return-void
.end method


# virtual methods
.method public displayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->inflaterConfigModule:Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesApplicationProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule_ProvidesDisplayMetricsFactory;->providesDisplayMetrics(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;Landroid/app/Application;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public fiamWindowManager()Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->fiamWindowManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;

    return-object v0
.end method

.method public inflaterClient()Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->bindingWrapperFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;

    return-object v0
.end method

.method public myKeyStringMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;",
            ">;>;"
        }
    .end annotation

    .line 105
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;->newMapBuilder(I)Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesPortraitImageLayoutConfigProvider:Ljavax/inject/Provider;

    const-string v2, "IMAGE_ONLY_PORTRAIT"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesLandscapeImageLayoutConfigProvider:Ljavax/inject/Provider;

    const-string v2, "IMAGE_ONLY_LANDSCAPE"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesModalLandscapeConfigProvider:Ljavax/inject/Provider;

    const-string v2, "MODAL_LANDSCAPE"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesModalPortraitConfigProvider:Ljavax/inject/Provider;

    const-string v2, "MODAL_PORTRAIT"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesCardLandscapeConfigProvider:Ljavax/inject/Provider;

    const-string v2, "CARD_LANDSCAPE"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesCardPortraitConfigProvider:Ljavax/inject/Provider;

    const-string v2, "CARD_PORTRAIT"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesBannerPortraitLayoutConfigProvider:Ljavax/inject/Provider;

    const-string v2, "BANNER_PORTRAIT"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesBannerLandscapeLayoutConfigProvider:Ljavax/inject/Provider;

    const-string v2, "BANNER_LANDSCAPE"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/display/dagger/internal/MapBuilder;->build()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public providesApplication()Landroid/app/Application;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/components/DaggerUniversalComponent;->providesApplicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    return-object v0
.end method
