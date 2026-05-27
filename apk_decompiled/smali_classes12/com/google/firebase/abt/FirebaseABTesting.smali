.class public Lcom/google/firebase/abt/FirebaseABTesting;
.super Ljava/lang/Object;
.source "FirebaseABTesting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/abt/FirebaseABTesting$OriginService;
    }
.end annotation


# static fields
.field static final ABT_PREFERENCES:Ljava/lang/String; = "com.google.firebase.abt"

.field static final ORIGIN_LAST_KNOWN_START_TIME_KEY_FORMAT:Ljava/lang/String; = "%s_lastKnownExperimentStartTime"


# instance fields
.field private final analyticsConnector:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector;",
            ">;"
        }
    .end annotation
.end field

.field private maxUserProperties:Ljava/lang/Integer;

.field private final originService:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/inject/Provider;Ljava/lang/String;)V
    .locals 1
    .param p1, "unusedAppContext"    # Landroid/content/Context;
    .param p3, "originService"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 94
    .local p2, "analyticsConnector":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Lcom/google/firebase/analytics/connector/AnalyticsConnector;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/google/firebase/abt/FirebaseABTesting;->analyticsConnector:Lcom/google/firebase/inject/Provider;

    .line 96
    iput-object p3, p0, Lcom/google/firebase/abt/FirebaseABTesting;->originService:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->maxUserProperties:Ljava/lang/Integer;

    .line 99
    return-void
.end method

.method private addExperimentToAnalytics(Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;)V
    .locals 1
    .param p1, "experiment"    # Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    .line 337
    iget-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->analyticsConnector:Lcom/google/firebase/inject/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    invoke-interface {v0, p1}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->setConditionalUserProperty(Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;)V

    .line 338
    return-void
.end method

.method private addExperiments(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/abt/AbtExperimentInfo;",
            ">;)V"
        }
    .end annotation

    .line 300
    .local p1, "experimentsToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/abt/AbtExperimentInfo;>;"
    new-instance v0, Ljava/util/ArrayDeque;

    .line 301
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->getAllExperimentsInAnalytics()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 303
    .local v0, "dequeOfExperimentsInAnalytics":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;>;"
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->getMaxUserPropertiesInAnalytics()I

    move-result v1

    .line 305
    .local v1, "fetchedMaxUserProperties":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/abt/AbtExperimentInfo;

    .line 306
    .local v3, "experimentToAdd":Lcom/google/firebase/abt/AbtExperimentInfo;
    :goto_1
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v4

    if-lt v4, v1, :cond_0

    .line 307
    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    iget-object v4, v4, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/google/firebase/abt/FirebaseABTesting;->removeExperimentFromAnalytics(Ljava/lang/String;)V

    goto :goto_1

    .line 310
    :cond_0
    iget-object v4, p0, Lcom/google/firebase/abt/FirebaseABTesting;->originService:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/firebase/abt/AbtExperimentInfo;->toConditionalUserProperty(Ljava/lang/String;)Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    move-result-object v4

    .line 311
    .local v4, "experiment":Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;
    invoke-direct {p0, v4}, Lcom/google/firebase/abt/FirebaseABTesting;->addExperimentToAnalytics(Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;)V

    .line 312
    invoke-interface {v0, v4}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 313
    .end local v3    # "experimentToAdd":Lcom/google/firebase/abt/AbtExperimentInfo;
    .end local v4    # "experiment":Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;
    goto :goto_0

    .line 314
    :cond_1
    return-void
.end method

