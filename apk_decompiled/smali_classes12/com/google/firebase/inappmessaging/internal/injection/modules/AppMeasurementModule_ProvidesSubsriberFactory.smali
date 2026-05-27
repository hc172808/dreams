.class public final Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule_ProvidesSubsriberFactory;
.super Ljava/lang/Object;
.source "AppMeasurementModule_ProvidesSubsriberFactory.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/dagger/internal/Factory<",
        "Lcom/google/firebase/events/Subscriber;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule;)V
    .locals 0
    .param p1, "module"    # Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule_ProvidesSubsriberFactory;->module:Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule;

    .line 21
    return-void
.end method

.method public static create(Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule;)Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule_ProvidesSubsriberFactory;
    .locals 1
    .param p0, "module"    # Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule;

    .line 29
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule_ProvidesSubsriberFactory;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule_ProvidesSubsriberFactory;-><init>(Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule;)V

    return-object v0
.end method

.method public static providesSubsriber(Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule;)Lcom/google/firebase/events/Subscriber;
    .locals 2
    .param p0, "instance"    # Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule;

    .line 33
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule;->providesSubsriber()Lcom/google/firebase/events/Subscriber;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/events/Subscriber;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/events/Subscriber;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule_ProvidesSubsriberFactory;->module:Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule_ProvidesSubsriberFactory;->providesSubsriber(Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule;)Lcom/google/firebase/events/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/injection/modules/AppMeasurementModule_ProvidesSubsriberFactory;->get()Lcom/google/firebase/events/Subscriber;

    move-result-object v0

    return-object v0
.end method
