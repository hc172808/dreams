.class public Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcChannelModule;
.super Ljava/lang/Object;
.source "GrpcChannelModule.java"


# annotations
.annotation runtime Lcom/google/firebase/inappmessaging/dagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesGrpcChannel(Ljava/lang/String;)Lio/grpc/Channel;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "host"
        .end annotation
    .end param
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 41
    invoke-static {p1}, Lio/grpc/ManagedChannelBuilder;->forTarget(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->build()Lio/grpc/ManagedChannel;

    move-result-object v0

    return-object v0
.end method

.method public providesServiceHost()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/firebase/inappmessaging/dagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "host"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 35
    const-string v0, "firebaseinappmessaging.googleapis.com"

    return-object v0
.end method
