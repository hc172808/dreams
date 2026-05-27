.class final Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "_Sequences.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/SequencesKt___SequencesKt;->runningReduceIndexed(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function3;)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-TS;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0008\u0008\u0001\u0010\u0003*\u0002H\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "S",
        "T",
        "Lkotlin/sequences/SequenceScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlin.sequences.SequencesKt___SequencesKt$runningReduceIndexed$1"
    f = "_Sequences.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x86e,
        0x872
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence",
        "iterator",
        "accumulator",
        "$this$sequence",
        "iterator",
        "accumulator",
        "index"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $operation:Lkotlin/jvm/functions/Function3;

.field final synthetic $this_runningReduceIndexed:Lkotlin/sequences/Sequence;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlin/sequences/SequenceScope;


# direct methods
.method constructor <init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->$this_runningReduceIndexed:Lkotlin/sequences/Sequence;

    iput-object p2, p0, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->$operation:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;

    iget-object v1, p0, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->$this_runningReduceIndexed:Lkotlin/sequences/Sequence;

    iget-object v2, p0, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->$operation:Lkotlin/jvm/functions/Function3;

    invoke-direct {v0, v1, v2, p2}, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    move-object v1, p1

    check-cast v1, Lkotlin/sequences/SequenceScope;

    move-object v1, p1

    check-cast v1, Lkotlin/sequences/SequenceScope;

    iput-object v1, v0, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->p$:Lkotlin/sequences/SequenceScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 2154
    iget v1, p0, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 2165
    .end local p0    # "this":Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2154
    .restart local p0    # "this":Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;
    :pswitch_0
    move-object v1, v2

    .local v1, "$this$sequence":Lkotlin/sequences/SequenceScope;
    move-object v3, v2

    .local v2, "iterator":Ljava/util/Iterator;
    .local v3, "accumulator":Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "index":I
    iget v4, p0, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->I$0:I

    iget-object v3, p0, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->L$2:Ljava/lang/Object;

    iget-object v5, p0, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->L$1:Ljava/lang/Object;

    move-object v2, v5

    check-cast v2, Ljava/util/Iterator;

    iget-object v5, p0, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->L$0:Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p0

    goto :goto_2

    .end local v1    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v3    # "accumulator":Ljava/lang/Object;
    .end local v4    # "index":I
    :pswitch_1
    move-object v1, v2

    .restart local v1    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    move-object v3, v2

    .restart local v2    # "iterator":Ljava/util/Iterator;
    .restart local v3    # "accumulator":Ljava/lang/Object;
    iget-object v3, p0, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->L$2:Ljava/lang/Object;

    iget-object v4, p0, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->L$1:Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, p0, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->L$0:Ljava/lang/Object;

    move-object v1, v4

    check-cast v1, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v3    # "accumulator":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->p$:Lkotlin/sequences/SequenceScope;

    .line 2155
    .restart local v1    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    iget-object v2, p0, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->$this_runningReduceIndexed:Lkotlin/sequences/Sequence;

    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2156
    .restart local v2    # "iterator":Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2157
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2158
    .restart local v3    # "accumulator":Ljava/lang/Object;
    iput-object v1, p0, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->L$0:Ljava/lang/Object;

    iput-object v2, p0, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->L$1:Ljava/lang/Object;

    iput-object v3, p0, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->L$2:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p0, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->label:I

    invoke-virtual {v1, v3, p0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_0

    .line 2154
    return-object v0

    .line 2159
    :cond_0
    :goto_0
    const/4 v4, 0x1

    move-object v5, p0

    .line 2160
    .end local p0    # "this":Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;
    .restart local v4    # "index":I
    .local v5, "this":Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2161
    iget-object v6, v5, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->$operation:Lkotlin/jvm/functions/Function3;

    add-int/lit8 v7, v4, 0x1

    .end local v4    # "index":I
    .local v7, "index":I
    if-gez v4, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v4, v3, v8}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2162
    iput-object v1, v5, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->L$0:Ljava/lang/Object;

    iput-object v2, v5, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->L$1:Ljava/lang/Object;

    iput-object v3, v5, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->L$2:Ljava/lang/Object;

    iput v7, v5, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->I$0:I

    const/4 v4, 0x2

    iput v4, v5, Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;->label:I

    invoke-virtual {v1, v3, v5}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_2

    .line 2154
    return-object v0

    .line 2162
    :cond_2
    move v4, v7

    .line 2160
    .end local v7    # "index":I
    .restart local v4    # "index":I
    :goto_2
    goto :goto_1

    .line 2156
    .end local v3    # "accumulator":Ljava/lang/Object;
    .end local v4    # "index":I
    .end local v5    # "this":Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;
    :cond_3
    move-object v5, p0

    .line 2165
    .end local v2    # "iterator":Ljava/util/Iterator;
    .restart local v5    # "this":Lkotlin/sequences/SequencesKt___SequencesKt$runningReduceIndexed$1;
    :cond_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
