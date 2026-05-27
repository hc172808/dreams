.class public final Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-dynamic-links@@20.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "bundleId"    # Ljava/lang/String;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;
    .end local p1    # "bundleId":Ljava/lang/String;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;->zza:Landroid/os/Bundle;

    .line 2
    const-string v1, "ibi"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters;
    .locals 3

    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;
    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters;-><init>(Landroid/os/Bundle;Lcom/google/firebase/dynamiclinks/zza;)V

    return-object v0
.end method

.method public getAppStoreId()Ljava/lang/String;
    .locals 3

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "isi"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomScheme()Ljava/lang/String;
    .locals 3

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "ius"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpadBundleId()Ljava/lang/String;
    .locals 3

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "ipbi"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpadFallbackUrl()Landroid/net/Uri;
    .locals 2

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "ipfl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :cond_0
    return-object v0
.end method

.method public getMinimumVersion()Ljava/lang/String;
    .locals 3

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "imv"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAppStoreId(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;
    .locals 2
    .param p1, "appStoreId"    # Ljava/lang/String;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;
    .end local p1    # "appStoreId":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "isi"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCustomScheme(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;
    .locals 2
    .param p1, "customScheme"    # Ljava/lang/String;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;
    .end local p1    # "customScheme":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "ius"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFallbackUrl(Landroid/net/Uri;)Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;
    .locals 2
    .param p1, "fallbackUrl"    # Landroid/net/Uri;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;
    .end local p1    # "fallbackUrl":Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "ifl"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public setIpadBundleId(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;
    .locals 2
    .param p1, "bundleId"    # Ljava/lang/String;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;
    .end local p1    # "bundleId":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "ipbi"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIpadFallbackUrl(Landroid/net/Uri;)Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;
    .locals 2
    .param p1, "fallbackUrl"    # Landroid/net/Uri;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;
    .end local p1    # "fallbackUrl":Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "ipfl"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public setMinimumVersion(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;
    .locals 2
    .param p1, "minimumVersion"    # Ljava/lang/String;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;
    .end local p1    # "minimumVersion":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "imv"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
