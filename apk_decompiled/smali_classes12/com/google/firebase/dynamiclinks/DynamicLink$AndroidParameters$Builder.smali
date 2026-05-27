.class public final Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-dynamic-links@@20.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 3

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;->zza:Landroid/os/Bundle;

    .line 4
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 5
    const-string v2, "apn"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    const-string v1, "FirebaseApp not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;
    .end local p1    # "packageName":Ljava/lang/String;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    .line 6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;->zza:Landroid/os/Bundle;

    .line 7
    const-string v1, "apn"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters;
    .locals 3

    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;
    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters;-><init>(Landroid/os/Bundle;Lcom/google/firebase/dynamiclinks/zza;)V

    return-object v0
.end method

.method public getFallbackUrl()Landroid/net/Uri;
    .locals 2

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "afl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :cond_0
    return-object v0
.end method

.method public getMinimumVersion()I
    .locals 2

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "amv"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setFallbackUrl(Landroid/net/Uri;)Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;
    .locals 2
    .param p1, "fallbackUrl"    # Landroid/net/Uri;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;
    .end local p1    # "fallbackUrl":Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "afl"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public setMinimumVersion(I)Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;
    .locals 2
    .param p1, "minimumVersion"    # I

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;
    .end local p1    # "minimumVersion":I
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "amv"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method
