.class public Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;
.super Lcom/google/firebase/inappmessaging/display/internal/FirebaseInAppMessagingDisplayImpl;
.source "FirebaseInAppMessagingDisplay.java"


# static fields
.field static final DISMISS_THRESHOLD_MILLIS:J = 0x4e20L

.field static final IMPRESSION_THRESHOLD_MILLIS:J = 0x1388L

.field static final INTERVAL_MILLIS:J = 0x3e8L


# instance fields
.field private final animator:Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator;

.field private final application:Landroid/app/Application;

.field private final autoDismissTimer:Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer;

.field private final bindingWrapperFactory:Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;

.field private callbacks:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;

.field currentlyBoundActivityName:Ljava/lang/String;

.field private fiamListener:Lcom/google/firebase/inappmessaging/display/FiamListener;

.field private final headlessInAppMessaging:Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

.field private final imageLoader:Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;

.field private final impressionTimer:Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer;

.field private inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

.field private final layoutConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private final windowManager:Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;Ljava/util/Map;Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer;Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer;Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;Landroid/app/Application;Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator;)V
    .locals 0
    .param p1, "headlessInAppMessaging"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;
    .param p3, "imageLoader"    # Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;
    .param p4, "impressionTimer"    # Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer;
    .param p5, "autoDismissTimer"    # Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer;
    .param p6, "windowManager"    # Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;
    .param p7, "application"    # Landroid/app/Application;
    .param p8, "bindingWrapperFactory"    # Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;
    .param p9, "animator"    # Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;",
            ">;>;",
            "Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;",
            "Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer;",
            "Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer;",
            "Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;",
            "Landroid/app/Application;",
            "Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;",
            "Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 114
    .local p2, "layoutConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/inject/Provider<Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;>;>;"
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/display/internal/FirebaseInAppMessagingDisplayImpl;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->headlessInAppMessaging:Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    .line 116
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->layoutConfigs:Ljava/util/Map;

    .line 117
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->imageLoader:Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;

    .line 118
    iput-object p4, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->impressionTimer:Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer;

    .line 119
    iput-object p5, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->autoDismissTimer:Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer;

    .line 120
    iput-object p6, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->windowManager:Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;

    .line 121
    iput-object p7, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->application:Landroid/app/Application;

    .line 122
    iput-object p8, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->bindingWrapperFactory:Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;

    .line 123
    iput-object p9, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->animator:Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;Landroid/app/Activity;Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->inflateBinding(Landroid/app/Activity;Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;)Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;

    .line 80
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->callbacks:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;)Landroid/app/Application;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;

    .line 80
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->application:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;)Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;

    .line 80
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->callbacks:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;)Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;

    .line 80
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->animator:Lcom/google/firebase/inappmessaging/display/internal/FiamAnimator;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;

    .line 80
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->cancelTimers()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;
    .param p1, "x1"    # Landroid/app/Activity;

    .line 80
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->dismissFiam(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Landroid/net/Uri;

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->launchUriIntent(Landroid/app/Activity;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;

    .line 80
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->notifyFiamClick()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;
    .param p1, "x1"    # Landroid/app/Activity;

    .line 80
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->removeDisplayedFiam(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;)Lcom/google/firebase/inappmessaging/model/InAppMessage;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;

    .line 80
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;Lcom/google/firebase/inappmessaging/model/InAppMessage;)Lcom/google/firebase/inappmessaging/model/InAppMessage;
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;
    .param p1, "x1"    # Lcom/google/firebase/inappmessaging/model/InAppMessage;

    .line 80
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;)Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;

    .line 80
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->impressionTimer:Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;)Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;

    .line 80
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->autoDismissTimer:Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;)Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;

    .line 80
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->windowManager:Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;

    return-object v0
.end method

