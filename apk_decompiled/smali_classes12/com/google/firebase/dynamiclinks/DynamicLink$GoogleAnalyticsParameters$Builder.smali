.class public final Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-dynamic-links@@20.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters;
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

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->zza:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "medium"    # Ljava/lang/String;
    .param p3, "campaign"    # Ljava/lang/String;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;
    .end local p1    # "source":Ljava/lang/String;
    .end local p2    # "medium":Ljava/lang/String;
    .end local p3    # "campaign":Ljava/lang/String;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->zza:Landroid/os/Bundle;

    .line 3
    const-string v1, "utm_source"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-string p1, "utm_medium"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-string p1, "utm_campaign"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters;
    .locals 3

    new-instance v0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;
    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters;-><init>(Landroid/os/Bundle;Lcom/google/firebase/dynamiclinks/zza;)V

    return-object v0
.end method

.method public getCampaign()Ljava/lang/String;
    .locals 3

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "utm_campaign"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 3

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "utm_content"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMedium()Ljava/lang/String;
    .locals 3

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "utm_medium"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 3

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "utm_source"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTerm()Ljava/lang/String;
    .locals 3

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "utm_term"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCampaign(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;
    .locals 2
    .param p1, "campaign"    # Ljava/lang/String;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;
    .end local p1    # "campaign":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "utm_campaign"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;
    .end local p1    # "content":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "utm_content"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMedium(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;
    .locals 2
    .param p1, "medium"    # Ljava/lang/String;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;
    .end local p1    # "medium":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "utm_medium"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;
    .end local p1    # "source":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "utm_source"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTerm(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;
    .locals 2
    .param p1, "term"    # Ljava/lang/String;

    .end local p0    # "this":Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;
    .end local p1    # "term":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/firebase/dynamiclinks/DynamicLink$GoogleAnalyticsParameters$Builder;->zza:Landroid/os/Bundle;

    .line 1
    const-string v1, "utm_term"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
