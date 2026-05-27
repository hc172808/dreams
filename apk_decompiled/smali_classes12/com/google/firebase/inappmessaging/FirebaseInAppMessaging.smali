.class public Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;
.super Ljava/lang/Object;
.source "FirebaseInAppMessaging.java"


# instance fields
.field private areMessagesSuppressed:Z

.field private final dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

.field private final developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

.field private final displayCallbacksFactory:Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksFactory;

.field private fiamDisplay:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;

.field private final firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

.field private final inAppMessageStreamManager:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

.field private final programaticContextualTriggers:Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;Lcom/google/firebase/installations/FirebaseInstallationsApi;Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksFactory;Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;)V
    .locals 2
    .param p1, "inAppMessageStreamManager"    # Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;
    .param p2, "programaticContextualTriggers"    # Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;
        .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/ProgrammaticTrigger;
        .end annotation
    .end param
    .param p3, "dataCollectionHelper"    # Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;
    .param p4, "firebaseInstallations"    # Lcom/google/firebase/installations/FirebaseInstallationsApi;
    .param p5, "displayCallbacksFactory"    # Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksFactory;
    .param p6, "developerListenerManager"    # Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->inAppMessageStreamManager:Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;

    .line 74
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->programaticContextualTriggers:Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;

    .line 75
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    .line 76
    iput-object p4, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->firebaseInstallations:Lcom/google/firebase/installations/FirebaseInstallationsApi;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->areMessagesSuppressed:Z

    .line 78
    iput-object p5, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->displayCallbacksFactory:Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksFactory;

    .line 79
    iput-object p6, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    .line 81
    nop

    .line 82
    invoke-interface {p4}, Lcom/google/firebase/installations/FirebaseInstallationsApi;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/-$$Lambda$FirebaseInAppMessaging$JXUoitANqdIgeQw3rv8bwbUHnrk;->INSTANCE:Lcom/google/firebase/inappmessaging/-$$Lambda$FirebaseInAppMessaging$JXUoitANqdIgeQw3rv8bwbUHnrk;

    .line 83
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 86
    nop

    .line 88
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->createFirebaseInAppMessageStream()Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/-$$Lambda$FirebaseInAppMessaging$6PDqLvmcDdKd2OjAEkH-5n0Xpdw;

    invoke-direct {v1, p0}, Lcom/google/firebase/inappmessaging/-$$Lambda$FirebaseInAppMessaging$6PDqLvmcDdKd2OjAEkH-5n0Xpdw;-><init>(Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;)V

    .line 89
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 90
    .local v0, "unused":Lio/reactivex/disposables/Disposable;
    return-void
.end method

.method public static getInstance()Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;
    .locals 2

    .line 101
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    const-class v1, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    invoke-virtual {v0, v1}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    return-object v0
.end method

.method public static synthetic lambda$6PDqLvmcDdKd2OjAEkH-5n0Xpdw(Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->triggerInAppMessage(Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;)V

    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/String;)V
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting InAppMessaging runtime with Installation ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private triggerInAppMessage(Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;)V
    .locals 5
    .param p1, "inAppMessage"    # Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;

    .line 363
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->fiamDisplay:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;

    if-eqz v0, :cond_0

    .line 365
    nop

    .line 366
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;->getInAppMessage()Lcom/google/firebase/inappmessaging/model/InAppMessage;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->displayCallbacksFactory:Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksFactory;

    .line 368
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;->getInAppMessage()Lcom/google/firebase/inappmessaging/model/InAppMessage;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/TriggeredInAppMessage;->getTriggeringEvent()Ljava/lang/String;

    move-result-object v4

    .line 367
    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksFactory;->generateDisplayCallback(Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;)Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;

    move-result-object v2

    .line 365
    invoke-interface {v0, v1, v2}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;->displayMessage(Lcom/google/firebase/inappmessaging/model/InAppMessage;Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayCallbacks;)V

    .line 370
    :cond_0
    return-void
