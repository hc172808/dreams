.class public final enum Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;
.super Ljava/lang/Enum;
.source "CampaignAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CampaignAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

.field public static final enum DISMISS_TYPE:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

.field public static final enum EVENT_NOT_SET:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

.field public static final enum EVENT_TYPE:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

.field public static final enum FETCH_ERROR_REASON:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

.field public static final enum RENDER_ERROR_REASON:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 29
    new-instance v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    const-string v1, "EVENT_TYPE"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->EVENT_TYPE:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    .line 30
    new-instance v1, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    const-string v4, "DISMISS_TYPE"

    const/4 v5, 0x1

    const/4 v6, 0x6

    invoke-direct {v1, v4, v5, v6}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->DISMISS_TYPE:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    .line 31
    new-instance v4, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    const-string v6, "RENDER_ERROR_REASON"

    const/4 v7, 0x2

    const/4 v8, 0x7

    invoke-direct {v4, v6, v7, v8}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->RENDER_ERROR_REASON:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    .line 32
    new-instance v6, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    const-string v8, "FETCH_ERROR_REASON"

    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-direct {v6, v8, v9, v10}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->FETCH_ERROR_REASON:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    .line 33
    new-instance v8, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    const-string v10, "EVENT_NOT_SET"

    const/4 v11, 0x4

    invoke-direct {v8, v10, v11, v2}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->EVENT_NOT_SET:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    .line 28
    new-array v3, v3, [Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v7

    aput-object v6, v3, v9

    aput-object v8, v3, v11

    sput-object v3, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->$VALUES:[Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->value:I

    .line 37
    return-void
.end method

.method public static forNumber(I)Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;
    .locals 1
    .param p0, "value"    # I

    .line 47
    packed-switch p0, :pswitch_data_0

    .line 53
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 51
    :pswitch_1
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->FETCH_ERROR_REASON:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    return-object v0

    .line 50
    :pswitch_2
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->RENDER_ERROR_REASON:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    return-object v0

    .line 49
    :pswitch_3
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->DISMISS_TYPE:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    return-object v0

    .line 48
    :pswitch_4
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->EVENT_TYPE:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    return-object v0

    .line 52
    :pswitch_5
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->EVENT_NOT_SET:Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->forNumber(I)Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->$VALUES:[Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    invoke-virtual {v0}, [Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/google/firebase/inappmessaging/CampaignAnalytics$EventCase;->value:I

    return v0
.end method
