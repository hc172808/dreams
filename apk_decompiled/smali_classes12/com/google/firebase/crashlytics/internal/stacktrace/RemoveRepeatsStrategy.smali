.class public Lcom/google/firebase/crashlytics/internal/stacktrace/RemoveRepeatsStrategy;
.super Ljava/lang/Object;
.source "RemoveRepeatsStrategy.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/stacktrace/StackTraceTrimmingStrategy;


# instance fields
.field private final maxRepetitions:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/stacktrace/RemoveRepeatsStrategy;-><init>(I)V

    .line 27
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxRepetitions"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/RemoveRepeatsStrategy;->maxRepetitions:I

    .line 38
    return-void
.end method

.method private static isRepeatingSequence([Ljava/lang/StackTraceElement;II)Z
    .locals 5
    .param p0, "stacktrace"    # [Ljava/lang/StackTraceElement;
    .param p1, "prevIndex"    # I
    .param p2, "currentIndex"    # I

    .line 98
    sub-int v0, p2, p1

    .line 100
    .local v0, "windowSize":I
    add-int v1, p2, v0

    array-length v2, p0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 101
    return v3

    .line 104
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 105
    add-int v2, p1, v1

    aget-object v2, p0, v2

    add-int v4, p2, v1

    aget-object v4, p0, v4

    invoke-virtual {v2, v4}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    return v3

    .line 104
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private static trimRepeats([Ljava/lang/StackTraceElement;I)[Ljava/lang/StackTraceElement;
    .locals 10
    .param p0, "stacktrace"    # [Ljava/lang/StackTraceElement;
    .param p1, "maxRepetitions"    # I

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v0, "mostRecentIndices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/StackTraceElement;Ljava/lang/Integer;>;"
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    .line 66
    .local v1, "buffer":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    .line 67
    .local v2, "trimmedLength":I
    const/4 v3, 0x1

    .line 68
    .local v3, "numRepeats":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_3

    .line 69
    move v5, v4

    .line 70
    .local v5, "currentIndex":I
    aget-object v6, p0, v4

    .line 71
    .local v6, "currentFrame":Ljava/lang/StackTraceElement;
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 72
    .local v7, "previousIndex":Ljava/lang/Integer;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {p0, v8, v4}, Lcom/google/firebase/crashlytics/internal/stacktrace/RemoveRepeatsStrategy;->isRepeatingSequence([Ljava/lang/StackTraceElement;II)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int v8, v4, v8

    .line 80
    .local v8, "windowSize":I
    if-ge v3, p1, :cond_1

    .line 81
    invoke-static {p0, v4, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    add-int/2addr v2, v8

    .line 83
    add-int/lit8 v3, v3, 0x1

    .line 85
    :cond_1
    add-int/lit8 v9, v8, -0x1

    add-int/2addr v4, v9

    goto :goto_2

    .line 74
    .end local v8    # "windowSize":I
    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 75
    aget-object v8, p0, v4

    aput-object v8, v1, v2

    .line 76
    add-int/lit8 v2, v2, 0x1

    .line 87
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .end local v5    # "currentIndex":I
    .end local v6    # "currentFrame":Ljava/lang/StackTraceElement;
    .end local v7    # "previousIndex":Ljava/lang/Integer;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 91
    .end local v4    # "i":I
    :cond_3
    new-array v4, v2, [Ljava/lang/StackTraceElement;

    .line 92
    .local v4, "trimmed":[Ljava/lang/StackTraceElement;
    array-length v5, v4

    const/4 v6, 0x0

    invoke-static {v1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    return-object v4
.end method


# virtual methods
.method public getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 3
    .param p1, "stacktrace"    # [Ljava/lang/StackTraceElement;

    .line 42
    iget v0, p0, Lcom/google/firebase/crashlytics/internal/stacktrace/RemoveRepeatsStrategy;->maxRepetitions:I

    invoke-static {p1, v0}, Lcom/google/firebase/crashlytics/internal/stacktrace/RemoveRepeatsStrategy;->trimRepeats([Ljava/lang/StackTraceElement;I)[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 43
    .local v0, "trimmed":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 44
    return-object v0

    .line 46
    :cond_0
    return-object p1
.end method
