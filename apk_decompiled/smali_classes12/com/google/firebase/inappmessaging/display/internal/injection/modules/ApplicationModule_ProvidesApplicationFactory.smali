.class public final Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule_ProvidesApplicationFactory;
.super Ljava/lang/Object;
.source "ApplicationModule_ProvidesApplicationFactory.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/display/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/display/dagger/internal/Factory<",
        "Landroid/app/Application;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;)V
    .locals 0
    .param p1, "module"    # Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule_ProvidesApplicationFactory;->module:Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;

    .line 17
    return-void
.end method

.method public static create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule_ProvidesApplicationFactory;
    .locals 1
    .param p0, "module"    # Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;

    .line 25
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule_ProvidesApplicationFactory;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule_ProvidesApplicationFactory;-><init>(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;)V

    return-object v0
.end method

.method public static providesApplication(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;)Landroid/app/Application;
    .locals 2
    .param p0, "instance"    # Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;

    .line 29
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;->providesApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/display/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    return-object v0
.end method


# virtual methods
.method public get()Landroid/app/Application;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule_ProvidesApplicationFactory;->module:Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule_ProvidesApplicationFactory;->providesApplication(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule;)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/ApplicationModule_ProvidesApplicationFactory;->get()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method
