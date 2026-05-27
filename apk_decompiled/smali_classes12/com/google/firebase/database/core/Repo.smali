.class public Lcom/google/firebase/database/core/Repo;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/google/firebase/database/connection/PersistentConnection$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/core/Repo$TransactionData;,
        Lcom/google/firebase/database/core/Repo$TransactionStatus;
    }
.end annotation


# static fields
.field private static final INTERRUPT_REASON:Ljava/lang/String; = "repo_interrupt"

.field private static final TRANSACTION_MAX_RETRIES:I = 0x19

.field private static final TRANSACTION_OVERRIDE_BY_SET:Ljava/lang/String; = "overriddenBySet"

.field private static final TRANSACTION_TOO_MANY_RETRIES:Ljava/lang/String; = "maxretries"


# instance fields
.field private connection:Lcom/google/firebase/database/connection/PersistentConnection;

.field private final ctx:Lcom/google/firebase/database/core/Context;

.field private final dataLogger:Lcom/google/firebase/database/logging/LogWrapper;

.field public dataUpdateCount:J

.field private database:Lcom/google/firebase/database/FirebaseDatabase;

.field private final eventRaiser:Lcom/google/firebase/database/core/view/EventRaiser;

.field private hijackHash:Z

.field private infoData:Lcom/google/firebase/database/core/SnapshotHolder;

.field private infoSyncTree:Lcom/google/firebase/database/core/SyncTree;

.field private loggedTransactionPersistenceWarning:Z

.field private nextWriteId:J

.field private onDisconnect:Lcom/google/firebase/database/core/SparseSnapshotTree;

.field private final operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

.field private final repoInfo:Lcom/google/firebase/database/core/RepoInfo;

.field private final serverClock:Lcom/google/firebase/database/core/utilities/OffsetClock;

.field private serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

.field private final transactionLogger:Lcom/google/firebase/database/logging/LogWrapper;

.field private transactionOrder:J

