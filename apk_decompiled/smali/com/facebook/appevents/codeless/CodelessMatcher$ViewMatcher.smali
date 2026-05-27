.class public Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;
.super Ljava/lang/Object;
.source "CodelessMatcher.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/codeless/CodelessMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewMatcher"
.end annotation


# instance fields
.field private final activityName:Ljava/lang/String;

.field private eventBindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/appevents/codeless/internal/EventBinding;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private listenerSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rootView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/os/Handler;Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p4, "activityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/os/Handler;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 224
    .local p3, "listenerSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->rootView:Ljava/lang/ref/WeakReference;

    .line 226
    iput-object p2, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->handler:Landroid/os/Handler;

    .line 227
    iput-object p3, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->listenerSet:Ljava/util/HashSet;

    .line 228
    iput-object p4, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->activityName:Ljava/lang/String;

    .line 230
    const-wide/16 v0, 0xc8

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    return-void
.end method

.method private attachListener(Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;Landroid/view/View;Lcom/facebook/appevents/codeless/internal/EventBinding;)V
    .locals 4
    .param p1, "matchedView"    # Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "mapping"    # Lcom/facebook/appevents/codeless/internal/EventBinding;

    .line 450
    if-nez p3, :cond_0

    .line 451
    return-void

    .line 454
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getView()Landroid/view/View;

    move-result-object v0

    .line 455
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_1

    .line 456
    return-void

    .line 459
    :cond_1
    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->findRCTRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 460
    .local v1, "RCTRootView":Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-static {v0, v1}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->isRCTButton(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 461
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->attachRCTListener(Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;Landroid/view/View;Lcom/facebook/appevents/codeless/internal/EventBinding;)V

    .line 462
    return-void

    .line 465
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.facebook.react"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 466
    return-void

    .line 468
    :cond_3
    instance-of v2, v0, Landroid/widget/AdapterView;

    if-nez v2, :cond_4

    .line 470
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->attachOnClickListener(Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;Landroid/view/View;Lcom/facebook/appevents/codeless/internal/EventBinding;)V

    goto :goto_0

    .line 471
    :cond_4
    instance-of v2, v0, Landroid/widget/ListView;

    if-eqz v2, :cond_5

    .line 473
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->attachOnItemClickListener(Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;Landroid/view/View;Lcom/facebook/appevents/codeless/internal/EventBinding;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "RCTRootView":Landroid/view/View;
    :cond_5
    :goto_0
    goto :goto_1

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessMatcher;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 478
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private attachOnClickListener(Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;Landroid/view/View;Lcom/facebook/appevents/codeless/internal/EventBinding;)V
    .locals 7
    .param p1, "matchedView"    # Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "mapping"    # Lcom/facebook/appevents/codeless/internal/EventBinding;

    .line 482
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getView()Landroid/view/View;

    move-result-object v0

    .line 483
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 484
    return-void

    .line 486
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getViewMapKey()Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, "mapKey":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getExistingOnClickListener(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v2

    .line 488
    .local v2, "existingListener":Landroid/view/View$OnClickListener;
    instance-of v3, v2, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnClickListener;

    .line 490
    .local v3, "isCodelessListener":Z
    if-eqz v3, :cond_1

    move-object v4, v2

    check-cast v4, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnClickListener;

    .line 493
    invoke-virtual {v4}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnClickListener;->getSupportCodelessLogging()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 494
    .local v4, "listenerSupportCodelessLogging":Z
    :goto_0
    iget-object v5, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->listenerSet:Ljava/util/HashSet;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    if-nez v4, :cond_2

    .line 495
    nop

    .line 496
    invoke-static {p3, p2, v0}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;->getOnClickListener(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnClickListener;

    move-result-object v5

    .line 497
    .local v5, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    iget-object v6, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->listenerSet:Ljava/util/HashSet;

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 500
    .end local v5    # "listener":Landroid/view/View$OnClickListener;
    :cond_2
    return-void
.end method

.method private attachOnItemClickListener(Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;Landroid/view/View;Lcom/facebook/appevents/codeless/internal/EventBinding;)V
    .locals 7
    .param p1, "matchedView"    # Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "mapping"    # Lcom/facebook/appevents/codeless/internal/EventBinding;

    .line 504
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    .line 505
    .local v0, "view":Landroid/widget/AdapterView;
    if-nez v0, :cond_0

    .line 506
    return-void

    .line 508
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getViewMapKey()Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, "mapKey":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    .line 510
    .local v2, "existingListener":Landroid/widget/AdapterView$OnItemClickListener;
    instance-of v3, v2, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnItemClickListener;

    .line 512
    .local v3, "isCodelessListener":Z
    if-eqz v3, :cond_1

    move-object v4, v2

    check-cast v4, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnItemClickListener;

    .line 515
    invoke-virtual {v4}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnItemClickListener;->getSupportCodelessLogging()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 516
    .local v4, "listenerSupportCodelessLogging":Z
    :goto_0
    iget-object v5, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->listenerSet:Ljava/util/HashSet;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    if-nez v4, :cond_2

    .line 517
    nop

    .line 518
    invoke-static {p3, p2, v0}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;->getOnItemClickListener(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/widget/AdapterView;)Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnItemClickListener;

    move-result-object v5

    .line 519
    .local v5, "listener":Landroid/widget/AdapterView$OnItemClickListener;
    invoke-virtual {v0, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 520
    iget-object v6, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->listenerSet:Ljava/util/HashSet;

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 522
    .end local v5    # "listener":Landroid/widget/AdapterView$OnItemClickListener;
    :cond_2
    return-void
.end method

.method private attachRCTListener(Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;Landroid/view/View;Lcom/facebook/appevents/codeless/internal/EventBinding;)V
    .locals 7
    .param p1, "matchedView"    # Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "mapping"    # Lcom/facebook/appevents/codeless/internal/EventBinding;

    .line 526
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getView()Landroid/view/View;

    move-result-object v0

    .line 527
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 528
    return-void

    .line 530
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getViewMapKey()Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, "mapKey":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getExistingOnTouchListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v2

    .line 532
    .local v2, "existingListener":Landroid/view/View$OnTouchListener;
    instance-of v3, v2, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;

    .line 534
    .local v3, "isRCTCodelessListener":Z
    if-eqz v3, :cond_1

    move-object v4, v2

    check-cast v4, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;

    .line 537
    invoke-virtual {v4}, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;->getSupportCodelessLogging()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 538
    .local v4, "listenerSupportCodelessLogging":Z
    :goto_0
    iget-object v5, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->listenerSet:Ljava/util/HashSet;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    if-nez v4, :cond_2

    .line 539
    nop

    .line 540
    invoke-static {p3, p2, v0}, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener;->getOnTouchListener(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;

    move-result-object v5

    .line 541
    .local v5, "listener":Landroid/view/View$OnTouchListener;
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 542
    iget-object v6, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->listenerSet:Ljava/util/HashSet;

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 544
    .end local v5    # "listener":Landroid/view/View$OnTouchListener;
    :cond_2
    return-void
.end method

.method public static findViewByPath(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;
    .locals 17
    .param p0, "mapping"    # Lcom/facebook/appevents/codeless/internal/EventBinding;
    .param p1, "view"    # Landroid/view/View;
    .param p3, "level"    # I
    .param p4, "index"    # I
    .param p5, "mapKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/appevents/codeless/internal/EventBinding;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/codeless/internal/PathComponent;",
            ">;II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;",
            ">;"
        }
    .end annotation

    .line 306
    .local p2, "path":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/internal/PathComponent;>;"
    move-object/from16 v0, p1

    move/from16 v1, p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 307
    .end local p5    # "mapKey":Ljava/lang/String;
    .local v2, "mapKey":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;>;"
    if-nez v0, :cond_0

    .line 309
    return-object v3

    .line 312
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 314
    new-instance v4, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;

    invoke-direct {v4, v0, v2}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v4, p4

    goto/16 :goto_1

    .line 316
    :cond_1
    invoke-interface/range {p2 .. p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/appevents/codeless/internal/PathComponent;

    .line 317
    .local v5, "pathElement":Lcom/facebook/appevents/codeless/internal/PathComponent;
    iget-object v6, v5, Lcom/facebook/appevents/codeless/internal/PathComponent;->className:Ljava/lang/String;

    const-string v7, ".."

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 318
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 319
    .local v4, "parent":Landroid/view/ViewParent;
    instance-of v6, v4, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    .line 320
    move-object v12, v4

    check-cast v12, Landroid/view/ViewGroup;

    .line 321
    .local v12, "viewGroup":Landroid/view/ViewGroup;
    invoke-static {v12}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findVisibleChildren(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v13

    .line 322
    .local v13, "visibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    .line 323
    .local v14, "childCount":I
    const/4 v6, 0x0

    move v15, v6

    .local v15, "i":I
    :goto_0
    if-ge v15, v14, :cond_2

    .line 324
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v16, v6

    check-cast v16, Landroid/view/View;

    .line 325
    .local v16, "child":Landroid/view/View;
    add-int/lit8 v9, v1, 0x1

    .line 326
    move-object/from16 v6, p0

    move-object/from16 v7, v16

    move-object/from16 v8, p2

    move v10, v15

    move-object v11, v2

    invoke-static/range {v6 .. v11}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findViewByPath(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 327
    .local v6, "matchedViews":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;>;"
    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 323
    .end local v6    # "matchedViews":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;>;"
    .end local v16    # "child":Landroid/view/View;
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 331
    .end local v12    # "viewGroup":Landroid/view/ViewGroup;
    .end local v13    # "visibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v14    # "childCount":I
    .end local v15    # "i":I
    :cond_2
    return-object v3

    .line 332
    .end local v4    # "parent":Landroid/view/ViewParent;
    :cond_3
    iget-object v6, v5, Lcom/facebook/appevents/codeless/internal/PathComponent;->className:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 334
    new-instance v4, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;

    invoke-direct {v4, v0, v2}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    return-object v3

    .line 339
    :cond_4
    move/from16 v4, p4

    invoke-static {v0, v5, v4}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->isTheSameView(Landroid/view/View;Lcom/facebook/appevents/codeless/internal/PathComponent;I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 340
    return-object v3

    .line 344
    :cond_5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_6

    .line 345
    new-instance v6, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;

    invoke-direct {v6, v0, v2}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    .end local v5    # "pathElement":Lcom/facebook/appevents/codeless/internal/PathComponent;
    :cond_6
    :goto_1
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_7

    .line 350
    move-object v5, v0

    check-cast v5, Landroid/view/ViewGroup;

    .line 351
    .local v5, "viewGroup":Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findVisibleChildren(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v12

    .line 352
    .local v12, "visibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 353
    .local v13, "childCount":I
    const/4 v6, 0x0

    move v14, v6

    .local v14, "i":I
    :goto_2
    if-ge v14, v13, :cond_7

    .line 354
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Landroid/view/View;

    .line 355
    .local v15, "child":Landroid/view/View;
    add-int/lit8 v9, v1, 0x1

    .line 356
    move-object/from16 v6, p0

    move-object v7, v15

    move-object/from16 v8, p2

    move v10, v14

    move-object v11, v2

    invoke-static/range {v6 .. v11}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findViewByPath(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 357
    .restart local v6    # "matchedViews":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;>;"
    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 353
    .end local v6    # "matchedViews":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;>;"
    .end local v15    # "child":Landroid/view/View;
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 361
    .end local v5    # "viewGroup":Landroid/view/ViewGroup;
    .end local v12    # "visibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v13    # "childCount":I
    .end local v14    # "i":I
    :cond_7
    return-object v3
.end method

.method private static findVisibleChildren(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 5
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v0, "visibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 439
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 440
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 441
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 442
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method private static isTheSameView(Landroid/view/View;Lcom/facebook/appevents/codeless/internal/PathComponent;I)Z
    .locals 7
    .param p0, "targetView"    # Landroid/view/View;
    .param p1, "pathElement"    # Lcom/facebook/appevents/codeless/internal/PathComponent;
    .param p2, "index"    # I

    .line 366
    iget v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->index:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->index:I

    if-eq p2, v0, :cond_0

    .line 367
    return v1

    .line 370
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->className:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 371
    iget-object v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->className:Ljava/lang/String;

    const-string v3, ".*android\\..*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 372
    iget-object v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->className:Ljava/lang/String;

    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "names":[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_2

    .line 374
    array-length v3, v0

    sub-int/2addr v3, v2

    aget-object v3, v0, v3

    .line 375
    .local v3, "SimpleName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 376
    return v1

    .line 378
    .end local v3    # "SimpleName":Ljava/lang/String;
    :cond_1
    nop

    .line 381
    .end local v0    # "names":[Ljava/lang/String;
    goto :goto_0

    .line 379
    .restart local v0    # "names":[Ljava/lang/String;
    :cond_2
    return v1

    .line 382
    .end local v0    # "names":[Ljava/lang/String;
    :cond_3
    return v1

    .line 386
    :cond_4
    :goto_0
    iget v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->matchBitmask:I

    sget-object v3, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->ID:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    invoke-virtual {v3}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->getValue()I

    move-result v3

    and-int/2addr v0, v3

    if-lez v0, :cond_5

    .line 387
    iget v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->id:I

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v3

    if-eq v0, v3, :cond_5

    .line 388
    return v1

    .line 392
    :cond_5
    iget v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->matchBitmask:I

    sget-object v3, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->TEXT:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    invoke-virtual {v3}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->getValue()I

    move-result v3

    and-int/2addr v0, v3

    const-string v3, ""

    if-lez v0, :cond_6

    .line 393
    iget-object v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->text:Ljava/lang/String;

    .line 394
    .local v0, "pathText":Ljava/lang/String;
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 395
    .local v4, "text":Ljava/lang/String;
    invoke-static {v4}, Lcom/facebook/internal/Utility;->sha256hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 397
    .local v5, "hashedText":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 398
    return v1

    .line 402
    .end local v0    # "pathText":Ljava/lang/String;
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "hashedText":Ljava/lang/String;
    :cond_6
    iget v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->matchBitmask:I

    sget-object v4, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->DESCRIPTION:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    invoke-virtual {v4}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->getValue()I

    move-result v4

    and-int/2addr v0, v4

    if-lez v0, :cond_8

    .line 403
    iget-object v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->description:Ljava/lang/String;

    .line 404
    .local v0, "pathDesc":Ljava/lang/String;
    nop

    .line 405
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_7

    move-object v4, v3

    goto :goto_1

    .line 407
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    nop

    .line 408
    .local v4, "targetDesc":Ljava/lang/String;
    invoke-static {v4}, Lcom/facebook/internal/Utility;->sha256hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 409
    .local v5, "hashedDesc":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 410
    return v1

    .line 414
    .end local v0    # "pathDesc":Ljava/lang/String;
    .end local v4    # "targetDesc":Ljava/lang/String;
    .end local v5    # "hashedDesc":Ljava/lang/String;
    :cond_8
    iget v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->matchBitmask:I

    sget-object v4, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->HINT:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    invoke-virtual {v4}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->getValue()I

    move-result v4

    and-int/2addr v0, v4

    if-lez v0, :cond_9

    .line 415
    iget-object v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->hint:Ljava/lang/String;

    .line 416
    .local v0, "pathHint":Ljava/lang/String;
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getHintOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, "targetHint":Ljava/lang/String;
    invoke-static {v4}, Lcom/facebook/internal/Utility;->sha256hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 419
    .local v5, "hashedHint":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 420
    return v1

    .line 424
    .end local v0    # "pathHint":Ljava/lang/String;
    .end local v4    # "targetHint":Ljava/lang/String;
    .end local v5    # "hashedHint":Ljava/lang/String;
    :cond_9
    iget v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->matchBitmask:I

    sget-object v4, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->TAG:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    invoke-virtual {v4}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->getValue()I

    move-result v4

    and-int/2addr v0, v4

    if-lez v0, :cond_b

    .line 425
    iget-object v0, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->tag:Ljava/lang/String;

    .line 426
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_a

    move-object v4, v3

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 427
    .local v4, "targetTag":Ljava/lang/String;
    :goto_2
    invoke-static {v4}, Lcom/facebook/internal/Utility;->sha256hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 428
    .local v3, "hashedTag":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 429
    return v1

    .line 433
    .end local v0    # "tag":Ljava/lang/String;
    .end local v3    # "hashedTag":Ljava/lang/String;
    .end local v4    # "targetTag":Ljava/lang/String;
    :cond_b
    return v2
.end method

.method private startMatch()V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->eventBindings:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->rootView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->eventBindings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->eventBindings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/codeless/internal/EventBinding;

    .line 271
    .local v1, "binding":Lcom/facebook/appevents/codeless/internal/EventBinding;
    iget-object v2, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->rootView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findView(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;)V

    .line 269
    .end local v1    # "binding":Lcom/facebook/appevents/codeless/internal/EventBinding;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public findView(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;)V
    .locals 7
    .param p1, "mapping"    # Lcom/facebook/appevents/codeless/internal/EventBinding;
    .param p2, "rootView"    # Landroid/view/View;

    .line 277
    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 281
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getActivityName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    return-void

    .line 286
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getViewPath()Ljava/util/List;

    move-result-object v0

    .line 288
    .local v0, "path":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/internal/PathComponent;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x19

    if-le v1, v2, :cond_2

    .line 289
    return-void

    .line 292
    :cond_2
    const/4 v4, 0x0

    const/4 v5, -0x1

    iget-object v6, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->activityName:Ljava/lang/String;

    .line 293
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findViewByPath(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 294
    .local v1, "matchedViews":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;

    .line 295
    .local v3, "view":Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;
    invoke-direct {p0, v3, p2, p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->attachListener(Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;Landroid/view/View;Lcom/facebook/appevents/codeless/internal/EventBinding;)V

    .line 296
    .end local v3    # "view":Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;
    goto :goto_0

    .line 297
    :cond_3
    return-void

    .line 278
    .end local v0    # "path":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/internal/PathComponent;>;"
    .end local v1    # "matchedViews":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;>;"
    :cond_4
    :goto_1
    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->startMatch()V

    .line 260
    return-void
.end method

.method public onScrollChanged()V
    .locals 0

    .line 264
    invoke-direct {p0}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->startMatch()V

    .line 265
    return-void
.end method

.method public run()V
    .locals 6

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 235
    .local v0, "this":Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "appId":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v2

    .line 237
    .local v2, "appSettings":Lcom/facebook/internal/FetchedAppSettings;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/facebook/internal/FetchedAppSettings;->getCodelessEventsEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/internal/FetchedAppSettings;->getEventBindings()Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/appevents/codeless/internal/EventBinding;->parseArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->eventBindings:Ljava/util/List;

    .line 243
    if-eqz v3, :cond_4

    .line 244
    iget-object v3, v0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->rootView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 245
    .local v3, "rootView":Landroid/view/View;
    if-nez v3, :cond_2

    .line 246
    return-void

    .line 248
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    .line 249
    .local v4, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 250
    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 251
    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 253
    .end local v0    # "this":Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;
    :cond_3
    invoke-direct {v0}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->startMatch()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local v3    # "rootView":Landroid/view/View;
    .end local v4    # "observer":Landroid/view/ViewTreeObserver;
    :cond_4
    return-void

    .line 238
    :cond_5
    :goto_0
    return-void

    .line 255
    .end local v1    # "appId":Ljava/lang/String;
    .end local v2    # "appSettings":Lcom/facebook/internal/FetchedAppSettings;
    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
