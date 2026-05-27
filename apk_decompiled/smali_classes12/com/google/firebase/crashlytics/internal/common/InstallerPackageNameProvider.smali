.class Lcom/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider;
.super Ljava/lang/Object;
.source "InstallerPackageNameProvider.java"


# static fields
.field private static final NO_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = ""


# instance fields
.field private installerPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "appContext"    # Landroid/content/Context;

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 41
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "hostAppPackageName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "installerPackageName":Ljava/lang/String;
    if-nez v2, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    return-object v3
.end method


# virtual methods
.method declared-synchronized getInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "appContext"    # Landroid/content/Context;

    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider;->installerPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 34
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider;->loadInstallerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider;->installerPackageName:Ljava/lang/String;

    .line 36
    .end local p0    # "this":Lcom/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider;
    :cond_0
    const-string v0, ""

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/InstallerPackageNameProvider;->installerPackageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 32
    .end local p1    # "appContext":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
