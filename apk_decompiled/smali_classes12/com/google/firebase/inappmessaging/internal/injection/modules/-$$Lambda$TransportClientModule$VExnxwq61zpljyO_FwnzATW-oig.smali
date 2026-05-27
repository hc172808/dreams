.class public final synthetic Lcom/google/firebase/inappmessaging/internal/injection/modules/-$$Lambda$TransportClientModule$VExnxwq61zpljyO_FwnzATW-oig;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient$EngagementMetricsLoggerInterface;


# instance fields
.field public final synthetic f$0:Lcom/google/android/datatransport/Transport;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/Transport;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/-$$Lambda$TransportClientModule$VExnxwq61zpljyO_FwnzATW-oig;->f$0:Lcom/google/android/datatransport/Transport;

    return-void
.end method


# virtual methods
.method public final logEvent([B)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/-$$Lambda$TransportClientModule$VExnxwq61zpljyO_FwnzATW-oig;->f$0:Lcom/google/android/datatransport/Transport;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/internal/injection/modules/TransportClientModule;->lambda$providesMetricsLoggerClient$1(Lcom/google/android/datatransport/Transport;[B)V

    return-void
.end method
