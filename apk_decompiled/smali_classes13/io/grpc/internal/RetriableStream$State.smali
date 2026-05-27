.class final Lio/grpc/internal/RetriableStream$State;
.super Ljava/lang/Object;
.source "RetriableStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/RetriableStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "State"
.end annotation


# instance fields
.field final activeHedges:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/grpc/internal/RetriableStream$Substream;",
            ">;"
        }
    .end annotation
.end field

.field final buffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/internal/RetriableStream$BufferEntry;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final cancelled:Z

.field final drainedSubstreams:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/grpc/internal/RetriableStream$Substream;",
            ">;"
        }
    .end annotation
.end field

.field final hedgingAttemptCount:I

.field final hedgingFrozen:Z

.field final passThrough:Z

.field final winningSubstream:Lio/grpc/internal/RetriableStream$Substream;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/RetriableStream$Substream;ZZZI)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "winningSubstream"    # Lio/grpc/internal/RetriableStream$Substream;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "cancelled"    # Z
    .param p6, "passThrough"    # Z
    .param p7, "hedgingFrozen"    # Z
    .param p8, "hedgingAttemptCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/internal/RetriableStream$BufferEntry;",
            ">;",
            "Ljava/util/Collection<",
            "Lio/grpc/internal/RetriableStream$Substream;",
            ">;",
            "Ljava/util/Collection<",
            "Lio/grpc/internal/RetriableStream$Substream;",
            ">;",
            "Lio/grpc/internal/RetriableStream$Substream;",
            "ZZZI)V"
        }
    .end annotation

    .line 997
    .local p1, "buffer":Ljava/util/List;, "Ljava/util/List<Lio/grpc/internal/RetriableStream$BufferEntry;>;"
    .local p2, "drainedSubstreams":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/RetriableStream$Substream;>;"
    .local p3, "activeHedges":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/RetriableStream$Substream;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    .line 999
    nop

    .line 1000
    const-string v0, "drainedSubstreams"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    .line 1001
    iput-object p4, p0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    .line 1002
    iput-object p3, p0, Lio/grpc/internal/RetriableStream$State;->activeHedges:Ljava/util/Collection;

    .line 1003
    iput-boolean p5, p0, Lio/grpc/internal/RetriableStream$State;->cancelled:Z

    .line 1004
    iput-boolean p6, p0, Lio/grpc/internal/RetriableStream$State;->passThrough:Z

    .line 1005
    iput-boolean p7, p0, Lio/grpc/internal/RetriableStream$State;->hedgingFrozen:Z

    .line 1006
    iput p8, p0, Lio/grpc/internal/RetriableStream$State;->hedgingAttemptCount:I

    .line 1008
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p6, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "passThrough should imply buffer is null"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1009
    if-eqz p6, :cond_3

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x1

    :goto_3
    const-string v3, "passThrough should imply winningSubstream != null"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1012
    if-eqz p6, :cond_6

    .line 1014
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v2, v1, :cond_4

    invoke-interface {p2, p4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1015
    :cond_4
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p4, Lio/grpc/internal/RetriableStream$Substream;->closed:Z

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v2, 0x1

    .line 1012
    :goto_5
    const-string v3, "passThrough should imply winningSubstream is drained"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1017
    if-eqz p5, :cond_7

    if-eqz p4, :cond_8

    :cond_7
    const/4 v0, 0x1

    :cond_8
    const-string v1, "cancelled should imply committed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1018
    return-void
.end method


# virtual methods
.method addActiveHedge(Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;
    .locals 12
    .param p1, "substream"    # Lio/grpc/internal/RetriableStream$Substream;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1117
    iget-boolean v0, p0, Lio/grpc/internal/RetriableStream$State;->hedgingFrozen:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "hedging frozen"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1118
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "already committed"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1121
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$State;->activeHedges:Ljava/util/Collection;

    if-nez v0, :cond_1

    .line 1122
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .local v0, "activeHedges":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/RetriableStream$Substream;>;"
    goto :goto_1

    .line 1124
    .end local v0    # "activeHedges":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/RetriableStream$Substream;>;"
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/grpc/internal/RetriableStream$State;->activeHedges:Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1125
    .restart local v0    # "activeHedges":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/RetriableStream$Substream;>;"
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1126
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 1129
    :goto_1
    iget v2, p0, Lio/grpc/internal/RetriableStream$State;->hedgingAttemptCount:I

    add-int/2addr v1, v2

    .line 1130
    .local v1, "hedgingAttemptCount":I
    new-instance v11, Lio/grpc/internal/RetriableStream$State;

    iget-object v3, p0, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    iget-object v4, p0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    iget-object v6, p0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-boolean v7, p0, Lio/grpc/internal/RetriableStream$State;->cancelled:Z

    iget-boolean v8, p0, Lio/grpc/internal/RetriableStream$State;->passThrough:Z

    iget-boolean v9, p0, Lio/grpc/internal/RetriableStream$State;->hedgingFrozen:Z

    move-object v2, v11

    move-object v5, v0

    move v10, v1

    invoke-direct/range {v2 .. v10}, Lio/grpc/internal/RetriableStream$State;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/RetriableStream$Substream;ZZZI)V

    return-object v11
.end method

.method cancelled()Lio/grpc/internal/RetriableStream$State;
    .locals 10
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1023
    new-instance v9, Lio/grpc/internal/RetriableStream$State;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    iget-object v2, p0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    iget-object v3, p0, Lio/grpc/internal/RetriableStream$State;->activeHedges:Ljava/util/Collection;

    iget-object v4, p0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-boolean v6, p0, Lio/grpc/internal/RetriableStream$State;->passThrough:Z

    iget-boolean v7, p0, Lio/grpc/internal/RetriableStream$State;->hedgingFrozen:Z

    iget v8, p0, Lio/grpc/internal/RetriableStream$State;->hedgingAttemptCount:I

    const/4 v5, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/grpc/internal/RetriableStream$State;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/RetriableStream$Substream;ZZZI)V

    return-object v9
