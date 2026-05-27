.class public final enum Lcom/payumoney/core/response/PayumoneyResponse$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/core/response/PayumoneyResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/payumoney/core/response/PayumoneyResponse$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/payumoney/core/response/PayumoneyResponse$Status;

.field public static final enum CANCELLED:Lcom/payumoney/core/response/PayumoneyResponse$Status;

.field public static final enum FAILED:Lcom/payumoney/core/response/PayumoneyResponse$Status;

.field public static final enum PG_REJECTED:Lcom/payumoney/core/response/PayumoneyResponse$Status;

.field public static final enum SUCCESSFUL:Lcom/payumoney/core/response/PayumoneyResponse$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 71
    new-instance v0, Lcom/payumoney/core/response/PayumoneyResponse$Status;

    const-string v1, "SUCCESSFUL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/payumoney/core/response/PayumoneyResponse$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/payumoney/core/response/PayumoneyResponse$Status;->SUCCESSFUL:Lcom/payumoney/core/response/PayumoneyResponse$Status;

    new-instance v1, Lcom/payumoney/core/response/PayumoneyResponse$Status;

    const-string v3, "FAILED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/payumoney/core/response/PayumoneyResponse$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/payumoney/core/response/PayumoneyResponse$Status;->FAILED:Lcom/payumoney/core/response/PayumoneyResponse$Status;

    new-instance v3, Lcom/payumoney/core/response/PayumoneyResponse$Status;

    const-string v5, "CANCELLED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/payumoney/core/response/PayumoneyResponse$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/payumoney/core/response/PayumoneyResponse$Status;->CANCELLED:Lcom/payumoney/core/response/PayumoneyResponse$Status;

    new-instance v5, Lcom/payumoney/core/response/PayumoneyResponse$Status;

    const-string v7, "PG_REJECTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/payumoney/core/response/PayumoneyResponse$Status;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/payumoney/core/response/PayumoneyResponse$Status;->PG_REJECTED:Lcom/payumoney/core/response/PayumoneyResponse$Status;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/payumoney/core/response/PayumoneyResponse$Status;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/payumoney/core/response/PayumoneyResponse$Status;->$VALUES:[Lcom/payumoney/core/response/PayumoneyResponse$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/payumoney/core/response/PayumoneyResponse$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 71
    const-class v0, Lcom/payumoney/core/response/PayumoneyResponse$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/response/PayumoneyResponse$Status;

    return-object v0
.end method

.method public static values()[Lcom/payumoney/core/response/PayumoneyResponse$Status;
    .locals 1

    .line 71
    sget-object v0, Lcom/payumoney/core/response/PayumoneyResponse$Status;->$VALUES:[Lcom/payumoney/core/response/PayumoneyResponse$Status;

    invoke-virtual {v0}, [Lcom/payumoney/core/response/PayumoneyResponse$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/payumoney/core/response/PayumoneyResponse$Status;

    return-object v0
.end method
