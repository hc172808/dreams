.class public final Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-dynamic-links@@20.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;->zza:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters;
    .locals 3

    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;
    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters;-><init>(Landroid/os/Bundle;Lcom/google/firebase/dynamiclinks/zza;)V

    return-object v0
.end method

.method public getForcedRedirectEnabled()Z
    .locals 2

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "efr"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setForcedRedirectEnabled(Z)Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;
    .locals 2
    .param p1, "forcedRedirectEnabled"    # Z

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;
    .end local p1    # "forcedRedirectEnabled":Z
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "efr"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method
