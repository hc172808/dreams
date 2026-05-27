.class public final enum Lcom/google/firebase/inappmessaging/EventType;
.super Ljava/lang/Enum;
.source "EventType.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/EventType$EventTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/inappmessaging/EventType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/inappmessaging/EventType;

.field public static final enum CLICK_EVENT_TYPE:Lcom/google/firebase/inappmessaging/EventType;

.field public static final CLICK_EVENT_TYPE_VALUE:I = 0x2

.field public static final enum IMPRESSION_EVENT_TYPE:Lcom/google/firebase/inappmessaging/EventType;

.field public static final IMPRESSION_EVENT_TYPE_VALUE:I = 0x1

.field public static final enum UNKNOWN_EVENT_TYPE:Lcom/google/firebase/inappmessaging/EventType;

.field public static final UNKNOWN_EVENT_TYPE_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firebase/inappmessaging/EventType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 22
    new-instance v0, Lcom/google/firebase/inappmessaging/EventType;

    const-string v1, "UNKNOWN_EVENT_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/inappmessaging/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/inappmessaging/EventType;->UNKNOWN_EVENT_TYPE:Lcom/google/firebase/inappmessaging/EventType;

    .line 30
    new-instance v1, Lcom/google/firebase/inappmessaging/EventType;

    const-string v3, "IMPRESSION_EVENT_TYPE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/firebase/inappmessaging/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firebase/inappmessaging/EventType;->IMPRESSION_EVENT_TYPE:Lcom/google/firebase/inappmessaging/EventType;

    .line 38
    new-instance v3, Lcom/google/firebase/inappmessaging/EventType;

    const-string v5, "CLICK_EVENT_TYPE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/firebase/inappmessaging/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/firebase/inappmessaging/EventType;->CLICK_EVENT_TYPE:Lcom/google/firebase/inappmessaging/EventType;

    .line 13
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/firebase/inappmessaging/EventType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/firebase/inappmessaging/EventType;->$VALUES:[Lcom/google/firebase/inappmessaging/EventType;

    .line 96
    new-instance v0, Lcom/google/firebase/inappmessaging/EventType$1;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/EventType$1;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/EventType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 121
    iput p3, p0, Lcom/google/firebase/inappmessaging/EventType;->value:I

    .line 122
    return-void
.end method

.method public static forNumber(I)Lcom/google/firebase/inappmessaging/EventType;
    .locals 1
    .param p0, "value"    # I

    .line 83
    packed-switch p0, :pswitch_data_0

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 86
    :pswitch_0
    sget-object v0, Lcom/google/firebase/inappmessaging/EventType;->CLICK_EVENT_TYPE:Lcom/google/firebase/inappmessaging/EventType;

    return-object v0

    .line 85
    :pswitch_1
    sget-object v0, Lcom/google/firebase/inappmessaging/EventType;->IMPRESSION_EVENT_TYPE:Lcom/google/firebase/inappmessaging/EventType;

    return-object v0

    .line 84
    :pswitch_2
    sget-object v0, Lcom/google/firebase/inappmessaging/EventType;->UNKNOWN_EVENT_TYPE:Lcom/google/firebase/inappmessaging/EventType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firebase/inappmessaging/EventType;",
            ">;"
        }
    .end annotation

    .line 93
    sget-object v0, Lcom/google/firebase/inappmessaging/EventType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 106
    sget-object v0, Lcom/google/firebase/inappmessaging/EventType$EventTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/firebase/inappmessaging/EventType;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/EventType;->forNumber(I)Lcom/google/firebase/inappmessaging/EventType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/EventType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 13
    const-class v0, Lcom/google/firebase/inappmessaging/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/EventType;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/inappmessaging/EventType;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firebase/inappmessaging/EventType;->$VALUES:[Lcom/google/firebase/inappmessaging/EventType;

    invoke-virtual {v0}, [Lcom/google/firebase/inappmessaging/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/inappmessaging/EventType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/google/firebase/inappmessaging/EventType;->value:I

    return v0
.end method
