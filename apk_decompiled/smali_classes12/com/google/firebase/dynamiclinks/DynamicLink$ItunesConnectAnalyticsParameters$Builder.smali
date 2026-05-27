.class public final Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-dynamic-links@@20.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters;
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

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;->zza:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters;
    .locals 3

    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;
    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters;-><init>(Landroid/os/Bundle;Lcom/google/firebase/dynamiclinks/zza;)V

    return-object v0
.end method

.method public getAffiliateToken()Ljava/lang/String;
    .locals 3

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "at"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCampaignToken()Ljava/lang/String;
    .locals 3

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "ct"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderToken()Ljava/lang/String;
    .locals 3

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "pt"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAffiliateToken(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;
    .locals 2
    .param p1, "affiliateToken"    # Ljava/lang/String;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;
    .end local p1    # "affiliateToken":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "at"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCampaignToken(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;
    .locals 2
    .param p1, "campaignToken"    # Ljava/lang/String;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;
    .end local p1    # "campaignToken":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "ct"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setProviderToken(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;
    .locals 2
    .param p1, "providerToken"    # Ljava/lang/String;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;
    .end local p1    # "providerToken":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$ItunesConnectAnalyticsParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "pt"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