.end method

.method committed(Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;
    .locals 13
    .param p1, "winningSubstream"    # Lio/grpc/internal/RetriableStream$Substream;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1081
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Already committed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1083
    const/4 v0, 0x0

    .line 1084
    .local v0, "passThrough":Z
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    .line 1087
    .local v1, "buffer":Ljava/util/List;, "Ljava/util/List<Lio/grpc/internal/RetriableStream$BufferEntry;>;"
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1088
    const/4 v0, 0x1

    .line 1089
    const/4 v1, 0x0

    .line 1090
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .local v2, "drainedSubstreams":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/RetriableStream$Substream;>;"
    goto :goto_1

    .line 1092
    .end local v2    # "drainedSubstreams":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/RetriableStream$Substream;>;"
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 1095
    .restart local v2    # "drainedSubstreams":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/RetriableStream$Substream;>;"
    :goto_1
    new-instance v12, Lio/grpc/internal/RetriableStream$State;

    iget-object v6, p0, Lio/grpc/internal/RetriableStream$State;->activeHedges:Ljava/util/Collection;

    iget-boolean v8, p0, Lio/grpc/internal/RetriableStream$State;->cancelled:Z

    iget-boolean v10, p0, Lio/grpc/internal/RetriableStream$State;->hedgingFrozen:Z

    iget v11, p0, Lio/grpc/internal/RetriableStream$State;->hedgingAttemptCount:I

    move-object v3, v12

    move-object v4, v1

    move-object v5, v2

    move-object v7, p1

    move v9, v0

    invoke-direct/range {v3 .. v11}, Lio/grpc/internal/RetriableStream$State;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/RetriableStream$Substream;ZZZI)V

    return-object v12
.end method

