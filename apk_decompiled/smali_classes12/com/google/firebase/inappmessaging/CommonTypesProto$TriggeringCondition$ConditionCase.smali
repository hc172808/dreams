.class public final enum Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;
.super Ljava/lang/Enum;
.source "CommonTypesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConditionCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;

.field public static final enum CONDITION_NOT_SET:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;

.field public static final enum EVENT:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;

.field public static final enum FIAM_TRIGGER:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1195
    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;

    const-string v1, "FIAM_TRIGGER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;->FIAM_TRIGGER:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;

    .line 1196
    new-instance v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;

    const-string v4, "EVENT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;->EVENT:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;

    .line 1197
    new-instance v4, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;

    const-string v6, "CONDITION_NOT_SET"

    invoke-direct {v4, v6, v5, v2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;->CONDITION_NOT_SET:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;

    .line 1194
    const/4 v6, 0x3

    new-array v6, v6, [Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;->$VALUES:[Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1199
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1200
    iput p3, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;->value:I

    .line 1201
    return-void
.end method

.method public static forNumber(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;
    .locals 1
    .param p0, "value"    # I

    .line 1211
    packed-switch p0, :pswitch_data_0

    .line 1215
    const/4 v0, 0x0

    return-object v0

    .line 1213
    :pswitch_0
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;->EVENT:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;

    return-object v0

    .line 1212
    :pswitch_1
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;->FIAM_TRIGGER:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;

    return-object v0

    .line 1214
    :pswitch_2
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;->CONDITION_NOT_SET:Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1207
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;->forNumber(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1194
    const-class v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;
    .locals 1

    .line 1194
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;->$VALUES:[Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;

    invoke-virtual {v0}, [Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1219
    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$ConditionCase;->value:I

    return v0
.end method
