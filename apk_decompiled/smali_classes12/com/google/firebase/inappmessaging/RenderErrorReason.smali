.class public final enum Lcom/google/firebase/inappmessaging/RenderErrorReason;
.super Ljava/lang/Enum;
.source "RenderErrorReason.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/RenderErrorReason$RenderErrorReasonVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/inappmessaging/RenderErrorReason;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/inappmessaging/RenderErrorReason;

.field public static final enum IMAGE_DISPLAY_ERROR:Lcom/google/firebase/inappmessaging/RenderErrorReason;

.field public static final IMAGE_DISPLAY_ERROR_VALUE:I = 0x2

.field public static final enum IMAGE_FETCH_ERROR:Lcom/google/firebase/inappmessaging/RenderErrorReason;

.field public static final IMAGE_FETCH_ERROR_VALUE:I = 0x1

.field public static final enum IMAGE_UNSUPPORTED_FORMAT:Lcom/google/firebase/inappmessaging/RenderErrorReason;

.field public static final IMAGE_UNSUPPORTED_FORMAT_VALUE:I = 0x3

.field public static final enum UNSPECIFIED_RENDER_ERROR:Lcom/google/firebase/inappmessaging/RenderErrorReason;

.field public static final UNSPECIFIED_RENDER_ERROR_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firebase/inappmessaging/RenderErrorReason;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 23
    new-instance v0, Lcom/google/firebase/inappmessaging/RenderErrorReason;

    const-string v1, "UNSPECIFIED_RENDER_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/inappmessaging/RenderErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/inappmessaging/RenderErrorReason;->UNSPECIFIED_RENDER_ERROR:Lcom/google/firebase/inappmessaging/RenderErrorReason;

    .line 31
    new-instance v1, Lcom/google/firebase/inappmessaging/RenderErrorReason;

    const-string v3, "IMAGE_FETCH_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/firebase/inappmessaging/RenderErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firebase/inappmessaging/RenderErrorReason;->IMAGE_FETCH_ERROR:Lcom/google/firebase/inappmessaging/RenderErrorReason;

    .line 39
    new-instance v3, Lcom/google/firebase/inappmessaging/RenderErrorReason;

    const-string v5, "IMAGE_DISPLAY_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/firebase/inappmessaging/RenderErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/firebase/inappmessaging/RenderErrorReason;->IMAGE_DISPLAY_ERROR:Lcom/google/firebase/inappmessaging/RenderErrorReason;

    .line 47
    new-instance v5, Lcom/google/firebase/inappmessaging/RenderErrorReason;

    const-string v7, "IMAGE_UNSUPPORTED_FORMAT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/firebase/inappmessaging/RenderErrorReason;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/firebase/inappmessaging/RenderErrorReason;->IMAGE_UNSUPPORTED_FORMAT:Lcom/google/firebase/inappmessaging/RenderErrorReason;

    .line 14
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/firebase/inappmessaging/RenderErrorReason;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/firebase/inappmessaging/RenderErrorReason;->$VALUES:[Lcom/google/firebase/inappmessaging/RenderErrorReason;

    .line 114
    new-instance v0, Lcom/google/firebase/inappmessaging/RenderErrorReason$1;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/RenderErrorReason$1;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/RenderErrorReason;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 139
    iput p3, p0, Lcom/google/firebase/inappmessaging/RenderErrorReason;->value:I

    .line 140
    return-void
.end method

.method public static forNumber(I)Lcom/google/firebase/inappmessaging/RenderErrorReason;
    .locals 1
    .param p0, "value"    # I

    .line 100
    packed-switch p0, :pswitch_data_0

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 104
    :pswitch_0
    sget-object v0, Lcom/google/firebase/inappmessaging/RenderErrorReason;->IMAGE_UNSUPPORTED_FORMAT:Lcom/google/firebase/inappmessaging/RenderErrorReason;

    return-object v0

    .line 103
    :pswitch_1
    sget-object v0, Lcom/google/firebase/inappmessaging/RenderErrorReason;->IMAGE_DISPLAY_ERROR:Lcom/google/firebase/inappmessaging/RenderErrorReason;

    return-object v0

    .line 102
    :pswitch_2
    sget-object v0, Lcom/google/firebase/inappmessaging/RenderErrorReason;->IMAGE_FETCH_ERROR:Lcom/google/firebase/inappmessaging/RenderErrorReason;

    return-object v0

    .line 101
    :pswitch_3
    sget-object v0, Lcom/google/firebase/inappmessaging/RenderErrorReason;->UNSPECIFIED_RENDER_ERROR:Lcom/google/firebase/inappmessaging/RenderErrorReason;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
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
            "Lcom/google/firebase/inappmessaging/RenderErrorReason;",
            ">;"
        }
    .end annotation

    .line 111
    sget-object v0, Lcom/google/firebase/inappmessaging/RenderErrorReason;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 124
    sget-object v0, Lcom/google/firebase/inappmessaging/RenderErrorReason$RenderErrorReasonVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/firebase/inappmessaging/RenderErrorReason;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/RenderErrorReason;->forNumber(I)Lcom/google/firebase/inappmessaging/RenderErrorReason;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/RenderErrorReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/google/firebase/inappmessaging/RenderErrorReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/RenderErrorReason;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/inappmessaging/RenderErrorReason;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firebase/inappmessaging/RenderErrorReason;->$VALUES:[Lcom/google/firebase/inappmessaging/RenderErrorReason;

    invoke-virtual {v0}, [Lcom/google/firebase/inappmessaging/RenderErrorReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/inappmessaging/RenderErrorReason;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/google/firebase/inappmessaging/RenderErrorReason;->value:I

    return v0
.end method
