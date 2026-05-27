.class public final Lio/reactivex/subjects/AsyncSubject;
.super Lio/reactivex/subjects/Subject;
.source "AsyncSubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/subjects/Subject<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;

.field static final TERMINATED:[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;


# instance fields
.field error:Ljava/lang/Throwable;

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/subjects/AsyncSubject$AsyncDisposable<",
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

    .line 114
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;

    sput-object v1, Lio/reactivex/subjects/AsyncSubject;->EMPTY:[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;

    .line 117
    new-array v0, v0, [Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;

    sput-object v0, Lio/reactivex/subjects/AsyncSubject;->TERMINATED:[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 143
    .local p0, "this":Lio/reactivex/subjects/AsyncSubject;, "Lio/reactivex/subjects/AsyncSubject<TT;>;"
    invoke-direct {p0}, Lio/reactivex/subjects/Subject;-><init>()V

    .line 144
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/subjects/AsyncSubject;->EMPTY:[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/subjects/AsyncSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 145
    return-void
.end method

.method public static create()Lio/reactivex/subjects/AsyncSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/subjects/AsyncSubject<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lio/reactivex/annotations/CheckReturnValue;
    .end annotation

    .line 135
    new-instance v0, Lio/reactivex/subjects/AsyncSubject;

    invoke-direct {v0}, Lio/reactivex/subjects/AsyncSubject;-><init>()V

    return-object v0
.end method


# virtual methods
.method add(Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/AsyncSubject$AsyncDisposable<",
            "TT;>;)Z"
        }
    .end annotation

    .line 248
    .local p0, "this":Lio/reactivex/subjects/AsyncSubject;, "Lio/reactivex/subjects/AsyncSubject<TT;>;"
    .local p1, "ps":Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;, "Lio/reactivex/subjects/AsyncSubject$AsyncDisposable<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/subjects/AsyncSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;

    .line 249
    .local v0, "a":[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;, "[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable<TT;>;"
    sget-object v1, Lio/reactivex/subjects/AsyncSubject;->TERMINATED:[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 250
    return v2

    .line 253
    :cond_0
    array-length v1, v0

    .line 255
    .local v1, "n":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;

    .line 256
    .local v3, "b":[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;, "[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable<TT;>;"
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    aput-object p1, v3, v1

    .line 259
    iget-object v2, p0, Lio/reactivex/subjects/AsyncSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    const/4 v2, 0x1

    return v2

    .line 262
    .end local v0    # "a":[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;, "[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable<TT;>;"
    .end local v1    # "n":I
    .end local v3    # "b":[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;, "[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable<TT;>;"
    :cond_1
    goto :goto_0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 2

    .line 214
    .local p0, "this":Lio/reactivex/subjects/AsyncSubject;, "Lio/reactivex/subjects/AsyncSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/AsyncSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/AsyncSubject;->TERMINATED:[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/AsyncSubject;->error:Ljava/lang/Throwable;

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

    .line 321
    .local p0, "this":Lio/reactivex/subjects/AsyncSubject;, "Lio/reactivex/subjects/AsyncSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/AsyncSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/AsyncSubject;->TERMINATED:[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/AsyncSubject;->value:Ljava/lang/Object;

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

    .line 332
    .local p0, "this":Lio/reactivex/subjects/AsyncSubject;, "Lio/reactivex/subjects/AsyncSubject<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/subjects/AsyncSubject;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 333
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

    .line 347
    .local p0, "this":Lio/reactivex/subjects/AsyncSubject;, "Lio/reactivex/subjects/AsyncSubject<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lio/reactivex/subjects/AsyncSubject;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 348
    .local v0, "v":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 349
    array-length v3, p1

    if-eqz v3, :cond_0

    .line 350
    aput-object v1, p1, v2

    .line 352
    :cond_0
    return-object p1

    .line 354
    :cond_1
    array-length v3, p1

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 355
    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 357
    :cond_2
    aput-object v0, p1, v2

    .line 358
    array-length v2, p1

    if-eq v2, v4, :cond_3

    .line 359
    aput-object v1, p1, v4

    .line 361
    :cond_3
    return-object p1
.end method

.method public hasComplete()Z
    .locals 2

    .line 209
    .local p0, "this":Lio/reactivex/subjects/AsyncSubject;, "Lio/reactivex/subjects/AsyncSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/AsyncSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/AsyncSubject;->TERMINATED:[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/AsyncSubject;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasObservers()Z
    .locals 1

    .line 199
    .local p0, "this":Lio/reactivex/subjects/AsyncSubject;, "Lio/reactivex/subjects/AsyncSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/AsyncSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;

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

    .line 204
    .local p0, "this":Lio/reactivex/subjects/AsyncSubject;, "Lio/reactivex/subjects/AsyncSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/AsyncSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/AsyncSubject;->TERMINATED:[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/AsyncSubject;->error:Ljava/lang/Throwable;

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

    .line 311
    .local p0, "this":Lio/reactivex/subjects/AsyncSubject;, "Lio/reactivex/subjects/AsyncSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/AsyncSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/AsyncSubject;->TERMINATED:[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/reactivex/subjects/AsyncSubject;->value:Ljava/lang/Object;

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

    .line 181
    .local p0, "this":Lio/reactivex/subjects/AsyncSubject;, "Lio/reactivex/subjects/AsyncSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/AsyncSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/AsyncSubject;->TERMINATED:[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;

    if-ne v0, v1, :cond_0

    .line 182
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/AsyncSubject;->value:Ljava/lang/Object;

    .line 185
    .local v0, "v":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lio/reactivex/subjects/AsyncSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;

    .line 186
    .local v1, "array":[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;, "[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable<TT;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 187
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 188
    .local v4, "as":Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;, "Lio/reactivex/subjects/AsyncSubject$AsyncDisposable<TT;>;"
    invoke-virtual {v4}, Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;->onComplete()V

    .line 187
    .end local v4    # "as":Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;, "Lio/reactivex/subjects/AsyncSubject$AsyncDisposable<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_1
    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 192
    .restart local v4    # "as":Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;, "Lio/reactivex/subjects/AsyncSubject$AsyncDisposable<TT;>;"
    invoke-virtual {v4, v0}, Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;->complete(Ljava/lang/Object;)V

    .line 191
    .end local v4    # "as":Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;, "Lio/reactivex/subjects/AsyncSubject$AsyncDisposable<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 195
    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 166
    .local p0, "this":Lio/reactivex/subjects/AsyncSubject;, "Lio/reactivex/subjects/AsyncSubject<TT;>;"
    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lio/reactivex/subjects/AsyncSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/AsyncSubject;->TERMINATED:[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;

    if-ne v0, v1, :cond_0

    .line 168
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 169
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/reactivex/subjects/AsyncSubject;->value:Ljava/lang/Object;

    .line 172
    iput-object p1, p0, Lio/reactivex/subjects/AsyncSubject;->error:Ljava/lang/Throwable;

    .line 173
    iget-object v0, p0, Lio/reactivex/subjects/AsyncSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 174
    .local v3, "as":Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;, "Lio/reactivex/subjects/AsyncSubject$AsyncDisposable<TT;>;"
    invoke-virtual {v3, p1}, Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;->onError(Ljava/lang/Throwable;)V

    .line 173
    .end local v3    # "as":Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;, "Lio/reactivex/subjects/AsyncSubject$AsyncDisposable<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
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

    .line 156
    .local p0, "this":Lio/reactivex/subjects/AsyncSubject;, "Lio/reactivex/subjects/AsyncSubject<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lio/reactivex/subjects/AsyncSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/AsyncSubject;->TERMINATED:[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;

    if-ne v0, v1, :cond_0

    .line 158
    return-void

    .line 160
    :cond_0
    iput-object p1, p0, Lio/reactivex/subjects/AsyncSubject;->value:Ljava/lang/Object;

    .line 161
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2
    .param p1, "s"    # Lio/reactivex/disposables/Disposable;

    .line 149
    .local p0, "this":Lio/reactivex/subjects/AsyncSubject;, "Lio/reactivex/subjects/AsyncSubject<TT;>;"
    iget-object v0, p0, Lio/reactivex/subjects/AsyncSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/subjects/AsyncSubject;->TERMINATED:[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;

    if-ne v0, v1, :cond_0

    .line 150
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 152
    :cond_0
    return-void
.end method

.method remove(Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/AsyncSubject$AsyncDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 272
    .local p0, "this":Lio/reactivex/subjects/AsyncSubject;, "Lio/reactivex/subjects/AsyncSubject<TT;>;"
    .local p1, "ps":Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;, "Lio/reactivex/subjects/AsyncSubject$AsyncDisposable<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/subjects/AsyncSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;

    .line 273
    .local v0, "a":[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;, "[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable<TT;>;"
    array-length v1, v0

    .line 274
    .local v1, "n":I
    if-nez v1, :cond_0

    .line 275
    return-void

    .line 278
    :cond_0
    const/4 v2, -0x1

    .line 279
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 280
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_1

    .line 281
    move v2, v3

    .line 282
    goto :goto_2

    .line 279
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 286
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 287
    return-void

    .line 292
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 293
    sget-object v3, Lio/reactivex/subjects/AsyncSubject;->EMPTY:[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;

    .local v3, "b":[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;, "[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable<TT;>;"
    goto :goto_3

    .line 295
    .end local v3    # "b":[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;, "[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable<TT;>;"
    :cond_4
    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;

    .line 296
    .local v4, "b":[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;, "[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable<TT;>;"
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v3

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 299
    .end local v4    # "b":[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;, "[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable<TT;>;"
    .restart local v3    # "b":[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;, "[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable<TT;>;"
    :goto_3
    iget-object v4, p0, Lio/reactivex/subjects/AsyncSubject;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 300
    return-void

    .line 302
    .end local v0    # "a":[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;, "[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable<TT;>;"
    .end local v1    # "n":I
    .end local v2    # "j":I
    .end local v3    # "b":[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;, "[Lio/reactivex/subjects/AsyncSubject$AsyncDisposable<TT;>;"
    :cond_5
    goto :goto_0
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 219
    .local p0, "this":Lio/reactivex/subjects/AsyncSubject;, "Lio/reactivex/subjects/AsyncSubject<TT;>;"
    .local p1, "s":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    new-instance v0, Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;

    invoke-direct {v0, p1, p0}, Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;-><init>(Lio/reactivex/Observer;Lio/reactivex/subjects/AsyncSubject;)V

    .line 220
    .local v0, "as":Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;, "Lio/reactivex/subjects/AsyncSubject$AsyncDisposable<TT;>;"
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 221
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/AsyncSubject;->add(Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {v0}, Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/AsyncSubject;->remove(Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object v1, p0, Lio/reactivex/subjects/AsyncSubject;->error:Ljava/lang/Throwable;

    .line 227
    .local v1, "ex":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 228
    invoke-interface {p1, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 230
    :cond_1
    iget-object v2, p0, Lio/reactivex/subjects/AsyncSubject;->value:Ljava/lang/Object;

    .line 231
    .local v2, "v":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_2

    .line 232
    invoke-virtual {v0, v2}, Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;->complete(Ljava/lang/Object;)V

    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {v0}, Lio/reactivex/subjects/AsyncSubject$AsyncDisposable;->onComplete()V

    .line 238
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    :cond_3
    :goto_0
    return-void
.end method
