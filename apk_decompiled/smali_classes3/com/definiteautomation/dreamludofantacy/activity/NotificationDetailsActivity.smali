.class public Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "NotificationDetailsActivity.java"


# instance fields
.field public collapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field public count:I

.field public created:Ljava/lang/String;

.field public dateTv:Landroid/widget/TextView;

.field public description:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public imageIv:Landroid/widget/ImageView;

.field private isWhichScreenNotification:Z

.field public prefName:Ljava/lang/String;

.field public preferences:Landroid/content/SharedPreferences;

.field public title:Ljava/lang/String;

.field public titleTv:Landroid/widget/TextView;

.field public toolbar:Landroidx/appcompat/widget/Toolbar;

.field public url:Ljava/lang/String;

.field public viewMoreBt:Landroid/widget/Button;

.field public webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 40
    const-string v0, "Ludo"

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->prefName:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->count:I

    return-void
.end method


# virtual methods
.method public getCounter()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->prefName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->preferences:Landroid/content/SharedPreferences;

    .line 146
    const-string v2, "counter"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->count:I

    .line 147
    return-void
.end method

.method public synthetic lambda$onCreate$0$NotificationDetailsActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 61
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$NotificationDetailsActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 126
    :try_start_0
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    .line 127
    .local v0, "builder":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v1

    .line 128
    .local v1, "customTabsIntent":Landroidx/browser/customtabs/CustomTabsIntent;
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v0    # "builder":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .end local v1    # "customTabsIntent":Landroidx/browser/customtabs/CustomTabsIntent;
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 151
    iget-boolean v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->isWhichScreenNotification:Z

    if-nez v0, :cond_0

    .line 152
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0

    .line 155
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 158
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->finish()V

    .line 160
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 45
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 49
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 50
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 52
    const v1, 0x7f0803d5

    invoke-virtual {p0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 53
    invoke-virtual {p0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 54
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 57
    const v1, 0x7f080117

    invoke-virtual {p0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->collapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 58
    const v2, 0x7f110328

    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setCollapsedTitleTextAppearance(I)V

    .line 59
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->collapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const v2, 0x7f110329

    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setExpandedTitleTextAppearance(I)V

    .line 61
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$NotificationDetailsActivity$5MyRvXz-G_chN6_Vo_fIcFdzA-Q;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$NotificationDetailsActivity$5MyRvXz-G_chN6_Vo_fIcFdzA-Q;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v1, 0x7f0803d2

    invoke-virtual {p0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->titleTv:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f080140

    invoke-virtual {p0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->dateTv:Landroid/widget/TextView;

    .line 65
    const v1, 0x7f08042b

    invoke-virtual {p0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->viewMoreBt:Landroid/widget/Button;

    .line 66
    const v1, 0x7f0801d8

    invoke-virtual {p0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->imageIv:Landroid/widget/ImageView;

    .line 67
    const v1, 0x7f080439

    invoke-virtual {p0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->webView:Landroid/webkit/WebView;

    .line 69
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 70
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "isNotification"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->isWhichScreenNotification:Z

    .line 71
    const v4, 0x7f07005f

    const/16 v5, 0x1e0

    const/16 v6, 0x2d0

    const-string v7, "https://dreamludo.definiteautomation.com/"

    const-string v8, "null"

    const-string v9, "created"

    const-string v10, "url"

    const-string v11, "image"

    const-string v12, "description"

    const-string v13, "title"

    if-nez v2, :cond_1

    .line 72
    invoke-virtual {v1, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->title:Ljava/lang/String;

    .line 73
    invoke-virtual {v1, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->description:Ljava/lang/String;

    .line 74
    invoke-virtual {v1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->image:Ljava/lang/String;

    .line 75
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->url:Ljava/lang/String;

    .line 76
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->created:Ljava/lang/String;

    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->image:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->image:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->imageIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 84
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->getCounter()V

    .line 89
    iget v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->count:I

    invoke-virtual {p0, v2}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->saveCounter(I)V

    .line 91
    invoke-virtual {v1, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->title:Ljava/lang/String;

    .line 92
    invoke-virtual {v1, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->description:Ljava/lang/String;

    .line 93
    invoke-virtual {v1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->image:Ljava/lang/String;

    .line 94
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->url:Ljava/lang/String;

    .line 95
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->created:Ljava/lang/String;

    .line 98
    :try_start_1
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->image:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 99
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->image:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->imageIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    :cond_2
    goto :goto_1

    .line 101
    :catch_1
    move-exception v2

    .line 102
    .restart local v2    # "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 106
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_1
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->titleTv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->dateTv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->created:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 110
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->webView:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->description:Ljava/lang/String;

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    invoke-virtual {v2, v4, v5, v6}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/16 v4, 0x8

    if-nez v2, :cond_4

    .line 113
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->url:Ljava/lang/String;

    const-string v5, "false"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 114
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->viewMoreBt:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 117
    :cond_3
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->viewMoreBt:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 121
    :cond_4
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->viewMoreBt:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    :goto_2
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->viewMoreBt:Landroid/widget/Button;

    new-instance v3, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$NotificationDetailsActivity$6PrO0tBQeUB3AMP3cwyOQlrvoKk;

    invoke-direct {v3, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$NotificationDetailsActivity$6PrO0tBQeUB3AMP3cwyOQlrvoKk;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method

.method public saveCounter(I)V
    .locals 2
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    .line 136
    add-int/lit8 p1, p1, -0x1

    .line 138
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->prefName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/NotificationDetailsActivity;->preferences:Landroid/content/SharedPreferences;

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 140
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "counter"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 142
    return-void
.end method
