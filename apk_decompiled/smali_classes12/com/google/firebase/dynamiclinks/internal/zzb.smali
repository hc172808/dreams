.class public final Lcom/google/firebase/dynamiclinks/internal/zzb;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-dynamic-links@@20.1.0"


# instance fields
.field private final zza:Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;

.field private final zzb:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/dynamiclinks/internal/zzb;->zza:Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zzd()Landroid/os/Bundle;

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/dynamiclinks/internal/DynamicLinkData;->zzd()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "scionData"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    const-string v1, "_cmp"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    const-string v1, "medium"

    const-string v2, "utm_medium"

    invoke-static {v1, v2, p1, v0}, Lcom/google/firebase/dynamiclinks/internal/zzb;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 6
    const-string v1, "source"

    const-string v2, "utm_source"

    invoke-static {v1, v2, p1, v0}, Lcom/google/firebase/dynamiclinks/internal/zzb;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 7
    const-string v1, "campaign"

    const-string v2, "utm_campaign"

    invoke-static {v1, v2, p1, v0}, Lcom/google/firebase/dynamiclinks/internal/zzb;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 3
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/google/firebase/dynamiclinks/internal/zzb;->zzb:Landroid/os/Bundle;

    return-void
.end method

.method private static zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p3, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/firebase/dynamiclinks/internal/zzb;->zzb:Landroid/os/Bundle;

    .line 1
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method
