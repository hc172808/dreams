.class public final Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-dynamic-links@@20.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/dynamiclinks/DynamicLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/firebase/dynamiclinks/internal/zzl;

.field private final zzb:Landroid/os/Bundle;

.field private final zzc:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/google/firebase/dynamiclinks/internal/zzl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zza:Lcom/google/firebase/dynamiclinks/internal/zzl;

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzb:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/google/firebase/dynamiclinks/internal/zzl;->zzb()Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseOptions;->getApiKey()Ljava/lang/String;

    move-result-object p1

    .line 3
    const-string v1, "apiKey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    .line 4
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzc:Landroid/os/Bundle;

    .line 5
    const-string v1, "parameters"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private final zza()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzb:Landroid/os/Bundle;

    .line 1
    const-string v1, "apiKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string v1, "Missing API key. Set with setApiKey()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public buildDynamicLink()Lcom/google/firebase/dynamiclinks/DynamicLink;
    .locals 2

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzb:Landroid/os/Bundle;

    .line 1
    invoke-static {v0}, Lcom/google/firebase/dynamiclinks/internal/zzl;->zzc(Landroid/os/Bundle;)V

    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink;

    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzb:Landroid/os/Bundle;

    .line 2
    invoke-direct {v0, v1}, Lcom/google/firebase/dynamiclinks/DynamicLink;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public buildShortDynamicLink()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/dynamiclinks/ShortDynamicLink;",
            ">;"
        }
    .end annotation

    .line 1
    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    invoke-direct {p0}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zza()V

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zza:Lcom/google/firebase/dynamiclinks/internal/zzl;

    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzb:Landroid/os/Bundle;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/firebase/dynamiclinks/internal/zzl;->zza(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public buildShortDynamicLink(I)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1, "suffix"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/dynamiclinks/ShortDynamicLink;",
            ">;"
        }
    .end annotation

    .line 3
    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .end local p1    # "suffix":I
    invoke-direct {p0}, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zza()V

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzb:Landroid/os/Bundle;

    .line 4
    const-string v1, "suffix"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zza:Lcom/google/firebase/dynamiclinks/internal/zzl;

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzb:Landroid/os/Bundle;

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/firebase/dynamiclinks/internal/zzl;->zza(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getDomainUriPrefix()Ljava/lang/String;
    .locals 3

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzb:Landroid/os/Bundle;

    .line 1
    const-string v1, "domainUriPrefix"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLink()Landroid/net/Uri;
    .locals 2

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzc:Landroid/os/Bundle;

    .line 1
    const-string v1, "link"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :cond_0
    return-object v0
.end method

.method public getLongLink()Landroid/net/Uri;
    .locals 2

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzc:Landroid/os/Bundle;

    .line 1
    const-string v1, "dynamicLink"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :cond_0
    return-object v0
.end method

.method public setAndroidParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .locals 1
    .param p1, "androidParameters"    # Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .end local p1    # "androidParameters":Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzc:Landroid/os/Bundle;

    .line 1
    iget-object p1, p1, Lcom/google/firebase/dynamiclinks/DynamicLink$AndroidParameters;->zza:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public setDomainUriPrefix(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .locals 3
    .param p1, "domainUriPrefix"    # Ljava/lang/String;

    .line 1
    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .end local p1    # "domainUriPrefix":Ljava/lang/String;
    const-string v0, "(https:\\/\\/)?[a-z0-9]{3,}\\.app\\.goo\\.gl$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    const-string v0, "(https:\\/\\/)?[a-z0-9]{3,}\\.page\\.link$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzb:Landroid/os/Bundle;

    .line 3
    const-string v1, "https://"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "domain"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzb:Landroid/os/Bundle;

    .line 4
    const-string v1, "domainUriPrefix"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDynamicLinkDomain(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .locals 3
    .param p1, "dynamicLinkDomain"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .end local p1    # "dynamicLinkDomain":Ljava/lang/String;
    const-string v0, "(https:\\/\\/)?[a-z0-9]{3,}\\.app\\.goo\\.gl$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    const-string v0, "(https:\\/\\/)?[a-z0-9]{3,}\\.page\\.link$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 5
    const-string v0, "Use setDomainUriPrefix() instead, setDynamicLinkDomain() is only applicable for *.page.link and *.app.goo.gl domains."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzb:Landroid/os/Bundle;

    .line 3
    const-string v1, "domain"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzb:Landroid/os/Bundle;

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "https://"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/String;

    .line 4
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v1, "domainUriPrefix"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setGoogleAnalyticsParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .locals 1
    .param p1, "googleAnalyticsParameters"    # Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .end local p1    # "googleAnalyticsParameters":Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzc:Landroid/os/Bundle;

    .line 1
    iget-object p1, p1, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters;->zza:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public setIosParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .locals 1
    .param p1, "iosParameters"    # Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .end local p1    # "iosParameters":Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzc:Landroid/os/Bundle;

    .line 1
    iget-object p1, p1, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters;->zza:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public setItunesConnectAnalyticsParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .locals 1
    .param p1, "itunesConnectAnalyticsParameters"    # Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .end local p1    # "itunesConnectAnalyticsParameters":Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzc:Landroid/os/Bundle;

    .line 1
    iget-object p1, p1, Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters;->zza:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public setLink(Landroid/net/Uri;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .locals 2
    .param p1, "link"    # Landroid/net/Uri;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .end local p1    # "link":Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzc:Landroid/os/Bundle;

    .line 1
    const-string v1, "link"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public setLongLink(Landroid/net/Uri;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .locals 2
    .param p1, "longLink"    # Landroid/net/Uri;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .end local p1    # "longLink":Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzb:Landroid/os/Bundle;

    .line 1
    const-string v1, "dynamicLink"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public setNavigationInfoParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .locals 1
    .param p1, "navigationInfoParameters"    # Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .end local p1    # "navigationInfoParameters":Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzc:Landroid/os/Bundle;

    .line 1
    iget-object p1, p1, Lcom/google/firebase/dynamiclinks/DynamicLink$NavigationInfoParameters;->zza:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public setSocialMetaTagParameters(Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters;)Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .locals 1
    .param p1, "socialMetaTagParameters"    # Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;
    .end local p1    # "socialMetaTagParameters":Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$Builder;->zzc:Landroid/os/Bundle;

    .line 1
    iget-object p1, p1, Lcom/google/firebase/dynamiclinks/DynamicLink$SocialMetaTagParameters;->zza:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method
