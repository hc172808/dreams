.class public Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;
.super Ljava/lang/Object;
.source "AnalyticsEventsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager$AnalyticsFlowableSubscriber;
    }
.end annotation


# static fields
.field static final TOO_MANY_CONTEXTUAL_TRIGGERS_ERROR:Ljava/lang/String; = "Too many contextual triggers defined - limiting to 50"


# instance fields
.field private final analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

.field private final flowable:Lio/reactivex/flowables/ConnectableFlowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private handle:Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;


# direct methods
.method public constructor <init>(Lcom/google/firebase/analytics/connector/AnalyticsConnector;)V
    .locals 2
    .param p1, "analyticsConnector"    # Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;->analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 46
    new-instance v0, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager$AnalyticsFlowableSubscriber;

    invoke-direct {v0, p0}, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager$AnalyticsFlowableSubscriber;-><init>(Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;)V

    .line 47
    .local v0, "subscriber":Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager$AnalyticsFlowableSubscriber;
    sget-object v1, Lio/reactivex/BackpressureStrategy;->BUFFER:Lio/reactivex/BackpressureStrategy;

    invoke-static {v0, v1}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Flowable;->publish()Lio/reactivex/flowables/ConnectableFlowable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;->flowable:Lio/reactivex/flowables/ConnectableFlowable;

    .line 51
    invoke-virtual {v1}, Lio/reactivex/flowables/ConnectableFlowable;->connect()Lio/reactivex/disposables/Disposable;

    .line 52
    return-void
.end method

.method static synthetic access$002(Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;)Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;
    .param p1, "x1"    # Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;

    .line 39
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;->handle:Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;)Lcom/google/firebase/analytics/connector/AnalyticsConnector;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;

    .line 39
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;->analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    return-object v0
.end method

.method static extractAnalyticsEventNames(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)Ljava/util/Set;
    .locals 6
    .param p0, "response"    # Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 71
    .local v0, "analyticsEvents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;->getMessagesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    .line 72
    .local v2, "content":Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    invoke-virtual {v2}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getTriggeringConditionsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    .line 73
    .local v4, "condition":Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    invoke-virtual {v4}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->getEvent()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 74
    invoke-virtual {v4}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;->getEvent()Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Event;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v4    # "condition":Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    :cond_0
    goto :goto_1

    .line 77
    .end local v2    # "content":Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
    :cond_1
    goto :goto_0

    .line 83
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_3

    .line 84
    const-string v1, "Too many contextual triggers defined - limiting to 50"

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/internal/Logging;->logi(Ljava/lang/String;)V

    .line 86
    :cond_3
    return-object v0
.end method


# virtual methods
.method public getAnalyticsEventsFlowable()Lio/reactivex/flowables/ConnectableFlowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/flowables/ConnectableFlowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;->flowable:Lio/reactivex/flowables/ConnectableFlowable;

    return-object v0
.end method

.method public getHandle()Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;->handle:Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;

    return-object v0
.end method

.method public updateContextualTriggers(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)V
    .locals 3
    .param p1, "serviceResponse"    # Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;

    .line 90
    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;->extractAnalyticsEventNames(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;)Ljava/util/Set;

    move-result-object v0

    .line 91
    .local v0, "analyticsEventNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating contextual triggers for the following analytics events: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/AnalyticsEventsManager;->handle:Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;

    invoke-interface {v1, v0}, Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorHandle;->registerEventNames(Ljava/util/Set;)V

    .line 94
    return-void
.end method
