.class public final Lokhttp3/internal/platform/Platform$Companion;
.super Ljava/lang/Object;
.source "Platform.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlatform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Platform.kt\nokhttp3/internal/platform/Platform$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,268:1\n673#2:269\n746#2,2:270\n1313#2:272\n1382#2,3:273\n*E\n*S KotlinDebug\n*F\n+ 1 Platform.kt\nokhttp3/internal/platform/Platform$Companion\n*L\n185#1:269\n185#1,2:270\n185#1:272\n185#1,3:273\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0011J\u0014\u0010\u0015\u001a\u00020\u00162\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0011J\u0008\u0010\u0017\u001a\u00020\u000fH\u0002J\u0008\u0010\u0018\u001a\u00020\u000fH\u0007J\u0010\u0010\u0019\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0008R\u0014\u0010\t\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0008R\u0014\u0010\n\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0008R\u0016\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\u000c0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lokhttp3/internal/platform/Platform$Companion;",
        "",
        "()V",
        "INFO",
        "",
        "WARN",
        "isBouncyCastlePreferred",
        "",
        "()Z",
        "isConscryptPreferred",
        "isOpenJSSEPreferred",
        "logger",
        "Ljava/util/logging/Logger;",
        "kotlin.jvm.PlatformType",
        "platform",
        "Lokhttp3/internal/platform/Platform;",
        "alpnProtocolNames",
        "",
        "",
        "protocols",
        "Lokhttp3/Protocol;",
        "concatLengthPrefixed",
        "",
        "findPlatform",
        "get",
        "resetForTests",
        "",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 169
    invoke-direct {p0}, Lokhttp3/internal/platform/Platform$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$findPlatform(Lokhttp3/internal/platform/Platform$Companion;)Lokhttp3/internal/platform/Platform;
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/platform/Platform$Companion;

    .line 169
    invoke-direct {p0}, Lokhttp3/internal/platform/Platform$Companion;->findPlatform()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    return-object v0
.end method

.method private final findPlatform()Lokhttp3/internal/platform/Platform;
    .locals 5

    .line 206
    sget-object v0, Lokhttp3/internal/platform/Android10Platform;->Companion:Lokhttp3/internal/platform/Android10Platform$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/platform/Android10Platform$Companion;->buildIfSupported()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    .line 208
    .local v0, "android10":Lokhttp3/internal/platform/Platform;
    if-eqz v0, :cond_0

    .line 209
    return-object v0

    .line 212
    :cond_0
    sget-object v1, Lokhttp3/internal/platform/AndroidPlatform;->Companion:Lokhttp3/internal/platform/AndroidPlatform$Companion;

    invoke-virtual {v1}, Lokhttp3/internal/platform/AndroidPlatform$Companion;->buildIfSupported()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    .line 214
    .local v1, "android":Lokhttp3/internal/platform/Platform;
    if-eqz v1, :cond_1

    .line 215
    return-object v1

    .line 218
    :cond_1
    move-object v2, p0

    check-cast v2, Lokhttp3/internal/platform/Platform$Companion;

    invoke-direct {v2}, Lokhttp3/internal/platform/Platform$Companion;->isConscryptPreferred()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    sget-object v2, Lokhttp3/internal/platform/ConscryptPlatform;->Companion:Lokhttp3/internal/platform/ConscryptPlatform$Companion;

    invoke-virtual {v2}, Lokhttp3/internal/platform/ConscryptPlatform$Companion;->buildIfSupported()Lokhttp3/internal/platform/ConscryptPlatform;

    move-result-object v2

    .line 221
    .local v2, "conscrypt":Lokhttp3/internal/platform/ConscryptPlatform;
    if-eqz v2, :cond_2

    .line 222
    move-object v3, v2

    check-cast v3, Lokhttp3/internal/platform/Platform;

    return-object v3

    .line 226
    .end local v2    # "conscrypt":Lokhttp3/internal/platform/ConscryptPlatform;
    :cond_2
    move-object v2, p0

    check-cast v2, Lokhttp3/internal/platform/Platform$Companion;

    invoke-direct {v2}, Lokhttp3/internal/platform/Platform$Companion;->isBouncyCastlePreferred()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    sget-object v2, Lokhttp3/internal/platform/BouncyCastlePlatform;->Companion:Lokhttp3/internal/platform/BouncyCastlePlatform$Companion;

    invoke-virtual {v2}, Lokhttp3/internal/platform/BouncyCastlePlatform$Companion;->buildIfSupported()Lokhttp3/internal/platform/BouncyCastlePlatform;

    move-result-object v2

    .line 229
    .local v2, "bc":Lokhttp3/internal/platform/BouncyCastlePlatform;
    if-eqz v2, :cond_3

    .line 230
    move-object v3, v2

    check-cast v3, Lokhttp3/internal/platform/Platform;

    return-object v3

    .line 234
    .end local v2    # "bc":Lokhttp3/internal/platform/BouncyCastlePlatform;
    :cond_3
    move-object v2, p0

    check-cast v2, Lokhttp3/internal/platform/Platform$Companion;

    invoke-direct {v2}, Lokhttp3/internal/platform/Platform$Companion;->isOpenJSSEPreferred()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 235
    sget-object v2, Lokhttp3/internal/platform/OpenJSSEPlatform;->Companion:Lokhttp3/internal/platform/OpenJSSEPlatform$Companion;

    invoke-virtual {v2}, Lokhttp3/internal/platform/OpenJSSEPlatform$Companion;->buildIfSupported()Lokhttp3/internal/platform/OpenJSSEPlatform;

    move-result-object v2

    .line 237
    .local v2, "openJSSE":Lokhttp3/internal/platform/OpenJSSEPlatform;
    if-eqz v2, :cond_4

    .line 238
    move-object v3, v2

    check-cast v3, Lokhttp3/internal/platform/Platform;

    return-object v3

    .line 242
    .end local v2    # "openJSSE":Lokhttp3/internal/platform/OpenJSSEPlatform;
    :cond_4
    sget-object v2, Lokhttp3/internal/platform/Jdk9Platform;->Companion:Lokhttp3/internal/platform/Jdk9Platform$Companion;

    invoke-virtual {v2}, Lokhttp3/internal/platform/Jdk9Platform$Companion;->buildIfSupported()Lokhttp3/internal/platform/Jdk9Platform;

    move-result-object v2

    .line 244
    .local v2, "jdk9":Lokhttp3/internal/platform/Jdk9Platform;
    if-eqz v2, :cond_5

    .line 245
    move-object v3, v2

    check-cast v3, Lokhttp3/internal/platform/Platform;

    return-object v3

    .line 249
    :cond_5
    sget-object v3, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;->Companion:Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$Companion;

    invoke-virtual {v3}, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$Companion;->buildIfSupported()Lokhttp3/internal/platform/Platform;

    move-result-object v3

    .line 251
    .local v3, "jdkWithJettyBoot":Lokhttp3/internal/platform/Platform;
    if-eqz v3, :cond_6

    move-object v4, v3

    goto :goto_0

    :cond_6
    new-instance v4, Lokhttp3/internal/platform/Platform;

    invoke-direct {v4}, Lokhttp3/internal/platform/Platform;-><init>()V

    :goto_0
    return-object v4
