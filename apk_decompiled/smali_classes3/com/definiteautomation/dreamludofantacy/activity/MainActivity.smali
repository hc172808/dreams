.class public Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field public static navigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;


# instance fields
.field public clickAction:Ljava/lang/String;

.field public counterTv:Landroid/widget/TextView;

.field public doubleBackToExitPressedOnce:Z

.field public isSubscribe:Ljava/lang/String;

.field public mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field public notificationFl:Landroid/widget/FrameLayout;

.field public preferences:Landroid/content/SharedPreferences;

.field public switchNotification:Landroidx/appcompat/widget/SwitchCompat;

.field public toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->doubleBackToExitPressedOnce:Z

    return-void
.end method


# virtual methods
.method public synthetic lambda$onBackPressed$3$MainActivity()V
    .locals 1

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->doubleBackToExitPressedOnce:Z

    return-void
.end method

.method public synthetic lambda$onCreate$0$MainActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/definiteautomation/dreamludofantacy/activity/NotificationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public synthetic lambda$onCreate$1$MainActivity(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 79
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f080233

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 96
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 93
    :pswitch_1
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;

    invoke-direct {v3}, Lcom/definiteautomation/dreamludofantacy/fragment/SettingFragment;-><init>()V

    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 94
    return v2

    .line 85
    :pswitch_2
    :try_start_0
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    .line 86
    .local v0, "builder":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v1

    .line 87
    .local v1, "customTabsIntent":Landroidx/browser/customtabs/CustomTabsIntent;
    sget-object v3, Lcom/definiteautomation/dreamludofantacy/helper/AppConstant;->HOW_TO_PLAY:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v0    # "builder":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .end local v1    # "customTabsIntent":Landroidx/browser/customtabs/CustomTabsIntent;
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2

    .line 81
    :pswitch_3
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment;

    invoke-direct {v3}, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment;-><init>()V

    invoke-virtual {v0, v1, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 82
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x7f080284
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic lambda$onCreate$2$MainActivity(Landroid/content/SharedPreferences;Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 112
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->switchNotification:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v0

    const-string v1, "SUB_STATUS"

    const-string v2, "Global"

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 115
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 116
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    goto :goto_0

    .line 120
    :cond_0
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->unsubscribeFromTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 122
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 138
    iget-boolean v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->doubleBackToExitPressedOnce:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->finish()V

    return-void

    .line 142
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->doubleBackToExitPressedOnce:Z

    .line 143
    const/4 v0, 0x0

    const-string v1, "Please click BACK again to exit"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MainActivity$eSNqThDpl1JMN-D6kVzAZ-ZGdR8;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MainActivity$eSNqThDpl1JMN-D6kVzAZ-ZGdR8;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 50
    const-string v0, "click_action"

    const-string v1, "default"

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v2, 0x7f0b0024

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->setContentView(I)V

    .line 52
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v2

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->clickAction:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 56
    :catch_0
    move-exception v2

    .line 57
    .local v2, "e":Ljava/lang/NullPointerException;
    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->clickAction:Ljava/lang/String;

    .line 60
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_0
    const v1, 0x7f0803d5

    invoke-virtual {p0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 61
    const v2, 0x7f080294

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->notificationFl:Landroid/widget/FrameLayout;

    .line 62
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v2, 0x7f08012f

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->counterTv:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f08037c

    invoke-virtual {p0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->switchNotification:Landroidx/appcompat/widget/SwitchCompat;

    .line 65
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->notificationFl:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MainActivity$ytSzgvGnnAi6qc1KBA67qhdGS-M;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MainActivity$ytSzgvGnnAi6qc1KBA67qhdGS-M;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->clickAction:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment;

    invoke-direct {v0}, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment;-><init>()V

    .line 74
    .local v0, "matchFragment":Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment;
    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f080233

    invoke-virtual {v2, v3, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 77
    const v2, 0x7f08027f

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    sput-object v2, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->navigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 78
    new-instance v3, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MainActivity$o6510lRQe0_kvls_EtWTPoo8QUg;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MainActivity$o6510lRQe0_kvls_EtWTPoo8QUg;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 99
    const-string v2, "Setting"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 100
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "SUB_STATUS"

    const-string v5, "true"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->isSubscribe:Ljava/lang/String;

    .line 102
    iget-object v5, p0, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->switchNotification:Landroidx/appcompat/widget/SwitchCompat;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->isSubscribe:Ljava/lang/String;

    const-string v6, "false"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v5, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 104
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->switchNotification:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v3}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v3

    const-string v4, "Global"

    if-eqz v3, :cond_1

    .line 105
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/firebase/messaging/FirebaseMessaging;->subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    goto :goto_1

    .line 108
    :cond_1
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/firebase/messaging/FirebaseMessaging;->unsubscribeFromTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 111
    :goto_1
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;->switchNotification:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v4, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MainActivity$Ypw_eiBtb20N-SNpfWl9pxAj3ag;

    invoke-direct {v4, p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$MainActivity$Ypw_eiBtb20N-SNpfWl9pxAj3ag;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 129
    return-void
.end method

.method protected onPostResume()V
    .locals 0

    .line 133
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPostResume()V

    .line 134
    return-void
.end method
