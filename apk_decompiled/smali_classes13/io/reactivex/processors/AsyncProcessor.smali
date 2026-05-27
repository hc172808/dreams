.class public final Lio/reactivex/processors/AsyncProcessor;
.super Lio/reactivex/processors/FlowableProcessor;
.source "AsyncProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/processors/FlowableProcessor<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

.field static final TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;


# instance fields
.field error:Ljava/lang/Throwable;

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    sput-object v1, Lio/reactivex/processors/AsyncProcessor;->EMPTY:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 42
    new-array v0, v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    sput-object v0, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 68
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    invoke-direct {p0}, Lio/reactivex/processors/FlowableProcessor;-><init>()V

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->EMPTY:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 70
    return-void
.end method

.method public static create()Lio/reactivex/processors/AsyncProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/processors/AsyncProcessor<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 60
    new-instance v0, Lio/reactivex/processors/AsyncProcessor;

    invoke-direct {v0}, Lio/reactivex/processors/AsyncProcessor;-><init>()V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<",
            "TT;>;)Z"
        }
    .end annotation

    .line 177
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    .local p1, "ps":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 178
    .local v0, "a":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 179
    return v2

    .line 182
    :cond_0
    array-length v1, v0

    .line 184
    .local v1, "n":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 185
    .local v3, "b":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    aput-object p1, v3, v1

    .line 188
    iget-object v2, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    const/4 v2, 0x1

    return v2

    .line 191
    .end local v0    # "a":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    .end local v1    # "n":I
    .end local v3    # "b":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    :cond_1
    goto :goto_0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2

    .line 143
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->error:Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 250
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getValues()[Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 261
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/processors/AsyncProcessor;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 262
    .local v0, "v":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    goto :goto_0

    :cond_0
    new-array v2, v1, [Ljava/lang/Object;

    :goto_0
    return-object v2
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 276
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lio/reactivex/processors/AsyncProcessor;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 277
    .local v0, "v":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 278
    array-length v3, p1

    if-eqz v3, :cond_0

    .line 279
    aput-object v1, p1, v2

    .line 281
    :cond_0
    return-object p1

    .line 283
    :cond_1
    array-length v3, p1

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 284
    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 286
    :cond_2
    aput-object v0, p1, v2

    .line 287
    array-length v2, p1

    if-eq v2, v4, :cond_3

    .line 288
    aput-object v1, p1, v4

    .line 290
    :cond_3
    return-object p1
.end method

.method public hasComplete()Z
    .locals 2

    .line 137
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSubscribers()Z
    .locals 1

    .line 127
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasThrowable()Z
    .locals 2

    .line 132
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValue()Z
    .locals 2

    .line 240
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 5

    .line 109
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    .line 110
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    .line 113
    .local v0, "v":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 114
    .local v1, "array":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 115
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 116
    .local v4, "as":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    invoke-virtual {v4}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->onComplete()V

    .line 115
    .end local v4    # "as":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_1
    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 120
    .restart local v4    # "as":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    invoke-virtual {v4, v0}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->complete(Ljava/lang/Object;)V

    .line 119
    .end local v4    # "as":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 123
    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 94
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    .line 96
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 97
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    .line 100
    iput-object p1, p0, Lio/reactivex/processors/AsyncProcessor;->error:Ljava/lang/Throwable;

    .line 101
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 102
    .local v3, "as":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    invoke-virtual {v3, p1}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->onError(Ljava/lang/Throwable;)V

    .line 101
    .end local v3    # "as":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 84
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    .line 86
    return-void

    .line 88
    :cond_0
    iput-object p1, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 74
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/processors/AsyncProcessor;->TERMINATED:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    if-ne v0, v1, :cond_0

    .line 75
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 76
    return-void

    .line 79
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 80
    return-void
.end method

.method remove(Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 201
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    .local p1, "ps":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 202
    .local v0, "a":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    array-length v1, v0

    .line 203
    .local v1, "n":I
    if-nez v1, :cond_0

    .line 204
    return-void

    .line 207
    :cond_0
    const/4 v2, -0x1

    .line 208
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 209
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_1

    .line 210
    move v2, v3

    .line 211
    goto :goto_2

    .line 208
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 215
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 216
    return-void

    .line 221
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 222
    sget-object v3, Lio/reactivex/processors/AsyncProcessor;->EMPTY:[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .local v3, "b":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    goto :goto_3

    .line 224
    .end local v3    # "b":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    :cond_4
    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    .line 225
    .local v4, "b":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v3

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 228
    .end local v4    # "b":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    .restart local v3    # "b":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    :goto_3
    iget-object v4, p0, Lio/reactivex/processors/AsyncProcessor;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 229
    return-void

    .line 231
    .end local v0    # "a":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    .end local v1    # "n":I
    .end local v2    # "j":I
    .end local v3    # "b":[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "[Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    :cond_5
    goto :goto_0
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 148
    .local p0, "this":Lio/reactivex/processors/AsyncProcessor;, "Lio/reactivex/processors/AsyncProcessor<TT;>;"
    .local p1, "s":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    new-instance v0, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;

    invoke-direct {v0, p1, p0}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/processors/AsyncProcessor;)V

    .line 149
    .local v0, "as":Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;, "Lio/reactivex/processors/AsyncProcessor$AsyncSubscription<TT;>;"
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 150
    invoke-virtual {p0, v0}, Lio/reactivex/processors/AsyncProcessor;->add(Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v0}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 152
    invoke-virtual {p0, v0}, Lio/reactivex/processors/AsyncProcessor;->remove(Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object v1, p0, Lio/reactivex/processors/AsyncProcessor;->error:Ljava/lang/Throwable;

    .line 156
    .local v1, "ex":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 157
    invoke-interface {p1, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 159
    :cond_1
    iget-object v2, p0, Lio/reactivex/processors/AsyncProcessor;->value:Ljava/lang/Object;

    .line 160
    .local v2, "v":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_2

    .line 161
    invoke-virtual {v0, v2}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->complete(Ljava/lang/Object;)V

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {v0}, Lio/reactivex/processors/AsyncProcessor$AsyncSubscription;->onComplete()V

    .line 167
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    :cond_3
    :goto_0
    return-void
.end method
