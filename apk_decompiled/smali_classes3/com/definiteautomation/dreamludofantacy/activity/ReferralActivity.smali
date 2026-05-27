.class public Lcom/definiteautomation/dreamludofantacy/activity/ReferralActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ReferralActivity.java"


# instance fields
.field private referTv:Landroid/widget/TextView;

.field public shareBt:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreate$0$ReferralActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 31
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ReferralActivity;->onBackPressed()V

    return-void
.end method

.method public synthetic lambda$onCreate$1$ReferralActivity(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/activity/ReferralActivity;->referTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/definiteautomation/dreamludofantacy/helper/Function;->shareApp(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 23
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/ReferralActivity;->setContentView(I)V

    .line 26
    const v0, 0x7f0803d5

    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/ReferralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 27
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    invoke-virtual {p0, v0}, Lcom/definiteautomation/dreamludofantacy/activity/ReferralActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 28
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ReferralActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 29
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/activity/ReferralActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 31
    new-instance v1, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ReferralActivity$upCLGIx_xzwKQOyxY2zgTO-VQTg;

    invoke-direct {v1, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ReferralActivity$upCLGIx_xzwKQOyxY2zgTO-VQTg;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/ReferralActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const v1, 0x7f0802f9

    invoke-virtual {p0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/ReferralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ReferralActivity;->referTv:Landroid/widget/TextView;

    .line 34
    const v1, 0x7f080340

    invoke-virtual {p0, v1}, Lcom/definiteautomation/dreamludofantacy/activity/ReferralActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ReferralActivity;->shareBt:Landroid/widget/Button;

    .line 36
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ReferralActivity;->referTv:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getInstance(Landroid/content/Context;)Lcom/definiteautomation/dreamludofantacy/helper/Preferences;

    move-result-object v2

    const-string v3, "KEY_USERNAME"

    invoke-virtual {v2, v3}, Lcom/definiteautomation/dreamludofantacy/helper/Preferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/activity/ReferralActivity;->shareBt:Landroid/widget/Button;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ReferralActivity$zAHWEgDf1SRauuAgunds11N6XxQ;

    invoke-direct {v2, p0}, Lcom/definiteautomation/dreamludofantacy/activity/-$$Lambda$ReferralActivity$zAHWEgDf1SRauuAgunds11N6XxQ;-><init>(Lcom/definiteautomation/dreamludofantacy/activity/ReferralActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method