.end method


# virtual methods
.method public addClickListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;)V
    .locals 1
    .param p1, "clickListener"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;

    .line 237
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->addClickListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;)V

    .line 238
    return-void
.end method

.method public addClickListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "clickListener"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 284
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->addClickListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;Ljava/util/concurrent/Executor;)V

    .line 285
    return-void
.end method

.method public addDismissListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;)V
    .locals 1
    .param p1, "dismissListener"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;

    .line 246
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->addDismissListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;)V

    .line 247
    return-void
.end method

.method public addDismissListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "dismissListener"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 296
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->addDismissListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDismissListener;Ljava/util/concurrent/Executor;)V

    .line 297
    return-void
.end method

.method public addDisplayErrorListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;)V
    .locals 1
    .param p1, "displayErrorListener"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;

    .line 257
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->addDisplayErrorListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;)V

    .line 258
    return-void
.end method

.method public addDisplayErrorListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "displayErrorListener"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 309
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->addDisplayErrorListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;Ljava/util/concurrent/Executor;)V

    .line 310
    return-void
.end method

.method public addImpressionListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;)V
    .locals 1
    .param p1, "impressionListener"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;

    .line 228
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->addImpressionListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;)V

    .line 229
    return-void
.end method

.method public addImpressionListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "impressionListener"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 272
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->addImpressionListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;Ljava/util/concurrent/Executor;)V

    .line 273
    return-void
.end method

.method public areMessagesSuppressed()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->areMessagesSuppressed:Z

    return v0
.end method

.method public clearDisplayListener()V
    .locals 1

    .line 213
    const-string v0, "Removing display event component"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->fiamDisplay:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;

    .line 215
    return-void
.end method

.method public isAutomaticDataCollectionEnabled()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->isAutomaticDataCollectionEnabled()Z

    move-result v0

    return v0
.end method

.method public removeAllListeners()V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->removeAllListeners()V

    .line 350
    return-void
.end method

.method public removeClickListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;)V
    .locals 1
    .param p1, "clickListener"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;

    .line 330
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->removeClickListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingClickListener;)V

    .line 331
    return-void
.end method

.method public removeDisplayErrorListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;)V
    .locals 1
    .param p1, "displayErrorListener"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;

    .line 340
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->removeDisplayErrorListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplayErrorListener;)V

    .line 341
    return-void
.end method

.method public removeImpressionListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;)V
    .locals 1
    .param p1, "impressionListener"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;

    .line 321
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->developerListenerManager:Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DeveloperListenerManager;->removeImpressionListener(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingImpressionListener;)V

    .line 322
    return-void
.end method

.method public setAutomaticDataCollectionEnabled(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "isAutomaticCollectionEnabled"    # Ljava/lang/Boolean;

    .line 145
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->setAutomaticDataCollectionEnabled(Ljava/lang/Boolean;)V

    .line 146
    return-void
.end method

.method public setAutomaticDataCollectionEnabled(Z)V
    .locals 1
    .param p1, "isAutomaticCollectionEnabled"    # Z

    .line 171
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->dataCollectionHelper:Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->setAutomaticDataCollectionEnabled(Z)V

    .line 172
    return-void
.end method

.method public setMessageDisplayComponent(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;)V
    .locals 1
    .param p1, "messageDisplay"    # Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;

    .line 203
    const-string v0, "Setting display event component"

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    .line 204
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->fiamDisplay:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;

    .line 205
    return-void
.end method

.method public setMessagesSuppressed(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "areMessagesSuppressed"    # Ljava/lang/Boolean;

    .line 185
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->areMessagesSuppressed:Z

    .line 186
    return-void
.end method

.method public triggerEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->programaticContextualTriggers:Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/ProgramaticContextualTriggers;->triggerEvent(Ljava/lang/String;)V

    .line 360
    return-void
.end method
