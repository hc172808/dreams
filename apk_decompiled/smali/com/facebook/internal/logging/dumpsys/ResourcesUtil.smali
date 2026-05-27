.class public final Lcom/facebook/internal/logging/dumpsys/ResourcesUtil;
.super Ljava/lang/Object;
.source "ResourcesUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u001a\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u001a\u0010\n\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0006H\u0002\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/facebook/internal/logging/dumpsys/ResourcesUtil;",
        "",
        "()V",
        "getFallbackIdString",
        "",
        "resourceId",
        "",
        "getIdString",
        "r",
        "Landroid/content/res/Resources;",
        "getIdStringQuietly",
        "getResourcePackageId",
        "id",
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
.field public static final INSTANCE:Lcom/facebook/internal/logging/dumpsys/ResourcesUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/facebook/internal/logging/dumpsys/ResourcesUtil;

    invoke-direct {v0}, Lcom/facebook/internal/logging/dumpsys/ResourcesUtil;-><init>()V

    sput-object v0, Lcom/facebook/internal/logging/dumpsys/ResourcesUtil;->INSTANCE:Lcom/facebook/internal/logging/dumpsys/ResourcesUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getFallbackIdString(I)Ljava/lang/String;
    .locals 2
    .param p1, "resourceId"    # I

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getIdString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 7
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 38
    if-nez p0, :cond_0

    .line 39
    sget-object v0, Lcom/facebook/internal/logging/dumpsys/ResourcesUtil;->INSTANCE:Lcom/facebook/internal/logging/dumpsys/ResourcesUtil;

    invoke-direct {v0, p1}, Lcom/facebook/internal/logging/dumpsys/ResourcesUtil;->getFallbackIdString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    .local v0, "prefix":Ljava/lang/String;
    const/4 v1, 0x0

    .line 43
    .local v1, "prefixSeparator":Ljava/lang/String;
    sget-object v2, Lcom/facebook/internal/logging/dumpsys/ResourcesUtil;->INSTANCE:Lcom/facebook/internal/logging/dumpsys/ResourcesUtil;

    invoke-direct {v2, p1}, Lcom/facebook/internal/logging/dumpsys/ResourcesUtil;->getResourcePackageId(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 49
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "r.getResourcePackageName(resourceId)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    .line 50
    const-string v1, ":"

    goto :goto_0

    .line 45
    :pswitch_0
    const-string v0, ""

    .line 46
    const-string v1, ""

    .line 52
    :goto_0
    nop

    .line 53
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "typeName":Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "entryName":Ljava/lang/String;
    nop

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    .line 56
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 55
    nop

    .line 58
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sb.toString()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v5

    :pswitch_data_0
    .packed-switch 0x7f
        :pswitch_0
    .end packed-switch
.end method

.method public static final getIdStringQuietly(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 2
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 28
    nop

    .line 29
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/internal/logging/dumpsys/ResourcesUtil;->getIdString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    sget-object v1, Lcom/facebook/internal/logging/dumpsys/ResourcesUtil;->INSTANCE:Lcom/facebook/internal/logging/dumpsys/ResourcesUtil;

    invoke-direct {v1, p1}, Lcom/facebook/internal/logging/dumpsys/ResourcesUtil;->getFallbackIdString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 28
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    return-object v0
.end method

.method private final getResourcePackageId(I)I
    .locals 1
    .param p1, "id"    # I

    .line 72
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
