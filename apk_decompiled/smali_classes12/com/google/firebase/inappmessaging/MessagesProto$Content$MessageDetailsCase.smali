.class public final enum Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;
.super Ljava/lang/Enum;
.source "MessagesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/MessagesProto$Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageDetailsCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

.field public static final enum BANNER:Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

.field public static final enum CARD:Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

.field public static final enum IMAGE_ONLY:Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

.field public static final enum MESSAGEDETAILS_NOT_SET:Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

.field public static final enum MODAL:Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 110
    new-instance v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    const-string v1, "BANNER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;->BANNER:Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    .line 111
    new-instance v1, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    const-string v4, "MODAL"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;->MODAL:Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    .line 112
    new-instance v4, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    const-string v6, "IMAGE_ONLY"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;->IMAGE_ONLY:Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    .line 113
    new-instance v6, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    const-string v8, "CARD"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;->CARD:Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    .line 114
    new-instance v8, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    const-string v10, "MESSAGEDETAILS_NOT_SET"

    invoke-direct {v8, v10, v9, v2}, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;->MESSAGEDETAILS_NOT_SET:Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    .line 109
    const/4 v10, 0x5

    new-array v10, v10, [Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    aput-object v0, v10, v2

    aput-object v1, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    sput-object v10, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;->$VALUES:[Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

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

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput p3, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;->value:I

    .line 118
    return-void
.end method

.method public static forNumber(I)Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;
    .locals 1
    .param p0, "value"    # I

    .line 128
    packed-switch p0, :pswitch_data_0

    .line 134
    const/4 v0, 0x0

    return-object v0

    .line 132
    :pswitch_0
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;->CARD:Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    return-object v0

    .line 131
    :pswitch_1
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;->IMAGE_ONLY:Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    return-object v0

    .line 130
    :pswitch_2
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;->MODAL:Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    return-object v0

    .line 129
    :pswitch_3
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;->BANNER:Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    return-object v0

    .line 133
    :pswitch_4
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;->MESSAGEDETAILS_NOT_SET:Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;->forNumber(I)Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 109
    const-class v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;
    .locals 1

    .line 109
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;->$VALUES:[Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    invoke-virtual {v0}, [Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$Content$MessageDetailsCase;->value:I

    return v0
.end method
