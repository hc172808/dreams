.class public Lcom/definiteautomation/dreamludofantacy/fragment/DialogFullscreenFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "DialogFullscreenFragment.java"


# instance fields
.field public closeBt:Landroid/widget/ImageButton;

.field public photoIv:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreateView$0$DialogFullscreenFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 41
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/DialogFullscreenFragment;->dismiss()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
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

    .line 25
    const v0, 0x7f0b0064

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 27
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/DialogFullscreenFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 28
    .local v1, "window":Landroid/view/Window;
    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 29
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 30
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/DialogFullscreenFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 32
    const v2, 0x7f0802d2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/DialogFullscreenFragment;->photoIv:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    .line 33
    const v2, 0x7f080113

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/definiteautomation/dreamludofantacy/fragment/DialogFullscreenFragment;->closeBt:Landroid/widget/ImageButton;

    .line 36
    invoke-virtual {p0}, Lcom/definiteautomation/dreamludofantacy/fragment/DialogFullscreenFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 37
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 38
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v3

    const-string v4, "POST_KEY"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    const v4, 0x7f07026c

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, p0, Lcom/definiteautomation/dreamludofantacy/fragment/DialogFullscreenFragment;->photoIv:Lcom/definiteautomation/dreamludofantacy/view/TouchImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 41
    :cond_0
    iget-object v3, p0, Lcom/definiteautomation/dreamludofantacy/fragment/DialogFullscreenFragment;->closeBt:Landroid/widget/ImageButton;

    new-instance v4, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$DialogFullscreenFragment$_dCTubPDL3zhMEdNBbNBt-CZO-w;

    invoke-direct {v4, p0}, Lcom/definiteautomation/dreamludofantacy/fragment/-$$Lambda$DialogFullscreenFragment$_dCTubPDL3zhMEdNBbNBt-CZO-w;-><init>(Lcom/definiteautomation/dreamludofantacy/fragment/DialogFullscreenFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-object v0
.end method
