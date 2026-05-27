.class public Lcom/google/firebase/inappmessaging/internal/injection/modules/TransportClientModule;
.super Ljava/lang/Object;
.source "TransportClientModule.java"


# annotations
.annotation runtime Lcom/google/firebase/inappmessaging/dagger/Module;
.end annotation


# static fields
.field private static final TRANSPORT_NAME:Ljava/lang/String; = "FIREBASE_INAPPMESSAGING"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$providesMetricsLoggerClient$0([B)[B
    .locals 0
    .param p0, "b"    # [B

    .line 49
    return-object p0
.end method

.method static synthetic lambda$providesMetricsLoggerClient$1(Lcom/google/android/datatransport/Transport;[B)V
    .locals 1
    .param p0, "transport"    # Lcom/google/android/datatransport/Transport;
    .param p1, "bytes"    # [B

    .line 51
    invoke-static {p1}, Lcom/google/android/datatransport/Event;->ofData(Ljava/lang/Object;)Lcom/google/android/datatransport/Event;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/android/datatransport/Transport;->send(Lcom/google/android/datatransport/Event;)V

    return-void
.end method

.method static providesMetricsLoggerClient(Lcom/google/firebase/FirebaseApp;Lcom/google/android/datatransport/TransportFactory;Lcom/google/firebase/analytics/connector/AnalyticsConnector;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inappmessaging/internal/time/Clock;Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;)Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;
    .locals 9
    .param p0, "app"    # Lcom/google/firebase/FirebaseApp;
    .param p1, "transportFactory"    # Lcom/google/android/datatransport/TransportFactory;
    .param p2, "analyticsConnector"    # Lcom/google/firebase/analytics/connector/AnalyticsConnector;
    .param p3, "firebaseInstallations"    # Lcom/google/firebase/installations/FirebaseInstallationsApi;
    .param p4, "clock"    # Lcom/google/firebase/inappmessaging/internal/time/Clock;
    .param p5, "developerListenerManager"    # Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    .line 48
    const-class v0, [B

    sget-object v1, Lcom/google/firebase/inappmessaging/internal/injection/modules/-$$Lambda$TransportClientModule$OysiTG72zHqcHmucAOkiielMfOA;->INSTANCE:Lcom/google/firebase/inappmessaging/internal/injection/modules/-$$Lambda$TransportClientModule$OysiTG72zHqcHmucAOkiielMfOA;

    .line 49
    const-string v2, "FIREBASE_INAPPMESSAGING"

    invoke-interface {p1, v2, v0, v1}, Lcom/google/android/datatransport/TransportFactory;->getTransport(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/Transport;

    move-result-object v0

    .line 50
    .local v0, "transport":Lcom/google/android/datatransport/Transport;, "Lcom/google/android/datatransport/Transport<[B>;"
    new-instance v8, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;

    new-instance v2, Lcom/google/firebase/inappmessaging/internal/injection/modules/-$$Lambda$TransportClientModule$VExnxwq61zpljyO_FwnzATW-oig;

    invoke-direct {v2, v0}, Lcom/google/firebase/inappmessaging/internal/injection/modules/-$$Lambda$TransportClientModule$VExnxwq61zpljyO_FwnzATW-oig;-><init>(Lcom/google/android/datatransport/Transport;)V

    move-object v1, v8

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;-><init>(Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient$EngagementMetricsLoggerInterface;Lcom/google/firebase/analytics/connector/AnalyticsConnector;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inappmessaging/internal/time/Clock;Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;)V

    return-object v8
.end method
