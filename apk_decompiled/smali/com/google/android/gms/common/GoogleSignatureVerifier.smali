.class public Lcom/google/android/gms/common/GoogleSignatureVerifier;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.5.0"


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static zza:Lcom/google/android/gms/common/GoogleSignatureVerifier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final zzb:Landroid/content/Context;

.field private volatile zzc:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb:Landroid/content/Context;

    .line 3
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;
    .locals 2

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v0, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    if-nez v1, :cond_0

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/common/zzc;->zza(Landroid/content/Context;)V

    .line 8
    new-instance v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    .line 9
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sget-object p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    return-object p0

    .line 9
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static varargs zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzd;)Lcom/google/android/gms/common/zzd;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 92
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 93
    return-object v1

    .line 94
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 95
    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-object v1

    .line 97
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/zzg;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/zzg;-><init>([B)V

    .line 98
    nop

    :goto_0
    array-length p0, p1

    if-ge v2, p0, :cond_3

    .line 99
    aget-object p0, p1, v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/zzd;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 100
    aget-object p0, p1, v2

    return-object p0

    .line 101
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_3
    return-object v1
.end method

.method private final zza(Ljava/lang/String;ZZ)Lcom/google/android/gms/common/zzs;
    .locals 5

    .line 52
    const-string p2, "null pkg"

    if-nez p1, :cond_0

    .line 53
    invoke-static {p2}, Lcom/google/android/gms/common/zzs;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/zzs;

    move-result-object p1

    return-object p1

    .line 54
    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 55
    invoke-static {}, Lcom/google/android/gms/common/zzs;->zza()Lcom/google/android/gms/common/zzs;

    move-result-object p1

    return-object p1

    .line 56
    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/zzc;->zza()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 57
    iget-object p2, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb:Landroid/content/Context;

    .line 58
    invoke-static {p2}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result p2

    .line 59
    invoke-static {p1, p2, v0, v0}, Lcom/google/android/gms/common/zzc;->zza(Ljava/lang/String;ZZZ)Lcom/google/android/gms/common/zzs;

    move-result-object p2

    goto :goto_2

    .line 60
    :cond_2
    :try_start_0
    iget-object p3, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb:Landroid/content/Context;

    .line 61
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const/16 v1, 0x40

    .line 62
    invoke-virtual {p3, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    nop

    .line 66
    nop

    .line 67
    nop

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result v1

    .line 69
    nop

    .line 70
    if-nez p3, :cond_3

    .line 71
    invoke-static {p2}, Lcom/google/android/gms/common/zzs;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/zzs;

    move-result-object p2

    goto :goto_1

    .line 72
    :cond_3
    iget-object p2, p3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p2, :cond_6

    iget-object p2, p3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_4

    goto :goto_0

    .line 74
    :cond_4
    new-instance p2, Lcom/google/android/gms/common/zzg;

    iget-object v3, p3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-direct {p2, v3}, Lcom/google/android/gms/common/zzg;-><init>([B)V

    .line 75
    iget-object v3, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 76
    nop

    .line 77
    invoke-static {v3, p2, v1, v0}, Lcom/google/android/gms/common/zzc;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zzd;ZZ)Lcom/google/android/gms/common/zzs;

    move-result-object v1

    .line 78
    nop

    .line 79
    iget-boolean v4, v1, Lcom/google/android/gms/common/zzs;->zza:Z

    .line 80
    if-eqz v4, :cond_5

    iget-object v4, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_5

    iget-object p3, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    .line 81
    invoke-static {v3, p2, v0, v2}, Lcom/google/android/gms/common/zzc;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zzd;ZZ)Lcom/google/android/gms/common/zzs;

    move-result-object p2

    .line 82
    iget-boolean p2, p2, Lcom/google/android/gms/common/zzs;->zza:Z

    .line 83
    if-eqz p2, :cond_5

    .line 84
    const-string p2, "debuggable release cert app rejected"

    invoke-static {p2}, Lcom/google/android/gms/common/zzs;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/zzs;

    move-result-object p2

    goto :goto_1

    .line 85
    :cond_5
    move-object p2, v1

    goto :goto_1

    .line 73
    :cond_6
    :goto_0
    const-string/jumbo p2, "single cert required"

    invoke-static {p2}, Lcom/google/android/gms/common/zzs;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/zzs;

    move-result-object p2

    .line 86
    :goto_1
    nop

    .line 87
    :goto_2
    nop

    .line 88
    iget-boolean p3, p2, Lcom/google/android/gms/common/zzs;->zza:Z

    .line 89
    if-eqz p3, :cond_7

    .line 90
    iput-object p1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc:Ljava/lang/String;

    .line 91
    :cond_7
    return-object p2

    .line 64
    :catch_0
    move-exception p2

    .line 65
    const-string p3, "no pkg "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-static {p1, p2}, Lcom/google/android/gms/common/zzs;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzs;

    move-result-object p1

    return-object p1
.end method

.method public static zza(Landroid/content/pm/PackageInfo;Z)Z
    .locals 3

    .line 38
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_1

    .line 39
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 40
    sget-object p1, Lcom/google/android/gms/common/zzi;->zza:[Lcom/google/android/gms/common/zzd;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzd;)Lcom/google/android/gms/common/zzd;

    move-result-object p0

    goto :goto_0

    .line 41
    :cond_0
    new-array p1, v1, [Lcom/google/android/gms/common/zzd;

    sget-object v2, Lcom/google/android/gms/common/zzi;->zza:[Lcom/google/android/gms/common/zzd;

    aget-object v2, v2, v0

    aput-object v2, p1, v0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzd;)Lcom/google/android/gms/common/zzd;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    return v1

    :cond_1
    nop

    .line 42
    return v0
.end method


# virtual methods
.method public isGooglePublicSignedPackage(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    .line 43
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 44
    return v0

    .line 45
    :cond_0
    invoke-static {p1, v0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 46
    return v2

    .line 47
    :cond_1
    invoke-static {p1, v2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 48
    iget-object p1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 49
    return v2

    .line 50
    :cond_2
    const-string p1, "GoogleSignatureVerifier"

    const-string v1, "Test-keys aren\'t accepted on this build."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_3
    return v0
.end method

.method public isPackageGoogleSigned(Ljava/lang/String;)Z
    .locals 1

    .line 31
    nop

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Ljava/lang/String;ZZ)Lcom/google/android/gms/common/zzs;

    move-result-object p1

    .line 33
    nop

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/common/zzs;->zzc()V

    .line 35
    nop

    .line 36
    iget-boolean p1, p1, Lcom/google/android/gms/common/zzs;->zza:Z

    .line 37
    return p1
.end method

.method public isUidGoogleSigned(I)Z
    .locals 5

    .line 11
    nop

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzb:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 13
    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v0, p1, v3

    .line 17
    nop

    .line 18
    invoke-direct {p0, v0, v2, v2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Ljava/lang/String;ZZ)Lcom/google/android/gms/common/zzs;

    move-result-object v0

    .line 19
    nop

    .line 20
    nop

    .line 21
    iget-boolean v4, v0, Lcom/google/android/gms/common/zzs;->zza:Z

    .line 22
    if-eqz v4, :cond_1

    .line 23
    goto :goto_2

    .line 24
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 25
    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/zzs;

    goto :goto_2

    .line 14
    :cond_3
    :goto_1
    const-string p1, "no pkgs"

    invoke-static {p1}, Lcom/google/android/gms/common/zzs;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/zzs;

    move-result-object v0

    .line 26
    :goto_2
    nop

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/common/zzs;->zzc()V

    .line 28
    nop

    .line 29
    iget-boolean p1, v0, Lcom/google/android/gms/common/zzs;->zza:Z

    .line 30
    return p1
.end method
