.class public final Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule_ProvidesInflaterserviceFactory;
.super Ljava/lang/Object;
.source "InflaterModule_ProvidesInflaterserviceFactory.java"

# interfaces
.implements Lcom/google/firebase/inappmessaging/display/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inappmessaging/display/dagger/internal/Factory<",
        "Landroid/view/LayoutInflater;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule;)V
    .locals 0
    .param p1, "module"    # Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule_ProvidesInflaterserviceFactory;->module:Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule;

    .line 17
    return-void
.end method

.method public static create(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule;)Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule_ProvidesInflaterserviceFactory;
    .locals 1
    .param p0, "module"    # Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule;

    .line 25
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule_ProvidesInflaterserviceFactory;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule_ProvidesInflaterserviceFactory;-><init>(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule;)V

    return-object v0
.end method

.method public static providesInflaterservice(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule;)Landroid/view/LayoutInflater;
    .locals 2
    .param p0, "instance"    # Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule;

    .line 29
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule;->providesInflaterservice()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/display/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public get()Landroid/view/LayoutInflater;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule_ProvidesInflaterserviceFactory;->module:Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule_ProvidesInflaterserviceFactory;->providesInflaterservice(Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterModule_ProvidesInflaterserviceFactory;->get()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method