.method freezeHedging()Lio/grpc/internal/RetriableStream$State;
    .locals 10
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1103
    iget-boolean v0, p0, Lio/grpc/internal/RetriableStream$State;->hedgingFrozen:Z

    if-eqz v0, :cond_0

    .line 1104
    return-object p0

    .line 1106
    :cond_0
    new-instance v0, Lio/grpc/internal/RetriableStream$State;

    iget-object v2, p0, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    iget-object v3, p0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    iget-object v4, p0, Lio/grpc/internal/RetriableStream$State;->activeHedges:Ljava/util/Collection;

    iget-object v5, p0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-boolean v6, p0, Lio/grpc/internal/RetriableStream$State;->cancelled:Z

    iget-boolean v7, p0, Lio/grpc/internal/RetriableStream$State;->passThrough:Z

    const/4 v8, 0x1

    iget v9, p0, Lio/grpc/internal/RetriableStream$State;->hedgingAttemptCount:I

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lio/grpc/internal/RetriableStream$State;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/RetriableStream$Substream;ZZZI)V

    return-object v0
.end method

.method removeActiveHedge(Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;
    .locals 11
    .param p1, "substream"    # Lio/grpc/internal/RetriableStream$Substream;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1139
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$State;->activeHedges:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1140
    .local v0, "activeHedges":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/RetriableStream$Substream;>;"
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1141
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 1143
    new-instance v10, Lio/grpc/internal/RetriableStream$State;

    iget-object v2, p0, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    iget-object v3, p0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    iget-object v5, p0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-boolean v6, p0, Lio/grpc/internal/RetriableStream$State;->cancelled:Z

    iget-boolean v7, p0, Lio/grpc/internal/RetriableStream$State;->passThrough:Z

    iget-boolean v8, p0, Lio/grpc/internal/RetriableStream$State;->hedgingFrozen:Z

    iget v9, p0, Lio/grpc/internal/RetriableStream$State;->hedgingAttemptCount:I

    move-object v1, v10

    move-object v4, v0

    invoke-direct/range {v1 .. v9}, Lio/grpc/internal/RetriableStream$State;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/RetriableStream$Substream;ZZZI)V

    return-object v10
.end method

.method replaceActiveHedge(Lio/grpc/internal/RetriableStream$Substream;Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;
    .locals 11
    .param p1, "oldOne"    # Lio/grpc/internal/RetriableStream$Substream;
    .param p2, "newOne"    # Lio/grpc/internal/RetriableStream$Substream;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1152
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$State;->activeHedges:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1153
    .local v0, "activeHedges":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/RetriableStream$Substream;>;"
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1154
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1155
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 1157
    new-instance v10, Lio/grpc/internal/RetriableStream$State;

    iget-object v2, p0, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    iget-object v3, p0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    iget-object v5, p0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-boolean v6, p0, Lio/grpc/internal/RetriableStream$State;->cancelled:Z

    iget-boolean v7, p0, Lio/grpc/internal/RetriableStream$State;->passThrough:Z

    iget-boolean v8, p0, Lio/grpc/internal/RetriableStream$State;->hedgingFrozen:Z

    iget v9, p0, Lio/grpc/internal/RetriableStream$State;->hedgingAttemptCount:I

    move-object v1, v10

    move-object v4, v0

    invoke-direct/range {v1 .. v9}, Lio/grpc/internal/RetriableStream$State;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/RetriableStream$Substream;ZZZI)V

    return-object v10
.end method

