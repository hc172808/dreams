.class public final Lcom/google/android/datatransport/runtime/retries/Retries;
.super Ljava/lang/Object;
.source "Retries.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static retry(ILjava/lang/Object;Lcom/google/android/datatransport/runtime/retries/Function;Lcom/google/android/datatransport/runtime/retries/RetryStrategy;)Ljava/lang/Object;
    .locals 2
    .param p0, "maxAttempts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TInput:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            "TException:",
            "Ljava/lang/Throwable;",
            ">(ITTInput;",
            "Lcom/google/android/datatransport/runtime/retries/Function<",
            "TTInput;TTResult;TTException;>;",
            "Lcom/google/android/datatransport/runtime/retries/RetryStrategy<",
            "TTInput;TTResult;>;)TTResult;^TTException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 49
    .local p1, "input":Ljava/lang/Object;, "TTInput;"
    .local p2, "function":Lcom/google/android/datatransport/runtime/retries/Function;, "Lcom/google/android/datatransport/runtime/retries/Function<TTInput;TTResult;TTException;>;"
    .local p3, "retryStrategy":Lcom/google/android/datatransport/runtime/retries/RetryStrategy;, "Lcom/google/android/datatransport/runtime/retries/RetryStrategy<TTInput;TTResult;>;"
    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    .line 50
    invoke-interface {p2, p1}, Lcom/google/android/datatransport/runtime/retries/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 54
    :cond_0
    :goto_0
    invoke-interface {p2, p1}, Lcom/google/android/datatransport/runtime/retries/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 55
    .local v1, "result":Ljava/lang/Object;, "TTResult;"
    invoke-interface {p3, p1, v1}, Lcom/google/android/datatransport/runtime/retries/RetryStrategy;->shouldRetry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 57
    if-eqz p1, :cond_2

    add-int/lit8 p0, p0, -0x1

    if-ge p0, v0, :cond_1

    goto :goto_1

    .line 60
    .end local v1    # "result":Ljava/lang/Object;, "TTResult;"
    :cond_1
    goto :goto_0

    .line 58
    .restart local v1    # "result":Ljava/lang/Object;, "TTResult;"
    :cond_2
    :goto_1
    return-object v1
.end method