.field private transactionQueueTree:Lcom/google/firebase/database/core/utilities/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/core/utilities/Tree<",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/Repo$TransactionData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/RepoInfo;Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/FirebaseDatabase;)V
    .locals 6
    .param p1, "repoInfo"    # Lcom/google/firebase/database/core/RepoInfo;
    .param p2, "ctx"    # Lcom/google/firebase/database/core/Context;
    .param p3, "database"    # Lcom/google/firebase/database/FirebaseDatabase;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/google/firebase/database/core/utilities/OffsetClock;

    new-instance v1, Lcom/google/firebase/database/core/utilities/DefaultClock;

    invoke-direct {v1}, Lcom/google/firebase/database/core/utilities/DefaultClock;-><init>()V

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/database/core/utilities/OffsetClock;-><init>(Lcom/google/firebase/database/core/utilities/Clock;J)V

    iput-object v0, p0, Lcom/google/firebase/database/core/Repo;->serverClock:Lcom/google/firebase/database/core/utilities/OffsetClock;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/database/core/Repo;->hijackHash:Z

    .line 77
    iput-wide v2, p0, Lcom/google/firebase/database/core/Repo;->dataUpdateCount:J

    .line 78
    const-wide/16 v4, 0x1

    iput-wide v4, p0, Lcom/google/firebase/database/core/Repo;->nextWriteId:J

    .line 82
    iput-boolean v0, p0, Lcom/google/firebase/database/core/Repo;->loggedTransactionPersistenceWarning:Z

    .line 832
    iput-wide v2, p0, Lcom/google/firebase/database/core/Repo;->transactionOrder:J

    .line 85
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo;->repoInfo:Lcom/google/firebase/database/core/RepoInfo;

    .line 86
    iput-object p2, p0, Lcom/google/firebase/database/core/Repo;->ctx:Lcom/google/firebase/database/core/Context;

    .line 87
    iput-object p3, p0, Lcom/google/firebase/database/core/Repo;->database:Lcom/google/firebase/database/FirebaseDatabase;

    .line 89
    const-string v0, "RepoOperation"

    invoke-virtual {p2, v0}, Lcom/google/firebase/database/core/Context;->getLogger(Ljava/lang/String;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    .line 90
    const-string v0, "Transaction"

    invoke-virtual {p2, v0}, Lcom/google/firebase/database/core/Context;->getLogger(Ljava/lang/String;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/Repo;->transactionLogger:Lcom/google/firebase/database/logging/LogWrapper;

    .line 91
    const-string v0, "DataOperation"

    invoke-virtual {p2, v0}, Lcom/google/firebase/database/core/Context;->getLogger(Ljava/lang/String;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/Repo;->dataLogger:Lcom/google/firebase/database/logging/LogWrapper;

    .line 93
    new-instance v0, Lcom/google/firebase/database/core/view/EventRaiser;

    invoke-direct {v0, p2}, Lcom/google/firebase/database/core/view/EventRaiser;-><init>(Lcom/google/firebase/database/core/Context;)V

    iput-object v0, p0, Lcom/google/firebase/database/core/Repo;->eventRaiser:Lcom/google/firebase/database/core/view/EventRaiser;

    .line 96
    new-instance v0, Lcom/google/firebase/database/core/Repo$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/core/Repo$1;-><init>(Lcom/google/firebase/database/core/Repo;)V

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 103
    return-void
.end method

.method private abortTransactions(Lcom/google/firebase/database/core/Path;I)Lcom/google/firebase/database/core/Path;
    .locals 4
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "reason"    # I

    .line 1370
    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/Repo;->getAncestorTransactionNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/Tree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/Tree;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    .line 1372
    .local v0, "affectedPath":Lcom/google/firebase/database/core/Path;
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo;->transactionLogger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1373
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aborting transactions for path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Affected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1377
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo;->transactionQueueTree:Lcom/google/firebase/database/core/utilities/Tree;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/utilities/Tree;->subTree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/Tree;

    move-result-object v1

    .line 1378
    .local v1, "transactionNode":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;>;"
    new-instance v2, Lcom/google/firebase/database/core/Repo$23;

    invoke-direct {v2, p0, p2}, Lcom/google/firebase/database/core/Repo$23;-><init>(Lcom/google/firebase/database/core/Repo;I)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/utilities/Tree;->forEachAncestor(Lcom/google/firebase/database/core/utilities/Tree$TreeFilter;)Z

    .line 1387
    invoke-direct {p0, v1, p2}, Lcom/google/firebase/database/core/Repo;->abortTransactionsAtNode(Lcom/google/firebase/database/core/utilities/Tree;I)V

    .line 1389
    new-instance v2, Lcom/google/firebase/database/core/Repo$24;

    invoke-direct {v2, p0, p2}, Lcom/google/firebase/database/core/Repo$24;-><init>(Lcom/google/firebase/database/core/Repo;I)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/utilities/Tree;->forEachDescendant(Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;)V

    .line 1397
    return-object v0
.end method

.method private abortTransactionsAtNode(Lcom/google/firebase/database/core/utilities/Tree;I)V
    .locals 23
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Tree<",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/Repo$TransactionData;",
            ">;>;I)V"
        }
    .end annotation

    .line 1401
    .local p1, "node":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1402
    .local v3, "queue":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1404
    .local v4, "events":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Event;>;"
    if-eqz v3, :cond_a

    .line 1405
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1407
    .local v5, "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    const-string v6, "Unknown transaction abort reason: "

    const/16 v7, -0x9

    const/16 v8, -0x19

    if-ne v2, v7, :cond_0

    .line 1408
    const-string v11, "overriddenBySet"

    invoke-static {v11}, Lcom/google/firebase/database/DatabaseError;->fromStatus(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v11

    .local v11, "abortError":Lcom/google/firebase/database/DatabaseError;
    goto :goto_1

    .line 1410
    .end local v11    # "abortError":Lcom/google/firebase/database/DatabaseError;
    :cond_0
    if-ne v2, v8, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 1412
    invoke-static {v8}, Lcom/google/firebase/database/DatabaseError;->fromCode(I)Lcom/google/firebase/database/DatabaseError;

    move-result-object v11

    .line 1415
    .restart local v11    # "abortError":Lcom/google/firebase/database/DatabaseError;
    :goto_1
    const/4 v12, -0x1

    .line 1416
    .local v12, "lastSent":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_8

    .line 1417
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 1418
    .local v14, "transaction":Lcom/google/firebase/database/core/Repo$TransactionData;
    invoke-static {v14}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1800(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    move-result-object v15

    sget-object v10, Lcom/google/firebase/database/core/Repo$TransactionStatus;->SENT_NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    if-ne v15, v10, :cond_2

    goto/16 :goto_7

    .line 1420
    :cond_2
    invoke-static {v14}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1800(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    move-result-object v10

    sget-object v15, Lcom/google/firebase/database/core/Repo$TransactionStatus;->SENT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    if-ne v10, v15, :cond_4

    .line 1421
    add-int/lit8 v10, v13, -0x1

    if-ne v12, v10, :cond_3

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    invoke-static {v10}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 1422
    move v10, v13

    .line 1424
    .end local v12    # "lastSent":I
    .local v10, "lastSent":I
    sget-object v12, Lcom/google/firebase/database/core/Repo$TransactionStatus;->SENT_NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    invoke-static {v14, v12}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1802(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/core/Repo$TransactionStatus;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    .line 1425
    invoke-static {v14, v11}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2902(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/DatabaseError;

    move v12, v10

    goto :goto_7

    .line 1427
    .end local v10    # "lastSent":I
    .restart local v12    # "lastSent":I
    :cond_4
    nop

    .line 1428
    invoke-static {v14}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1800(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    move-result-object v10

    sget-object v15, Lcom/google/firebase/database/core/Repo$TransactionStatus;->RUN:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    if-ne v10, v15, :cond_5

    const/4 v10, 0x1

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    .line 1427
    :goto_4
    invoke-static {v10}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 1431
    new-instance v10, Lcom/google/firebase/database/core/ValueEventRegistration;

    .line 1434
    invoke-static {v14}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2500(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/ValueEventListener;

    move-result-object v15

    .line 1435
    invoke-static {v14}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2200(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Path;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/firebase/database/core/view/QuerySpec;->defaultQueryAtPath(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v9

    invoke-direct {v10, v0, v15, v9}, Lcom/google/firebase/database/core/ValueEventRegistration;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/ValueEventListener;Lcom/google/firebase/database/core/view/QuerySpec;)V

    .line 1431
    invoke-virtual {v0, v10}, Lcom/google/firebase/database/core/Repo;->removeEventCallback(Lcom/google/firebase/database/core/EventRegistration;)V

    .line 1436
    if-ne v2, v7, :cond_6

    .line 1437
    iget-object v9, v0, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    .line 1439
    invoke-static {v14}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1900(Lcom/google/firebase/database/core/Repo$TransactionData;)J

    move-result-wide v18

    const/16 v20, 0x1

    const/16 v21, 0x0

    iget-object v10, v0, Lcom/google/firebase/database/core/Repo;->serverClock:Lcom/google/firebase/database/core/utilities/OffsetClock;

    .line 1438
    move-object/from16 v17, v9

    move-object/from16 v22, v10

    invoke-virtual/range {v17 .. v22}, Lcom/google/firebase/database/core/SyncTree;->ackUserWrite(JZZLcom/google/firebase/database/core/utilities/Clock;)Ljava/util/List;

    move-result-object v9

    .line 1437
    invoke-interface {v4, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    .line 1441
    :cond_6
    if-ne v2, v8, :cond_7

    const/4 v9, 0x1

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 1446
    :goto_6
    new-instance v9, Lcom/google/firebase/database/core/Repo$25;

    invoke-direct {v9, v0, v14, v11}, Lcom/google/firebase/database/core/Repo$25;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/DatabaseError;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1416
    .end local v14    # "transaction":Lcom/google/firebase/database/core/Repo$TransactionData;
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 1456
    .end local v13    # "i":I
    :cond_8
    const/4 v6, -0x1

    if-ne v12, v6, :cond_9

    .line 1458
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/google/firebase/database/core/utilities/Tree;->setValue(Ljava/lang/Object;)V

    goto :goto_8

    .line 1461
    :cond_9
    add-int/lit8 v6, v12, 0x1

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/firebase/database/core/utilities/Tree;->setValue(Ljava/lang/Object;)V

    .line 1465
    :goto_8
    invoke-direct {v0, v4}, Lcom/google/firebase/database/core/Repo;->postEvents(Ljava/util/List;)V

    .line 1466
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    .line 1467
    .local v7, "r":Ljava/lang/Runnable;
    invoke-virtual {v0, v7}, Lcom/google/firebase/database/core/Repo;->postEvent(Ljava/lang/Runnable;)V

    .line 1468
    .end local v7    # "r":Ljava/lang/Runnable;
    goto :goto_9

    .line 1470
    .end local v5    # "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    .end local v11    # "abortError":Lcom/google/firebase/database/DatabaseError;
    .end local v12    # "lastSent":I
    :cond_a
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/core/Repo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo;

    .line 61
    invoke-direct {p0}, Lcom/google/firebase/database/core/Repo;->deferredInitialization()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/logging/LogWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo;

    .line 61
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo;

    .line 61
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->ctx:Lcom/google/firebase/database/core/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/SparseSnapshotTree;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo;

    .line 61
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->onDisconnect:Lcom/google/firebase/database/core/SparseSnapshotTree;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;I)Lcom/google/firebase/database/core/Path;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo;
    .param p1, "x1"    # Lcom/google/firebase/database/core/Path;
    .param p2, "x2"    # I

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/core/Repo;->abortTransactions(Lcom/google/firebase/database/core/Path;I)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo;
    .param p1, "x1"    # Lcom/google/firebase/database/core/Path;

    .line 61
    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/Repo;->rerunTransactions(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/connection/PersistentConnection;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo;

    .line 61
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->connection:Lcom/google/firebase/database/connection/PersistentConnection;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/utilities/Tree;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo;
    .param p1, "x1"    # Lcom/google/firebase/database/core/utilities/Tree;

    .line 61
    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/Repo;->sendReadyTransactions(Lcom/google/firebase/database/core/utilities/Tree;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/utilities/OffsetClock;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo;

    .line 61
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->serverClock:Lcom/google/firebase/database/core/utilities/OffsetClock;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/utilities/Tree;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo;

    .line 61
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->transactionQueueTree:Lcom/google/firebase/database/core/utilities/Tree;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/utilities/Tree;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo;
    .param p1, "x1"    # Lcom/google/firebase/database/core/utilities/Tree;

    .line 61
    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/Repo;->pruneCompletedTransactions(Lcom/google/firebase/database/core/utilities/Tree;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/firebase/database/core/Repo;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo;

    .line 61
    invoke-direct {p0}, Lcom/google/firebase/database/core/Repo;->sendAllReadyTransactions()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/SnapshotHolder;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo;

    .line 61
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->infoData:Lcom/google/firebase/database/core/SnapshotHolder;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/firebase/database/core/Repo;Ljava/util/List;Lcom/google/firebase/database/core/utilities/Tree;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/google/firebase/database/core/utilities/Tree;

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/core/Repo;->aggregateTransactionQueues(Ljava/util/List;Lcom/google/firebase/database/core/utilities/Tree;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/utilities/Tree;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo;
    .param p1, "x1"    # Lcom/google/firebase/database/core/utilities/Tree;
    .param p2, "x2"    # I

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/core/Repo;->abortTransactionsAtNode(Lcom/google/firebase/database/core/utilities/Tree;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/SyncTree;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo;

    .line 61
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->infoSyncTree:Lcom/google/firebase/database/core/SyncTree;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/firebase/database/core/Repo;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo;
    .param p1, "x1"    # Ljava/util/List;

    .line 61
    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/Repo;->postEvents(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 61
    invoke-static {p0, p1}, Lcom/google/firebase/database/core/Repo;->fromErrorCode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/firebase/database/core/Repo;Ljava/lang/String;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/DatabaseError;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/google/firebase/database/core/Path;
    .param p3, "x3"    # Lcom/google/firebase/database/DatabaseError;

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/database/core/Repo;->warnIfWriteFailed(Ljava/lang/String;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firebase/database/core/Repo;JLcom/google/firebase/database/core/Path;Lcom/google/firebase/database/DatabaseError;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/google/firebase/database/core/Path;
    .param p4, "x3"    # Lcom/google/firebase/database/DatabaseError;

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/database/core/Repo;->ackWriteAndRerunTransactions(JLcom/google/firebase/database/core/Path;Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/SyncTree;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/database/core/Repo;

    .line 61
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    return-object v0
.end method

.method private ackWriteAndRerunTransactions(JLcom/google/firebase/database/core/Path;Lcom/google/firebase/database/DatabaseError;)V
    .locals 9
    .param p1, "writeId"    # J
    .param p3, "path"    # Lcom/google/firebase/database/core/Path;
    .param p4, "error"    # Lcom/google/firebase/database/DatabaseError;

    .line 436
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result v0

    const/16 v1, -0x19

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 439
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 440
    .local v2, "success":Z
    :goto_0
    iget-object v3, p0, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    if-nez v2, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/google/firebase/database/core/Repo;->serverClock:Lcom/google/firebase/database/core/utilities/OffsetClock;

    .line 441
    move-wide v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/google/firebase/database/core/SyncTree;->ackUserWrite(JZZLcom/google/firebase/database/core/utilities/Clock;)Ljava/util/List;

    move-result-object v0

    .line 442
    .local v0, "clearEvents":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 443
    invoke-direct {p0, p3}, Lcom/google/firebase/database/core/Repo;->rerunTransactions(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    .line 445
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/firebase/database/core/Repo;->postEvents(Ljava/util/List;)V

    .line 447
    .end local v0    # "clearEvents":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    .end local v2    # "success":Z
    :goto_2
    return-void
.end method

.method private aggregateTransactionQueues(Ljava/util/List;Lcom/google/firebase/database/core/utilities/Tree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/Repo$TransactionData;",
            ">;",
            "Lcom/google/firebase/database/core/utilities/Tree<",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/Repo$TransactionData;",
            ">;>;)V"
        }
    .end annotation

    .line 1355
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;"
    .local p2, "node":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;>;"
    invoke-virtual {p2}, Lcom/google/firebase/database/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1356
    .local v0, "childQueue":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;"
    if-eqz v0, :cond_0

    .line 1357
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1360
    :cond_0
    new-instance v1, Lcom/google/firebase/database/core/Repo$22;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/core/Repo$22;-><init>(Lcom/google/firebase/database/core/Repo;Ljava/util/List;)V

    invoke-virtual {p2, v1}, Lcom/google/firebase/database/core/utilities/Tree;->forEachChild(Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;)V

    .line 1367
    return-void
.end method

.method private buildTransactionQueue(Lcom/google/firebase/database/core/utilities/Tree;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Tree<",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/Repo$TransactionData;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/Repo$TransactionData;",
            ">;"
        }
    .end annotation

    .line 1345
    .local p1, "transactionNode":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1346
    .local v0, "queue":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;"
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/database/core/Repo;->aggregateTransactionQueues(Ljava/util/List;Lcom/google/firebase/database/core/utilities/Tree;)V

    .line 1348
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1350
    return-object v0
.end method

.method private deferredInitialization()V
    .locals 6

    .line 110
    new-instance v0, Lcom/google/firebase/database/connection/HostInfo;

    iget-object v1, p0, Lcom/google/firebase/database/core/Repo;->repoInfo:Lcom/google/firebase/database/core/RepoInfo;

    iget-object v1, v1, Lcom/google/firebase/database/core/RepoInfo;->host:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/database/core/Repo;->repoInfo:Lcom/google/firebase/database/core/RepoInfo;

    iget-object v2, v2, Lcom/google/firebase/database/core/RepoInfo;->namespace:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/database/core/Repo;->repoInfo:Lcom/google/firebase/database/core/RepoInfo;

    iget-boolean v3, v3, Lcom/google/firebase/database/core/RepoInfo;->secure:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/database/connection/HostInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 111
    .local v0, "hostInfo":Lcom/google/firebase/database/connection/HostInfo;
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo;->ctx:Lcom/google/firebase/database/core/Context;

    invoke-virtual {v1, v0, p0}, Lcom/google/firebase/database/core/Context;->newPersistentConnection(Lcom/google/firebase/database/connection/HostInfo;Lcom/google/firebase/database/connection/PersistentConnection$Delegate;)Lcom/google/firebase/database/connection/PersistentConnection;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/database/core/Repo;->connection:Lcom/google/firebase/database/connection/PersistentConnection;

    .line 113
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo;->ctx:Lcom/google/firebase/database/core/Context;

    .line 114
    invoke-virtual {v1}, Lcom/google/firebase/database/core/Context;->getAuthTokenProvider()Lcom/google/firebase/database/core/TokenProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/Repo;->ctx:Lcom/google/firebase/database/core/Context;

    .line 116
    invoke-virtual {v2}, Lcom/google/firebase/database/core/Context;->getRunLoop()Lcom/google/firebase/database/core/RunLoop;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/database/core/Repo$2;

    invoke-direct {v3, p0}, Lcom/google/firebase/database/core/Repo$2;-><init>(Lcom/google/firebase/database/core/Repo;)V

    .line 115
    invoke-interface {v1, v2, v3}, Lcom/google/firebase/database/core/TokenProvider;->addTokenChangeListener(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;)V

    .line 131
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo;->ctx:Lcom/google/firebase/database/core/Context;

    .line 132
    invoke-virtual {v1}, Lcom/google/firebase/database/core/Context;->getAppCheckTokenProvider()Lcom/google/firebase/database/core/TokenProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/Repo;->ctx:Lcom/google/firebase/database/core/Context;

    .line 134
    invoke-virtual {v2}, Lcom/google/firebase/database/core/Context;->getRunLoop()Lcom/google/firebase/database/core/RunLoop;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;

    invoke-virtual {v2}, Lcom/google/firebase/database/core/utilities/DefaultRunLoop;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/database/core/Repo$3;

    invoke-direct {v3, p0}, Lcom/google/firebase/database/core/Repo$3;-><init>(Lcom/google/firebase/database/core/Repo;)V

    .line 133
    invoke-interface {v1, v2, v3}, Lcom/google/firebase/database/core/TokenProvider;->addTokenChangeListener(Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/database/core/TokenProvider$TokenChangeListener;)V

    .line 153
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo;->connection:Lcom/google/firebase/database/connection/PersistentConnection;

    invoke-interface {v1}, Lcom/google/firebase/database/connection/PersistentConnection;->initialize()V

    .line 155
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo;->ctx:Lcom/google/firebase/database/core/Context;

    iget-object v2, p0, Lcom/google/firebase/database/core/Repo;->repoInfo:Lcom/google/firebase/database/core/RepoInfo;

    iget-object v2, v2, Lcom/google/firebase/database/core/RepoInfo;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/Context;->getPersistenceManager(Ljava/lang/String;)Lcom/google/firebase/database/core/persistence/PersistenceManager;

    move-result-object v1

    .line 157
    .local v1, "persistenceManager":Lcom/google/firebase/database/core/persistence/PersistenceManager;
    new-instance v2, Lcom/google/firebase/database/core/SnapshotHolder;

    invoke-direct {v2}, Lcom/google/firebase/database/core/SnapshotHolder;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/database/core/Repo;->infoData:Lcom/google/firebase/database/core/SnapshotHolder;

    .line 158
    new-instance v2, Lcom/google/firebase/database/core/SparseSnapshotTree;

    invoke-direct {v2}, Lcom/google/firebase/database/core/SparseSnapshotTree;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/database/core/Repo;->onDisconnect:Lcom/google/firebase/database/core/SparseSnapshotTree;

    .line 160
    new-instance v2, Lcom/google/firebase/database/core/utilities/Tree;

    invoke-direct {v2}, Lcom/google/firebase/database/core/utilities/Tree;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/database/core/Repo;->transactionQueueTree:Lcom/google/firebase/database/core/utilities/Tree;

    .line 162
    new-instance v2, Lcom/google/firebase/database/core/SyncTree;

    iget-object v3, p0, Lcom/google/firebase/database/core/Repo;->ctx:Lcom/google/firebase/database/core/Context;

    new-instance v4, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;

    invoke-direct {v4}, Lcom/google/firebase/database/core/persistence/NoopPersistenceManager;-><init>()V

    new-instance v5, Lcom/google/firebase/database/core/Repo$4;

    invoke-direct {v5, p0}, Lcom/google/firebase/database/core/Repo$4;-><init>(Lcom/google/firebase/database/core/Repo;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/google/firebase/database/core/SyncTree;-><init>(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/core/persistence/PersistenceManager;Lcom/google/firebase/database/core/SyncTree$ListenProvider;)V

    iput-object v2, p0, Lcom/google/firebase/database/core/Repo;->infoSyncTree:Lcom/google/firebase/database/core/SyncTree;

    .line 194
    new-instance v2, Lcom/google/firebase/database/core/SyncTree;

    iget-object v3, p0, Lcom/google/firebase/database/core/Repo;->ctx:Lcom/google/firebase/database/core/Context;

    new-instance v4, Lcom/google/firebase/database/core/Repo$5;

    invoke-direct {v4, p0}, Lcom/google/firebase/database/core/Repo$5;-><init>(Lcom/google/firebase/database/core/Repo;)V

    invoke-direct {v2, v3, v1, v4}, Lcom/google/firebase/database/core/SyncTree;-><init>(Lcom/google/firebase/database/core/Context;Lcom/google/firebase/database/core/persistence/PersistenceManager;Lcom/google/firebase/database/core/SyncTree$ListenProvider;)V

    iput-object v2, p0, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    .line 227
    invoke-direct {p0, v1}, Lcom/google/firebase/database/core/Repo;->restoreWrites(Lcom/google/firebase/database/core/persistence/PersistenceManager;)V

    .line 229
    sget-object v2, Lcom/google/firebase/database/core/Constants;->DOT_INFO_AUTHENTICATED:Lcom/google/firebase/database/snapshot/ChildKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/database/core/Repo;->updateInfo(Lcom/google/firebase/database/snapshot/ChildKey;Ljava/lang/Object;)V

    .line 230
    sget-object v2, Lcom/google/firebase/database/core/Constants;->DOT_INFO_CONNECTED:Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/database/core/Repo;->updateInfo(Lcom/google/firebase/database/snapshot/ChildKey;Ljava/lang/Object;)V

    .line 231
    return-void
.end method

.method private static fromErrorCode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;
    .locals 1
    .param p0, "optErrorCode"    # Ljava/lang/String;
    .param p1, "optErrorReason"    # Ljava/lang/String;

    .line 1483
    if-eqz p0, :cond_0

    .line 1484
    invoke-static {p0, p1}, Lcom/google/firebase/database/DatabaseError;->fromStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v0

    return-object v0

    .line 1486
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAncestorTransactionNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/Tree;
    .locals 5
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            ")",
            "Lcom/google/firebase/database/core/utilities/Tree<",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/Repo$TransactionData;",
            ">;>;"
        }
    .end annotation

    .line 1335
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->transactionQueueTree:Lcom/google/firebase/database/core/utilities/Tree;

    .line 1336
    .local v0, "transactionNode":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1337
    new-instance v1, Lcom/google/firebase/database/core/Path;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/firebase/database/snapshot/ChildKey;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/utilities/Tree;->subTree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/Tree;

    move-result-object v0

    .line 1338
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object p1

    goto :goto_0

    .line 1341
    :cond_0
    return-object v0
.end method

.method private getLatestState(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;

    .line 993
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/database/core/Repo;->getLatestState(Lcom/google/firebase/database/core/Path;Ljava/util/List;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method private getLatestState(Lcom/google/firebase/database/core/Path;Ljava/util/List;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/firebase/database/snapshot/Node;"
        }
    .end annotation

    .line 997
    .local p2, "excudeSets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/core/SyncTree;->calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Ljava/util/List;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 998
    .local v0, "state":Lcom/google/firebase/database/snapshot/Node;
    if-nez v0, :cond_0

    .line 999
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v0

    .line 1001
    :cond_0
    return-object v0
.end method

.method private getNextWriteId()J
    .locals 4

    .line 767
    iget-wide v0, p0, Lcom/google/firebase/database/core/Repo;->nextWriteId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/firebase/database/core/Repo;->nextWriteId:J

    return-wide v0
.end method

.method private nextTransactionOrder()J
    .locals 4

    .line 1180
    iget-wide v0, p0, Lcom/google/firebase/database/core/Repo;->transactionOrder:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/firebase/database/core/Repo;->transactionOrder:J

    return-wide v0
.end method

.method private postEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;)V"
        }
    .end annotation

    .line 312
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->eventRaiser:Lcom/google/firebase/database/core/view/EventRaiser;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/view/EventRaiser;->raiseEvents(Ljava/util/List;)V

    .line 315
    :cond_0
    return-void
.end method

.method private pruneCompletedTransactions(Lcom/google/firebase/database/core/utilities/Tree;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Tree<",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/Repo$TransactionData;",
            ">;>;)V"
        }
    .end annotation

    .line 1152
    .local p1, "node":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;>;"
    invoke-virtual {p1}, Lcom/google/firebase/database/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1153
    .local v0, "queue":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;"
    if-eqz v0, :cond_3

    .line 1154
    const/4 v1, 0x0

    .line 1155
    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1156
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 1157
    .local v2, "transaction":Lcom/google/firebase/database/core/Repo$TransactionData;
    invoke-static {v2}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1800(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/database/core/Repo$TransactionStatus;->COMPLETED:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    if-ne v3, v4, :cond_0

    .line 1158
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1160
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1162
    .end local v2    # "transaction":Lcom/google/firebase/database/core/Repo$TransactionData;
    :goto_1
    goto :goto_0

    .line 1163
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1164
    invoke-virtual {p1, v0}, Lcom/google/firebase/database/core/utilities/Tree;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    .line 1166
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/firebase/database/core/utilities/Tree;->setValue(Ljava/lang/Object;)V

    .line 1170
    .end local v1    # "i":I
    :cond_3
    :goto_2
    new-instance v1, Lcom/google/firebase/database/core/Repo$19;

    invoke-direct {v1, p0}, Lcom/google/firebase/database/core/Repo$19;-><init>(Lcom/google/firebase/database/core/Repo;)V

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/core/utilities/Tree;->forEachChild(Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;)V

    .line 1177
    return-void
.end method

.method private rerunTransactionQueue(Ljava/util/List;Lcom/google/firebase/database/core/Path;)V
    .locals 27
    .param p2, "path"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/Repo$TransactionData;",
            ">;",
            "Lcom/google/firebase/database/core/Path;",
            ")V"
        }
    .end annotation

    .line 1194
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;"
    move-object/from16 v1, p0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    return-void

    .line 1200
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 1205
    .local v2, "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 1206
    .local v3, "setsToIgnore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 1207
    .local v4, "transaction":Lcom/google/firebase/database/core/Repo$TransactionData;
    invoke-static {v4}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1900(Lcom/google/firebase/database/core/Repo$TransactionData;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1208
    .end local v4    # "transaction":Lcom/google/firebase/database/core/Repo$TransactionData;
    goto :goto_0

    .line 1210
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 1211
    .local v5, "transaction":Lcom/google/firebase/database/core/Repo$TransactionData;
    invoke-static {v5}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2200(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    move-object/from16 v6, p2

    invoke-static {v6, v0}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v7

    .line 1212
    .local v7, "relativePath":Lcom/google/firebase/database/core/Path;
    const/4 v8, 0x0

    .line 1213
    .local v8, "abortTransaction":Z
    const/4 v9, 0x0

    .line 1214
    .local v9, "abortReason":Lcom/google/firebase/database/DatabaseError;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 1216
    .local v10, "events":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Event;>;"
    if-eqz v7, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 1218
    invoke-static {v5}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1800(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    move-result-object v0

    sget-object v11, Lcom/google/firebase/database/core/Repo$TransactionStatus;->NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    if-ne v0, v11, :cond_4

    .line 1219
    const/4 v8, 0x1

    .line 1220
    invoke-static {v5}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2900(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v9

    .line 1221
    invoke-virtual {v9}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result v0

    const/16 v11, -0x19

    if-eq v0, v11, :cond_3

    .line 1222
    iget-object v12, v1, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    .line 1224
    invoke-static {v5}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1900(Lcom/google/firebase/database/core/Repo$TransactionData;)J

    move-result-wide v13

    const/4 v15, 0x1

    const/16 v16, 0x0

    iget-object v0, v1, Lcom/google/firebase/database/core/Repo;->serverClock:Lcom/google/firebase/database/core/utilities/OffsetClock;

    .line 1223
    move-object/from16 v17, v0

    invoke-virtual/range {v12 .. v17}, Lcom/google/firebase/database/core/SyncTree;->ackUserWrite(JZZLcom/google/firebase/database/core/utilities/Clock;)Ljava/util/List;

    move-result-object v0

    .line 1222
    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1284
    :cond_3
    move-object/from16 v24, v4

    move-object/from16 v26, v7

    goto/16 :goto_4

    .line 1226
    :cond_4
    invoke-static {v5}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1800(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    move-result-object v0

    sget-object v11, Lcom/google/firebase/database/core/Repo$TransactionStatus;->RUN:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    if-ne v0, v11, :cond_7

    .line 1227
    invoke-static {v5}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2100(Lcom/google/firebase/database/core/Repo$TransactionData;)I

    move-result v0

    const/16 v11, 0x19

    if-lt v0, v11, :cond_5

    .line 1228
    const/4 v8, 0x1

    .line 1229
    const-string v0, "maxretries"

    invoke-static {v0}, Lcom/google/firebase/database/DatabaseError;->fromStatus(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v9

    .line 1230
    iget-object v11, v1, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    .line 1232
    invoke-static {v5}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1900(Lcom/google/firebase/database/core/Repo$TransactionData;)J

    move-result-wide v12

    const/4 v14, 0x1

    const/4 v15, 0x0

    iget-object v0, v1, Lcom/google/firebase/database/core/Repo;->serverClock:Lcom/google/firebase/database/core/utilities/OffsetClock;

    .line 1231
    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, Lcom/google/firebase/database/core/SyncTree;->ackUserWrite(JZZLcom/google/firebase/database/core/utilities/Clock;)Ljava/util/List;

    move-result-object v0

    .line 1230
    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v24, v4

    move-object/from16 v26, v7

    goto/16 :goto_4

    .line 1235
    :cond_5
    invoke-static {v5}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2200(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/google/firebase/database/core/Repo;->getLatestState(Lcom/google/firebase/database/core/Path;Ljava/util/List;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v11

    .line 1236
    .local v11, "currentNode":Lcom/google/firebase/database/snapshot/Node;
    invoke-static {v5, v11}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1502(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    .line 1237
    invoke-static {v11}, Lcom/google/firebase/database/InternalHelpers;->createMutableData(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/MutableData;

    move-result-object v12

    .line 1238
    .local v12, "mutableCurrent":Lcom/google/firebase/database/MutableData;
    const/4 v13, 0x0

    .line 1241
    .local v13, "error":Lcom/google/firebase/database/DatabaseError;
    :try_start_0
    invoke-static {v5}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2400(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/Transaction$Handler;

    move-result-object v0

    invoke-interface {v0, v12}, Lcom/google/firebase/database/Transaction$Handler;->doTransaction(Lcom/google/firebase/database/MutableData;)Lcom/google/firebase/database/Transaction$Result;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1246
    .local v0, "result":Lcom/google/firebase/database/Transaction$Result;
    goto :goto_3

    .line 1242
    .end local v0    # "result":Lcom/google/firebase/database/Transaction$Result;
    :catchall_0
    move-exception v0

    .line 1243
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v14, v1, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v15, "Caught Throwable."

    invoke-virtual {v14, v15, v0}, Lcom/google/firebase/database/logging/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1244
    invoke-static {v0}, Lcom/google/firebase/database/DatabaseError;->fromException(Ljava/lang/Throwable;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v13

    .line 1245
    invoke-static {}, Lcom/google/firebase/database/Transaction;->abort()Lcom/google/firebase/database/Transaction$Result;

    move-result-object v14

    move-object v0, v14

    .line 1247
    .local v0, "result":Lcom/google/firebase/database/Transaction$Result;
    :goto_3
    invoke-virtual {v0}, Lcom/google/firebase/database/Transaction$Result;->isSuccess()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1248
    invoke-static {v5}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1900(Lcom/google/firebase/database/core/Repo$TransactionData;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 1249
    .local v14, "oldWriteId":Ljava/lang/Long;
    iget-object v15, v1, Lcom/google/firebase/database/core/Repo;->serverClock:Lcom/google/firebase/database/core/utilities/OffsetClock;

    invoke-static {v15}, Lcom/google/firebase/database/core/ServerValues;->generateServerValues(Lcom/google/firebase/database/core/utilities/Clock;)Ljava/util/Map;

    move-result-object v15

    .line 1251
    .local v15, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v24, v4

    invoke-virtual {v0}, Lcom/google/firebase/database/Transaction$Result;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    .line 1252
    .local v4, "newDataNode":Lcom/google/firebase/database/snapshot/Node;
    nop

    .line 1253
    move-object/from16 v25, v0

    .end local v0    # "result":Lcom/google/firebase/database/Transaction$Result;
    .local v25, "result":Lcom/google/firebase/database/Transaction$Result;
    invoke-static {v4, v11, v15}, Lcom/google/firebase/database/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 1255
    .local v0, "newNodeResolved":Lcom/google/firebase/database/snapshot/Node;
    invoke-static {v5, v4}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1602(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    .line 1256
    invoke-static {v5, v0}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1702(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    .line 1257
    move-object/from16 v26, v7

    .end local v7    # "relativePath":Lcom/google/firebase/database/core/Path;
    .local v26, "relativePath":Lcom/google/firebase/database/core/Path;
    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/database/core/Repo;->getNextWriteId()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1902(Lcom/google/firebase/database/core/Repo$TransactionData;J)J

    .line 1260
    invoke-interface {v3, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1261
    iget-object v6, v1, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    .line 1263
    invoke-static {v5}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2200(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Path;

    move-result-object v17

    .line 1266
    invoke-static {v5}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1900(Lcom/google/firebase/database/core/Repo$TransactionData;)J

    move-result-wide v20

    .line 1267
    invoke-static {v5}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$3000(Lcom/google/firebase/database/core/Repo$TransactionData;)Z

    move-result v22

    const/16 v23, 0x0

    .line 1262
    move-object/from16 v16, v6

    move-object/from16 v18, v4

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v23}, Lcom/google/firebase/database/core/SyncTree;->applyUserOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;JZZ)Ljava/util/List;

    move-result-object v6

    .line 1261
    invoke-interface {v10, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1269
    iget-object v6, v1, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    .line 1271
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const/16 v19, 0x1

    const/16 v20, 0x0

    iget-object v7, v1, Lcom/google/firebase/database/core/Repo;->serverClock:Lcom/google/firebase/database/core/utilities/OffsetClock;

    .line 1270
    move-object/from16 v16, v6

    move-object/from16 v21, v7

    invoke-virtual/range {v16 .. v21}, Lcom/google/firebase/database/core/SyncTree;->ackUserWrite(JZZLcom/google/firebase/database/core/utilities/Clock;)Ljava/util/List;

    move-result-object v6

    .line 1269
    invoke-interface {v10, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1272
    .end local v0    # "newNodeResolved":Lcom/google/firebase/database/snapshot/Node;
    .end local v4    # "newDataNode":Lcom/google/firebase/database/snapshot/Node;
    .end local v14    # "oldWriteId":Ljava/lang/Long;
    .end local v15    # "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_4

    .line 1275
    .end local v25    # "result":Lcom/google/firebase/database/Transaction$Result;
    .end local v26    # "relativePath":Lcom/google/firebase/database/core/Path;
    .local v0, "result":Lcom/google/firebase/database/Transaction$Result;
    .restart local v7    # "relativePath":Lcom/google/firebase/database/core/Path;
    :cond_6
    move-object/from16 v25, v0

    move-object/from16 v24, v4

    move-object/from16 v26, v7

    .end local v0    # "result":Lcom/google/firebase/database/Transaction$Result;
    .end local v7    # "relativePath":Lcom/google/firebase/database/core/Path;
    .restart local v25    # "result":Lcom/google/firebase/database/Transaction$Result;
    .restart local v26    # "relativePath":Lcom/google/firebase/database/core/Path;
    const/4 v8, 0x1

    .line 1276
    move-object v9, v13

    .line 1277
    iget-object v14, v1, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    .line 1279
    invoke-static {v5}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1900(Lcom/google/firebase/database/core/Repo$TransactionData;)J

    move-result-wide v15

    const/16 v17, 0x1

    const/16 v18, 0x0

    iget-object v0, v1, Lcom/google/firebase/database/core/Repo;->serverClock:Lcom/google/firebase/database/core/utilities/OffsetClock;

    .line 1278
    move-object/from16 v19, v0

    invoke-virtual/range {v14 .. v19}, Lcom/google/firebase/database/core/SyncTree;->ackUserWrite(JZZLcom/google/firebase/database/core/utilities/Clock;)Ljava/util/List;

    move-result-object v0

    .line 1277
    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 1226
    .end local v11    # "currentNode":Lcom/google/firebase/database/snapshot/Node;
    .end local v12    # "mutableCurrent":Lcom/google/firebase/database/MutableData;
    .end local v13    # "error":Lcom/google/firebase/database/DatabaseError;
    .end local v25    # "result":Lcom/google/firebase/database/Transaction$Result;
    .end local v26    # "relativePath":Lcom/google/firebase/database/core/Path;
    .restart local v7    # "relativePath":Lcom/google/firebase/database/core/Path;
    :cond_7
    move-object/from16 v24, v4

    move-object/from16 v26, v7

    .line 1284
    .end local v7    # "relativePath":Lcom/google/firebase/database/core/Path;
    .restart local v26    # "relativePath":Lcom/google/firebase/database/core/Path;
    :goto_4
    invoke-direct {v1, v10}, Lcom/google/firebase/database/core/Repo;->postEvents(Ljava/util/List;)V

    .line 1286
    if-eqz v8, :cond_8

    .line 1288
    sget-object v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;->COMPLETED:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    invoke-static {v5, v0}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1802(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/core/Repo$TransactionStatus;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    .line 1289
    invoke-static {v5}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2200(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/firebase/database/InternalHelpers;->createReference(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 1292
    .local v0, "ref":Lcom/google/firebase/database/DatabaseReference;
    invoke-static {v5}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1500(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    .line 1294
    .local v4, "lastInput":Lcom/google/firebase/database/snapshot/Node;
    nop

    .line 1295
    invoke-static {v4}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/google/firebase/database/InternalHelpers;->createDataSnapshot(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v6

    .line 1299
    .local v6, "snapshot":Lcom/google/firebase/database/DataSnapshot;
    new-instance v7, Lcom/google/firebase/database/core/Repo$20;

    invoke-direct {v7, v1, v5}, Lcom/google/firebase/database/core/Repo$20;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Repo$TransactionData;)V

    invoke-virtual {v1, v7}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 1311
    move-object v7, v9

    .line 1312
    .local v7, "callbackError":Lcom/google/firebase/database/DatabaseError;
    new-instance v11, Lcom/google/firebase/database/core/Repo$21;

    invoke-direct {v11, v1, v5, v7, v6}, Lcom/google/firebase/database/core/Repo$21;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DataSnapshot;)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1320
    .end local v0    # "ref":Lcom/google/firebase/database/DatabaseReference;
    .end local v4    # "lastInput":Lcom/google/firebase/database/snapshot/Node;
    .end local v5    # "transaction":Lcom/google/firebase/database/core/Repo$TransactionData;
    .end local v6    # "snapshot":Lcom/google/firebase/database/DataSnapshot;
    .end local v7    # "callbackError":Lcom/google/firebase/database/DatabaseError;
    .end local v8    # "abortTransaction":Z
    .end local v9    # "abortReason":Lcom/google/firebase/database/DatabaseError;
    .end local v10    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Event;>;"
    .end local v26    # "relativePath":Lcom/google/firebase/database/core/Path;
    :cond_8
    move-object/from16 v4, v24

    goto/16 :goto_1

    .line 1323
    :cond_9
    iget-object v0, v1, Lcom/google/firebase/database/core/Repo;->transactionQueueTree:Lcom/google/firebase/database/core/utilities/Tree;

    invoke-direct {v1, v0}, Lcom/google/firebase/database/core/Repo;->pruneCompletedTransactions(Lcom/google/firebase/database/core/utilities/Tree;)V

    .line 1326
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_a

    .line 1327
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Lcom/google/firebase/database/core/Repo;->postEvent(Ljava/lang/Runnable;)V

    .line 1326
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1331
    .end local v0    # "i":I
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/database/core/Repo;->sendAllReadyTransactions()V

    .line 1332
    return-void
.end method

.method private rerunTransactions(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;
    .locals 3
    .param p1, "changedPath"    # Lcom/google/firebase/database/core/Path;

    .line 1184
    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/Repo;->getAncestorTransactionNode(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/Tree;

    move-result-object v0

    .line 1185
    .local v0, "rootMostTransactionNode":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;>;"
    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/Tree;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    .line 1187
    .local v1, "path":Lcom/google/firebase/database/core/Path;
    invoke-direct {p0, v0}, Lcom/google/firebase/database/core/Repo;->buildTransactionQueue(Lcom/google/firebase/database/core/utilities/Tree;)Ljava/util/List;

    move-result-object v2

    .line 1188
    .local v2, "queue":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;"
    invoke-direct {p0, v2, v1}, Lcom/google/firebase/database/core/Repo;->rerunTransactionQueue(Ljava/util/List;Lcom/google/firebase/database/core/Path;)V

    .line 1190
    return-object v1
.end method

.method private restoreWrites(Lcom/google/firebase/database/core/persistence/PersistenceManager;)V
    .locals 19
    .param p1, "persistenceManager"    # Lcom/google/firebase/database/core/persistence/PersistenceManager;

    .line 234
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->loadUserWrites()Ljava/util/List;

    move-result-object v1

    .line 236
    .local v1, "writes":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/UserWriteRecord;>;"
    iget-object v2, v0, Lcom/google/firebase/database/core/Repo;->serverClock:Lcom/google/firebase/database/core/utilities/OffsetClock;

    invoke-static {v2}, Lcom/google/firebase/database/core/ServerValues;->generateServerValues(Lcom/google/firebase/database/core/utilities/Clock;)Ljava/util/Map;

    move-result-object v2

    .line 237
    .local v2, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-wide/high16 v3, -0x8000000000000000L

    .line 238
    .local v3, "lastWriteId":J
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/database/core/UserWriteRecord;

    .line 239
    .local v6, "write":Lcom/google/firebase/database/core/UserWriteRecord;
    new-instance v7, Lcom/google/firebase/database/core/Repo$6;

    invoke-direct {v7, v0, v6}, Lcom/google/firebase/database/core/Repo$6;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/UserWriteRecord;)V

    .line 248
    .local v7, "onComplete":Lcom/google/firebase/database/connection/RequestResultCallback;
    invoke-virtual {v6}, Lcom/google/firebase/database/core/UserWriteRecord;->getWriteId()J

    move-result-wide v8

    cmp-long v10, v3, v8

    if-gez v10, :cond_3

    .line 251
    invoke-virtual {v6}, Lcom/google/firebase/database/core/UserWriteRecord;->getWriteId()J

    move-result-wide v3

    .line 252
    invoke-virtual {v6}, Lcom/google/firebase/database/core/UserWriteRecord;->getWriteId()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v0, Lcom/google/firebase/database/core/Repo;->nextWriteId:J

    .line 253
    invoke-virtual {v6}, Lcom/google/firebase/database/core/UserWriteRecord;->isOverwrite()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_1

    .line 254
    iget-object v8, v0, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v8}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 255
    iget-object v8, v0, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Restoring overwrite with id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/google/firebase/database/core/UserWriteRecord;->getWriteId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v8, v11, v9}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    :cond_0
    iget-object v8, v0, Lcom/google/firebase/database/core/Repo;->connection:Lcom/google/firebase/database/connection/PersistentConnection;

    invoke-virtual {v6}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/firebase/database/core/Path;->asList()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v6}, Lcom/google/firebase/database/core/UserWriteRecord;->getOverwrite()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v11

    invoke-interface {v11, v10}, Lcom/google/firebase/database/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v9, v10, v7}, Lcom/google/firebase/database/connection/PersistentConnection;->put(Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    .line 258
    nop

    .line 260
    invoke-virtual {v6}, Lcom/google/firebase/database/core/UserWriteRecord;->getOverwrite()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v8

    iget-object v9, v0, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v6}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v10

    .line 259
    invoke-static {v8, v9, v10, v2}, Lcom/google/firebase/database/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Path;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v8

    .line 261
    .local v8, "resolved":Lcom/google/firebase/database/snapshot/Node;
    iget-object v11, v0, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    .line 262
    invoke-virtual {v6}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v12

    .line 263
    invoke-virtual {v6}, Lcom/google/firebase/database/core/UserWriteRecord;->getOverwrite()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v13

    .line 265
    invoke-virtual {v6}, Lcom/google/firebase/database/core/UserWriteRecord;->getWriteId()J

    move-result-wide v15

    const/16 v17, 0x1

    const/16 v18, 0x0

    .line 261
    move-object v14, v8

    invoke-virtual/range {v11 .. v18}, Lcom/google/firebase/database/core/SyncTree;->applyUserOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;JZZ)Ljava/util/List;

    .line 268
    .end local v8    # "resolved":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_1

    .line 269
    :cond_1
    iget-object v8, v0, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v8}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 270
    iget-object v8, v0, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Restoring merge with id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/google/firebase/database/core/UserWriteRecord;->getWriteId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v8, v11, v9}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    :cond_2
    iget-object v8, v0, Lcom/google/firebase/database/core/Repo;->connection:Lcom/google/firebase/database/connection/PersistentConnection;

    invoke-virtual {v6}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/firebase/database/core/Path;->asList()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v6}, Lcom/google/firebase/database/core/UserWriteRecord;->getMerge()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/google/firebase/database/core/CompoundWrite;->getValue(Z)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v8, v9, v10, v7}, Lcom/google/firebase/database/connection/PersistentConnection;->merge(Ljava/util/List;Ljava/util/Map;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    .line 273
    nop

    .line 275
    invoke-virtual {v6}, Lcom/google/firebase/database/core/UserWriteRecord;->getMerge()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v8

    iget-object v9, v0, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v6}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v10

    .line 274
    invoke-static {v8, v9, v10, v2}, Lcom/google/firebase/database/core/ServerValues;->resolveDeferredValueMerge(Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Path;Ljava/util/Map;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v8

    .line 276
    .local v8, "resolved":Lcom/google/firebase/database/core/CompoundWrite;
    iget-object v11, v0, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    .line 277
    invoke-virtual {v6}, Lcom/google/firebase/database/core/UserWriteRecord;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v12

    invoke-virtual {v6}, Lcom/google/firebase/database/core/UserWriteRecord;->getMerge()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v13

    invoke-virtual {v6}, Lcom/google/firebase/database/core/UserWriteRecord;->getWriteId()J

    move-result-wide v15

    const/16 v17, 0x0

    .line 276
    move-object v14, v8

    invoke-virtual/range {v11 .. v17}, Lcom/google/firebase/database/core/SyncTree;->applyUserMerge(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/CompoundWrite;JZ)Ljava/util/List;

    .line 279
    .end local v6    # "write":Lcom/google/firebase/database/core/UserWriteRecord;
    .end local v7    # "onComplete":Lcom/google/firebase/database/connection/RequestResultCallback;
    .end local v8    # "resolved":Lcom/google/firebase/database/core/CompoundWrite;
    :goto_1
    goto/16 :goto_0

    .line 249
    .restart local v6    # "write":Lcom/google/firebase/database/core/UserWriteRecord;
    .restart local v7    # "onComplete":Lcom/google/firebase/database/connection/RequestResultCallback;
    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v8, "Write ids were not in order."

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 280
    .end local v6    # "write":Lcom/google/firebase/database/core/UserWriteRecord;
    .end local v7    # "onComplete":Lcom/google/firebase/database/connection/RequestResultCallback;
    :cond_4
    return-void
.end method

.method private runOnDisconnectEvents()V
    .locals 5

    .line 771
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->serverClock:Lcom/google/firebase/database/core/utilities/OffsetClock;

    invoke-static {v0}, Lcom/google/firebase/database/core/ServerValues;->generateServerValues(Lcom/google/firebase/database/core/utilities/Clock;)Ljava/util/Map;

    move-result-object v0

    .line 772
    .local v0, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 774
    .local v1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Event;>;"
    iget-object v2, p0, Lcom/google/firebase/database/core/Repo;->onDisconnect:Lcom/google/firebase/database/core/SparseSnapshotTree;

    .line 775
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    new-instance v4, Lcom/google/firebase/database/core/Repo$14;

    invoke-direct {v4, p0, v0, v1}, Lcom/google/firebase/database/core/Repo$14;-><init>(Lcom/google/firebase/database/core/Repo;Ljava/util/Map;Ljava/util/List;)V

    .line 774
    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/database/core/SparseSnapshotTree;->forEachTree(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/SparseSnapshotTree$SparseSnapshotTreeVisitor;)V

    .line 787
    new-instance v2, Lcom/google/firebase/database/core/SparseSnapshotTree;

    invoke-direct {v2}, Lcom/google/firebase/database/core/SparseSnapshotTree;-><init>()V

    iput-object v2, p0, Lcom/google/firebase/database/core/Repo;->onDisconnect:Lcom/google/firebase/database/core/SparseSnapshotTree;

    .line 788
    invoke-direct {p0, v1}, Lcom/google/firebase/database/core/Repo;->postEvents(Ljava/util/List;)V

    .line 789
    return-void
.end method

.method private sendAllReadyTransactions()V
    .locals 1

    .line 1009
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->transactionQueueTree:Lcom/google/firebase/database/core/utilities/Tree;

    .line 1011
    .local v0, "node":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;>;"
    invoke-direct {p0, v0}, Lcom/google/firebase/database/core/Repo;->pruneCompletedTransactions(Lcom/google/firebase/database/core/utilities/Tree;)V

    .line 1012
    invoke-direct {p0, v0}, Lcom/google/firebase/database/core/Repo;->sendReadyTransactions(Lcom/google/firebase/database/core/utilities/Tree;)V

    .line 1013
    return-void
.end method

.method private sendReadyTransactions(Lcom/google/firebase/database/core/utilities/Tree;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Tree<",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/Repo$TransactionData;",
            ">;>;)V"
        }
    .end annotation

    .line 1016
    .local p1, "node":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;>;"
    invoke-virtual {p1}, Lcom/google/firebase/database/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1017
    .local v0, "queue":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;"
    if-eqz v0, :cond_4

    .line 1018
    invoke-direct {p0, p1}, Lcom/google/firebase/database/core/Repo;->buildTransactionQueue(Lcom/google/firebase/database/core/utilities/Tree;)Ljava/util/List;

    move-result-object v0

    .line 1019
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 1021
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1022
    .local v1, "allRun":Ljava/lang/Boolean;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 1023
    .local v4, "transaction":Lcom/google/firebase/database/core/Repo$TransactionData;
    invoke-static {v4}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1800(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    move-result-object v5

    sget-object v6, Lcom/google/firebase/database/core/Repo$TransactionStatus;->RUN:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    if-eq v5, v6, :cond_1

    .line 1024
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1025
    goto :goto_2

    .line 1027
    .end local v4    # "transaction":Lcom/google/firebase/database/core/Repo$TransactionData;
    :cond_1
    goto :goto_1

    .line 1029
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1030
    invoke-virtual {p1}, Lcom/google/firebase/database/core/utilities/Tree;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/google/firebase/database/core/Repo;->sendTransactionQueue(Ljava/util/List;Lcom/google/firebase/database/core/Path;)V

    .line 1032
    .end local v1    # "allRun":Ljava/lang/Boolean;
    :cond_3
    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/google/firebase/database/core/utilities/Tree;->hasChildren()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1033
    new-instance v1, Lcom/google/firebase/database/core/Repo$17;

    invoke-direct {v1, p0}, Lcom/google/firebase/database/core/Repo$17;-><init>(Lcom/google/firebase/database/core/Repo;)V

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/core/utilities/Tree;->forEachChild(Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;)V

    .line 1041
    :goto_3
    return-void
.end method

.method private sendTransactionQueue(Ljava/util/List;Lcom/google/firebase/database/core/Path;)V
    .locals 9
    .param p2, "path"    # Lcom/google/firebase/database/core/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/Repo$TransactionData;",
            ">;",
            "Lcom/google/firebase/database/core/Path;",
            ")V"
        }
    .end annotation

    .line 1045
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1046
    .local v0, "setsToIgnore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 1047
    .local v2, "txn":Lcom/google/firebase/database/core/Repo$TransactionData;
    invoke-static {v2}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1900(Lcom/google/firebase/database/core/Repo$TransactionData;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    .end local v2    # "txn":Lcom/google/firebase/database/core/Repo$TransactionData;
    goto :goto_0

    .line 1050
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/google/firebase/database/core/Repo;->getLatestState(Lcom/google/firebase/database/core/Path;Ljava/util/List;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 1051
    .local v1, "latestState":Lcom/google/firebase/database/snapshot/Node;
    move-object v2, v1

    .line 1052
    .local v2, "snapToSend":Lcom/google/firebase/database/snapshot/Node;
    const-string v3, "badhash"

    .line 1053
    .local v3, "latestHash":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/google/firebase/database/core/Repo;->hijackHash:Z

    if-nez v4, :cond_1

    .line 1054
    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->getHash()Ljava/lang/String;

    move-result-object v3

    .line 1057
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 1058
    .local v5, "txn":Lcom/google/firebase/database/core/Repo$TransactionData;
    nop

    .line 1059
    invoke-static {v5}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1800(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    move-result-object v7

    sget-object v8, Lcom/google/firebase/database/core/Repo$TransactionStatus;->RUN:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    if-ne v7, v8, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 1058
    :goto_2
    invoke-static {v6}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 1061
    sget-object v6, Lcom/google/firebase/database/core/Repo$TransactionStatus;->SENT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    invoke-static {v5, v6}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1802(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/core/Repo$TransactionStatus;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    .line 1062
    invoke-static {v5}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2108(Lcom/google/firebase/database/core/Repo$TransactionData;)I

    .line 1063
    invoke-static {v5}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2200(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Path;

    move-result-object v6

    invoke-static {p2, v6}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v6

    .line 1065
    .local v6, "relativePath":Lcom/google/firebase/database/core/Path;
    invoke-static {v5}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1600(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    .line 1066
    .end local v5    # "txn":Lcom/google/firebase/database/core/Repo$TransactionData;
    .end local v6    # "relativePath":Lcom/google/firebase/database/core/Path;
    goto :goto_1

    .line 1068
    :cond_3
    invoke-interface {v2, v6}, Lcom/google/firebase/database/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v4

    .line 1070
    .local v4, "dataToSend":Ljava/lang/Object;
    move-object v5, p0

    .line 1073
    .local v5, "repo":Lcom/google/firebase/database/core/Repo;
    iget-object v6, p0, Lcom/google/firebase/database/core/Repo;->connection:Lcom/google/firebase/database/connection/PersistentConnection;

    .line 1074
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->asList()Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/google/firebase/database/core/Repo$18;

    invoke-direct {v8, p0, p2, p1, v5}, Lcom/google/firebase/database/core/Repo$18;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Ljava/util/List;Lcom/google/firebase/database/core/Repo;)V

    .line 1073
    invoke-interface {v6, v7, v4, v3, v8}, Lcom/google/firebase/database/connection/PersistentConnection;->compareAndPut(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    .line 1149
    return-void
.end method

.method private updateInfo(Lcom/google/firebase/database/snapshot/ChildKey;Ljava/lang/Object;)V
    .locals 4
    .param p1, "childKey"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p2, "value"    # Ljava/lang/Object;

    .line 751
    sget-object v0, Lcom/google/firebase/database/core/Constants;->DOT_INFO_SERVERTIME_OFFSET:Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->serverClock:Lcom/google/firebase/database/core/utilities/OffsetClock;

    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/core/utilities/OffsetClock;->setOffset(J)V

    .line 755
    :cond_0
    new-instance v0, Lcom/google/firebase/database/core/Path;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/firebase/database/snapshot/ChildKey;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/firebase/database/core/Constants;->DOT_INFO:Lcom/google/firebase/database/snapshot/ChildKey;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    .line 757
    .local v0, "path":Lcom/google/firebase/database/core/Path;
    :try_start_0
    invoke-static {p2}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 758
    .local v1, "node":Lcom/google/firebase/database/snapshot/Node;
    iget-object v2, p0, Lcom/google/firebase/database/core/Repo;->infoData:Lcom/google/firebase/database/core/SnapshotHolder;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/database/core/SnapshotHolder;->update(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    .line 759
    iget-object v2, p0, Lcom/google/firebase/database/core/Repo;->infoSyncTree:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/database/core/SyncTree;->applyServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Ljava/util/List;

    move-result-object v2

    .line 760
    .local v2, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    invoke-direct {p0, v2}, Lcom/google/firebase/database/core/Repo;->postEvents(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/google/firebase/database/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    .end local v1    # "node":Lcom/google/firebase/database/snapshot/Node;
    .end local v2    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    goto :goto_0

    .line 761
    :catch_0
    move-exception v1

    .line 762
    .local v1, "e":Lcom/google/firebase/database/DatabaseException;
    iget-object v2, p0, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v3, "Failed to parse info update"

    invoke-virtual {v2, v3, v1}, Lcom/google/firebase/database/logging/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 764
    .end local v1    # "e":Lcom/google/firebase/database/DatabaseException;
    :goto_0
    return-void
.end method

.method private warnIfWriteFailed(Ljava/lang/String;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/DatabaseError;)V
    .locals 3
    .param p1, "writeType"    # Ljava/lang/String;
    .param p2, "path"    # Lcom/google/firebase/database/core/Path;
    .param p3, "error"    # Lcom/google/firebase/database/DatabaseError;

    .line 793
    if-eqz p3, :cond_0

    .line 794
    invoke-virtual {p3}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 795
    invoke-virtual {p3}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result v0

    const/16 v1, -0x19

    if-eq v0, v1, :cond_0

    .line 796
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/firebase/database/DatabaseError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->warn(Ljava/lang/String;)V

    .line 798
    :cond_0
    return-void
.end method


# virtual methods
.method public addEventCallback(Lcom/google/firebase/database/core/EventRegistration;)V
    .locals 2
    .param p1, "eventRegistration"    # Lcom/google/firebase/database/core/EventRegistration;

    .line 731
    invoke-virtual {p1}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 732
    .local v0, "front":Lcom/google/firebase/database/snapshot/ChildKey;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/firebase/database/core/Constants;->DOT_INFO:Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo;->infoSyncTree:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/SyncTree;->addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)Ljava/util/List;

    move-result-object v1

    .local v1, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    goto :goto_0

    .line 735
    .end local v1    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/core/SyncTree;->addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)Ljava/util/List;

    move-result-object v1

    .line 737
    .restart local v1    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/firebase/database/core/Repo;->postEvents(Ljava/util/List;)V

    .line 738
    return-void
.end method

.method callOnComplete(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/core/Path;)V
    .locals 3
    .param p1, "onComplete"    # Lcom/google/firebase/database/DatabaseReference$CompletionListener;
    .param p2, "error"    # Lcom/google/firebase/database/DatabaseError;
    .param p3, "path"    # Lcom/google/firebase/database/core/Path;

    .line 417
    if-eqz p1, :cond_1

    .line 419
    invoke-virtual {p3}, Lcom/google/firebase/database/core/Path;->getBack()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 420
    .local v0, "last":Lcom/google/firebase/database/snapshot/ChildKey;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 421
    invoke-virtual {p3}, Lcom/google/firebase/database/core/Path;->getParent()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/firebase/database/InternalHelpers;->createReference(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    .local v1, "ref":Lcom/google/firebase/database/DatabaseReference;
    goto :goto_0

    .line 423
    .end local v1    # "ref":Lcom/google/firebase/database/DatabaseReference;
    :cond_0
    invoke-static {p0, p3}, Lcom/google/firebase/database/InternalHelpers;->createReference(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    .line 425
    .restart local v1    # "ref":Lcom/google/firebase/database/DatabaseReference;
    :goto_0
    new-instance v2, Lcom/google/firebase/database/core/Repo$7;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/google/firebase/database/core/Repo$7;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DatabaseReference;)V

    invoke-virtual {p0, v2}, Lcom/google/firebase/database/core/Repo;->postEvent(Ljava/lang/Runnable;)V

    .line 433
    .end local v0    # "last":Lcom/google/firebase/database/snapshot/ChildKey;
    .end local v1    # "ref":Lcom/google/firebase/database/DatabaseReference;
    :cond_1
    return-void
.end method

.method getConnection()Lcom/google/firebase/database/connection/PersistentConnection;
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->connection:Lcom/google/firebase/database/connection/PersistentConnection;

    return-object v0
.end method

.method public getDatabase()Lcom/google/firebase/database/FirebaseDatabase;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->database:Lcom/google/firebase/database/FirebaseDatabase;

    return-object v0
.end method

.method getInfoSyncTree()Lcom/google/firebase/database/core/SyncTree;
    .locals 1

    .line 1479
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->infoSyncTree:Lcom/google/firebase/database/core/SyncTree;

    return-object v0
.end method

.method public getRepoInfo()Lcom/google/firebase/database/core/RepoInfo;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->repoInfo:Lcom/google/firebase/database/core/RepoInfo;

    return-object v0
.end method

.method getServerSyncTree()Lcom/google/firebase/database/core/SyncTree;
    .locals 1

    .line 1474
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    return-object v0
.end method

.method public getServerTime()J
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->serverClock:Lcom/google/firebase/database/core/utilities/OffsetClock;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/OffsetClock;->millis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getValue(Lcom/google/firebase/database/Query;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1, "query"    # Lcom/google/firebase/database/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/Query;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/database/DataSnapshot;",
            ">;"
        }
    .end annotation

    .line 510
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 511
    .local v0, "source":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Lcom/google/firebase/database/DataSnapshot;>;"
    new-instance v1, Lcom/google/firebase/database/core/Repo$9;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/firebase/database/core/Repo$9;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/Query;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    .line 558
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method hasListeners()Z
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->infoSyncTree:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/SyncTree;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/SyncTree;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method interrupt()V
    .locals 2

    .line 722
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->connection:Lcom/google/firebase/database/connection/PersistentConnection;

    const-string v1, "repo_interrupt"

    invoke-interface {v0, v1}, Lcom/google/firebase/database/connection/PersistentConnection;->interrupt(Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method public keepSynced(Lcom/google/firebase/database/core/view/QuerySpec;Z)V
    .locals 2
    .param p1, "query"    # Lcom/google/firebase/database/core/view/QuerySpec;
    .param p2, "keep"    # Z

    .line 741
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/database/core/Constants;->DOT_INFO:Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(Z)V

    .line 743
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/core/SyncTree;->keepSynced(Lcom/google/firebase/database/core/view/QuerySpec;Z)V

    .line 744
    return-void
.end method

.method public onConnect()V
    .locals 2

    .line 696
    sget-object v0, Lcom/google/firebase/database/core/Constants;->DOT_INFO_CONNECTED:Lcom/google/firebase/database/snapshot/ChildKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/database/core/Repo;->onServerInfoUpdate(Lcom/google/firebase/database/snapshot/ChildKey;Ljava/lang/Object;)V

    .line 697
    return-void
.end method

.method public onConnectionStatus(Z)V
    .locals 2
    .param p1, "connectionOk"    # Z

    .line 707
    sget-object v0, Lcom/google/firebase/database/core/Constants;->DOT_INFO_AUTHENTICATED:Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/database/core/Repo;->onServerInfoUpdate(Lcom/google/firebase/database/snapshot/ChildKey;Ljava/lang/Object;)V

    .line 708
    return-void
.end method

.method public onDataUpdate(Ljava/util/List;Ljava/lang/Object;ZLjava/lang/Long;)V
    .locals 9
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "isMerge"    # Z
    .param p4, "optTag"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .line 330
    .local p1, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/firebase/database/core/Path;

    invoke-direct {v0, p1}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/util/List;)V

    .line 331
    .local v0, "path":Lcom/google/firebase/database/core/Path;
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "onDataUpdate: "

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo;->dataLogger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    :cond_1
    iget-wide v1, p0, Lcom/google/firebase/database/core/Repo;->dataUpdateCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/firebase/database/core/Repo;->dataUpdateCount:J

    .line 341
    if-eqz p4, :cond_4

    .line 342
    :try_start_0
    new-instance v1, Lcom/google/firebase/database/core/Tag;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/database/core/Tag;-><init>(J)V

    .line 343
    .local v1, "tag":Lcom/google/firebase/database/core/Tag;
    if-eqz p3, :cond_3

    .line 344
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 345
    .local v2, "taggedChildren":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    move-object v3, p2

    check-cast v3, Ljava/util/Map;

    .line 346
    .local v3, "rawMergeData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 347
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    .line 348
    .local v6, "newChildNode":Lcom/google/firebase/database/snapshot/Node;
    new-instance v7, Lcom/google/firebase/database/core/Path;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    nop

    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "newChildNode":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_0

    .line 350
    :cond_2
    iget-object v4, p0, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v4, v0, v2, v1}, Lcom/google/firebase/database/core/SyncTree;->applyTaggedQueryMerge(Lcom/google/firebase/database/core/Path;Ljava/util/Map;Lcom/google/firebase/database/core/Tag;)Ljava/util/List;

    move-result-object v4

    move-object v2, v4

    .line 351
    .end local v3    # "rawMergeData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v2, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    goto :goto_1

    .line 352
    .end local v2    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    :cond_3
    invoke-static {p2}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    .line 353
    .local v2, "taggedSnap":Lcom/google/firebase/database/snapshot/Node;
    iget-object v3, p0, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v3, v0, v2, v1}, Lcom/google/firebase/database/core/SyncTree;->applyTaggedQueryOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Tag;)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    .line 355
    .end local v1    # "tag":Lcom/google/firebase/database/core/Tag;
    .local v2, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    :goto_1
    goto :goto_3

    .line 374
    .end local v2    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    :catch_0
    move-exception v1

    goto :goto_4

    .line 355
    :cond_4
    if-eqz p3, :cond_6

    .line 356
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 357
    .local v1, "changedChildren":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    .line 358
    .local v2, "rawMergeData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 359
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    .line 360
    .local v5, "newChildNode":Lcom/google/firebase/database/snapshot/Node;
    new-instance v6, Lcom/google/firebase/database/core/Path;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    nop

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "newChildNode":Lcom/google/firebase/database/snapshot/Node;
    goto :goto_2

    .line 362
    :cond_5
    iget-object v3, p0, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v3, v0, v1}, Lcom/google/firebase/database/core/SyncTree;->applyServerMerge(Lcom/google/firebase/database/core/Path;Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    .line 363
    .end local v1    # "changedChildren":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    .local v2, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    goto :goto_3

    .line 364
    .end local v2    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    :cond_6
    invoke-static {p2}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 365
    .local v1, "snap":Lcom/google/firebase/database/snapshot/Node;
    iget-object v2, p0, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/database/core/SyncTree;->applyServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Ljava/util/List;

    move-result-object v2

    .line 367
    .end local v1    # "snap":Lcom/google/firebase/database/snapshot/Node;
    .restart local v2    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 370
    invoke-direct {p0, v0}, Lcom/google/firebase/database/core/Repo;->rerunTransactions(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    .line 373
    :cond_7
    invoke-direct {p0, v2}, Lcom/google/firebase/database/core/Repo;->postEvents(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/google/firebase/database/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    goto :goto_5

    .line 375
    .end local v2    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    .local v1, "e":Lcom/google/firebase/database/DatabaseException;
    :goto_4
    iget-object v2, p0, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v3, "FIREBASE INTERNAL ERROR"

    invoke-virtual {v2, v3, v1}, Lcom/google/firebase/database/logging/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 377
    .end local v1    # "e":Lcom/google/firebase/database/DatabaseException;
    :goto_5
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    .line 701
    sget-object v0, Lcom/google/firebase/database/core/Constants;->DOT_INFO_CONNECTED:Lcom/google/firebase/database/snapshot/ChildKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/database/core/Repo;->onServerInfoUpdate(Lcom/google/firebase/database/snapshot/ChildKey;Ljava/lang/Object;)V

    .line 702
    invoke-direct {p0}, Lcom/google/firebase/database/core/Repo;->runOnDisconnectEvents()V

    .line 703
    return-void
.end method

.method public onDisconnectCancel(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 3
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "onComplete"    # Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    .line 680
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->connection:Lcom/google/firebase/database/connection/PersistentConnection;

    .line 681
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->asList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/database/core/Repo$13;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/firebase/database/core/Repo$13;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    .line 680
    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/connection/PersistentConnection;->onDisconnectCancel(Ljava/util/List;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    .line 692
    return-void
.end method

.method public onDisconnectSetValue(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 4
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "newValue"    # Lcom/google/firebase/database/snapshot/Node;
    .param p3, "onComplete"    # Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    .line 639
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->connection:Lcom/google/firebase/database/connection/PersistentConnection;

    .line 640
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->asList()Ljava/util/List;

    move-result-object v1

    .line 641
    const/4 v2, 0x1

    invoke-interface {p2, v2}, Lcom/google/firebase/database/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/database/core/Repo$11;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/google/firebase/database/core/Repo$11;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    .line 639
    invoke-interface {v0, v1, v2, v3}, Lcom/google/firebase/database/connection/PersistentConnection;->onDisconnectPut(Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    .line 653
    return-void
.end method

.method public onDisconnectUpdate(Lcom/google/firebase/database/core/Path;Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;Ljava/util/Map;)V
    .locals 3
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p3, "listener"    # Lcom/google/firebase/database/DatabaseReference$CompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Ljava/util/Map<",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/snapshot/Node;",
            ">;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 660
    .local p2, "newChildren":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    .local p4, "unParsedUpdates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->connection:Lcom/google/firebase/database/connection/PersistentConnection;

    .line 661
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->asList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/database/core/Repo$12;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/firebase/database/core/Repo$12;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    .line 660
    invoke-interface {v0, v1, p4, v2}, Lcom/google/firebase/database/connection/PersistentConnection;->onDisconnectMerge(Ljava/util/List;Ljava/util/Map;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    .line 676
    return-void
.end method

.method public onRangeMergeUpdate(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)V
    .locals 6
    .param p3, "tagNumber"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/connection/RangeMerge;",
            ">;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .line 384
    .local p1, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "merges":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/connection/RangeMerge;>;"
    new-instance v0, Lcom/google/firebase/database/core/Path;

    invoke-direct {v0, p1}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/util/List;)V

    .line 385
    .local v0, "path":Lcom/google/firebase/database/core/Path;
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "onRangeMergeUpdate: "

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo;->dataLogger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    :cond_1
    iget-wide v1, p0, Lcom/google/firebase/database/core/Repo;->dataUpdateCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/firebase/database/core/Repo;->dataUpdateCount:J

    .line 393
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 394
    .local v1, "parsedMerges":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/snapshot/RangeMerge;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/connection/RangeMerge;

    .line 395
    .local v3, "merge":Lcom/google/firebase/database/connection/RangeMerge;
    new-instance v4, Lcom/google/firebase/database/snapshot/RangeMerge;

    invoke-direct {v4, v3}, Lcom/google/firebase/database/snapshot/RangeMerge;-><init>(Lcom/google/firebase/database/connection/RangeMerge;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    .end local v3    # "merge":Lcom/google/firebase/database/connection/RangeMerge;
    goto :goto_0

    .line 399
    :cond_2
    if-eqz p3, :cond_3

    .line 400
    iget-object v2, p0, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    new-instance v3, Lcom/google/firebase/database/core/Tag;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/google/firebase/database/core/Tag;-><init>(J)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/firebase/database/core/SyncTree;->applyTaggedRangeMerges(Lcom/google/firebase/database/core/Path;Ljava/util/List;Lcom/google/firebase/database/core/Tag;)Ljava/util/List;

    move-result-object v2

    .local v2, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    goto :goto_1

    .line 402
    .end local v2    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    :cond_3
    iget-object v2, p0, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/database/core/SyncTree;->applyServerRangeMerges(Lcom/google/firebase/database/core/Path;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 404
    .restart local v2    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 407
    invoke-direct {p0, v0}, Lcom/google/firebase/database/core/Repo;->rerunTransactions(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    .line 410
    :cond_4
    invoke-direct {p0, v2}, Lcom/google/firebase/database/core/Repo;->postEvents(Ljava/util/List;)V

    .line 411
    return-void
.end method

.method public onServerInfoUpdate(Lcom/google/firebase/database/snapshot/ChildKey;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Lcom/google/firebase/database/snapshot/ChildKey;
    .param p2, "value"    # Ljava/lang/Object;

    .line 711
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/core/Repo;->updateInfo(Lcom/google/firebase/database/snapshot/ChildKey;Ljava/lang/Object;)V

    .line 712
    return-void
.end method

.method public onServerInfoUpdate(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 716
    .local p1, "updates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 717
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/database/core/Repo;->updateInfo(Lcom/google/firebase/database/snapshot/ChildKey;Ljava/lang/Object;)V

    .line 718
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 719
    :cond_0
    return-void
.end method

.method public postEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 307
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->ctx:Lcom/google/firebase/database/core/Context;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Context;->requireStarted()V

    .line 308
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->ctx:Lcom/google/firebase/database/core/Context;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Context;->getEventTarget()Lcom/google/firebase/database/core/EventTarget;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/firebase/database/core/EventTarget;->postEvent(Ljava/lang/Runnable;)V

    .line 309
    return-void
.end method

.method public purgeOutstandingWrites()V
    .locals 3

    .line 614
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Purging writes"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/SyncTree;->removeAllWrites()Ljava/util/List;

    move-result-object v0

    .line 618
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    invoke-direct {p0, v0}, Lcom/google/firebase/database/core/Repo;->postEvents(Ljava/util/List;)V

    .line 620
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    const/16 v2, -0x19

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/database/core/Repo;->abortTransactions(Lcom/google/firebase/database/core/Path;I)Lcom/google/firebase/database/core/Path;

    .line 622
    iget-object v1, p0, Lcom/google/firebase/database/core/Repo;->connection:Lcom/google/firebase/database/connection/PersistentConnection;

    invoke-interface {v1}, Lcom/google/firebase/database/connection/PersistentConnection;->purgeOutstandingWrites()V

    .line 623
    return-void
.end method

.method public removeEventCallback(Lcom/google/firebase/database/core/EventRegistration;)V
    .locals 2
    .param p1, "eventRegistration"    # Lcom/google/firebase/database/core/EventRegistration;

    .line 629
    sget-object v0, Lcom/google/firebase/database/core/Constants;->DOT_INFO:Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/EventRegistration;->getQuerySpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->infoSyncTree:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/SyncTree;->removeEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)Ljava/util/List;

    move-result-object v0

    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Event;>;"
    goto :goto_0

    .line 632
    .end local v0    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Event;>;"
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/core/SyncTree;->removeEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)Ljava/util/List;

    move-result-object v0

    .line 634
    .restart local v0    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/view/Event;>;"
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/firebase/database/core/Repo;->postEvents(Ljava/util/List;)V

    .line 635
    return-void
.end method

.method resume()V
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->connection:Lcom/google/firebase/database/connection/PersistentConnection;

    const-string v1, "repo_interrupt"

    invoke-interface {v0, v1}, Lcom/google/firebase/database/connection/PersistentConnection;->resume(Ljava/lang/String;)V

    .line 727
    return-void
.end method

.method public scheduleNow(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 302
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->ctx:Lcom/google/firebase/database/core/Context;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Context;->requireStarted()V

    .line 303
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->ctx:Lcom/google/firebase/database/core/Context;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Context;->getRunLoop()Lcom/google/firebase/database/core/RunLoop;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/firebase/database/core/RunLoop;->scheduleNow(Ljava/lang/Runnable;)V

    .line 304
    return-void
.end method

.method public setHijackHash(Z)V
    .locals 0
    .param p1, "hijackHash"    # Z

    .line 1005
    iput-boolean p1, p0, Lcom/google/firebase/database/core/Repo;->hijackHash:Z

    .line 1006
    return-void
.end method

.method public setValue(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 19
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "newValueUnresolved"    # Lcom/google/firebase/database/snapshot/Node;
    .param p3, "onComplete"    # Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    .line 453
    move-object/from16 v6, p0

    move-object/from16 v15, p1

    move-object/from16 v5, p2

    iget-object v0, v6, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "set: "

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, v6, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    :cond_0
    iget-object v0, v6, Lcom/google/firebase/database/core/Repo;->dataLogger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, v6, Lcom/google/firebase/database/core/Repo;->dataLogger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    :cond_1
    iget-object v0, v6, Lcom/google/firebase/database/core/Repo;->serverClock:Lcom/google/firebase/database/core/utilities/OffsetClock;

    invoke-static {v0}, Lcom/google/firebase/database/core/ServerValues;->generateServerValues(Lcom/google/firebase/database/core/utilities/Clock;)Ljava/util/Map;

    move-result-object v3

    .line 461
    .local v3, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, v6, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v15, v1}, Lcom/google/firebase/database/core/SyncTree;->calcCompleteEventCache(Lcom/google/firebase/database/core/Path;Ljava/util/List;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    .line 462
    .local v4, "existing":Lcom/google/firebase/database/snapshot/Node;
    nop

    .line 463
    invoke-static {v5, v4, v3}, Lcom/google/firebase/database/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v16

    .line 465
    .local v16, "newValue":Lcom/google/firebase/database/snapshot/Node;
    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/database/core/Repo;->getNextWriteId()J

    move-result-wide v17

    .line 466
    .local v17, "writeId":J
    iget-object v7, v6, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    const/4 v13, 0x1

    const/4 v14, 0x1

    .line 467
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, v16

    move-wide/from16 v11, v17

    invoke-virtual/range {v7 .. v14}, Lcom/google/firebase/database/core/SyncTree;->applyUserOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;JZZ)Ljava/util/List;

    move-result-object v7

    .line 469
    .local v7, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    invoke-direct {v6, v7}, Lcom/google/firebase/database/core/Repo;->postEvents(Ljava/util/List;)V

    .line 471
    iget-object v8, v6, Lcom/google/firebase/database/core/Repo;->connection:Lcom/google/firebase/database/connection/PersistentConnection;

    .line 472
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/Path;->asList()Ljava/util/List;

    move-result-object v9

    const/4 v0, 0x1

    .line 473
    invoke-interface {v5, v0}, Lcom/google/firebase/database/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v10

    new-instance v11, Lcom/google/firebase/database/core/Repo$8;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v12, v3

    move-object v13, v4

    .end local v3    # "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "existing":Lcom/google/firebase/database/snapshot/Node;
    .local v12, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v13, "existing":Lcom/google/firebase/database/snapshot/Node;
    move-wide/from16 v3, v17

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/Repo$8;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;JLcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    .line 471
    invoke-interface {v8, v9, v10, v11}, Lcom/google/firebase/database/connection/PersistentConnection;->put(Ljava/util/List;Ljava/lang/Object;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    .line 484
    const/16 v0, -0x9

    invoke-direct {v6, v15, v0}, Lcom/google/firebase/database/core/Repo;->abortTransactions(Lcom/google/firebase/database/core/Path;I)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    .line 485
    .local v0, "affectedPath":Lcom/google/firebase/database/core/Path;
    invoke-direct {v6, v0}, Lcom/google/firebase/database/core/Repo;->rerunTransactions(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    .line 486
    return-void
.end method

.method public startTransaction(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/Transaction$Handler;Z)V
    .locals 24
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "handler"    # Lcom/google/firebase/database/Transaction$Handler;
    .param p3, "applyLocally"    # Z

    .line 881
    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    iget-object v0, v1, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "transaction: "

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, v1, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 884
    :cond_0
    iget-object v0, v1, Lcom/google/firebase/database/core/Repo;->dataLogger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 885
    iget-object v0, v1, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 888
    :cond_1
    iget-object v0, v1, Lcom/google/firebase/database/core/Repo;->ctx:Lcom/google/firebase/database/core/Context;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Context;->isPersistenceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Lcom/google/firebase/database/core/Repo;->loggedTransactionPersistenceWarning:Z

    if-nez v0, :cond_2

    .line 889
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/firebase/database/core/Repo;->loggedTransactionPersistenceWarning:Z

    .line 890
    iget-object v0, v1, Lcom/google/firebase/database/core/Repo;->transactionLogger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v2, "runTransaction() usage detected while persistence is enabled. Please be aware that transactions *will not* be persisted across database restarts.  See https://www.firebase.com/docs/android/guide/offline-capabilities.html#section-handling-transactions-offline for more details."

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/logging/LogWrapper;->info(Ljava/lang/String;)V

    .line 901
    :cond_2
    invoke-static/range {p0 .. p1}, Lcom/google/firebase/database/InternalHelpers;->createReference(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v13

    .line 902
    .local v13, "watchRef":Lcom/google/firebase/database/DatabaseReference;
    new-instance v0, Lcom/google/firebase/database/core/Repo$15;

    invoke-direct {v0, v1}, Lcom/google/firebase/database/core/Repo$15;-><init>(Lcom/google/firebase/database/core/Repo;)V

    move-object v14, v0

    .line 914
    .local v14, "listener":Lcom/google/firebase/database/ValueEventListener;
    new-instance v0, Lcom/google/firebase/database/core/ValueEventRegistration;

    invoke-virtual {v13}, Lcom/google/firebase/database/DatabaseReference;->getSpec()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v2

    invoke-direct {v0, v1, v14, v2}, Lcom/google/firebase/database/core/ValueEventRegistration;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/ValueEventListener;Lcom/google/firebase/database/core/view/QuerySpec;)V

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/core/Repo;->addEventCallback(Lcom/google/firebase/database/core/EventRegistration;)V

    .line 916
    new-instance v0, Lcom/google/firebase/database/core/Repo$TransactionData;

    sget-object v6, Lcom/google/firebase/database/core/Repo$TransactionStatus;->INITIALIZING:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    .line 923
    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/database/core/Repo;->nextTransactionOrder()J

    move-result-wide v8

    const/4 v10, 0x0

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v14

    move/from16 v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/google/firebase/database/core/Repo$TransactionData;-><init>(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;Lcom/google/firebase/database/core/Repo$TransactionStatus;ZJLcom/google/firebase/database/core/Repo$1;)V

    move-object v10, v0

    .line 926
    .local v10, "transaction":Lcom/google/firebase/database/core/Repo$TransactionData;
    invoke-direct/range {p0 .. p1}, Lcom/google/firebase/database/core/Repo;->getLatestState(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v15

    .line 927
    .local v15, "currentState":Lcom/google/firebase/database/snapshot/Node;
    invoke-static {v10, v15}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1502(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    .line 928
    invoke-static {v15}, Lcom/google/firebase/database/InternalHelpers;->createMutableData(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/MutableData;

    move-result-object v9

    .line 930
    .local v9, "mutableCurrent":Lcom/google/firebase/database/MutableData;
    const/4 v2, 0x0

    .line 933
    .local v2, "error":Lcom/google/firebase/database/DatabaseError;
    :try_start_0
    invoke-interface {v12, v9}, Lcom/google/firebase/database/Transaction$Handler;->doTransaction(Lcom/google/firebase/database/MutableData;)Lcom/google/firebase/database/Transaction$Result;

    move-result-object v0

    .line 934
    .local v0, "result":Lcom/google/firebase/database/Transaction$Result;
    if-eqz v0, :cond_3

    .line 941
    move-object/from16 v16, v2

    goto :goto_0

    .line 935
    :cond_3
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Transaction returned null as result"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v2    # "error":Lcom/google/firebase/database/DatabaseError;
    .end local v9    # "mutableCurrent":Lcom/google/firebase/database/MutableData;
    .end local v10    # "transaction":Lcom/google/firebase/database/core/Repo$TransactionData;
    .end local v13    # "watchRef":Lcom/google/firebase/database/DatabaseReference;
    .end local v14    # "listener":Lcom/google/firebase/database/ValueEventListener;
    .end local v15    # "currentState":Lcom/google/firebase/database/snapshot/Node;
    .end local p1    # "path":Lcom/google/firebase/database/core/Path;
    .end local p2    # "handler":Lcom/google/firebase/database/Transaction$Handler;
    .end local p3    # "applyLocally":Z
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    .end local v0    # "result":Lcom/google/firebase/database/Transaction$Result;
    .restart local v2    # "error":Lcom/google/firebase/database/DatabaseError;
    .restart local v9    # "mutableCurrent":Lcom/google/firebase/database/MutableData;
    .restart local v10    # "transaction":Lcom/google/firebase/database/core/Repo$TransactionData;
    .restart local v13    # "watchRef":Lcom/google/firebase/database/DatabaseReference;
    .restart local v14    # "listener":Lcom/google/firebase/database/ValueEventListener;
    .restart local v15    # "currentState":Lcom/google/firebase/database/snapshot/Node;
    .restart local p1    # "path":Lcom/google/firebase/database/core/Path;
    .restart local p2    # "handler":Lcom/google/firebase/database/Transaction$Handler;
    .restart local p3    # "applyLocally":Z
    :catchall_0
    move-exception v0

    .line 938
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, v1, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v4, "Caught Throwable."

    invoke-virtual {v3, v4, v0}, Lcom/google/firebase/database/logging/LogWrapper;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 939
    invoke-static {v0}, Lcom/google/firebase/database/DatabaseError;->fromException(Ljava/lang/Throwable;)Lcom/google/firebase/database/DatabaseError;

    move-result-object v2

    .line 940
    invoke-static {}, Lcom/google/firebase/database/Transaction;->abort()Lcom/google/firebase/database/Transaction$Result;

    move-result-object v3

    move-object/from16 v16, v2

    move-object v0, v3

    .line 942
    .end local v2    # "error":Lcom/google/firebase/database/DatabaseError;
    .local v0, "result":Lcom/google/firebase/database/Transaction$Result;
    .local v16, "error":Lcom/google/firebase/database/DatabaseError;
    :goto_0
    invoke-virtual {v0}, Lcom/google/firebase/database/Transaction$Result;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_4

    .line 944
    const/4 v2, 0x0

    invoke-static {v10, v2}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1602(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    .line 945
    invoke-static {v10, v2}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1702(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    .line 946
    move-object/from16 v2, v16

    .line 947
    .local v2, "innerClassError":Lcom/google/firebase/database/DatabaseError;
    nop

    .line 949
    invoke-static {v10}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1500(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v3

    .line 948
    invoke-static {v13, v3}, Lcom/google/firebase/database/InternalHelpers;->createDataSnapshot(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v3

    .line 950
    .local v3, "snap":Lcom/google/firebase/database/DataSnapshot;
    new-instance v4, Lcom/google/firebase/database/core/Repo$16;

    invoke-direct {v4, v1, v12, v2, v3}, Lcom/google/firebase/database/core/Repo$16;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DataSnapshot;)V

    invoke-virtual {v1, v4}, Lcom/google/firebase/database/core/Repo;->postEvent(Ljava/lang/Runnable;)V

    .line 957
    .end local v2    # "innerClassError":Lcom/google/firebase/database/DatabaseError;
    .end local v3    # "snap":Lcom/google/firebase/database/DataSnapshot;
    move-object/from16 v18, v9

    goto/16 :goto_2

    .line 959
    :cond_4
    sget-object v2, Lcom/google/firebase/database/core/Repo$TransactionStatus;->RUN:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    invoke-static {v10, v2}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1802(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/core/Repo$TransactionStatus;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    .line 961
    iget-object v2, v1, Lcom/google/firebase/database/core/Repo;->transactionQueueTree:Lcom/google/firebase/database/core/utilities/Tree;

    invoke-virtual {v2, v11}, Lcom/google/firebase/database/core/utilities/Tree;->subTree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/Tree;

    move-result-object v8

    .line 962
    .local v8, "queueNode":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;>;"
    invoke-virtual {v8}, Lcom/google/firebase/database/core/utilities/Tree;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 963
    .local v2, "nodeQueue":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;"
    if-nez v2, :cond_5

    .line 964
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    move-object v6, v2

    goto :goto_1

    .line 963
    :cond_5
    move-object v6, v2

    .line 966
    .end local v2    # "nodeQueue":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;"
    .local v6, "nodeQueue":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;"
    :goto_1
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    invoke-virtual {v8, v6}, Lcom/google/firebase/database/core/utilities/Tree;->setValue(Ljava/lang/Object;)V

    .line 969
    iget-object v2, v1, Lcom/google/firebase/database/core/Repo;->serverClock:Lcom/google/firebase/database/core/utilities/OffsetClock;

    invoke-static {v2}, Lcom/google/firebase/database/core/ServerValues;->generateServerValues(Lcom/google/firebase/database/core/utilities/Clock;)Ljava/util/Map;

    move-result-object v7

    .line 970
    .local v7, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0}, Lcom/google/firebase/database/Transaction$Result;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    .line 971
    .local v5, "newNodeUnresolved":Lcom/google/firebase/database/snapshot/Node;
    nop

    .line 973
    invoke-static {v10}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1500(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    .line 972
    invoke-static {v5, v2, v7}, Lcom/google/firebase/database/core/ServerValues;->resolveDeferredValueSnapshot(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;Ljava/util/Map;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    .line 975
    .local v4, "newNode":Lcom/google/firebase/database/snapshot/Node;
    invoke-static {v10, v5}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1602(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    .line 976
    invoke-static {v10, v4}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1702(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    .line 977
    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/database/core/Repo;->getNextWriteId()J

    move-result-wide v2

    invoke-static {v10, v2, v3}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1902(Lcom/google/firebase/database/core/Repo$TransactionData;J)J

    .line 979
    iget-object v2, v1, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    .line 984
    invoke-static {v10}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1900(Lcom/google/firebase/database/core/Repo$TransactionData;)J

    move-result-wide v17

    const/16 v19, 0x0

    .line 980
    move-object/from16 v3, p1

    move-object/from16 v20, v4

    .end local v4    # "newNode":Lcom/google/firebase/database/snapshot/Node;
    .local v20, "newNode":Lcom/google/firebase/database/snapshot/Node;
    move-object v4, v5

    move-object/from16 v21, v5

    .end local v5    # "newNodeUnresolved":Lcom/google/firebase/database/snapshot/Node;
    .local v21, "newNodeUnresolved":Lcom/google/firebase/database/snapshot/Node;
    move-object/from16 v5, v20

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .end local v6    # "nodeQueue":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;"
    .end local v7    # "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v22, "nodeQueue":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;"
    .local v23, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-wide/from16 v6, v17

    move-object/from16 v17, v8

    .end local v8    # "queueNode":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;>;"
    .local v17, "queueNode":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;>;"
    move/from16 v8, p3

    move-object/from16 v18, v9

    .end local v9    # "mutableCurrent":Lcom/google/firebase/database/MutableData;
    .local v18, "mutableCurrent":Lcom/google/firebase/database/MutableData;
    move/from16 v9, v19

    invoke-virtual/range {v2 .. v9}, Lcom/google/firebase/database/core/SyncTree;->applyUserOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;JZZ)Ljava/util/List;

    move-result-object v2

    .line 987
    .local v2, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    invoke-direct {v1, v2}, Lcom/google/firebase/database/core/Repo;->postEvents(Ljava/util/List;)V

    .line 988
    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/database/core/Repo;->sendAllReadyTransactions()V

    .line 990
    .end local v2    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    .end local v17    # "queueNode":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;>;"
    .end local v20    # "newNode":Lcom/google/firebase/database/snapshot/Node;
    .end local v21    # "newNodeUnresolved":Lcom/google/firebase/database/snapshot/Node;
    .end local v22    # "nodeQueue":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;"
    .end local v23    # "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo;->repoInfo:Lcom/google/firebase/database/core/RepoInfo;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/RepoInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateChildren(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/DatabaseReference$CompletionListener;Ljava/util/Map;)V
    .locals 19
    .param p1, "path"    # Lcom/google/firebase/database/core/Path;
    .param p2, "updates"    # Lcom/google/firebase/database/core/CompoundWrite;
    .param p3, "onComplete"    # Lcom/google/firebase/database/DatabaseReference$CompletionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/core/CompoundWrite;",
            "Lcom/google/firebase/database/DatabaseReference$CompletionListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 566
    .local p4, "unParsedUpdates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v6, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p4

    iget-object v0, v6, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    const-string v1, "update: "

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, v6, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    :cond_0
    iget-object v0, v6, Lcom/google/firebase/database/core/Repo;->dataLogger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, v6, Lcom/google/firebase/database/core/Repo;->dataLogger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/CompoundWrite;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 573
    iget-object v0, v6, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 574
    iget-object v0, v6, Lcom/google/firebase/database/core/Repo;->operationLogger:Lcom/google/firebase/database/logging/LogWrapper;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "update called with no changes. No-op"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    :cond_2
    const/4 v0, 0x0

    move-object/from16 v5, p3

    invoke-virtual {v6, v5, v0, v14}, Lcom/google/firebase/database/core/Repo;->callOnComplete(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/core/Path;)V

    .line 578
    return-void

    .line 582
    :cond_3
    move-object/from16 v5, p3

    iget-object v0, v6, Lcom/google/firebase/database/core/Repo;->serverClock:Lcom/google/firebase/database/core/utilities/OffsetClock;

    invoke-static {v0}, Lcom/google/firebase/database/core/ServerValues;->generateServerValues(Lcom/google/firebase/database/core/utilities/Clock;)Ljava/util/Map;

    move-result-object v3

    .line 583
    .local v3, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, v6, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    .line 584
    move-object/from16 v4, p2

    invoke-static {v4, v0, v14, v3}, Lcom/google/firebase/database/core/ServerValues;->resolveDeferredValueMerge(Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/Path;Ljava/util/Map;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v16

    .line 586
    .local v16, "resolved":Lcom/google/firebase/database/core/CompoundWrite;
    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/database/core/Repo;->getNextWriteId()J

    move-result-wide v17

    .line 587
    .local v17, "writeId":J
    iget-object v7, v6, Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;

    const/4 v13, 0x1

    .line 588
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, v16

    move-wide/from16 v11, v17

    invoke-virtual/range {v7 .. v13}, Lcom/google/firebase/database/core/SyncTree;->applyUserMerge(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/CompoundWrite;JZ)Ljava/util/List;

    move-result-object v7

    .line 589
    .local v7, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/google/firebase/database/core/view/Event;>;"
    invoke-direct {v6, v7}, Lcom/google/firebase/database/core/Repo;->postEvents(Ljava/util/List;)V

    .line 593
    iget-object v8, v6, Lcom/google/firebase/database/core/Repo;->connection:Lcom/google/firebase/database/connection/PersistentConnection;

    .line 594
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/Path;->asList()Ljava/util/List;

    move-result-object v9

    new-instance v10, Lcom/google/firebase/database/core/Repo$10;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v11, v3

    .end local v3    # "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v11, "serverValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-wide/from16 v3, v17

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/Repo$10;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;JLcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    .line 593
    invoke-interface {v8, v9, v15, v10}, Lcom/google/firebase/database/connection/PersistentConnection;->merge(Ljava/util/List;Ljava/util/Map;Lcom/google/firebase/database/connection/RequestResultCallback;)V

    .line 606
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 607
    .local v1, "update":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/Path;

    invoke-virtual {v14, v2}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 608
    .local v2, "pathFromRoot":Lcom/google/firebase/database/core/Path;
    const/16 v3, -0x9

    invoke-direct {v6, v2, v3}, Lcom/google/firebase/database/core/Repo;->abortTransactions(Lcom/google/firebase/database/core/Path;I)Lcom/google/firebase/database/core/Path;

    move-result-object v3

    .line 609
    .local v3, "affectedPath":Lcom/google/firebase/database/core/Path;
    invoke-direct {v6, v3}, Lcom/google/firebase/database/core/Repo;->rerunTransactions(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    .line 610
    .end local v1    # "update":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;>;"
    .end local v2    # "pathFromRoot":Lcom/google/firebase/database/core/Path;
    .end local v3    # "affectedPath":Lcom/google/firebase/database/core/Path;
    goto :goto_0

    .line 611
    :cond_4
    return-void
.end method
