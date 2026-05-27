.class public Lcom/google/firebase/crashlytics/internal/common/AppData;
.super Ljava/lang/Object;
.source "AppData.java"


# instance fields
.field public final buildId:Ljava/lang/String;

.field public final googleAppId:Ljava/lang/String;

.field public final installerPackageName:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final unityVersionProvider:Lcom/google/firebase/crashlytics/internal/unity/UnityVersionProvider;

.field public final versionCode:Ljava/lang/String;

.field public final versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/unity/UnityVersionProvider;)V
    .locals 0
    .param p1, "googleAppId"    # Ljava/lang/String;
    .param p2, "buildId"    # Ljava/lang/String;
    .param p3, "installerPackageName"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "versionCode"    # Ljava/lang/String;
    .param p6, "versionName"    # Ljava/lang/String;
    .param p7, "unityVersionProvider"    # Lcom/google/firebase/crashlytics/internal/unity/UnityVersionProvider;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/AppData;->googleAppId:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/AppData;->buildId:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/AppData;->installerPackageName:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/AppData;->packageName:Ljava/lang/String;

    .line 72
    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/common/AppData;->versionCode:Ljava/lang/String;

    .line 73
    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/common/AppData;->versionName:Ljava/lang/String;

    .line 74
    iput-object p7, p0, Lcom/google/firebase/crashlytics/internal/common/AppData;->unityVersionProvider:Lcom/google/firebase/crashlytics/internal/unity/UnityVersionProvider;

    .line 75
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/IdManager;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/unity/UnityVersionProvider;)Lcom/google/firebase/crashlytics/internal/common/AppData;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "idManager"    # Lcom/google/firebase/crashlytics/internal/common/IdManager;
    .param p2, "googleAppId"    # Ljava/lang/String;
    .param p3, "buildId"    # Ljava/lang/String;
    .param p4, "unityVersionProvider"    # Lcom/google/firebase/crashlytics/internal/unity/UnityVersionProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 43
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/IdManager;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v9

    .line 44
    .local v9, "installerPackageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 45
    .local v10, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    invoke-virtual {v10, v8, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 46
    .local v11, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v0, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 48
    .local v12, "versionCode":Ljava/lang/String;
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "0.0"

    goto :goto_0

    :cond_0
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    move-object v6, v0

    .line 50
    .local v6, "versionName":Ljava/lang/String;
    new-instance v13, Lcom/google/firebase/crashlytics/internal/common/AppData;

    move-object v0, v13

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v9

    move-object v4, v8

    move-object v5, v12

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/crashlytics/internal/common/AppData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/unity/UnityVersionProvider;)V

    return-object v13
.end method
