.class public Lcom/payu/custombrowser/CBActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/payu/custombrowser/c$a;


# static fields
.field protected static a:Landroid/widget/ArrayAdapter;

.field public static b:I

.field protected static e:Landroid/view/View;

.field protected static f:Landroid/view/View;


# instance fields
.field c:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

.field d:Lcom/payu/custombrowser/util/c;

.field private g:Lcom/payu/custombrowser/Bank;

.field private h:Landroidx/appcompat/app/AlertDialog;

.field private i:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private b()V
    .locals 4

    .line 213
    sget-object v0, Lcom/payu/custombrowser/CBActivity;->a:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->c:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getCbDrawerCustomMenu()I

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    sget v0, Lcom/payu/custombrowser/R$id;->drawer_layout:I

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/CBActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 216
    invoke-virtual {p0}, Lcom/payu/custombrowser/CBActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/payu/custombrowser/CBActivity;->c:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v2}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getCbDrawerCustomMenu()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 219
    new-instance v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    .line 221
    const v3, 0x800003

    iput v3, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 223
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->addView(Landroid/view/View;)V

    .line 225
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    sget-object v2, Lcom/payu/custombrowser/CBActivity;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 230
    sget-object v1, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v1}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->getNavigationDrawerObject(Landroidx/drawerlayout/widget/DrawerLayout;)V

    .line 232
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->g:Lcom/payu/custombrowser/Bank;

    const-string v1, "user_input"

    const-string v2, "review_order_close_click"

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public cbSetToolBar(Landroid/view/View;)V
    .locals 4
    .param p1, "resView"    # Landroid/view/View;

    .line 196
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/payu/custombrowser/CBActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/payu/custombrowser/CBActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 199
    invoke-virtual {p0}, Lcom/payu/custombrowser/CBActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    new-instance v2, Landroidx/appcompat/app/ActionBar$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    .line 200
    invoke-virtual {p0}, Lcom/payu/custombrowser/CBActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 204
    invoke-virtual {v0, v1, v1}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    .line 205
    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/payu/custombrowser/CBActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/payu/custombrowser/CBActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 210
    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->c:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    const-string v1, "user_input"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->getDisableBackButtonDialog()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 88
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->g:Lcom/payu/custombrowser/Bank;

    const-string v2, "payu_back_button"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->g:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->showBackButtonDialog()V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->g:Lcom/payu/custombrowser/Bank;

    const-string v2, "m_back_button"

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onBackButton(Landroid/app/AlertDialog$Builder;)V

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/payu/custombrowser/CBActivity;->finish()V

    .line 96
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 63
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget v0, Lcom/payu/custombrowser/R$layout;->cb_payments:I

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/CBActivity;->setContentView(I)V

    .line 65
    new-instance v0, Lcom/payu/custombrowser/Bank;

    invoke-direct {v0}, Lcom/payu/custombrowser/Bank;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/CBActivity;->g:Lcom/payu/custombrowser/Bank;

    .line 66
    new-instance v0, Lcom/payu/custombrowser/util/c;

    invoke-direct {v0}, Lcom/payu/custombrowser/util/c;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/CBActivity;->d:Lcom/payu/custombrowser/util/c;

    .line 69
    invoke-virtual {v0}, Lcom/payu/custombrowser/util/c;->c()V

    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    invoke-virtual {p0}, Lcom/payu/custombrowser/CBActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cb_config"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    iput-object v1, p0, Lcom/payu/custombrowser/CBActivity;->c:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    .line 73
    sget-object v3, Lcom/payu/custombrowser/CBActivity;->f:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setProgressDialogCustomView(Landroid/view/View;)V

    .line 74
    invoke-virtual {p0}, Lcom/payu/custombrowser/CBActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "order_details"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 75
    iget-object v4, p0, Lcom/payu/custombrowser/CBActivity;->c:Lcom/payu/custombrowser/bean/CustomBrowserConfig;

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 76
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity;->g:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1, v0}, Lcom/payu/custombrowser/Bank;->setArguments(Landroid/os/Bundle;)V

    .line 80
    sget-object v0, Lcom/payu/custombrowser/CBActivity;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/CBActivity;->cbSetToolBar(Landroid/view/View;)V

    .line 81
    invoke-direct {p0}, Lcom/payu/custombrowser/CBActivity;->b()V

    .line 82
    invoke-virtual {p0}, Lcom/payu/custombrowser/CBActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$id;->main_frame:I

    iget-object v2, p0, Lcom/payu/custombrowser/CBActivity;->g:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 83
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->i:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 117
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->h:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->h:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 121
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->h:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    .line 123
    :cond_1
    const/4 v0, 0x3

    sput v0, Lcom/payu/custombrowser/CBActivity;->b:I

    .line 124
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->g:Lcom/payu/custombrowser/Bank;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->getSnoozeLoaderView()Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->g:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->getSnoozeLoaderView()Lcom/payu/custombrowser/widgets/SnoozeLoaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payu/custombrowser/widgets/SnoozeLoaderView;->b()V

    .line 127
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->g:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/Bank;->setSnoozeLoaderView(Lcom/payu/custombrowser/widgets/SnoozeLoaderView;)V

    .line 130
    :cond_2
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 131
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0}, Lcom/payu/custombrowser/bean/b;->getPayuCustomBrowserCallback()Lcom/payu/custombrowser/PayUCustomBrowserCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/payu/custombrowser/PayUCustomBrowserCallback;->onPaymentTerminate()V

    .line 132
    sget-object v0, Lcom/payu/custombrowser/bean/b;->SINGLETON:Lcom/payu/custombrowser/bean/b;

    invoke-virtual {v0, v1}, Lcom/payu/custombrowser/bean/b;->setPayuCustomBrowserCallback(Lcom/payu/custombrowser/PayUCustomBrowserCallback;)V

    .line 134
    :cond_3
    sput-object v1, Lcom/payu/custombrowser/CBActivity;->f:Landroid/view/View;

    .line 135
    sput-object v1, Lcom/payu/custombrowser/CBActivity;->e:Landroid/view/View;

    .line 137
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/CBActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 138
    if-eqz v0, :cond_4

    .line 139
    sget v1, Lcom/payu/custombrowser/util/b;->SNOOZE_NOTIFICATION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 142
    :cond_4
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 144
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 145
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 151
    const-string v0, "payu_response"

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 155
    if-eqz p1, :cond_2

    const-string v1, "sender"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "snoozeService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity;->g:Lcom/payu/custombrowser/Bank;

    if-eqz v1, :cond_2

    .line 157
    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->killSnoozeService()V

    .line 158
    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity;->g:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v1}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 161
    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity;->g:Lcom/payu/custombrowser/Bank;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/payu/custombrowser/Bank;->ab:Landroid/content/Intent;

    .line 162
    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity;->g:Lcom/payu/custombrowser/Bank;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/payu/custombrowser/Bank;->aa:Z

    .line 164
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "-1"

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "verificationMsgReceived"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity;->d:Lcom/payu/custombrowser/util/c;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/payu/custombrowser/R$string;->cb_snooze_verify_api_status:I

    invoke-virtual {p0, v4}, Lcom/payu/custombrowser/CBActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/payu/custombrowser/util/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity;->g:Lcom/payu/custombrowser/Bank;

    const-string v3, "transaction_verified_notification_click"

    invoke-virtual {v1, v3, v2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity;->g:Lcom/payu/custombrowser/Bank;

    const-string v3, "transaction_not_verified_notification_click"

    invoke-virtual {v1, v3, v2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    goto :goto_1

    .line 175
    :catch_0
    move-exception v1

    .line 176
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 179
    :goto_1
    iget-object v1, p0, Lcom/payu/custombrowser/CBActivity;->g:Lcom/payu/custombrowser/Bank;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/payu/custombrowser/Bank;->showTransactionStatusDialog(Ljava/lang/String;Z)V

    goto :goto_2

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->g:Lcom/payu/custombrowser/Bank;

    const-string v1, "internet_restored_notification_click"

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/payu/custombrowser/CBActivity;->g:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0, p1}, Lcom/payu/custombrowser/Bank;->resumeTransaction(Landroid/content/Intent;)V

    .line 189
    :cond_2
    :goto_2
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 55
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 56
    const/4 v0, 0x2

    sput v0, Lcom/payu/custombrowser/CBActivity;->b:I

    .line 57
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 48
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 49
    const/4 v0, 0x1

    sput v0, Lcom/payu/custombrowser/CBActivity;->b:I

    .line 51
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 43
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 44
    return-void
.end method