.method private static convertMapsToExperimentInfos(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/abt/AbtExperimentInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 329
    .local p0, "replacementExperimentsMaps":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v0, "replacementExperimentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/abt/AbtExperimentInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 331
    .local v2, "replacementExperimentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/google/firebase/abt/AbtExperimentInfo;->fromMap(Ljava/util/Map;)Lcom/google/firebase/abt/AbtExperimentInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    .end local v2    # "replacementExperimentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 333
    :cond_0
    return-object v0
.end method

.method private getAllExperimentsInAnalytics()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->analyticsConnector:Lcom/google/firebase/inject/Provider;

    .line 377
    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    iget-object v1, p0, Lcom/google/firebase/abt/FirebaseABTesting;->originService:Ljava/lang/String;

    .line 378
    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 376
    return-object v0
.end method

.method private getExperimentsToAdd(Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/abt/AbtExperimentInfo;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/google/firebase/abt/AbtExperimentInfo;",
            ">;"
        }
    .end annotation

    .line 288
    .local p1, "replacementExperiments":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/abt/AbtExperimentInfo;>;"
    .local p2, "idsOfExperimentsInAnalytics":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v0, "experimentsToAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/abt/AbtExperimentInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/abt/AbtExperimentInfo;

    .line 290
    .local v2, "replacementExperiment":Lcom/google/firebase/abt/AbtExperimentInfo;
    invoke-virtual {v2}, Lcom/google/firebase/abt/AbtExperimentInfo;->getExperimentId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 291
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .end local v2    # "replacementExperiment":Lcom/google/firebase/abt/AbtExperimentInfo;
    :cond_0
    goto :goto_0

    .line 294
    :cond_1
    return-object v0
.end method

.method private getExperimentsToRemove(Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    .line 272
    .local p1, "experimentsInAnalytics":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;>;"
    .local p2, "replacementExperimentIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v0, "experimentsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    .line 274
    .local v2, "experimentInAnalytics":Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;
    iget-object v3, v2, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 275
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v2    # "experimentInAnalytics":Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;
    :cond_0
    goto :goto_0

    .line 278
    :cond_1
    return-object v0
.end method

.method private getMaxUserPropertiesInAnalytics()I
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->maxUserProperties:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->analyticsConnector:Lcom/google/firebase/inject/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    iget-object v1, p0, Lcom/google/firebase/abt/FirebaseABTesting;->originService:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->getMaxUserProperties(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->maxUserProperties:Ljava/lang/Integer;

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->maxUserProperties:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private removeExperimentFromAnalytics(Ljava/lang/String;)V
    .locals 2
    .param p1, "experimentId"    # Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->analyticsConnector:Lcom/google/firebase/inject/Provider;

    .line 355
    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 356
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 358
    return-void
.end method

.method private removeExperiments(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;",
            ">;)V"
        }
    .end annotation

    .line 317
    .local p1, "experiments":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    .line 318
    .local v1, "experiment":Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;
    iget-object v2, v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/firebase/abt/FirebaseABTesting;->removeExperimentFromAnalytics(Ljava/lang/String;)V

    .line 319
    .end local v1    # "experiment":Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;
    goto :goto_0

    .line 320
    :cond_0
    return-void
.end method

.method private replaceAllExperimentsWith(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/abt/AbtExperimentInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 243
    .local p1, "replacementExperiments":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/abt/AbtExperimentInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->removeAllExperiments()V

    .line 245
    return-void

    .line 248
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 249
    .local v0, "replacementExperimentIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/abt/AbtExperimentInfo;

    .line 250
    .local v2, "replacementExperiment":Lcom/google/firebase/abt/AbtExperimentInfo;
    invoke-virtual {v2}, Lcom/google/firebase/abt/AbtExperimentInfo;->getExperimentId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v2    # "replacementExperiment":Lcom/google/firebase/abt/AbtExperimentInfo;
    goto :goto_0

    .line 253
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->getAllExperimentsInAnalytics()Ljava/util/List;

    move-result-object v1

    .line 254
    .local v1, "experimentsInAnalytics":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 255
    .local v2, "idsOfExperimentsInAnalytics":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    .line 256
    .local v4, "experimentInAnalytics":Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;
    iget-object v5, v4, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    .end local v4    # "experimentInAnalytics":Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;
    goto :goto_1

    .line 259
    :cond_2
    nop

    .line 260
    invoke-direct {p0, v1, v0}, Lcom/google/firebase/abt/FirebaseABTesting;->getExperimentsToRemove(Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v3

    .line 261
    .local v3, "experimentsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;>;"
    invoke-direct {p0, v3}, Lcom/google/firebase/abt/FirebaseABTesting;->removeExperiments(Ljava/util/Collection;)V

    .line 263
    nop

    .line 264
    invoke-direct {p0, p1, v2}, Lcom/google/firebase/abt/FirebaseABTesting;->getExperimentsToAdd(Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v4

    .line 265
    .local v4, "experimentsToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/abt/AbtExperimentInfo;>;"
    invoke-direct {p0, v4}, Lcom/google/firebase/abt/FirebaseABTesting;->addExperiments(Ljava/util/List;)V

    .line 266
    return-void
.end method

.method private throwAbtExceptionIfAnalyticsIsNull()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->analyticsConnector:Lcom/google/firebase/inject/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    return-void

    .line 342
    :cond_0
    new-instance v0, Lcom/google/firebase/abt/AbtException;

    const-string v1, "The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies."

    invoke-direct {v0, v1}, Lcom/google/firebase/abt/AbtException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAllExperiments()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/abt/AbtExperimentInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->throwAbtExceptionIfAnalyticsIsNull()V

    .line 158
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->getAllExperimentsInAnalytics()Ljava/util/List;

    move-result-object v0

    .line 159
    .local v0, "experimentsInAnalytics":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v1, "experimentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/abt/AbtExperimentInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    .line 162
    .local v3, "experimentInAnalytics":Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;
    invoke-static {v3}, Lcom/google/firebase/abt/AbtExperimentInfo;->fromConditionalUserProperty(Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;)Lcom/google/firebase/abt/AbtExperimentInfo;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v3    # "experimentInAnalytics":Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;
    goto :goto_0

    .line 165
    :cond_0
    return-object v1
.end method

.method public removeAllExperiments()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->throwAbtExceptionIfAnalyticsIsNull()V

    .line 143
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->getAllExperimentsInAnalytics()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/abt/FirebaseABTesting;->removeExperiments(Ljava/util/Collection;)V

    .line 144
    return-void
.end method

.method public replaceAllExperiments(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 122
    .local p1, "replacementExperiments":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->throwAbtExceptionIfAnalyticsIsNull()V

    .line 124
    if-eqz p1, :cond_0

    .line 128
    invoke-static {p1}, Lcom/google/firebase/abt/FirebaseABTesting;->convertMapsToExperimentInfos(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/abt/FirebaseABTesting;->replaceAllExperimentsWith(Ljava/util/List;)V

    .line 129
    return-void

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The replacementExperiments list is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reportActiveExperiment(Lcom/google/firebase/abt/AbtExperimentInfo;)V
    .locals 3
    .param p1, "activeExperiment"    # Lcom/google/firebase/abt/AbtExperimentInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 180
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->throwAbtExceptionIfAnalyticsIsNull()V

    .line 181
    invoke-static {p1}, Lcom/google/firebase/abt/AbtExperimentInfo;->validateAbtExperimentInfo(Lcom/google/firebase/abt/AbtExperimentInfo;)V

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v0, "activeExperimentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/abt/AbtExperimentInfo;>;"
    invoke-virtual {p1}, Lcom/google/firebase/abt/AbtExperimentInfo;->toStringMap()Ljava/util/Map;

    move-result-object v1

    .line 186
    .local v1, "activeExperimentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "triggerEvent"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {v1}, Lcom/google/firebase/abt/AbtExperimentInfo;->fromMap(Ljava/util/Map;)Lcom/google/firebase/abt/AbtExperimentInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-direct {p0, v0}, Lcom/google/firebase/abt/FirebaseABTesting;->addExperiments(Ljava/util/List;)V

    .line 191
    return-void
.end method

.method public validateRunningExperiments(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/abt/AbtExperimentInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 206
    .local p1, "runningExperiments":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/abt/AbtExperimentInfo;>;"
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->throwAbtExceptionIfAnalyticsIsNull()V

    .line 207
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 208
    .local v0, "runningExperimentIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/abt/AbtExperimentInfo;

    .line 209
    .local v2, "runningExperiment":Lcom/google/firebase/abt/AbtExperimentInfo;
    invoke-virtual {v2}, Lcom/google/firebase/abt/AbtExperimentInfo;->getExperimentId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    .end local v2    # "runningExperiment":Lcom/google/firebase/abt/AbtExperimentInfo;
    goto :goto_0

    .line 211
    :cond_0
    nop

    .line 212
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->getAllExperimentsInAnalytics()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/firebase/abt/FirebaseABTesting;->getExperimentsToRemove(Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v1

    .line 213
    .local v1, "experimentsToRemove":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;>;"
    invoke-direct {p0, v1}, Lcom/google/firebase/abt/FirebaseABTesting;->removeExperiments(Ljava/util/Collection;)V

    .line 214
    return-void
.end method
