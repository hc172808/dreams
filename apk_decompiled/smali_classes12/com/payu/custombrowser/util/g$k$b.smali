.class public final enum Lcom/payu/custombrowser/util/g$k$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/payu/custombrowser/util/g$k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/util/g$k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/payu/custombrowser/util/g$k$b;",
        ">;",
        "Lcom/payu/custombrowser/util/g$k$a;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/payu/custombrowser/util/g$k$b;

.field public static final enum ACCEPTED:Lcom/payu/custombrowser/util/g$k$b;

.field public static final enum BAD_REQUEST:Lcom/payu/custombrowser/util/g$k$b;

.field public static final enum CREATED:Lcom/payu/custombrowser/util/g$k$b;

.field public static final enum FORBIDDEN:Lcom/payu/custombrowser/util/g$k$b;

.field public static final enum INTERNAL_ERROR:Lcom/payu/custombrowser/util/g$k$b;

.field public static final enum METHOD_NOT_ALLOWED:Lcom/payu/custombrowser/util/g$k$b;

.field public static final enum NOT_FOUND:Lcom/payu/custombrowser/util/g$k$b;

.field public static final enum NOT_MODIFIED:Lcom/payu/custombrowser/util/g$k$b;

.field public static final enum NO_CONTENT:Lcom/payu/custombrowser/util/g$k$b;

.field public static final enum OK:Lcom/payu/custombrowser/util/g$k$b;

.field public static final enum PARTIAL_CONTENT:Lcom/payu/custombrowser/util/g$k$b;

.field public static final enum RANGE_NOT_SATISFIABLE:Lcom/payu/custombrowser/util/g$k$b;

.field public static final enum REDIRECT:Lcom/payu/custombrowser/util/g$k$b;

.field public static final enum SWITCH_PROTOCOL:Lcom/payu/custombrowser/util/g$k$b;

.field public static final enum UNAUTHORIZED:Lcom/payu/custombrowser/util/g$k$b;


# instance fields
.field private final description:Ljava/lang/String;