.method substreamClosed(Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;
    .locals 11
    .param p1, "substream"    # Lio/grpc/internal/RetriableStream$Substream;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1065
    const/4 v0, 0x1

    iput-boolean v0, p1, Lio/grpc/internal/RetriableStream$Substream;->closed:Z

    .line 1066
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1068
    .local v0, "drainedSubstreams":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/RetriableStream$Substream;>;"
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1069
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 1070
    new-instance v10, Lio/grpc/internal/RetriableStream$State;

    iget-object v2, p0, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    iget-object v4, p0, Lio/grpc/internal/RetriableStream$State;->activeHedges:Ljava/util/Collection;

    iget-object v5, p0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-boolean v6, p0, Lio/grpc/internal/RetriableStream$State;->cancelled:Z

    iget-boolean v7, p0, Lio/grpc/internal/RetriableStream$State;->passThrough:Z

    iget-boolean v8, p0, Lio/grpc/internal/RetriableStream$State;->hedgingFrozen:Z

    iget v9, p0, Lio/grpc/internal/RetriableStream$State;->hedgingAttemptCount:I

    move-object v1, v10

    move-object v3, v0

    invoke-direct/range {v1 .. v9}, Lio/grpc/internal/RetriableStream$State;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/RetriableStream$Substream;ZZZI)V

    return-object v10

    .line 1074
    .end local v0    # "drainedSubstreams":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/RetriableStream$Substream;>;"
    :cond_0
    return-object p0
.end method

.method substreamDrained(Lio/grpc/internal/RetriableStream$Substream;)Lio/grpc/internal/RetriableStream$State;
    .locals 13
    .param p1, "substream"    # Lio/grpc/internal/RetriableStream$Substream;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .line 1032
    iget-boolean v0, p0, Lio/grpc/internal/RetriableStream$State;->passThrough:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Already passThrough"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1036
    iget-boolean v0, p1, Lio/grpc/internal/RetriableStream$Substream;->closed:Z

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    .local v0, "drainedSubstreams":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/RetriableStream$Substream;>;"
    goto :goto_0

    .line 1038
    .end local v0    # "drainedSubstreams":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/RetriableStream$Substream;>;"
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1040
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .restart local v0    # "drainedSubstreams":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/RetriableStream$Substream;>;"
    goto :goto_0

    .line 1042
    .end local v0    # "drainedSubstreams":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/RetriableStream$Substream;>;"
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/grpc/internal/RetriableStream$State;->drainedSubstreams:Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1043
    .restart local v0    # "drainedSubstreams":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/internal/RetriableStream$Substream;>;"
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1044
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 1047
    :goto_0
    iget-object v2, p0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    move v11, v4

    .line 1049
    .local v11, "passThrough":Z
    iget-object v4, p0, Lio/grpc/internal/RetriableStream$State;->buffer:Ljava/util/List;

    .line 1050
    .local v4, "buffer":Ljava/util/List;, "Ljava/util/List<Lio/grpc/internal/RetriableStream$BufferEntry;>;"
    if-eqz v11, :cond_4

    .line 1051
    if-ne v2, p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    const-string v2, "Another RPC attempt has already committed"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1053
    const/4 v4, 0x0

    move-object v1, v4

    goto :goto_3

    .line 1050
    :cond_4
    move-object v1, v4

    .line 1056
    .end local v4    # "buffer":Ljava/util/List;, "Ljava/util/List<Lio/grpc/internal/RetriableStream$BufferEntry;>;"
    .local v1, "buffer":Ljava/util/List;, "Ljava/util/List<Lio/grpc/internal/RetriableStream$BufferEntry;>;"
    :goto_3
    new-instance v12, Lio/grpc/internal/RetriableStream$State;

    iget-object v5, p0, Lio/grpc/internal/RetriableStream$State;->activeHedges:Ljava/util/Collection;

    iget-object v6, p0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    iget-boolean v7, p0, Lio/grpc/internal/RetriableStream$State;->cancelled:Z

    iget-boolean v9, p0, Lio/grpc/internal/RetriableStream$State;->hedgingFrozen:Z

    iget v10, p0, Lio/grpc/internal/RetriableStream$State;->hedgingAttemptCount:I

    move-object v2, v12

    move-object v3, v1

    move-object v4, v0

    move v8, v11

    invoke-direct/range {v2 .. v10}, Lio/grpc/internal/RetriableStream$State;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lio/grpc/internal/RetriableStream$Substream;ZZZI)V

    return-object v12
.end method