.end method

.method private final isBouncyCastlePreferred()Z
    .locals 2

    .line 201
    const-string v0, "okhttp.platform"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bouncycastle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final isConscryptPreferred()Z
    .locals 2

    .line 189
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "Security.getProviders()[0]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "preferredProvider":Ljava/lang/String;
    const-string v1, "Conscrypt"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private final isOpenJSSEPreferred()Z
    .locals 2

    .line 195
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "Security.getProviders()[0]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "preferredProvider":Ljava/lang/String;
    const-string v1, "OpenJSSE"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static synthetic resetForTests$default(Lokhttp3/internal/platform/Platform$Companion;Lokhttp3/internal/platform/Platform;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 180
    invoke-direct {p0}, Lokhttp3/internal/platform/Platform$Companion;->findPlatform()Lokhttp3/internal/platform/Platform;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lokhttp3/internal/platform/Platform$Companion;->resetForTests(Lokhttp3/internal/platform/Platform;)V

    return-void
.end method


# virtual methods
.method public final alpnProtocolNames(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .param p1, "protocols"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lokhttp3/Protocol;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "protocols"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 269
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 270
    .local v4, "$i$f$filterTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lokhttp3/Protocol;

    .local v7, "it":Lokhttp3/Protocol;
    const/4 v8, 0x0

    .line 185
    .local v8, "$i$a$-filter-Platform$Companion$alpnProtocolNames$1":I
    sget-object v9, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    if-eq v7, v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .end local v7    # "it":Lokhttp3/Protocol;
    .end local v8    # "$i$a$-filter-Platform$Companion$alpnProtocolNames$1":I
    :goto_1
    if-eqz v9, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterTo":I
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter":I
    check-cast v0, Ljava/lang/Iterable;

    .line 185
    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 272
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .restart local v2    # "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 273
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 274
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lokhttp3/Protocol;

    .restart local v7    # "it":Lokhttp3/Protocol;
    const/4 v8, 0x0

    .line 185
    .local v8, "$i$a$-map-Platform$Companion$alpnProtocolNames$2":I
    invoke-virtual {v7}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v7    # "it":Lokhttp3/Protocol;
    .end local v8    # "$i$a$-map-Platform$Companion$alpnProtocolNames$2":I
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 273
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    goto :goto_2

    .line 275
    :cond_3
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 185
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    return-object v0
.end method

.method public final concatLengthPrefixed(Ljava/util/List;)[B
    .locals 4
    .param p1, "protocols"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lokhttp3/Protocol;",
            ">;)[B"
        }
    .end annotation

    const-string v0, "protocols"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 260
    .local v0, "result":Lokio/Buffer;
    move-object v1, p0

    check-cast v1, Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v1, p1}, Lokhttp3/internal/platform/Platform$Companion;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 261
    .local v2, "protocol":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 262
    invoke-virtual {v0, v2}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    .line 260
    .end local v2    # "protocol":Ljava/lang/String;
    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {v0}, Lokio/Buffer;->readByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public final get()Lokhttp3/internal/platform/Platform;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 178
    invoke-static {}, Lokhttp3/internal/platform/Platform;->access$getPlatform$cp()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    return-object v0
.end method

.method public final resetForTests(Lokhttp3/internal/platform/Platform;)V
    .locals 1
    .param p1, "platform"    # Lokhttp3/internal/platform/Platform;

    const-string v0, "platform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-static {p1}, Lokhttp3/internal/platform/Platform;->access$setPlatform$cp(Lokhttp3/internal/platform/Platform;)V

    .line 182
    return-void
.end method
