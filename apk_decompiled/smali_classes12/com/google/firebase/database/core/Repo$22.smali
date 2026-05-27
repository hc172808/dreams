.class Lcom/google/firebase/database/core/Repo$22;
.super Ljava/lang/Object;
.source "Repo.java"

# interfaces
.implements Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo;->aggregateTransactionQueues(Ljava/util/List;Lcom/google/firebase/database/core/utilities/Tree;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/database/core/utilities/Tree$TreeVisitor<",
        "Ljava/util/List<",
        "Lcom/google/firebase/database/core/Repo$TransactionData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/Repo;

.field final synthetic val$queue:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/database/core/Repo;

    .line 1361
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$22;->this$0:Lcom/google/firebase/database/core/Repo;

    iput-object p2, p0, Lcom/google/firebase/database/core/Repo$22;->val$queue:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitTree(Lcom/google/firebase/database/core/utilities/Tree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/utilities/Tree<",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/Repo$TransactionData;",
            ">;>;)V"
        }
    .end annotation

    .line 1364
    .local p1, "tree":Lcom/google/firebase/database/core/utilities/Tree;, "Lcom/google/firebase/database/core/utilities/Tree<Ljava/util/List<Lcom/google/firebase/database/core/Repo$TransactionData;>;>;"
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$22;->this$0:Lcom/google/firebase/database/core/Repo;

    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$22;->val$queue:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/database/core/Repo;->access$3100(Lcom/google/firebase/database/core/Repo;Ljava/util/List;Lcom/google/firebase/database/core/utilities/Tree;)V

    .line 1365
    return-void
.end method
