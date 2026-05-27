.class public Lcom/facebook/share/widget/LikeView;
.super Landroid/widget/FrameLayout;
.source "LikeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;,
        Lcom/facebook/share/widget/LikeView$LikeControllerBroadcastReceiver;,
        Lcom/facebook/share/widget/LikeView$OnErrorListener;,
        Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;,
        Lcom/facebook/share/widget/LikeView$HorizontalAlignment;,
        Lcom/facebook/share/widget/LikeView$Style;,
        Lcom/facebook/share/widget/LikeView$ObjectType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final NO_FOREGROUND_COLOR:I = -0x1


# instance fields
.field private auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private containerView:Landroid/widget/LinearLayout;

.field private creationCallback:Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

.field private edgePadding:I

.field private explicitlyDisabled:Z

.field private foregroundColor:I

.field private horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

.field private internalPadding:I

.field private likeActionController:Lcom/facebook/share/internal/LikeActionController;

.field private likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

.field private likeButton:Lcom/facebook/share/internal/LikeButton;

.field private likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

.field private objectId:Ljava/lang/String;

.field private objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

.field private onErrorListener:Lcom/facebook/share/widget/LikeView$OnErrorListener;

.field private parentFragment:Lcom/facebook/internal/FragmentWrapper;

.field private socialSentenceView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 276
    sget-object v0, Lcom/facebook/share/widget/LikeView$Style;->DEFAULT:Lcom/facebook/share/widget/LikeView$Style;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    .line 277
    sget-object v0, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->DEFAULT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    .line 278
    sget-object v0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->DEFAULT:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    .line 279
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/share/widget/LikeView;->foregroundColor:I

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/share/widget/LikeView;->explicitlyDisabled:Z

    .line 292
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->initialize(Landroid/content/Context;)V

    .line 293
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 298
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 276
    sget-object v0, Lcom/facebook/share/widget/LikeView$Style;->DEFAULT:Lcom/facebook/share/widget/LikeView$Style;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    .line 277
    sget-object v0, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->DEFAULT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    .line 278
    sget-object v0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->DEFAULT:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    .line 279
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/share/widget/LikeView;->foregroundColor:I

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/share/widget/LikeView;->explicitlyDisabled:Z

    .line 299
    invoke-direct {p0, p2}, Lcom/facebook/share/widget/LikeView;->parseAttributes(Landroid/util/AttributeSet;)V

    .line 300
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->initialize(Landroid/content/Context;)V

    .line 301
    return-void
.end method

