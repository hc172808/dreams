.class public final enum Lcom/payu/custombrowser/util/g$j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/util/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/payu/custombrowser/util/g$j;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/payu/custombrowser/util/g$j;

.field public static final enum DELETE:Lcom/payu/custombrowser/util/g$j;

.field public static final enum GET:Lcom/payu/custombrowser/util/g$j;

.field public static final enum HEAD:Lcom/payu/custombrowser/util/g$j;

.field public static final enum OPTIONS:Lcom/payu/custombrowser/util/g$j;

.field public static final enum POST:Lcom/payu/custombrowser/util/g$j;

.field public static final enum PUT:Lcom/payu/custombrowser/util/g$j;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 407
    new-instance v0, Lcom/payu/custombrowser/util/g$j;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/payu/custombrowser/util/g$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/payu/custombrowser/util/g$j;->GET:Lcom/payu/custombrowser/util/g$j;

    new-instance v1, Lcom/payu/custombrowser/util/g$j;

    const-string v3, "PUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/payu/custombrowser/util/g$j;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/payu/custombrowser/util/g$j;->PUT:Lcom/payu/custombrowser/util/g$j;

    new-instance v3, Lcom/payu/custombrowser/util/g$j;

    const-string v5, "POST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/payu/custombrowser/util/g$j;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/payu/custombrowser/util/g$j;->POST:Lcom/payu/custombrowser/util/g$j;

    new-instance v5, Lcom/payu/custombrowser/util/g$j;

    const-string v7, "DELETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/payu/custombrowser/util/g$j;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/payu/custombrowser/util/g$j;->DELETE:Lcom/payu/custombrowser/util/g$j;

    new-instance v7, Lcom/payu/custombrowser/util/g$j;

    const-string v9, "HEAD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/payu/custombrowser/util/g$j;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/payu/custombrowser/util/g$j;->HEAD:Lcom/payu/custombrowser/util/g$j;

    new-instance v9, Lcom/payu/custombrowser/util/g$j;

    const-string v11, "OPTIONS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/payu/custombrowser/util/g$j;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/payu/custombrowser/util/g$j;->OPTIONS:Lcom/payu/custombrowser/util/g$j;

    .line 406
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/payu/custombrowser/util/g$j;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/payu/custombrowser/util/g$j;->$VALUES:[Lcom/payu/custombrowser/util/g$j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 406
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static lookup(Ljava/lang/String;)Lcom/payu/custombrowser/util/g$j;
    .locals 5
    .param p0, "method"    # Ljava/lang/String;

    .line 410
    invoke-static {}, Lcom/payu/custombrowser/util/g$j;->values()[Lcom/payu/custombrowser/util/g$j;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 411
    invoke-virtual {v3}, Lcom/payu/custombrowser/util/g$j;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 412
    return-object v3

    .line 410
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 415
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/payu/custombrowser/util/g$j;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 406
    const-class v0, Lcom/payu/custombrowser/util/g$j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/payu/custombrowser/util/g$j;

    return-object v0
.end method

.method public static values()[Lcom/payu/custombrowser/util/g$j;
    .locals 1

    .line 406
    sget-object v0, Lcom/payu/custombrowser/util/g$j;->$VALUES:[Lcom/payu/custombrowser/util/g$j;

    invoke-virtual {v0}, [Lcom/payu/custombrowser/util/g$j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/payu/custombrowser/util/g$j;

    return-object v0
.end method