.method private bindFiamToActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 197
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->currentlyBoundActivityName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binding to activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logi(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->headlessInAppMessaging:Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    new-instance v1, Lcom/google/firebase/inappmessaging/display/-$$Lambda$FirebaseInAppMessagingDisplay$2xHnn1oWAtAU_WFn_Ys9wBNhGAk;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/inappmessaging/display/-$$Lambda$FirebaseInAppMessagingDisplay$2xHnn1oWAtAU_WFn_Ys9wBNhGAk;-><init>(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->setMessageDisplayComponent(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;)V

    .line 214
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->currentlyBoundActivityName:Ljava/lang/String;

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    if-eqz v0, :cond_2

    .line 217
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->showActiveFiam(Landroid/app/Activity;)V

    .line 219
    :cond_2
    return-void
.end method

.method private cancelTimers()V
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->impressionTimer:Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer;->cancel()V

    .line 515
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->autoDismissTimer:Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/display/internal/RenewableTimer;->cancel()V

    .line 516
    return-void
.end method

.method private dismissFiam(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 499
    const-string v0, "Dismissing fiam"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 500
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->notifyFiamDismiss()V

    .line 501
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->removeDisplayedFiam(Landroid/app/Activity;)V

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    .line 503
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->callbacks:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;

    .line 504
    return-void
.end method

.method private extractActions(Lcom/google/firebase/inappmessaging/model/InAppMessage;)Ljava/util/List;
    .locals 3
    .param p1, "message"    # Lcom/google/firebase/inappmessaging/model/InAppMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/model/InAppMessage;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/inappmessaging/model/Action;",
            ">;"
        }
    .end annotation

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/inappmessaging/model/Action;>;"
    sget-object v1, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay$5;->$SwitchMap$com$google$firebase$inappmessaging$model$MessageType:[I

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/InAppMessage;->getMessageType()Lcom/google/firebase/inappmessaging/model/MessageType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/model/MessageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 455
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/Action;->builder()Lcom/google/firebase/inappmessaging/model/Action$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/Action$Builder;->build()Lcom/google/firebase/inappmessaging/model/Action;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 444
    :pswitch_0
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/inappmessaging/model/CardMessage;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/CardMessage;->getPrimaryAction()Lcom/google/firebase/inappmessaging/model/Action;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/inappmessaging/model/CardMessage;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/CardMessage;->getSecondaryAction()Lcom/google/firebase/inappmessaging/model/Action;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    goto :goto_0

    .line 448
    :pswitch_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/ImageOnlyMessage;->getAction()Lcom/google/firebase/inappmessaging/model/Action;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    goto :goto_0

    .line 451
    :pswitch_2
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/inappmessaging/model/ModalMessage;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/ModalMessage;->getAction()Lcom/google/firebase/inappmessaging/model/Action;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    goto :goto_0

    .line 441
    :pswitch_3
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/inappmessaging/model/BannerMessage;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/BannerMessage;->getAction()Lcom/google/firebase/inappmessaging/model/Action;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    nop

    .line 457
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private extractImageData(Lcom/google/firebase/inappmessaging/model/InAppMessage;)Lcom/google/firebase/inappmessaging/model/ImageData;
    .locals 4
    .param p1, "message"    # Lcom/google/firebase/inappmessaging/model/InAppMessage;

    .line 463
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/InAppMessage;->getMessageType()Lcom/google/firebase/inappmessaging/model/MessageType;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/model/MessageType;->CARD:Lcom/google/firebase/inappmessaging/model/MessageType;

    if-ne v0, v1, :cond_3

    .line 464
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/inappmessaging/model/CardMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/CardMessage;->getPortraitImageData()Lcom/google/firebase/inappmessaging/model/ImageData;

    move-result-object v0

    .line 465
    .local v0, "portraitImageData":Lcom/google/firebase/inappmessaging/model/ImageData;
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/inappmessaging/model/CardMessage;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/CardMessage;->getLandscapeImageData()Lcom/google/firebase/inappmessaging/model/ImageData;

    move-result-object v1

    .line 468
    .local v1, "landscapeImageData":Lcom/google/firebase/inappmessaging/model/ImageData;
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->application:Landroid/app/Application;

    invoke-static {v2}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->getScreenOrientation(Landroid/app/Application;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 469
    invoke-direct {p0, v0}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->isValidImageData(Lcom/google/firebase/inappmessaging/model/ImageData;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    return-object v2

    .line 472
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->isValidImageData(Lcom/google/firebase/inappmessaging/model/ImageData;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    return-object v2

    .line 475
    .end local v0    # "portraitImageData":Lcom/google/firebase/inappmessaging/model/ImageData;
    .end local v1    # "landscapeImageData":Lcom/google/firebase/inappmessaging/model/ImageData;
    :cond_3
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/InAppMessage;->getImageData()Lcom/google/firebase/inappmessaging/model/ImageData;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;
    .locals 2

    .line 132
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    const-class v1, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;

    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;

    return-object v0
.end method

.method private static getScreenOrientation(Landroid/app/Application;)I
    .locals 1
    .param p0, "app"    # Landroid/app/Application;

    .line 136
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private inflateBinding(Landroid/app/Activity;Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bindingWrapper"    # Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;

    .line 298
    new-instance v0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay$2;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay$2;-><init>(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;Landroid/app/Activity;)V

    .line 309
    .local v0, "dismissListener":Landroid/view/View$OnClickListener;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 310
    .local v1, "actionListeners":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/inappmessaging/model/Action;Landroid/view/View$OnClickListener;>;"
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-direct {p0, v2}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->extractActions(Lcom/google/firebase/inappmessaging/model/InAppMessage;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/inappmessaging/model/Action;

    .line 314
    .local v3, "action":Lcom/google/firebase/inappmessaging/model/Action;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/firebase/inappmessaging/model/Action;->getActionUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 315
    new-instance v4, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay$3;

    invoke-direct {v4, p0, v3, p1}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay$3;-><init>(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;Lcom/google/firebase/inappmessaging/model/Action;Landroid/app/Activity;)V

    .local v4, "actionListener":Landroid/view/View$OnClickListener;
    goto :goto_1

    .line 333
    .end local v4    # "actionListener":Landroid/view/View$OnClickListener;
    :cond_0
    const-string v4, "No action url found for action. Treating as dismiss."

    invoke-static {v4}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logi(Ljava/lang/String;)V

    .line 334
    move-object v4, v0

    .line 336
    .restart local v4    # "actionListener":Landroid/view/View$OnClickListener;
    :goto_1
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .end local v3    # "action":Lcom/google/firebase/inappmessaging/model/Action;
    .end local v4    # "actionListener":Landroid/view/View$OnClickListener;
    goto :goto_0

    .line 339
    :cond_1
    nop

    .line 340
    invoke-virtual {p2, v1, v0}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;->inflate(Ljava/util/Map;Landroid/view/View$OnClickListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v2

    .line 341
    .local v2, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    if-eqz v2, :cond_2

    .line 342
    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 346
    :cond_2
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    .line 349
    invoke-direct {p0, v3}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->extractImageData(Lcom/google/firebase/inappmessaging/model/InAppMessage;)Lcom/google/firebase/inappmessaging/model/ImageData;

    move-result-object v3

    new-instance v4, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay$4;

    invoke-direct {v4, p0, p2, p1, v2}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay$4;-><init>(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 346
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->loadNullableImage(Landroid/app/Activity;Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;Lcom/google/firebase/inappmessaging/model/ImageData;Lcom/squareup/picasso/Callback;)V

    .line 435
    return-void
.end method

.method private isValidImageData(Lcom/google/firebase/inappmessaging/model/ImageData;)Z
    .locals 1
    .param p1, "imageData"    # Lcom/google/firebase/inappmessaging/model/ImageData;

    .line 480
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/ImageData;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private launchUriIntent(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 537
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->supportsCustomTabs(Landroid/app/Activity;)Z

    move-result v0

    const/high16 v1, 0x10000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 539
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    .line 540
    .local v0, "customTabsIntent":Landroidx/browser/customtabs/CustomTabsIntent;
    iget-object v3, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 541
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 542
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 543
    invoke-virtual {v0, p1, p2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 544
    .end local v0    # "customTabsIntent":Landroidx/browser/customtabs/CustomTabsIntent;
    .end local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 546
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 547
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 548
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 549
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 550
    if-eqz v3, :cond_1

    .line 551
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 554
    :cond_1
    const-string v1, "Device cannot resolve intent for: android.intent.action.VIEW"

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->loge(Ljava/lang/String;)V

    .line 557
    .end local v0    # "browserIntent":Landroid/content/Intent;
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-void
.end method

.method private loadNullableImage(Landroid/app/Activity;Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;Lcom/google/firebase/inappmessaging/model/ImageData;Lcom/squareup/picasso/Callback;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fiam"    # Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;
    .param p3, "imageData"    # Lcom/google/firebase/inappmessaging/model/ImageData;
    .param p4, "callback"    # Lcom/squareup/picasso/Callback;

    .line 485
    invoke-direct {p0, p3}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->isValidImageData(Lcom/google/firebase/inappmessaging/model/ImageData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->imageLoader:Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;

    .line 487
    invoke-virtual {p3}, Lcom/google/firebase/inappmessaging/model/ImageData;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->load(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;

    move-result-object v0

    .line 488
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;->tag(Ljava/lang/Class;)Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;

    move-result-object v0

    sget v1, Lcom/google/firebase/inappmessaging/display/R$drawable;->image_placeholder:I

    .line 489
    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;->placeholder(I)Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;

    move-result-object v0

    .line 490
    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader$FiamImageRequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    goto :goto_0

    .line 492
    :cond_0
    invoke-interface {p4}, Lcom/squareup/picasso/Callback;->onSuccess()V

    .line 494
    :goto_0
    return-void
.end method

.method private notifyFiamClick()V
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->fiamListener:Lcom/google/firebase/inappmessaging/display/FiamListener;

    if-eqz v0, :cond_0

    .line 526
    invoke-interface {v0}, Lcom/google/firebase/inappmessaging/display/FiamListener;->onFiamClick()V

    .line 528
    :cond_0
    return-void
.end method

.method private notifyFiamDismiss()V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->fiamListener:Lcom/google/firebase/inappmessaging/display/FiamListener;

    if-eqz v0, :cond_0

    .line 532
    invoke-interface {v0}, Lcom/google/firebase/inappmessaging/display/FiamListener;->onFiamDismiss()V

    .line 534
    :cond_0
    return-void
.end method

.method private notifyFiamTrigger()V
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->fiamListener:Lcom/google/firebase/inappmessaging/display/FiamListener;

    if-eqz v0, :cond_0

    .line 520
    invoke-interface {v0}, Lcom/google/firebase/inappmessaging/display/FiamListener;->onFiamTrigger()V

    .line 522
    :cond_0
    return-void
.end method

.method private removeDisplayedFiam(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 507
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->windowManager:Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->isFiamDisplayed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->windowManager:Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/FiamWindowManager;->destroy(Landroid/app/Activity;)V

    .line 509
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->cancelTimers()V

    .line 511
    :cond_0
    return-void
.end method

.method private showActiveFiam(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 241
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->headlessInAppMessaging:Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->areMessagesSuppressed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/InAppMessage;->getMessageType()Lcom/google/firebase/inappmessaging/model/MessageType;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/model/MessageType;->UNSUPPORTED:Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/MessageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    const-string v0, "The message being triggered is not supported by this version of the sdk."

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->loge(Ljava/lang/String;)V

    .line 248
    return-void

    .line 250
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->notifyFiamTrigger()V

    .line 252
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->layoutConfigs:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    .line 256
    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/InAppMessage;->getMessageType()Lcom/google/firebase/inappmessaging/model/MessageType;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->application:Landroid/app/Application;

    invoke-static {v2}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->getScreenOrientation(Landroid/app/Application;)I

    move-result v2

    .line 255
    invoke-static {v1, v2}, Lcom/google/firebase/inappmessaging/display/internal/injection/modules/InflaterConfigModule;->configFor(Lcom/google/firebase/inappmessaging/model/MessageType;I)Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    .line 257
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    .line 261
    .local v0, "config":Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;
    sget-object v1, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay$5;->$SwitchMap$com$google$firebase$inappmessaging$model$MessageType:[I

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/model/InAppMessage;->getMessageType()Lcom/google/firebase/inappmessaging/model/MessageType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/model/MessageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 275
    const-string v1, "No bindings found for this message type"

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->loge(Ljava/lang/String;)V

    .line 277
    return-void

    .line 272
    :pswitch_0
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->bindingWrapperFactory:Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-virtual {v1, v0, v2}, Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;->createCardBindingWrapper(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Lcom/google/firebase/inappmessaging/model/InAppMessage;)Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;

    move-result-object v1

    .line 273
    .local v1, "bindingWrapper":Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;
    goto :goto_0

    .line 269
    .end local v1    # "bindingWrapper":Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;
    :pswitch_1
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->bindingWrapperFactory:Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-virtual {v1, v0, v2}, Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;->createImageBindingWrapper(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Lcom/google/firebase/inappmessaging/model/InAppMessage;)Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;

    move-result-object v1

    .line 270
    .restart local v1    # "bindingWrapper":Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;
    goto :goto_0

    .line 266
    .end local v1    # "bindingWrapper":Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;
    :pswitch_2
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->bindingWrapperFactory:Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-virtual {v1, v0, v2}, Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;->createModalBindingWrapper(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Lcom/google/firebase/inappmessaging/model/InAppMessage;)Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;

    move-result-object v1

    .line 267
    .restart local v1    # "bindingWrapper":Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;
    goto :goto_0

    .line 263
    .end local v1    # "bindingWrapper":Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;
    :pswitch_3
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->bindingWrapperFactory:Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    invoke-virtual {v1, v0, v2}, Lcom/google/firebase/inappmessaging/display/internal/BindingWrapperFactory;->createBannerBindingWrapper(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Lcom/google/firebase/inappmessaging/model/InAppMessage;)Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;

    move-result-object v1

    .line 264
    .restart local v1    # "bindingWrapper":Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;
    nop

    .line 282
    :goto_0
    const v2, 0x1020002

    .line 283
    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay$1;-><init>(Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;Landroid/app/Activity;Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;)V

    .line 284
    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 291
    return-void

    .line 242
    .end local v0    # "config":Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;
    .end local v1    # "bindingWrapper":Lcom/google/firebase/inappmessaging/display/internal/bindingwrappers/BindingWrapper;
    :cond_2
    :goto_1
    const-string v0, "No active message found to render"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->loge(Ljava/lang/String;)V

    .line 243
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private supportsCustomTabs(Landroid/app/Activity;)Z
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 560
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 561
    .local v0, "customTabIntent":Landroid/content/Intent;
    const-string v1, "com.android.chrome"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    nop

    .line 563
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 564
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private unbindFiamFromActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 224
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->currentlyBoundActivityName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unbinding from activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logi(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->headlessInAppMessaging:Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->clearDisplayListener()V

    .line 228
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->imageLoader:Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/display/internal/FiamImageLoader;->cancelTag(Ljava/lang/Class;)V

    .line 229
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->removeDisplayedFiam(Landroid/app/Activity;)V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->currentlyBoundActivityName:Ljava/lang/String;

    .line 232
    :cond_0
    return-void
.end method


# virtual methods
.method public clearFiamListener()V
    .locals 1

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->fiamListener:Lcom/google/firebase/inappmessaging/display/FiamListener;

    .line 169
    return-void
.end method

.method getCurrentInAppMessage()Lcom/google/firebase/inappmessaging/model/InAppMessage;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    return-object v0
.end method

.method public synthetic lambda$bindFiamToActivity$0$FirebaseInAppMessagingDisplay(Landroid/app/Activity;Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "iam"    # Lcom/google/firebase/inappmessaging/model/InAppMessage;
    .param p3, "cb"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;

    .line 204
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->headlessInAppMessaging:Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->areMessagesSuppressed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    .line 209
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->callbacks:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;

    .line 210
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->showActiveFiam(Landroid/app/Activity;)V

    .line 211
    return-void

    .line 205
    :cond_1
    :goto_0
    const-string v0, "Active FIAM exists. Skipping trigger"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/display/internal/Logging;->logd(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 189
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->unbindFiamFromActivity(Landroid/app/Activity;)V

    .line 190
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->headlessInAppMessaging:Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->removeAllListeners()V

    .line 191
    invoke-super {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/FirebaseInAppMessagingDisplayImpl;->onActivityPaused(Landroid/app/Activity;)V

    .line 192
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 178
    invoke-super {p0, p1}, Lcom/google/firebase/inappmessaging/display/internal/FirebaseInAppMessagingDisplayImpl;->onActivityResumed(Landroid/app/Activity;)V

    .line 179
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->bindFiamToActivity(Landroid/app/Activity;)V

    .line 180
    return-void
.end method

.method public setFiamListener(Lcom/google/firebase/inappmessaging/display/FiamListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/firebase/inappmessaging/display/FiamListener;

    .line 159
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->fiamListener:Lcom/google/firebase/inappmessaging/display/FiamListener;

    .line 160
    return-void
.end method

.method public testMessage(Landroid/app/Activity;Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "inAppMessage"    # Lcom/google/firebase/inappmessaging/model/InAppMessage;
    .param p3, "callbacks"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;

    .line 148
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->inAppMessage:Lcom/google/firebase/inappmessaging/model/InAppMessage;

    .line 149
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->callbacks:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;

    .line 150
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/display/FirebaseInAppMessagingDisplay;->showActiveFiam(Landroid/app/Activity;)V

    .line 151
    return-void
.end method
