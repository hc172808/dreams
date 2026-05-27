.class public Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "UpdateAppActivity.java"


# instance fields
.field public code:I

.field public forceUpdateNote:Landroid/widget/TextView;

.field public isForceUpdate:Ljava/lang/String;

.field public later:Landroid/widget/Button;

.field public latestVersion:Ljava/lang/String;

.field public newVersion:Landroid/widget/TextView;

.field public update:Landroid/widget/Button;

.field public updateDate:Landroid/widget/TextView;

.field private updateURL:Ljava/lang/String;

.field public updatedOn:Ljava/lang/String;

.field public whatsNew:Landroid/webkit/WebView;

.field public whatsNewData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 24
    const-string v0, "0"

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->isForceUpdate:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->code:I

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$UpdateAppActivity(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->updateURL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->openWebPage(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onCreate$1$UpdateAppActivity(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->updateURL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->openWebPage(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onCreate$2$UpdateAppActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 73
    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v0

    const-string v1, "KEY_IS_AUTO_LOGIN"

    invoke-virtual {v0, v1}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/definiteautomation/dreamludofantacy/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->finish()V

    .line 78
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/definiteautomation/dreamludofantacy/activity/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->startActivity(Landroid/content/Intent;)V

    .line 81
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->finish()V

    .line 83
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 38
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f0b0031

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->setContentView(I)V

    .line 41
    const v0, 0x7f08013f

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->updateDate:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f080427

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->newVersion:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f08043e

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->whatsNew:Landroid/webkit/WebView;

    .line 44
    const v0, 0x7f0801ac

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->forceUpdateNote:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f080200

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->later:Landroid/widget/Button;

    .line 46
    const v0, 0x7f08041a

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->update:Landroid/widget/Button;

    .line 48
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "forceUpdate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->isForceUpdate:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "updateURL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->updateURL:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "updateDate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->updatedOn:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "whatsNew"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->whatsNewData:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "latestVersionName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->latestVersion:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->updateDate:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->updatedOn:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Updated On: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->newVersion:Landroid/widget/TextView;

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->latestVersion:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "New Version: v%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->whatsNew:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 58
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->whatsNewData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<font color=\'white\'>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->whatsNewData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</font>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "htmlData":Ljava/lang/String;
    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->whatsNew:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v5, "base64"

    invoke-virtual {v2, v1, v3, v5}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .end local v0    # "htmlData":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->whatsNew:Landroid/webkit/WebView;

    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$UpdateAppActivity$lQC0yo-HRY0iJttRnj7uVV9zLBY;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$UpdateAppActivity$lQC0yo-HRY0iJttRnj7uVV9zLBY;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->isForceUpdate:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->later:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->forceUpdateNote:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->update:Landroid/widget/Button;

    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$UpdateAppActivity$q4xCIVZU0n8QDh5vAe7cFq6AP9Q;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$UpdateAppActivity$q4xCIVZU0n8QDh5vAe7cFq6AP9Q;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->later:Landroid/widget/Button;

    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$UpdateAppActivity$ue5q2GKnJtEDsXVA8WHfvem_sio;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$UpdateAppActivity$ue5q2GKnJtEDsXVA8WHfvem_sio;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method public openWebPage(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 89
    const-string v0, "http://"

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 90
    .local v1, "webpage":Landroid/net/Uri;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    .line 93
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 94
    .local v0, "myIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/UpdateAppActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0    # "myIntent":Landroid/content/Intent;
    .end local v1    # "webpage":Landroid/net/Uri;
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const/4 v1, 0x1

    const-string v2, "No application can handle this request. Please install verifyDownload web browser or check your URL."

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 97
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 99
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method
