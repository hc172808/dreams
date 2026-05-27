.class public Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;
.super Ljava/lang/Object;
.source "DataCollectionArbiter.java"


# static fields
.field private static final FIREBASE_CRASHLYTICS_COLLECTION_ENABLED:Ljava/lang/String; = "firebase_crashlytics_collection_enabled"


# instance fields
.field private crashlyticsDataCollectionEnabled:Ljava/lang/Boolean;

.field dataCollectionEnabledTask:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final dataCollectionExplicitlyApproved:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;

.field private setInManifest:Z

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private final taskLock:Ljava/lang/Object;

.field taskResolved:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 5
    .param p1, "app"    # Lcom/google/firebase/FirebaseApp;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->taskLock:Ljava/lang/Object;

    .line 38
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->dataCollectionEnabledTask:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 39
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->taskResolved:Z

    .line 41
    iput-boolean v1, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->setInManifest:Z

    .line 49
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->dataCollectionExplicitlyApproved:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 53
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 55
    .local v1, "applicationContext":Landroid/content/Context;
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 56
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 58
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->getDataCollectionValueFromSharedPreferences()Ljava/lang/Boolean;

    move-result-object v2

    .line 59
    .local v2, "dataCollectionEnabled":Ljava/lang/Boolean;
    if-nez v2, :cond_0

    .line 60
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->getDataCollectionValueFromManifest(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    .line 63
    :cond_0
    iput-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->crashlyticsDataCollectionEnabled:Ljava/lang/Boolean;

    .line 65
    monitor-enter v0

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->isAutomaticDataCollectionEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->dataCollectionEnabledTask:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 68
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->taskResolved:Z

    .line 70
    :cond_1
    monitor-exit v0

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getDataCollectionValueFromManifest(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;

    .line 161
    nop

    .line 162
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->readCrashlyticsDataCollectionEnabledFromManifest(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    .line 163
    .local v0, "manifestSetting":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 164
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->setInManifest:Z

    .line 165
    const/4 v1, 0x0

    return-object v1

    .line 167
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->setInManifest:Z

    .line 168
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private getDataCollectionValueFromSharedPreferences()Ljava/lang/Boolean;
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "firebase_crashlytics_collection_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->setInManifest:Z

    .line 154
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 156
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private logDataCollectionState(Z)V
    .locals 5
    .param p1, "dataCollectionEnabled"    # Z

    .line 139
    if-eqz p1, :cond_0

    const-string v0, "ENABLED"

    goto :goto_0

    :cond_0
    const-string v0, "DISABLED"

    .line 141
    .local v0, "stateString":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->crashlyticsDataCollectionEnabled:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 142
    const-string v1, "global Firebase setting"

    goto :goto_1

    .line 143
    :cond_1
    iget-boolean v1, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->setInManifest:Z

    if-eqz v1, :cond_2

    const-string v1, "firebase_crashlytics_collection_enabled manifest flag"

    goto :goto_1

    :cond_2
    const-string v1, "API"

    :goto_1
    nop

    .line 144
    .local v1, "fromString":Ljava/lang/String;
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 146
    const-string v4, "Crashlytics automatic data collection %s by %s."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method private static readCrashlyticsDataCollectionEnabledFromManifest(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "applicationContext"    # Landroid/content/Context;

    .line 175
    const-string v0, "firebase_crashlytics_collection_enabled"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 176
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 177
    nop

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 178
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 180
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 182
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 190
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    const-string v2, "Could not read data collection permission from manifest"

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static storeDataCollectionValueInSharedPreferences(Landroid/content/SharedPreferences;Ljava/lang/Boolean;)V
    .locals 3
    .param p0, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p1, "enabled"    # Ljava/lang/Boolean;

    .line 197
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 198
    .local v0, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "firebase_crashlytics_collection_enabled"

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 201
    :cond_0
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 203
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 204
    return-void
.end method


# virtual methods
.method public grantDataCollectionPermission(Z)V
    .locals 2
    .param p1, "dataCollectionToken"    # Z

    .line 132
    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->dataCollectionExplicitlyApproved:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 136
    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An invalid data collection token was used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized isAutomaticDataCollectionEnabled()Z
    .locals 1

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->crashlyticsDataCollectionEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 77
    .end local p0    # "this":Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->isDataCollectionDefaultEnabled()Z

    move-result v0

    :goto_0
    nop

    .line 78
    .local v0, "dataCollectionEnabled":Z
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->logDataCollectionState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return v0

    .line 74
    .end local v0    # "dataCollectionEnabled":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCrashlyticsDataCollectionEnabled(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "enabled"    # Ljava/lang/Boolean;

    monitor-enter p0

    .line 83
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 84
    :try_start_0
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->setInManifest:Z

    goto :goto_0

    .line 82
    .end local p0    # "this":Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;
    .end local p1    # "enabled":Ljava/lang/Boolean;
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 87
    .restart local p1    # "enabled":Ljava/lang/Boolean;
    :cond_0
    :goto_0
    nop

    .line 88
    if-eqz p1, :cond_1

    .line 89
    move-object v1, p1

    goto :goto_1

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->getDataCollectionValueFromManifest(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->crashlyticsDataCollectionEnabled:Ljava/lang/Boolean;

    .line 91
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v1, p1}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->storeDataCollectionValueInSharedPreferences(Landroid/content/SharedPreferences;Ljava/lang/Boolean;)V

    .line 93
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->taskLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->isAutomaticDataCollectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->taskResolved:Z

    if-nez v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->dataCollectionEnabledTask:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->taskResolved:Z

    goto :goto_2

    .line 100
    :cond_2
    iget-boolean v2, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->taskResolved:Z

    if-eqz v2, :cond_3

    .line 101
    new-instance v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->dataCollectionEnabledTask:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 102
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->taskResolved:Z

    .line 105
    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    monitor-exit p0

    return-void

    .line 105
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    .end local p1    # "enabled":Ljava/lang/Boolean;
    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public waitForAutomaticDataCollectionEnabled()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->taskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->dataCollectionEnabledTask:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public waitForDataCollectionPermission()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->dataCollectionExplicitlyApproved:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 120
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/DataCollectionArbiter;->waitForAutomaticDataCollectionEnabled()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 119
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/Utils;->race(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
