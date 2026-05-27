.class public Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;
.super Ljava/lang/Object;
.source "SharedPreferencesUtils.java"


# static fields
.field static final PREFERENCES_PACKAGE_NAME:Ljava/lang/String; = "com.google.firebase.inappmessaging"


# instance fields
.field private final firebaseApp:Lcom/google/firebase/FirebaseApp;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 0
    .param p1, "firebaseApp"    # Lcom/google/firebase/FirebaseApp;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    .line 37
    return-void
.end method


# virtual methods
.method public clearPreference(Ljava/lang/String;)V
    .locals 3
    .param p1, "preference"    # Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 60
    .local v0, "application":Landroid/app/Application;
    nop

    .line 61
    const-string v1, "com.google.firebase.inappmessaging"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 62
    .local v1, "preferencesEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    return-void
.end method

.method public getAndSetBooleanPreference(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 74
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 75
    .local v0, "application":Landroid/app/Application;
    nop

    .line 76
    const-string v1, "com.google.firebase.inappmessaging"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 79
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 81
    .local v2, "result":Z
    return v2

    .line 84
    .end local v2    # "result":Z
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->setBooleanPreference(Ljava/lang/String;Z)V

    .line 85
    return p2
.end method

.method public getBooleanManifestValue(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 159
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 162
    .local v0, "application":Landroid/app/Application;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 163
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 164
    nop

    .line 166
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 165
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 167
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 169
    invoke-virtual {v3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 176
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    .line 179
    :goto_0
    return p2
.end method

.method public getBooleanPreference(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 96
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 97
    .local v0, "application":Landroid/app/Application;
    nop

    .line 98
    const-string v1, "com.google.firebase.inappmessaging"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 101
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 103
    .local v2, "result":Z
    return v2

    .line 106
    .end local v2    # "result":Z
    :cond_0
    return p2
.end method

.method public isManifestSet(Ljava/lang/String;)Z
    .locals 5
    .param p1, "preference"    # Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 133
    .local v0, "application":Landroid/app/Application;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 134
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_1

    .line 135
    nop

    .line 137
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    .line 136
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 138
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 140
    invoke-virtual {v4, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 138
    :goto_0
    return v1

    .line 146
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    goto :goto_1

    .line 142
    :catch_0
    move-exception v2

    .line 147
    :goto_1
    return v1
.end method

.method public isPreferenceSet(Ljava/lang/String;)Z
    .locals 3
    .param p1, "preference"    # Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 117
    .local v0, "application":Landroid/app/Application;
    nop

    .line 118
    const-string v1, "com.google.firebase.inappmessaging"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 120
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public setBooleanPreference(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 46
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->firebaseApp:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 47
    .local v0, "application":Landroid/app/Application;
    nop

    .line 48
    const-string v1, "com.google.firebase.inappmessaging"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 49
    .local v1, "preferencesEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 51
    return-void
.end method
