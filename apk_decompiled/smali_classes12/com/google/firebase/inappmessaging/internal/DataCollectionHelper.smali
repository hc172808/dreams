.class public Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;
.super Ljava/lang/Object;
.source "DataCollectionHelper.java"


# static fields
.field static final AUTO_INIT_PREFERENCES:Ljava/lang/String; = "auto_init"

.field static final MANIFEST_METADATA_AUTO_INIT_ENABLED:Ljava/lang/String; = "firebase_inapp_messaging_auto_data_collection_enabled"


# instance fields
.field private isGlobalAutomaticDataCollectionEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;Lcom/google/firebase/events/Subscriber;)V
    .locals 2
    .param p1, "firebaseApp"    # Lcom/google/firebase/FirebaseApp;
    .param p2, "sharedPreferencesUtils"    # Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;
    .param p3, "firebaseEventsSubscriber"    # Lcom/google/firebase/events/Subscriber;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->isDataCollectionDefaultEnabled()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->isGlobalAutomaticDataCollectionEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    const-class v0, Lcom/google/firebase/DataCollectionDefaultChange;

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DataCollectionHelper$bTve7RWHS6pAE2pGIVlGgpwQh7c;

    invoke-direct {v1, p0}, Lcom/google/firebase/inappmessaging/internal/-$$Lambda$DataCollectionHelper$bTve7RWHS6pAE2pGIVlGgpwQh7c;-><init>(Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;)V

    invoke-interface {p3, v0, v1}, Lcom/google/firebase/events/Subscriber;->subscribe(Ljava/lang/Class;Lcom/google/firebase/events/EventHandler;)V

    .line 59
    return-void
.end method

.method private isProductManifestSet()Z
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    const-string v1, "firebase_inapp_messaging_auto_data_collection_enabled"

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->isManifestSet(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isProductManuallySet()Z
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    const-string v1, "auto_init"

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->isPreferenceSet(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readAutomaticDataCollectionEnabledFromPreferences()Z
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    const-string v1, "auto_init"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isAutomaticDataCollectionEnabled()Z
    .locals 3

    .line 73
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->isProductManuallySet()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    const-string v2, "auto_init"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->getBooleanPreference(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->isProductManifestSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    const-string v2, "firebase_inapp_messaging_auto_data_collection_enabled"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->getBooleanManifestValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->isGlobalAutomaticDataCollectionEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$0$DataCollectionHelper(Lcom/google/firebase/events/Event;)V
    .locals 3
    .param p1, "event"    # Lcom/google/firebase/events/Event;

    .line 56
    invoke-virtual {p1}, Lcom/google/firebase/events/Event;->getPayload()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/DataCollectionDefaultChange;

    .line 57
    .local v0, "change":Lcom/google/firebase/DataCollectionDefaultChange;
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->isGlobalAutomaticDataCollectionEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v2, v0, Lcom/google/firebase/DataCollectionDefaultChange;->enabled:Z

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 58
    return-void
.end method

.method public setAutomaticDataCollectionEnabled(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "isEnabled"    # Ljava/lang/Boolean;

    .line 150
    const-string v0, "auto_init"

    if-nez p1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    invoke-virtual {v1, v0}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->clearPreference(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 154
    invoke-virtual {v2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 153
    invoke-virtual {v1, v0, v2}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->setBooleanPreference(Ljava/lang/String;Z)V

    .line 156
    :goto_0
    return-void
.end method

.method public setAutomaticDataCollectionEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .line 114
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/DataCollectionHelper;->sharedPreferencesUtils:Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;

    const-string v1, "auto_init"

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/inappmessaging/internal/SharedPreferencesUtils;->setBooleanPreference(Ljava/lang/String;Z)V

    .line 115
    return-void
.end method
