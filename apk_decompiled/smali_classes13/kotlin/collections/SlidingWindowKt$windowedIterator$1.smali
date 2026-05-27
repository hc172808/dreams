.class final Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SlidingWindow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/SlidingWindowKt;->windowedIterator(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;
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
        "-",
        "Ljava/util/List<",
        "+TT;>;>;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlin/sequences/SequenceScope;",
        "",
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
    c = "kotlin.collections.SlidingWindowKt$windowedIterator$1"
    f = "SlidingWindow.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x4
    }
    l = {
        0x22,
        0x28,
        0x31,
        0x37,
        0x3a
    }
    m = "invokeSuspend"
    n = {
        "$this$iterator",
        "bufferInitialCapacity",
        "gap",
        "buffer",
        "skip",
        "e",
        "$this$iterator",
        "bufferInitialCapacity",
        "gap",
        "buffer",
        "skip",
        "$this$iterator",
        "bufferInitialCapacity",
        "gap",
        "buffer",
        "e",
        "$this$iterator",
        "bufferInitialCapacity",
        "gap",
        "buffer",
        "$this$iterator",
        "bufferInitialCapacity",
        "gap",
        "buffer"
    }
    s = {
        "L$0",
        "I$0",
        "I$1",
        "L$1",
        "I$2",
        "L$2",
        "L$0",
        "I$0",
        "I$1",
        "L$1",
        "I$2",
        "L$0",
        "I$0",
        "I$1",
        "L$1",
        "L$2",
        "L$0",
        "I$0",
        "I$1",
        "L$1",
        "L$0",
        "I$0",
        "I$1",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $iterator:Ljava/util/Iterator;

.field final synthetic $partialWindows:Z

.field final synthetic $reuseBuffer:Z

.field final synthetic $size:I

.field final synthetic $step:I

.field I$0:I

.field I$1:I

.field I$2:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlin/sequences/SequenceScope;


# direct methods
.method constructor <init>(IILjava/util/Iterator;ZZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput p1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    iput p2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    iput-object p3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    iput-boolean p4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    iput-boolean p5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;

    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    iget v3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    iget-object v4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    iget-boolean v5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    iget-boolean v6, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;-><init>(IILjava/util/Iterator;ZZLkotlin/coroutines/Continuation;)V

    move-object v1, p1

    check-cast v1, Lkotlin/sequences/SequenceScope;

    move-object v1, p1

    check-cast v1, Lkotlin/sequences/SequenceScope;

    iput-object v1, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->p$:Lkotlin/sequences/SequenceScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 24
    iget v1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    .line 61
    .end local p0    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    .restart local p0    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    :pswitch_0
    move-object v0, v3

    .local v0, "$this$iterator":Lkotlin/sequences/SequenceScope;
    move v1, v2

    .local v1, "gap":I
    .local v2, "bufferInitialCapacity":I
    .local v3, "buffer":Lkotlin/collections/RingBuffer;
    iget-object v4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    move-object v3, v4

    check-cast v3, Lkotlin/collections/RingBuffer;

    iget v1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iget-object v4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, p0

    goto/16 :goto_c

    .end local v0    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local v1    # "gap":I
    .end local v2    # "bufferInitialCapacity":I
    .end local v3    # "buffer":Lkotlin/collections/RingBuffer;
    :pswitch_1
    move-object v1, v3

    .local v1, "$this$iterator":Lkotlin/sequences/SequenceScope;
    move v5, v2

    .restart local v2    # "bufferInitialCapacity":I
    .restart local v3    # "buffer":Lkotlin/collections/RingBuffer;
    .local v5, "gap":I
    iget-object v6, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    move-object v3, v6

    check-cast v3, Lkotlin/collections/RingBuffer;

    iget v5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iget-object v6, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    move-object v1, v6

    check-cast v1, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, p0

    move v6, v5

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_b

    .end local v1    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local v2    # "bufferInitialCapacity":I
    .end local v3    # "buffer":Lkotlin/collections/RingBuffer;
    .end local v5    # "gap":I
    :pswitch_2
    move-object v1, v3

    .restart local v1    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    move v5, v2

    .local v5, "e":Ljava/lang/Object;
    move v6, v2

    .restart local v2    # "bufferInitialCapacity":I
    .restart local v3    # "buffer":Lkotlin/collections/RingBuffer;
    .local v6, "gap":I
    iget-object v7, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    iget-object v8, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    move-object v3, v8

    check-cast v3, Lkotlin/collections/RingBuffer;

    iget v6, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iget-object v8, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    move-object v1, v8

    check-cast v1, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v5

    move-object v5, p0

    goto/16 :goto_7

    .end local v1    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local v2    # "bufferInitialCapacity":I
    .end local v3    # "buffer":Lkotlin/collections/RingBuffer;
    .end local v5    # "e":Ljava/lang/Object;
    .end local v6    # "gap":I
    :pswitch_3
    move-object v0, v3

    .restart local v0    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    move v1, v2

    .local v1, "skip":I
    move v4, v2

    .restart local v2    # "bufferInitialCapacity":I
    .local v3, "buffer":Ljava/util/ArrayList;
    .local v4, "gap":I
    iget v1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$2:I

    iget-object v5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    move-object v3, v5

    check-cast v3, Ljava/util/ArrayList;

    iget v4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iget-object v5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, p0

    goto/16 :goto_4

    .end local v0    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local v1    # "skip":I
    .end local v2    # "bufferInitialCapacity":I
    .end local v3    # "buffer":Ljava/util/ArrayList;
    .end local v4    # "gap":I
    :pswitch_4
    move-object v1, v3

    .local v1, "$this$iterator":Lkotlin/sequences/SequenceScope;
    move v5, v2

    .local v5, "skip":I
    move v6, v2

    .restart local v2    # "bufferInitialCapacity":I
    .restart local v6    # "gap":I
    move-object v7, v3

    .restart local v3    # "buffer":Ljava/util/ArrayList;
    .local v7, "e":Ljava/lang/Object;
    iget-object v8, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v7, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    iget v5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$2:I

    iget-object v9, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    move-object v3, v9

    check-cast v3, Ljava/util/ArrayList;

    iget v6, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iget-object v9, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    move-object v1, v9

    check-cast v1, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v7

    move-object v7, p0

    goto/16 :goto_1

    .end local v1    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local v2    # "bufferInitialCapacity":I
    .end local v3    # "buffer":Ljava/util/ArrayList;
    .end local v5    # "skip":I
    .end local v6    # "gap":I
    .end local v7    # "e":Ljava/lang/Object;
    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->p$:Lkotlin/sequences/SequenceScope;

    .line 25
    .restart local v1    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    const/16 v3, 0x400

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v2

    .line 26
    .restart local v2    # "bufferInitialCapacity":I
    iget v3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    iget v5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    sub-int/2addr v3, v5

    .line 27
    .local v3, "gap":I
    if-ltz v3, :cond_7

    .line 28
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .local v5, "buffer":Ljava/util/ArrayList;
    const/4 v6, 0x0

    .line 30
    .local v6, "skip":I
    iget-object v7, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    move-object v8, v7

    move-object v7, p0

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    move-object v13, v5

    move v5, v3

    move-object v3, v13

    .end local v1    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local p0    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .restart local v0    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .local v3, "buffer":Ljava/util/ArrayList;
    .local v5, "gap":I
    .local v7, "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 31
    .local v9, "e":Ljava/lang/Object;
    if-lez v6, :cond_0

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 32
    :cond_0
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget v11, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    if-ne v10, v11, :cond_3

    .line 34
    iput-object v0, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput v2, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput v5, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    iput-object v3, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput v6, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$2:I

    iput-object v9, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    iput-object v8, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    iput v4, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v0, v3, v7}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_1

    .line 24
    return-object v1

    .line 34
    :cond_1
    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    move v13, v6

    move v6, v5

    move v5, v13

    .line 35
    .end local v0    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .restart local v1    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .local v5, "skip":I
    .local v6, "gap":I
    :goto_1
    iget-boolean v10, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    if-eqz v10, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    iget v11, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v10

    .line 36
    :goto_2
    move v5, v6

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    move v13, v6

    move v5, v13

    .line 30
    .end local v1    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local v9    # "e":Ljava/lang/Object;
    .restart local v0    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .local v5, "gap":I
    .local v6, "skip":I
    :cond_3
    :goto_3
    goto :goto_0

    .line 39
    :cond_4
    move-object v8, v3

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v4, v8

    if-eqz v4, :cond_12

    .line 40
    iget-boolean v4, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    if-nez v4, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v8, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    if-ne v4, v8, :cond_12

    :cond_5
    iput-object v0, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput v2, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput v5, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    iput-object v3, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput v6, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$2:I

    const/4 v4, 0x2

    iput v4, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v0, v3, v7}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_6

    .line 24
    return-object v1

    .line 40
    :cond_6
    move v4, v5

    move v1, v6

    .end local v5    # "gap":I
    .end local v6    # "skip":I
    .local v1, "skip":I
    .restart local v4    # "gap":I
    :goto_4
    goto/16 :goto_d

    .line 43
    .end local v0    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local v4    # "gap":I
    .end local v7    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .local v1, "$this$iterator":Lkotlin/sequences/SequenceScope;
    .local v3, "gap":I
    :cond_7
    new-instance v5, Lkotlin/collections/RingBuffer;

    invoke-direct {v5, v2}, Lkotlin/collections/RingBuffer;-><init>(I)V

    .line 44
    .local v5, "buffer":Lkotlin/collections/RingBuffer;
    iget-object v6, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    move-object v7, v6

    move v6, v3

    move-object v3, v5

    move-object v5, p0

    .local v3, "buffer":Lkotlin/collections/RingBuffer;
    .local v5, "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .local v6, "gap":I
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 45
    .local v8, "e":Ljava/lang/Object;
    invoke-virtual {v3, v8}, Lkotlin/collections/RingBuffer;->add(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v3}, Lkotlin/collections/RingBuffer;->isFull()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 47
    invoke-virtual {v3}, Lkotlin/collections/RingBuffer;->size()I

    move-result v9

    iget v10, v5, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    if-ge v9, v10, :cond_8

    invoke-virtual {v3, v10}, Lkotlin/collections/RingBuffer;->expanded(I)Lkotlin/collections/RingBuffer;

    move-result-object v3

    goto :goto_8

    .line 49
    :cond_8
    iget-boolean v9, v5, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    if-eqz v9, :cond_9

    move-object v9, v3

    check-cast v9, Ljava/util/List;

    goto :goto_6

    :cond_9
    new-instance v9, Ljava/util/ArrayList;

    move-object v10, v3

    check-cast v10, Ljava/util/Collection;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v9, Ljava/util/List;

    :goto_6
    iput-object v1, v5, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput v2, v5, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput v6, v5, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    iput-object v3, v5, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput-object v8, v5, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    iput-object v7, v5, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    const/4 v10, 0x3

    iput v10, v5, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v1, v9, v5}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v0, :cond_a

    .line 24
    return-object v0

    .line 50
    :cond_a
    :goto_7
    iget v9, v5, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    invoke-virtual {v3, v9}, Lkotlin/collections/RingBuffer;->removeFirst(I)V

    .line 44
    .end local v8    # "e":Ljava/lang/Object;
    :cond_b
    :goto_8
    goto :goto_5

    .line 53
    :cond_c
    iget-boolean v7, v5, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    if-eqz v7, :cond_11

    move-object v7, v5

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    .line 54
    .end local v1    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local v5    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .restart local v0    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .restart local v7    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    :goto_9
    invoke-virtual {v3}, Lkotlin/collections/RingBuffer;->size()I

    move-result v5

    iget v8, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    if-le v5, v8, :cond_f

    .line 55
    iget-boolean v5, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    if-eqz v5, :cond_d

    move-object v5, v3

    check-cast v5, Ljava/util/List;

    goto :goto_a

    :cond_d
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v3

    check-cast v8, Ljava/util/Collection;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v5, Ljava/util/List;

    :goto_a
    iput-object v0, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput v2, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput v6, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    iput-object v3, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    const/4 v8, 0x4

    iput v8, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v0, v5, v7}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_e

    .line 24
    return-object v1

    .line 56
    :cond_e
    :goto_b
    iget v5, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    invoke-virtual {v3, v5}, Lkotlin/collections/RingBuffer;->removeFirst(I)V

    .line 54
    goto :goto_9

    .line 58
    :cond_f
    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v4, v5

    if-eqz v4, :cond_12

    iput-object v0, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput v2, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput v6, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    iput-object v3, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    const/4 v4, 0x5

    iput v4, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v0, v3, v7}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_10

    .line 24
    return-object v1

    .line 58
    :cond_10
    move v1, v6

    .line 60
    .end local v6    # "gap":I
    .local v1, "gap":I
    :goto_c
    goto :goto_d

    .line 53
    .end local v0    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local v7    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .local v1, "$this$iterator":Lkotlin/sequences/SequenceScope;
    .restart local v5    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .restart local v6    # "gap":I
    :cond_11
    move-object v0, v1

    move-object v7, v5

    .line 61
    .end local v1    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local v2    # "bufferInitialCapacity":I
    .end local v3    # "buffer":Lkotlin/collections/RingBuffer;
    .end local v5    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .end local v6    # "gap":I
    .restart local v0    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .restart local v7    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    :cond_12
    :goto_d
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
