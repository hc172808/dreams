.class public Lcom/definiteautomation/dreamludofantacy/helper/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field public static final KEY_COUNTRY_CODE:Ljava/lang/String; = "KEY_COUNTRY_CODE"

.field public static final KEY_EMAIL:Ljava/lang/String; = "KEY_EMAIL"

.field public static final KEY_FULL_NAME:Ljava/lang/String; = "KEY_FULL_NAME"

.field public static final KEY_IS_AUTO_LOGIN:Ljava/lang/String; = "KEY_IS_AUTO_LOGIN"

.field public static final KEY_MOBILE:Ljava/lang/String; = "KEY_MOBILE"

.field public static final KEY_PASSWORD:Ljava/lang/String; = "KEY_PASSWORD"

.field public static final KEY_PROFILE_PHOTO:Ljava/lang/String; = "KEY_PROFILE_PHOTO"

.field public static final KEY_REFER_CODE:Ljava/lang/String; = "KEY_REFER_CODE"

.field public static final KEY_USERNAME:Ljava/lang/String; = "KEY_USERNAME"

.field public static final KEY_USER_ID:Ljava/lang/String; = "KEY_USER_ID"

.field public static final KEY_WHATSAPP:Ljava/lang/String; = "KEY_WHATSAPP"

.field private static final PREF_NAME:Ljava/lang/String; = "com.codezon.ludofantacy"

.field private static instance:Lcom/definiteautomation/dreamludofantacy/helper/Preferences;


# instance fields
.field public context:Landroid/content/Context;

.field private final sharedPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->context:Landroid/content/Context;

    .line 65
    const-string v0, "com.codezon.ludofantacy"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->sharedPref:Landroid/content/SharedPreferences;

    .line 66
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 75
    sget-object v0, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->instance:Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    invoke-direct {v0, p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->instance:Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    .line 78
    :cond_0
    sget-object v0, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->instance:Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    return-object v0
.end method


# virtual methods
.method public getSharedPref()Landroid/content/SharedPreferences;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->sharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 108
    .local v0, "sharedPrefEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    return-void
.end method

.method public setlogout()V
    .locals 4

    .line 113
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    .local v0, "sharedPrefEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->context:Landroid/content/Context;

    const-class v3, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "finish"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    const v2, 0x14008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 120
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    return-void
.end method