.method static synthetic access$1000(Lcom/facebook/share/widget/LikeView;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/share/widget/LikeView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/widget/LikeView;->setObjectIdAndTypeForced(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/internal/LikeActionController;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/share/widget/LikeView;
    .param p1, "x1"    # Lcom/facebook/share/internal/LikeActionController;

    .line 53
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->associateWithLikeActionController(Lcom/facebook/share/internal/LikeActionController;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;)Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/share/widget/LikeView;
    .param p1, "x1"    # Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

    .line 53
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->creationCallback:Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/facebook/share/widget/LikeView;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/share/widget/LikeView;

    .line 53
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->toggleLike()V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/share/widget/LikeView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/widget/LikeView;

    .line 53
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/share/widget/LikeView;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/share/widget/LikeView;

    .line 53
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateLikeStateAndLayout()V

    return-void
.end method

.method static synthetic access$800(Lcom/facebook/share/widget/LikeView;)Lcom/facebook/share/widget/LikeView$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/widget/LikeView;

    .line 53
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->onErrorListener:Lcom/facebook/share/widget/LikeView$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/facebook/share/widget/LikeView;)Lcom/facebook/share/widget/LikeView$ObjectType;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/widget/LikeView;

    .line 53
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    return-object v0
.end method

.method private associateWithLikeActionController(Lcom/facebook/share/internal/LikeActionController;)V
    .locals 3
    .param p1, "likeActionController"    # Lcom/facebook/share/internal/LikeActionController;

    .line 578
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    .line 580
    new-instance v0, Lcom/facebook/share/widget/LikeView$LikeControllerBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/widget/LikeView$LikeControllerBroadcastReceiver;-><init>(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/widget/LikeView$1;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 581
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 584
    .local v0, "localBroadcastManager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 585
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 586
    const-string v2, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 587
    const-string v2, "com.facebook.sdk.LikeActionController.DID_RESET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 589
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 590
    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 3

    .line 535
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 536
    .local v0, "context":Landroid/content/Context;
    :goto_0
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    .line 537
    move-object v1, v0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 540
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 541
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    return-object v1

    .line 543
    :cond_1
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Unable to get Activity."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getAnalyticsParameters()Landroid/os/Bundle;
    .locals 3

    .line 547
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 548
    .local v0, "params":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    invoke-virtual {v1}, Lcom/facebook/share/widget/LikeView$Style;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "style"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    .line 550
    invoke-virtual {v1}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->toString()Ljava/lang/String;

    move-result-object v1

    .line 549
    const-string v2, "auxiliary_position"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    .line 552
    invoke-virtual {v1}, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->toString()Ljava/lang/String;

    move-result-object v1

    .line 551
    const-string v2, "horizontal_alignment"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->objectId:Ljava/lang/String;

    .line 555
    const-string v2, ""

    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 553
    const-string v2, "object_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v1}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "object_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    return-object v0
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 455
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/R$dimen;->com_facebook_likeview_edge_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    .line 456
    nop

    .line 457
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/R$dimen;->com_facebook_likeview_internal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/share/widget/LikeView;->internalPadding:I

    .line 458
    iget v0, p0, Lcom/facebook/share/widget/LikeView;->foregroundColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/R$color;->com_facebook_likeview_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/share/widget/LikeView;->foregroundColor:I

    .line 462
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/share/widget/LikeView;->setBackgroundColor(I)V

    .line 464
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    .line 465
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 467
    .local v0, "containerViewLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->initializeLikeButton(Landroid/content/Context;)V

    .line 470
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->initializeSocialSentenceView(Landroid/content/Context;)V

    .line 471
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView;->initializeLikeCountView(Landroid/content/Context;)V

    .line 473
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 474
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 475
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 477
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/facebook/share/widget/LikeView;->addView(Landroid/view/View;)V

    .line 479
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->objectId:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-direct {p0, v1, v2}, Lcom/facebook/share/widget/LikeView;->setObjectIdAndTypeForced(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 480
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateLikeStateAndLayout()V

    .line 481
    return-void
.end method

.method private initializeLikeButton(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 484
    new-instance v0, Lcom/facebook/share/internal/LikeButton;

    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    if-eqz v1, :cond_0

    .line 486
    invoke-virtual {v1}, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, p1, v1}, Lcom/facebook/share/internal/LikeButton;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    .line 487
    new-instance v1, Lcom/facebook/share/widget/LikeView$1;

    invoke-direct {v1, p0}, Lcom/facebook/share/widget/LikeView$1;-><init>(Lcom/facebook/share/widget/LikeView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/LikeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 498
    .local v0, "buttonLayout":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/LikeButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    return-void
.end method

.method private initializeLikeCountView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 516
    new-instance v0, Lcom/facebook/share/internal/LikeBoxCountView;

    invoke-direct {v0, p1}, Lcom/facebook/share/internal/LikeBoxCountView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    .line 518
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 520
    .local v0, "likeCountViewLayout":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/LikeBoxCountView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    return-void
.end method

.method private initializeSocialSentenceView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 502
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    .line 503
    nop

    .line 505
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/common/R$dimen;->com_facebook_likeview_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 503
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 506
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 507
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    iget v1, p0, Lcom/facebook/share/widget/LikeView;->foregroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 508
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 510
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 512
    .local v0, "socialSentenceViewLayout":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    return-void
.end method

.method private parseAttributes(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 401
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/common/R$styleable;->com_facebook_like_view:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 406
    .local v0, "a":Landroid/content/res/TypedArray;
    if-nez v0, :cond_1

    .line 407
    return-void

    .line 410
    :cond_1
    sget v1, Lcom/facebook/common/R$styleable;->com_facebook_like_view_com_facebook_object_id:I

    .line 412
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 411
    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->objectId:Ljava/lang/String;

    .line 413
    sget v1, Lcom/facebook/common/R$styleable;->com_facebook_like_view_com_facebook_object_type:I

    sget-object v2, Lcom/facebook/share/widget/LikeView$ObjectType;->DEFAULT:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 417
    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$ObjectType;->getValue()I

    move-result v2

    .line 415
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 414
    invoke-static {v1}, Lcom/facebook/share/widget/LikeView$ObjectType;->fromInt(I)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 418
    sget v1, Lcom/facebook/common/R$styleable;->com_facebook_like_view_com_facebook_style:I

    sget-object v2, Lcom/facebook/share/widget/LikeView$Style;->DEFAULT:Lcom/facebook/share/widget/LikeView$Style;

    .line 421
    invoke-static {v2}, Lcom/facebook/share/widget/LikeView$Style;->access$000(Lcom/facebook/share/widget/LikeView$Style;)I

    move-result v2

    .line 420
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 419
    invoke-static {v1}, Lcom/facebook/share/widget/LikeView$Style;->fromInt(I)Lcom/facebook/share/widget/LikeView$Style;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    .line 422
    if-eqz v1, :cond_4

    .line 426
    sget v1, Lcom/facebook/common/R$styleable;->com_facebook_like_view_com_facebook_auxiliary_view_position:I

    sget-object v2, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->DEFAULT:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    .line 430
    invoke-static {v2}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->access$100(Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;)I

    move-result v2

    .line 428
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 427
    invoke-static {v1}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->fromInt(I)Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    .line 431
    if-eqz v1, :cond_3

    .line 436
    sget v1, Lcom/facebook/common/R$styleable;->com_facebook_like_view_com_facebook_horizontal_alignment:I

    sget-object v2, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->DEFAULT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    .line 440
    invoke-static {v2}, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->access$200(Lcom/facebook/share/widget/LikeView$HorizontalAlignment;)I

    move-result v2

    .line 438
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 437
    invoke-static {v1}, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->fromInt(I)Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    .line 441
    if-eqz v1, :cond_2

    .line 445
    sget v1, Lcom/facebook/common/R$styleable;->com_facebook_like_view_com_facebook_foreground_color:I

    const/4 v2, -0x1

    .line 446
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/share/widget/LikeView;->foregroundColor:I

    .line 449
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 450
    return-void

    .line 442
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported value for LikeView \'horizontal_alignment\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 432
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported value for LikeView \'auxiliary_view_position\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 423
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported value for LikeView \'style\'"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 402
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_5
    :goto_0
    return-void
.end method

.method private setObjectIdAndTypeForced(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .locals 2
    .param p1, "newObjectId"    # Ljava/lang/String;
    .param p2, "newObjectType"    # Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 562
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->tearDownObjectAssociations()V

    .line 564
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->objectId:Ljava/lang/String;

    .line 565
    iput-object p2, p0, Lcom/facebook/share/widget/LikeView;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 567
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    return-void

    .line 571
    :cond_0
    new-instance v0, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;-><init>(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/widget/LikeView$1;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->creationCallback:Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

    .line 572
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->creationCallback:Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

    invoke-static {p1, p2, v0}, Lcom/facebook/share/internal/LikeActionController;->getControllerForObjectId(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    .line 575
    :cond_1
    return-void
.end method

.method private tearDownObjectAssociations()V
    .locals 3

    .line 593
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/facebook/share/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    .line 595
    .local v0, "localBroadcastManager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 597
    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 603
    .end local v0    # "localBroadcastManager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    :cond_0
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->creationCallback:Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

    if-eqz v0, :cond_1

    .line 604
    invoke-virtual {v0}, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;->cancel()V

    .line 606
    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->creationCallback:Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

    .line 609
    :cond_1
    iput-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    .line 610
    return-void
.end method

.method private toggleLike()V
    .locals 4

    .line 524
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    if-eqz v0, :cond_1

    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    if-nez v1, :cond_0

    .line 527
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->getAnalyticsParameters()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/share/internal/LikeActionController;->toggleLike(Landroid/app/Activity;Lcom/facebook/internal/FragmentWrapper;Landroid/os/Bundle;)V

    .line 532
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    return-void
.end method

.method private updateBoxCountCaretPosition()V
    .locals 3

    .line 708
    sget-object v0, Lcom/facebook/share/widget/LikeView$2;->$SwitchMap$com$facebook$share$widget$LikeView$AuxiliaryViewPosition:[I

    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    invoke-virtual {v1}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 716
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    sget-object v2, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->RIGHT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->RIGHT:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->LEFT:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/LikeBoxCountView;->setCaretPosition(Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;)V

    goto :goto_1

    .line 713
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    sget-object v1, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->TOP:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/LikeBoxCountView;->setCaretPosition(Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;)V

    .line 714
    goto :goto_1

    .line 710
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    sget-object v1, Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;->BOTTOM:Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/LikeBoxCountView;->setCaretPosition(Lcom/facebook/share/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition;)V

    .line 711
    nop

    .line 722
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateLayout()V
    .locals 10

    .line 635
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 636
    .local v0, "containerViewLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    .line 637
    invoke-virtual {v1}, Lcom/facebook/share/internal/LikeButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 638
    .local v1, "buttonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    sget-object v3, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->LEFT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    sget-object v3, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->CENTER:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    .line 645
    .local v2, "viewGravity":I
    :goto_0
    or-int/lit8 v3, v2, 0x30

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 646
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 649
    iget-object v3, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 650
    iget-object v3, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    invoke-virtual {v3, v5}, Lcom/facebook/share/internal/LikeBoxCountView;->setVisibility(I)V

    .line 653
    iget-object v3, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    sget-object v5, Lcom/facebook/share/widget/LikeView$Style;->STANDARD:Lcom/facebook/share/widget/LikeView$Style;

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    if-eqz v3, :cond_2

    .line 655
    invoke-virtual {v3}, Lcom/facebook/share/internal/LikeActionController;->getSocialSentence()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 656
    iget-object v3, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    .local v3, "auxView":Landroid/view/View;
    goto :goto_1

    .line 657
    .end local v3    # "auxView":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    sget-object v5, Lcom/facebook/share/widget/LikeView$Style;->BOX_COUNT:Lcom/facebook/share/widget/LikeView$Style;

    if-ne v3, v5, :cond_7

    iget-object v3, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    if-eqz v3, :cond_7

    .line 659
    invoke-virtual {v3}, Lcom/facebook/share/internal/LikeActionController;->getLikeCountString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 660
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateBoxCountCaretPosition()V

    .line 661
    iget-object v3, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    .line 666
    .restart local v3    # "auxView":Landroid/view/View;
    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 669
    nop

    .line 670
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 671
    .local v6, "auxViewLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 673
    iget-object v7, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    sget-object v9, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->INLINE:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    if-ne v8, v9, :cond_3

    const/4 v4, 0x0

    :cond_3
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 678
    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    sget-object v5, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->TOP:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    sget-object v5, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->INLINE:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    sget-object v5, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->RIGHT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    if-ne v4, v5, :cond_4

    goto :goto_2

    .line 686
    :cond_4
    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 687
    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 682
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 683
    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 690
    :goto_3
    sget-object v4, Lcom/facebook/share/widget/LikeView$2;->$SwitchMap$com$facebook$share$widget$LikeView$AuxiliaryViewPosition:[I

    iget-object v5, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    invoke-virtual {v5}, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_4

    .line 698
    :pswitch_0
    iget-object v4, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    sget-object v5, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->RIGHT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    if-ne v4, v5, :cond_6

    .line 699
    iget v4, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    iget v5, p0, Lcom/facebook/share/widget/LikeView;->internalPadding:I

    invoke-virtual {v3, v4, v4, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    .line 701
    :cond_6
    iget v4, p0, Lcom/facebook/share/widget/LikeView;->internalPadding:I

    iget v5, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    invoke-virtual {v3, v4, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4

    .line 695
    :pswitch_1
    iget v4, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    iget v5, p0, Lcom/facebook/share/widget/LikeView;->internalPadding:I

    invoke-virtual {v3, v4, v5, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 696
    goto :goto_4

    .line 692
    :pswitch_2
    iget v4, p0, Lcom/facebook/share/widget/LikeView;->edgePadding:I

    iget v5, p0, Lcom/facebook/share/widget/LikeView;->internalPadding:I

    invoke-virtual {v3, v4, v4, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 693
    nop

    .line 705
    :goto_4
    return-void

    .line 664
    .end local v3    # "auxView":Landroid/view/View;
    .end local v6    # "auxViewLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateLikeStateAndLayout()V
    .locals 3

    .line 613
    iget-boolean v0, p0, Lcom/facebook/share/widget/LikeView;->explicitlyDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 615
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    if-nez v1, :cond_0

    .line 616
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/LikeButton;->setSelected(Z)V

    .line 617
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/LikeBoxCountView;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 620
    :cond_0
    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v1}, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/facebook/share/internal/LikeButton;->setSelected(Z)V

    .line 621
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    invoke-virtual {v2}, Lcom/facebook/share/internal/LikeActionController;->getSocialSentence()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeBoxCountView:Lcom/facebook/share/internal/LikeBoxCountView;

    iget-object v2, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    invoke-virtual {v2}, Lcom/facebook/share/internal/LikeActionController;->getLikeCountString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/LikeBoxCountView;->setText(Ljava/lang/String;)V

    .line 624
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeActionController:Lcom/facebook/share/internal/LikeActionController;

    invoke-virtual {v1}, Lcom/facebook/share/internal/LikeActionController;->shouldEnableView()Z

    move-result v1

    and-int/2addr v0, v1

    .line 627
    :goto_0
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 628
    iget-object v1, p0, Lcom/facebook/share/widget/LikeView;->likeButton:Lcom/facebook/share/internal/LikeButton;

    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/LikeButton;->setEnabled(Z)V

    .line 630
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateLayout()V

    .line 631
    return-void
.end method


# virtual methods
.method public getOnErrorListener()Lcom/facebook/share/widget/LikeView$OnErrorListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->onErrorListener:Lcom/facebook/share/widget/LikeView$OnErrorListener;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 395
    sget-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/share/widget/LikeView;->setObjectIdAndType(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 397
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 398
    return-void
.end method

.method public setAuxiliaryViewPosition(Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;)V
    .locals 1
    .param p1, "auxiliaryViewPosition"    # Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;->DEFAULT:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    :goto_0
    move-object p1, v0

    .line 332
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    if-eq v0, p1, :cond_1

    .line 333
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/share/widget/LikeView$AuxiliaryViewPosition;

    .line 335
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateLayout()V

    .line 337
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/share/widget/LikeView;->explicitlyDisabled:Z

    .line 389
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateLikeStateAndLayout()V

    .line 390
    return-void
.end method

.method public setForegroundColor(I)V
    .locals 1
    .param p1, "foregroundColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 354
    iget v0, p0, Lcom/facebook/share/widget/LikeView;->foregroundColor:I

    if-eq v0, p1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 357
    :cond_0
    return-void
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 380
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    .line 381
    return-void
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 374
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/share/widget/LikeView;->parentFragment:Lcom/facebook/internal/FragmentWrapper;

    .line 375
    return-void
.end method

.method public setHorizontalAlignment(Lcom/facebook/share/widget/LikeView$HorizontalAlignment;)V
    .locals 1
    .param p1, "horizontalAlignment"    # Lcom/facebook/share/widget/LikeView$HorizontalAlignment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 342
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/facebook/share/widget/LikeView$HorizontalAlignment;->DEFAULT:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    :goto_0
    move-object p1, v0

    .line 344
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    if-eq v0, p1, :cond_1

    .line 345
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->horizontalAlignment:Lcom/facebook/share/widget/LikeView$HorizontalAlignment;

    .line 347
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateLayout()V

    .line 349
    :cond_1
    return-void
.end method

.method public setLikeViewStyle(Lcom/facebook/share/widget/LikeView$Style;)V
    .locals 1
    .param p1, "likeViewStyle"    # Lcom/facebook/share/widget/LikeView$Style;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 319
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/facebook/share/widget/LikeView$Style;->DEFAULT:Lcom/facebook/share/widget/LikeView$Style;

    :goto_0
    move-object p1, v0

    .line 320
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    if-eq v0, p1, :cond_1

    .line 321
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->likeViewStyle:Lcom/facebook/share/widget/LikeView$Style;

    .line 323
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateLayout()V

    .line 325
    :cond_1
    return-void
.end method

.method public setObjectIdAndType(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .locals 1
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "objectType"    # Lcom/facebook/share/widget/LikeView$ObjectType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 306
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 307
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/facebook/share/widget/LikeView$ObjectType;->DEFAULT:Lcom/facebook/share/widget/LikeView$ObjectType;

    :goto_0
    move-object p2, v0

    .line 309
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->objectId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/share/widget/LikeView;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    if-eq p2, v0, :cond_2

    .line 310
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/widget/LikeView;->setObjectIdAndTypeForced(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 312
    invoke-direct {p0}, Lcom/facebook/share/widget/LikeView;->updateLikeStateAndLayout()V

    .line 314
    :cond_2
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/share/widget/LikeView$OnErrorListener;)V
    .locals 0
    .param p1, "onErrorListener"    # Lcom/facebook/share/widget/LikeView$OnErrorListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 362
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView;->onErrorListener:Lcom/facebook/share/widget/LikeView$OnErrorListener;

    .line 363
    return-void
.end method
