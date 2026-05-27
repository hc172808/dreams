.class Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;
.super Lcom/github/aakira/expandablelayout/ExpandableLayoutListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToggleListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;
    .param p2, "arrowImage"    # Landroid/widget/ImageView;
    .param p3, "sectionType"    # Ljava/lang/String;

    .line 2565
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-direct {p0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListenerAdapter;-><init>()V

    .line 2566
    iput-object p2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->c:Landroid/widget/ImageView;

    .line 2567
    iput-object p3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->d:Ljava/lang/String;

    .line 2568
    return-void
.end method

.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;
    .param p2, "tv_show_wallet_details"    # Landroid/widget/TextView;
    .param p3, "sectionType"    # Ljava/lang/String;

    .line 2570
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-direct {p0}, Lcom/github/aakira/expandablelayout/ExpandableLayoutListenerAdapter;-><init>()V

    .line 2571
    iput-object p2, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->b:Landroid/widget/TextView;

    .line 2572
    iput-object p3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->d:Ljava/lang/String;

    .line 2573
    return-void
.end method

.method static synthetic a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)Ljava/lang/String;
    .locals 0

    .line 2559
    iget-object p0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->d:Ljava/lang/String;

    return-object p0
.end method

.method private a()V
    .locals 7

    .line 2576
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2577
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->d:Ljava/lang/String;

    const-string v1, "saved_Cards"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2578
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->E(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    sget v2, Lcom/payumoney/sdkui/R$string;->label_netBanking_header:I

    invoke-virtual {v1, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2579
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-wide v1, v0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j:D

    invoke-static {v0, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;D)V

    goto :goto_0

    .line 2580
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->d:Ljava/lang/String;

    const-string v1, "saved_banks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2581
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->F(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    .line 2582
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->E(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    sget v4, Lcom/payumoney/sdkui/R$string;->label_netBanking_rs:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-wide v5, v5, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j:D

    .line 2583
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 2582
    invoke-virtual {v3, v4, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2584
    :cond_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->d:Ljava/lang/String;

    const-string v3, "third_party_wallets_section"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2585
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->F(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    .line 2586
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->G(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    sget v4, Lcom/payumoney/sdkui/R$string;->label_third_party_wallets_rs:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    iget-wide v5, v5, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->j:D

    .line 2587
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 2586
    invoke-virtual {v3, v4, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2590
    :cond_2
    :goto_0
    return-void
.end method

.method private b()V
    .locals 7

    .line 2757
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->d:Ljava/lang/String;

    const-string v1, "saved_Cards"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2758
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->E(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    sget v2, Lcom/payumoney/sdkui/R$string;->label_netBanking_header:I

    invoke-virtual {v1, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2759
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Q(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->a(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;D)V

    goto :goto_0

    .line 2760
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->d:Ljava/lang/String;

    const-string v1, "saved_banks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2761
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->F(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    .line 2762
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->E(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    sget v4, Lcom/payumoney/sdkui/R$string;->label_netBanking_rs:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v5}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Q(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2763
    :cond_1
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->d:Ljava/lang/String;

    const-string v3, "third_party_wallets_section"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2764
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->F(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V

    .line 2765
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->G(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    sget v4, Lcom/payumoney/sdkui/R$string;->label_third_party_wallets_rs:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v5}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->Q(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/payumoney/sdkui/ui/utils/Utils;->getProcessedDisplayAmount(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2767
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)V
    .locals 0

    .line 2559
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a()V

    return-void
.end method

.method static synthetic c(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)V
    .locals 0

    .line 2559
    invoke-direct {p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->b()V

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 4

    .line 2772
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2773
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2774
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    sget v2, Lcom/payumoney/sdkui/R$string;->label_view_details:I

    invoke-virtual {v1, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2778
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2779
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->R(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2781
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$2;-><init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2879
    return-void
.end method

.method public onOpened()V
    .locals 4

    .line 2594
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-virtual {v0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2595
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    sget v2, Lcom/payumoney/sdkui/R$string;->label_hide_details:I

    invoke-virtual {v1, v2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2597
    :cond_0
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2598
    iget-object v1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-static {v1}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;->H(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2601
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;

    invoke-direct {v1, p0}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener$1;-><init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$ToggleListener;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2754
    return-void
.end method
