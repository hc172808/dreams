.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPublicSuffixDatabase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PublicSuffixDatabase.kt\nokhttp3/internal/publicsuffix/PublicSuffixDatabase\n*L\n1#1,330:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0002J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000f\u001a\u00020\u000cJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0008\u0010\u0012\u001a\u00020\u0011H\u0002J\u0016\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;",
        "",
        "()V",
        "listRead",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "publicSuffixExceptionListBytes",
        "",
        "publicSuffixListBytes",
        "readCompleteLatch",
        "Ljava/util/concurrent/CountDownLatch;",
        "findMatchingRule",
        "",
        "",
        "domainLabels",
        "getEffectiveTldPlusOne",
        "domain",
        "readTheList",
        "",
        "readTheListUninterruptibly",
        "setListBytes",
        "Companion",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

.field private static final EXCEPTION_MARKER:C = '!'

.field private static final PREVAILING_RULE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_SUFFIX_RESOURCE:Ljava/lang/String; = "publicsuffixes.gz"

.field private static final WILDCARD_LABEL:[B

.field private static final instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field private final listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private publicSuffixExceptionListBytes:[B

.field private publicSuffixListBytes:[B

.field private final readCompleteLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    .line 230
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x2a

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    .line 231
    const-string v0, "*"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:Ljava/util/List;

    .line 235
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .locals 1

    .line 35
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-object v0
.end method

.method public static final synthetic access$getPublicSuffixListBytes$p(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;)[B
    .locals 2
    .param p0, "$this"    # Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 35
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-nez v0, :cond_0

    const-string v1, "publicSuffixListBytes"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$setPublicSuffixListBytes$p(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;[B)V
    .locals 0
    .param p0, "$this"    # Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .param p1, "<set-?>"    # [B

    .line 35
    iput-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    return-void
.end method

.method private final findMatchingRule(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .param p1, "domainLabels"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheListUninterruptibly()V

    goto :goto_0

    .line 91
    :cond_0
    nop

    .line 92
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "_":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 95
    .end local v0    # "_":Ljava/lang/InterruptedException;
    :goto_0
    nop

    .line 96
    nop

    .line 98
    move-object v0, p0

    check-cast v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    iget-object v0, v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_12

    .line 103
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [[B

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_3

    move v5, v4

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "$i$a$-<init>-PublicSuffixDatabase$findMatchingRule$domainLabelsUtf8Bytes$1":I
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v9, "UTF_8"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v7, :cond_2

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    const-string v8, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v5    # "i":I
    .end local v6    # "$i$a$-<init>-PublicSuffixDatabase$findMatchingRule$domainLabelsUtf8Bytes$1":I
    aput-object v7, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .restart local v5    # "i":I
    .restart local v6    # "$i$a$-<init>-PublicSuffixDatabase$findMatchingRule$domainLabelsUtf8Bytes$1":I
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v5    # "i":I
    .end local v6    # "$i$a$-<init>-PublicSuffixDatabase$findMatchingRule$domainLabelsUtf8Bytes$1":I
    :cond_3
    move-object v0, v3

    check-cast v0, [[B

    .line 107
    .local v0, "domainLabelsUtf8Bytes":[[B
    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 108
    .local v4, "exactMatch":Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x0

    :goto_3
    const-string v7, "publicSuffixListBytes"

    if-ge v6, v5, :cond_6

    .line 109
    .local v6, "i":I
    sget-object v8, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    iget-object v9, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-nez v9, :cond_4

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-static {v8, v9, v0, v6}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->access$binarySearch(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;[B[[BI)Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, "rule":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 111
    move-object v4, v8

    .line 112
    goto :goto_4

    .line 108
    .end local v8    # "rule":Ljava/lang/String;
    :cond_5
    nop

    .end local v6    # "i":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 121
    :cond_6
    :goto_4
    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 122
    .local v5, "wildcardMatch":Ljava/lang/String;
    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    array-length v6, v6

    if-le v6, v2, :cond_9

    .line 123
    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[B

    .line 124
    .local v6, "labelsWithWildcard":[[B
    move-object v8, v6

    check-cast v8, [Ljava/lang/Object;

    array-length v8, v8

    sub-int/2addr v8, v2

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v8, :cond_9

    .line 125
    .local v9, "labelIndex":I
    sget-object v10, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    aput-object v10, v6, v9

    .line 126
    sget-object v10, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    iget-object v11, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-nez v11, :cond_7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-static {v10, v11, v6, v9}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->access$binarySearch(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;[B[[BI)Ljava/lang/String;

    move-result-object v10

    .line 127
    .local v10, "rule":Ljava/lang/String;
    if-eqz v10, :cond_8

    .line 128
    move-object v5, v10

    .line 129
    goto :goto_6

    .line 124
    .end local v10    # "rule":Ljava/lang/String;
    :cond_8
    nop

    .end local v9    # "labelIndex":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 135
    .end local v6    # "labelsWithWildcard":[[B
    :cond_9
    :goto_6
    check-cast v3, Ljava/lang/String;

    .line 136
    .local v3, "exception":Ljava/lang/String;
    if-eqz v5, :cond_c

    .line 137
    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    array-length v6, v6

    sub-int/2addr v6, v2

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v6, :cond_c

    .line 138
    .local v7, "labelIndex":I
    sget-object v8, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    iget-object v9, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    if-nez v9, :cond_a

    const-string v10, "publicSuffixExceptionListBytes"

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 139
    :cond_a
    nop

    .line 138
    invoke-static {v8, v9, v0, v7}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->access$binarySearch(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;[B[[BI)Ljava/lang/String;

    move-result-object v8

    .line 140
    .restart local v8    # "rule":Ljava/lang/String;
    if-eqz v8, :cond_b

    .line 141
    move-object v3, v8

    .line 142
    goto :goto_8

    .line 137
    .end local v8    # "rule":Ljava/lang/String;
    :cond_b
    nop

    .end local v7    # "labelIndex":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 147
    :cond_c
    :goto_8
    const/16 v6, 0x2e

    if-eqz v3, :cond_d

    .line 149
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x21

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 150
    move-object v7, v3

    check-cast v7, Ljava/lang/CharSequence;

    new-array v8, v2, [C

    aput-char v6, v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 151
    :cond_d
    if-nez v4, :cond_e

    if-nez v5, :cond_e

    .line 152
    sget-object v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:Ljava/util/List;

    return-object v1

    .line 153
    :cond_e
    nop

    .line 155
    if-eqz v4, :cond_f

    move-object v7, v4

    check-cast v7, Ljava/lang/CharSequence;

    new-array v8, v2, [C

    aput-char v6, v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_f

    goto :goto_9

    :cond_f
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 156
    .local v7, "exactRuleLabels":Ljava/util/List;
    :goto_9
    if-eqz v5, :cond_10

    move-object v8, v5

    check-cast v8, Ljava/lang/CharSequence;

    new-array v9, v2, [C

    aput-char v6, v9, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_10

    goto :goto_a

    :cond_10
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 158
    .local v1, "wildcardRuleLabels":Ljava/util/List;
    :goto_a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-le v2, v6, :cond_11

    .line 159
    move-object v2, v7

    goto :goto_b

    .line 161
    :cond_11
    move-object v2, v1

    .line 158
    :goto_b
    return-object v2

    .line 98
    .end local v0    # "domainLabelsUtf8Bytes":[[B
    .end local v1    # "wildcardRuleLabels":Ljava/util/List;
    .end local v3    # "exception":Ljava/lang/String;
    .end local v4    # "exactMatch":Ljava/lang/String;
    .end local v5    # "wildcardMatch":Ljava/lang/String;
    .end local v7    # "exactRuleLabels":Ljava/util/List;
    :cond_12
    const/4 v0, 0x0

    .line 99
    .local v0, "$i$a$-check-PublicSuffixDatabase$findMatchingRule$2":I
    nop

    .line 98
    .end local v0    # "$i$a$-check-PublicSuffixDatabase$findMatchingRule$2":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final readTheList()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [B

    .line 195
    .local v1, "publicSuffixListBytes":Ljava/lang/Object;
    move-object v2, v0

    check-cast v2, [B

    .line 197
    .local v2, "publicSuffixExceptionListBytes":Ljava/lang/Object;
    nop

    .line 198
    const-class v3, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    const-string v4, "publicsuffixes.gz"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 197
    nop

    .line 200
    .local v3, "resource":Ljava/io/InputStream;
    new-instance v4, Lokio/GzipSource;

    invoke-static {v3}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v5

    invoke-direct {v4, v5}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    check-cast v4, Lokio/Source;

    invoke-static {v4}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v4

    check-cast v4, Ljava/io/Closeable;

    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object v5, v4

    check-cast v5, Lokio/BufferedSource;

    .local v5, "bufferedSource":Lokio/BufferedSource;
    const/4 v6, 0x0

    .line 201
    .local v6, "$i$a$-use-PublicSuffixDatabase$readTheList$1":I
    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v7

    .line 202
    .local v7, "totalBytes":I
    int-to-long v8, v7

    invoke-interface {v5, v8, v9}, Lokio/BufferedSource;->readByteArray(J)[B

    move-result-object v8

    move-object v1, v8

    .line 204
    invoke-interface {v5}, Lokio/BufferedSource;->readInt()I

    move-result v8

    .line 205
    .local v8, "totalExceptionBytes":I
    int-to-long v9, v8

    invoke-interface {v5, v9, v10}, Lokio/BufferedSource;->readByteArray(J)[B

    move-result-object v9

    move-object v2, v9

    .line 206
    .end local v7    # "totalBytes":I
    .end local v8    # "totalExceptionBytes":I
    nop

    .end local v5    # "bufferedSource":Lokio/BufferedSource;
    .end local v6    # "$i$a$-use-PublicSuffixDatabase$readTheList$1":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 200
    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 208
    monitor-enter p0

    const/4 v0, 0x0

    .line 209
    .local v0, "$i$a$-synchronized-PublicSuffixDatabase$readTheList$2":I
    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iput-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 210
    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iput-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 211
    .end local v0    # "$i$a$-synchronized-PublicSuffixDatabase$readTheList$2":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    monitor-exit p0

    .line 213
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 214
    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 200
    :catchall_1
    move-exception v0

    .end local v1    # "publicSuffixListBytes":Ljava/lang/Object;
    .end local v2    # "publicSuffixExceptionListBytes":Ljava/lang/Object;
    .end local v3    # "resource":Ljava/io/InputStream;
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .restart local v1    # "publicSuffixListBytes":Ljava/lang/Object;
    .restart local v2    # "publicSuffixExceptionListBytes":Ljava/lang/Object;
    .restart local v3    # "resource":Ljava/io/InputStream;
    :catchall_2
    move-exception v5

    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5

    .line 198
    .end local v3    # "resource":Ljava/io/InputStream;
    :cond_2
    return-void
.end method

.method private final readTheListUninterruptibly()V
    .locals 6

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "interrupted":Z
    nop

    .line 173
    :goto_0
    nop

    .line 174
    nop

    .line 175
    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheList()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    nop

    .line 186
    if-eqz v0, :cond_0

    .line 187
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    return-void

    .line 189
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v2, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v2}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    const-string v3, "Failed to read public suffix list"

    const/4 v4, 0x5

    move-object v5, v1

    check-cast v5, Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4, v5}, Lokhttp3/internal/platform/Platform;->log(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    nop

    .line 186
    if-eqz v0, :cond_1

    .line 187
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-void

    .line 177
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 178
    .local v1, "_":Ljava/io/InterruptedIOException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    const/4 v0, 0x1

    .line 183
    .end local v1    # "_":Ljava/io/InterruptedIOException;
    nop

    .line 173
    goto :goto_0

    .line 186
    :goto_1
    if-eqz v0, :cond_2

    .line 187
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw v1
.end method


# virtual methods
.method public final getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "domain"    # Ljava/lang/String;

    move-object/from16 v0, p1

    const-string v1, "domain"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-static/range {p1 .. p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "unicodeDomain":Ljava/lang/String;
    const-string v2, "unicodeDomain"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    new-array v4, v2, [C

    const/4 v9, 0x0

    const/16 v10, 0x2e

    aput-char v10, v4, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 71
    .local v3, "domainLabels":Ljava/util/List;
    move-object/from16 v4, p0

    invoke-direct {v4, v3}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->findMatchingRule(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 72
    .local v5, "rule":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0x21

    if-ne v6, v7, :cond_0

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_0

    .line 73
    const/4 v2, 0x0

    return-object v2

    .line 76
    :cond_0
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_1

    .line 78
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v6, v7

    goto :goto_0

    .line 81
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v7, v2

    sub-int/2addr v6, v7

    .line 76
    :goto_0
    nop

    .line 84
    .local v6, "firstLabelOffset":I
    move-object v11, v0

    check-cast v11, Ljava/lang/CharSequence;

    new-array v12, v2, [C

    aput-char v10, v12, v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/sequences/SequencesKt;->drop(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    move-result-object v7

    const-string v2, "."

    move-object v8, v2

    check-cast v8, Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x3e

    const/4 v15, 0x0

    invoke-static/range {v7 .. v15}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final setListBytes([B[B)V
    .locals 2
    .param p1, "publicSuffixListBytes"    # [B
    .param p2, "publicSuffixExceptionListBytes"    # [B

    const-string v0, "publicSuffixListBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publicSuffixExceptionListBytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iput-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 222
    iput-object p2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 223
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 224
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 225
    return-void
.end method
