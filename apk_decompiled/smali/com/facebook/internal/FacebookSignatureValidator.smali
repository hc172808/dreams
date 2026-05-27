.class public final Lcom/facebook/internal/FacebookSignatureValidator;
.super Ljava/lang/Object;
.source "FacebookSignatureValidator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFacebookSignatureValidator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FacebookSignatureValidator.kt\ncom/facebook/internal/FacebookSignatureValidator\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,71:1\n12410#2,2:72\n*E\n*S KotlinDebug\n*F\n+ 1 FacebookSignatureValidator.kt\ncom/facebook/internal/FacebookSignatureValidator\n*L\n63#1,2:72\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u000bj\u0008\u0012\u0004\u0012\u00020\u0004`\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/facebook/internal/FacebookSignatureValidator;",
        "",
        "()V",
        "FBF_HASH",
        "",
        "FBI_HASH",
        "FBL_HASH",
        "FBR2_HASH",
        "FBR_HASH",
        "MSR_HASH",
        "validAppSignatureHashes",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "validateSignature",
        "",
        "context",
        "Landroid/content/Context;",
        "packageName",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final FBF_HASH:Ljava/lang/String; = "2438bce1ddb7bd026d5ff89f598b3b5e5bb824b3"

.field private static final FBI_HASH:Ljava/lang/String; = "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc"

.field private static final FBL_HASH:Ljava/lang/String; = "df6b721c8b4d3b6eb44c861d4415007e5a35fc95"

.field private static final FBR2_HASH:Ljava/lang/String; = "cc2751449a350f668590264ed76692694a80308a"

.field private static final FBR_HASH:Ljava/lang/String; = "8a3c4b262d721acd49a4bf97d5213199c86fa2b9"

.field public static final INSTANCE:Lcom/facebook/internal/FacebookSignatureValidator;

.field private static final MSR_HASH:Ljava/lang/String; = "9b8f518b086098de3d77736f9458a3d2f6f95a37"

.field private static final validAppSignatureHashes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v0, Lcom/facebook/internal/FacebookSignatureValidator;

    invoke-direct {v0}, Lcom/facebook/internal/FacebookSignatureValidator;-><init>()V

    sput-object v0, Lcom/facebook/internal/FacebookSignatureValidator;->INSTANCE:Lcom/facebook/internal/FacebookSignatureValidator;

    .line 43
    const-string v1, "8a3c4b262d721acd49a4bf97d5213199c86fa2b9"

    const-string v2, "cc2751449a350f668590264ed76692694a80308a"

    const-string v3, "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc"

    const-string v4, "df6b721c8b4d3b6eb44c861d4415007e5a35fc95"

    const-string v5, "9b8f518b086098de3d77736f9458a3d2f6f95a37"

    const-string v6, "2438bce1ddb7bd026d5ff89f598b3b5e5bb824b3"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->hashSetOf([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/FacebookSignatureValidator;->validAppSignatureHashes:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final validateSignature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v1, p1

    const-string v0, "packageInfo.signatures"

    const-string v2, "context"

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "packageName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 48
    .local v2, "brand":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 49
    .local v4, "applicationFlags":I
    const-string v5, "brand"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "generic"

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v2, v5, v6, v7, v8}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_0

    .line 51
    return v7

    .line 54
    :cond_0
    nop

    .line 55
    nop

    .line 56
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v8, 0x40

    invoke-virtual {v5, v1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 55
    nop

    .line 59
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v8, :cond_5

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v8, v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_2

    goto :goto_3

    .line 63
    :cond_2
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v8

    .local v0, "$this$all$iv":[Ljava/lang/Object;
    const/4 v8, 0x0

    .line 72
    .local v8, "$i$f$all":I
    array-length v9, v0

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_4

    aget-object v11, v0, v10

    .local v11, "element$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "it":Landroid/content/pm/Signature;
    const/4 v13, 0x0

    .line 64
    .local v13, "$i$a$-all-FacebookSignatureValidator$validateSignature$1":I
    sget-object v14, Lcom/facebook/internal/FacebookSignatureValidator;->validAppSignatureHashes:Ljava/util/HashSet;

    check-cast v14, Ljava/lang/Iterable;

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v15

    const-string v7, "it.toByteArray()"

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15}, Lcom/facebook/internal/Utility;->sha1hash([B)Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v12    # "it":Landroid/content/pm/Signature;
    .end local v13    # "$i$a$-all-FacebookSignatureValidator$validateSignature$1":I
    if-nez v7, :cond_3

    goto :goto_2

    .end local v11    # "element$iv":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x1

    goto :goto_1

    .line 73
    :cond_4
    const/4 v6, 0x1

    .line 63
    .end local v0    # "$this$all$iv":[Ljava/lang/Object;
    .end local v8    # "$i$f$all":I
    :goto_2
    return v6

    .line 60
    :cond_5
    :goto_3
    return v6

    .line 66
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v6
.end method
