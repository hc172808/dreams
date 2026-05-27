.class public Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule;
.super Ljava/lang/Object;
.source "AppMeasurementModule.java"


# annotations
.annotation runtime Lcom/google/firebase/inappmessaging/dagger/Module;
.end annotation


# instance fields
.field private final analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

.field private final firebaseEventsSubscriber:Lcom/google/firebase/events/Subscriber;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inject/Deferred;Lcom/google/firebase/events/Subscriber;)V
    .locals 1
    .param p2, "firebaseEventsSubscriber"    # Lcom/google/firebase/events/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Deferred<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector;",
            ">;",
            "Lcom/google/firebase/events/Subscriber;",
            ")V"
        }
    .end annotation

    .line 37
    .local p1, "analyticsConnector":Lcom/google/firebase/inject/Deferred;, "Lcom/google/firebase/inject/Deferred<Lcom/google/firebase/analytics/connector/AnalyticsConnector;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector;

    invoke-direct {v0, p1}, Lcom/google/firebase/inappmessaging/internal/ProxyAnalyticsConnector;-><init>(Lcom/google/firebase/inject/Deferred;)V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule;->analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 39
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule;->firebaseEventsSubscriber:Lcom/google/firebase/events/Subscriber;

    .line 40
    return-void
.end method


# virtual methods
.method providesAnalyticsConnector()Lcom/google/firebase/analytics/connector/AnalyticsConnector;
    .locals 1
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule;->analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    return-object v0
.end method

.method providesSubsriber()Lcom/google/firebase/events/Subscriber;
    .locals 1
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule;->firebaseEventsSubscriber:Lcom/google/firebase/events/Subscriber;

    return-object v0
.end method