.field private final requestStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 764
    new-instance v0, Lcom/payu/custombrowser/util/g$k$b;

    const-string v1, "SWITCH_PROTOCOL"

    const/4 v2, 0x0

    const/16 v3, 0x65

    const-string v4, "Switching Protocols"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/payu/custombrowser/util/g$k$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/payu/custombrowser/util/g$k$b;->SWITCH_PROTOCOL:Lcom/payu/custombrowser/util/g$k$b;

    new-instance v1, Lcom/payu/custombrowser/util/g$k$b;

    const-string v3, "OK"

    const/4 v4, 0x1

    const/16 v5, 0xc8

    invoke-direct {v1, v3, v4, v5, v3}, Lcom/payu/custombrowser/util/g$k$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/payu/custombrowser/util/g$k$b;->OK:Lcom/payu/custombrowser/util/g$k$b;

    new-instance v3, Lcom/payu/custombrowser/util/g$k$b;

    const-string v5, "CREATED"

    const/4 v6, 0x2

    const/16 v7, 0xc9

    const-string v8, "Created"

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/payu/custombrowser/util/g$k$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/payu/custombrowser/util/g$k$b;->CREATED:Lcom/payu/custombrowser/util/g$k$b;

    new-instance v5, Lcom/payu/custombrowser/util/g$k$b;

    const-string v7, "ACCEPTED"

    const/4 v8, 0x3

    const/16 v9, 0xca

    const-string v10, "Accepted"

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/payu/custombrowser/util/g$k$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/payu/custombrowser/util/g$k$b;->ACCEPTED:Lcom/payu/custombrowser/util/g$k$b;

    new-instance v7, Lcom/payu/custombrowser/util/g$k$b;

    const-string v9, "NO_CONTENT"

    const/4 v10, 0x4

    const/16 v11, 0xcc

    const-string v12, "No Content"

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/payu/custombrowser/util/g$k$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/payu/custombrowser/util/g$k$b;->NO_CONTENT:Lcom/payu/custombrowser/util/g$k$b;

    new-instance v9, Lcom/payu/custombrowser/util/g$k$b;

    const-string v11, "PARTIAL_CONTENT"

    const/4 v12, 0x5

    const/16 v13, 0xce

    const-string v14, "Partial Content"

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/payu/custombrowser/util/g$k$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/payu/custombrowser/util/g$k$b;->PARTIAL_CONTENT:Lcom/payu/custombrowser/util/g$k$b;

    new-instance v11, Lcom/payu/custombrowser/util/g$k$b;

    const-string v13, "REDIRECT"

    const/4 v14, 0x6

    const/16 v15, 0x12d

    const-string v12, "Moved Permanently"

    invoke-direct {v11, v13, v14, v15, v12}, Lcom/payu/custombrowser/util/g$k$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/payu/custombrowser/util/g$k$b;->REDIRECT:Lcom/payu/custombrowser/util/g$k$b;

    .line 765
    new-instance v12, Lcom/payu/custombrowser/util/g$k$b;

    const-string v13, "NOT_MODIFIED"

    const/4 v15, 0x7

    const/16 v14, 0x130

    const-string v10, "Not Modified"

    invoke-direct {v12, v13, v15, v14, v10}, Lcom/payu/custombrowser/util/g$k$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/payu/custombrowser/util/g$k$b;->NOT_MODIFIED:Lcom/payu/custombrowser/util/g$k$b;

    new-instance v10, Lcom/payu/custombrowser/util/g$k$b;

    const-string v13, "BAD_REQUEST"

    const/16 v14, 0x8

    const/16 v15, 0x190

    const-string v8, "Bad Request"

    invoke-direct {v10, v13, v14, v15, v8}, Lcom/payu/custombrowser/util/g$k$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/payu/custombrowser/util/g$k$b;->BAD_REQUEST:Lcom/payu/custombrowser/util/g$k$b;

    new-instance v8, Lcom/payu/custombrowser/util/g$k$b;

    const-string v13, "UNAUTHORIZED"

    const/16 v15, 0x9

    const/16 v14, 0x191

    const-string v6, "Unauthorized"

    invoke-direct {v8, v13, v15, v14, v6}, Lcom/payu/custombrowser/util/g$k$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/payu/custombrowser/util/g$k$b;->UNAUTHORIZED:Lcom/payu/custombrowser/util/g$k$b;

    .line 766
    new-instance v6, Lcom/payu/custombrowser/util/g$k$b;

    const-string v13, "FORBIDDEN"

    const/16 v14, 0xa

    const/16 v15, 0x193

    const-string v4, "Forbidden"

    invoke-direct {v6, v13, v14, v15, v4}, Lcom/payu/custombrowser/util/g$k$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/payu/custombrowser/util/g$k$b;->FORBIDDEN:Lcom/payu/custombrowser/util/g$k$b;

    new-instance v4, Lcom/payu/custombrowser/util/g$k$b;

    const-string v13, "NOT_FOUND"

    const/16 v15, 0xb

    const/16 v14, 0x194

    const-string v2, "Not Found"

    invoke-direct {v4, v13, v15, v14, v2}, Lcom/payu/custombrowser/util/g$k$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/payu/custombrowser/util/g$k$b;->NOT_FOUND:Lcom/payu/custombrowser/util/g$k$b;

    new-instance v2, Lcom/payu/custombrowser/util/g$k$b;

    const-string v13, "METHOD_NOT_ALLOWED"

    const/16 v14, 0xc

    const/16 v15, 0x195

    move-object/from16 v16, v4

    const-string v4, "Method Not Allowed"

    invoke-direct {v2, v13, v14, v15, v4}, Lcom/payu/custombrowser/util/g$k$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/payu/custombrowser/util/g$k$b;->METHOD_NOT_ALLOWED:Lcom/payu/custombrowser/util/g$k$b;

    new-instance v4, Lcom/payu/custombrowser/util/g$k$b;

    const-string v13, "RANGE_NOT_SATISFIABLE"

    const/16 v15, 0xd

    const/16 v14, 0x1a0

    move-object/from16 v17, v2

    const-string v2, "Requested Range Not Satisfiable"

    invoke-direct {v4, v13, v15, v14, v2}, Lcom/payu/custombrowser/util/g$k$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/payu/custombrowser/util/g$k$b;->RANGE_NOT_SATISFIABLE:Lcom/payu/custombrowser/util/g$k$b;

    .line 767
    new-instance v2, Lcom/payu/custombrowser/util/g$k$b;

    const-string v13, "INTERNAL_ERROR"

    const/16 v14, 0xe

    const/16 v15, 0x1f4

    move-object/from16 v18, v4

    const-string v4, "Internal Server Error"

    invoke-direct {v2, v13, v14, v15, v4}, Lcom/payu/custombrowser/util/g$k$b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/payu/custombrowser/util/g$k$b;->INTERNAL_ERROR:Lcom/payu/custombrowser/util/g$k$b;

    .line 763
    const/16 v4, 0xf

    new-array v4, v4, [Lcom/payu/custombrowser/util/g$k$b;

    const/4 v13, 0x0

    aput-object v0, v4, v13

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v12, v4, v0

    const/16 v0, 0x8

    aput-object v10, v4, v0

    const/16 v0, 0x9

    aput-object v8, v4, v0

    const/16 v0, 0xa

    aput-object v6, v4, v0

    const/16 v0, 0xb

    aput-object v16, v4, v0

    const/16 v0, 0xc

    aput-object v17, v4, v0

    const/16 v0, 0xd

    aput-object v18, v4, v0

    aput-object v2, v4, v14

    sput-object v4, Lcom/payu/custombrowser/util/g$k$b;->$VALUES:[Lcom/payu/custombrowser/util/g$k$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 771
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 772
    iput p3, p0, Lcom/payu/custombrowser/util/g$k$b;->requestStatus:I

    .line 773
    iput-object p4, p0, Lcom/payu/custombrowser/util/g$k$b;->description:Ljava/lang/String;

    .line 774
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/payu/custombrowser/util/g$k$b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 763
    const-class v0, Lcom/payu/custombrowser/util/g$k$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/payu/custombrowser/util/g$k$b;

    return-object v0
.end method

.method public static values()[Lcom/payu/custombrowser/util/g$k$b;
    .locals 1

    .line 763
    sget-object v0, Lcom/payu/custombrowser/util/g$k$b;->$VALUES:[Lcom/payu/custombrowser/util/g$k$b;

    invoke-virtual {v0}, [Lcom/payu/custombrowser/util/g$k$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/payu/custombrowser/util/g$k$b;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/payu/custombrowser/util/g$k$b;->requestStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payu/custombrowser/util/g$k$b;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestStatus()I
    .locals 1

    .line 778
    iget v0, p0, Lcom/payu/custombrowser/util/g$k$b;->requestStatus:I

    return v0
.end method
