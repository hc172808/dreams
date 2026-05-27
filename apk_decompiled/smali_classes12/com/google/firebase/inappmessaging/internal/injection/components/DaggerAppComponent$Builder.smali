.class final Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/internal/injection/components/AppComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Builder"
.end annotation


# instance fields
.field private abtIntegrationHelper:Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

.field private apiClientModule:Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;

.field private grpcClientModule:Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;

.field private transportFactory:Lcom/google/android/datatransport/TransportFactory;

.field private universalComponent:Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$1;

    .line 191
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic abtIntegrationHelper(Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;)Lcom/google/firebase/inappmessaging/internal/injection/components/AppComponent$Builder;
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;->abtIntegrationHelper(Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;)Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public abtIntegrationHelper(Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;)Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;
    .locals 1
    .param p1, "integrationHelper"    # Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    .line 204
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;->abtIntegrationHelper:Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    .line 205
    return-object p0
.end method

.method public bridge synthetic apiClientModule(Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;)Lcom/google/firebase/inappmessaging/internal/injection/components/AppComponent$Builder;
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;->apiClientModule(Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;)Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public apiClientModule(Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;)Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;
    .locals 1
    .param p1, "module"    # Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;

    .line 210
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;->apiClientModule:Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;

    .line 211
    return-object p0
.end method

.method public build()Lcom/google/firebase/inappmessaging/internal/injection/components/AppComponent;
    .locals 9

    .line 234
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;->abtIntegrationHelper:Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    const-class v1, Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 235
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;->apiClientModule:Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;

    const-class v1, Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 236
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;->grpcClientModule:Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;

    const-class v1, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 237
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;->universalComponent:Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;

    const-class v1, Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 238
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;->transportFactory:Lcom/google/android/datatransport/TransportFactory;

    const-class v1, Lcom/google/android/datatransport/TransportFactory;

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/dagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 239
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;

    iget-object v3, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;->apiClientModule:Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;

    iget-object v4, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;->grpcClientModule:Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;

    iget-object v5, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;->universalComponent:Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;

    iget-object v6, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;->abtIntegrationHelper:Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;

    iget-object v7, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;->transportFactory:Lcom/google/android/datatransport/TransportFactory;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent;-><init>(Lcom/google/firebase/inappmessaging/internal/injection/modules/ApiClientModule;Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;Lcom/google/firebase/inappmessaging/internal/AbtIntegrationHelper;Lcom/google/android/datatransport/TransportFactory;Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic grpcClientModule(Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;)Lcom/google/firebase/inappmessaging/internal/injection/components/AppComponent$Builder;
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;->grpcClientModule(Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;)Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public grpcClientModule(Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;)Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;
    .locals 1
    .param p1, "module"    # Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;

    .line 216
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;->grpcClientModule:Lcom/google/firebase/inappmessaging/internal/injection/modules/GrpcClientModule;

    .line 217
    return-object p0
.end method

.method public bridge synthetic transportFactory(Lcom/google/android/datatransport/TransportFactory;)Lcom/google/firebase/inappmessaging/internal/injection/components/AppComponent$Builder;
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;->transportFactory(Lcom/google/android/datatransport/TransportFactory;)Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public transportFactory(Lcom/google/android/datatransport/TransportFactory;)Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;
    .locals 1
    .param p1, "transportFactory"    # Lcom/google/android/datatransport/TransportFactory;

    .line 228
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/TransportFactory;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;->transportFactory:Lcom/google/android/datatransport/TransportFactory;

    .line 229
    return-object p0
.end method

.method public bridge synthetic universalComponent(Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;)Lcom/google/firebase/inappmessaging/internal/injection/components/AppComponent$Builder;
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;->universalComponent(Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;)Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public universalComponent(Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;)Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;
    .locals 1
    .param p1, "component"    # Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;

    .line 222
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/injection/components/DaggerAppComponent$Builder;->universalComponent:Lcom/google/firebase/inappmessaging/internal/injection/components/UniversalComponent;

    .line 223
    return-object p0
.end method
