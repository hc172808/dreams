.class public Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment;
.super Landroidx/fragment/app/Fragment;
.source "MatchFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment$ViewPagerAdapter;
    }
.end annotation


# instance fields
.field public pagerAdapter:Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment$ViewPagerAdapter;

.field public tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field public view:Landroid/view/View;

.field public viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 31
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 38
    const v0, 0x7f0b0074

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment;->view:Landroid/view/View;

    .line 40
    const v2, 0x7f080386

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 41
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment;->view:Landroid/view/View;

    const v2, 0x7f08042c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 42
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 44
    new-instance v0, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment$ViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment;->pagerAdapter:Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment$ViewPagerAdapter;

    .line 45
    new-instance v2, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;

    invoke-direct {v2}, Lcom/definiteautomation/dreamludofantacy/fragment/UpcomingFragment;-><init>()V

    const-string v3, "UPCOMING"

    invoke-virtual {v0, v2, v3}, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment$ViewPagerAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment;->pagerAdapter:Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment$ViewPagerAdapter;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;

    invoke-direct {v2}, Lcom/definiteautomation/dreamludofantacy/fragment/OngoingFragment;-><init>()V

    const-string v3, "ONGOING"

    invoke-virtual {v0, v2, v3}, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment$ViewPagerAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment;->pagerAdapter:Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment$ViewPagerAdapter;

    new-instance v2, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;

    invoke-direct {v2}, Lcom/definiteautomation/dreamludofantacy/fragment/CompletedFragment;-><init>()V

    const-string v3, "COMPLETED"

    invoke-virtual {v0, v2, v3}, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment$ViewPagerAdapter;->addFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment;->pagerAdapter:Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment$ViewPagerAdapter;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 51
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 53
    const-string v2, "click_action"

    const-string v3, "default"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "clickAction":Ljava/lang/String;
    const-string v3, "MainActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 62
    .end local v2    # "clickAction":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 64
    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/fragment/MatchFragment;->view:Landroid/view/View;

    return-object v1
.end method
