.class public final Lcom/payumoney/core/response/TransactionResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;,
        Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;,
        Lcom/payumoney/core/response/TransactionResponse$PaymentMode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payumoney/core/response/TransactionResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private COD:Z

.field private adjustedAmount:Lcom/payumoney/core/entity/Amount;

.field private authIdCode:Ljava/lang/String;

.field private autoLoadMessage:Ljava/lang/String;

.field private balanceAmount:Lcom/payumoney/core/entity/Amount;

.field private binCardType:Ljava/lang/String;

.field private citrusUser:Lcom/payumoney/core/entity/CitrusUser;

.field private country:Ljava/lang/String;

.field private couponCode:Ljava/lang/String;

.field private customParamsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dpRuleName:Ljava/lang/String;

.field private dpRuleType:Ljava/lang/String;

.field private impsMmid:Ljava/lang/String;

.field private impsMobileNumber:Ljava/lang/String;

.field private issuerCode:Ljava/lang/String;

.field private jsonResponse:Ljava/lang/String;

.field private maskedCardNumber:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private originalAmount:Lcom/payumoney/core/entity/Amount;

.field private paymentMode:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

.field private responseCode:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private transactionAmount:Lcom/payumoney/core/entity/Amount;

.field private transactionDetails:Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;

.field private transactionStatus:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/payumoney/core/response/TransactionResponse$1;

    invoke-direct {v0}, Lcom/payumoney/core/response/TransactionResponse$1;-><init>()V

    sput-object v0, Lcom/payumoney/core/response/TransactionResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->balanceAmount:Lcom/payumoney/core/entity/Amount;

    .line 49
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->transactionAmount:Lcom/payumoney/core/entity/Amount;

    .line 50
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->message:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->autoLoadMessage:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->responseCode:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->transactionStatus:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    .line 54
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->transactionDetails:Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;

    .line 55
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->citrusUser:Lcom/payumoney/core/entity/CitrusUser;

    .line 56
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->paymentMode:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    .line 57
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->issuerCode:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->impsMobileNumber:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->impsMmid:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->authIdCode:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->signature:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->maskedCardNumber:Ljava/lang/String;

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/payumoney/core/response/TransactionResponse;->COD:Z

    .line 64
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->customParamsMap:Ljava/util/Map;

    .line 65
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->jsonResponse:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->originalAmount:Lcom/payumoney/core/entity/Amount;

    .line 67
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->adjustedAmount:Lcom/payumoney/core/entity/Amount;

    .line 68
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->dpRuleName:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->couponCode:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->dpRuleType:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->country:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->binCardType:Ljava/lang/String;

    .line 76
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->balanceAmount:Lcom/payumoney/core/entity/Amount;

    .line 49
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->transactionAmount:Lcom/payumoney/core/entity/Amount;

    .line 50
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->message:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->autoLoadMessage:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->responseCode:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->transactionStatus:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    .line 54
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->transactionDetails:Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;

    .line 55
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->citrusUser:Lcom/payumoney/core/entity/CitrusUser;

    .line 56
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->paymentMode:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    .line 57
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->issuerCode:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->impsMobileNumber:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->impsMmid:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->authIdCode:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->signature:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->maskedCardNumber:Ljava/lang/String;

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/payumoney/core/response/TransactionResponse;->COD:Z

    .line 64
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->customParamsMap:Ljava/util/Map;

    .line 65
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->jsonResponse:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->originalAmount:Lcom/payumoney/core/entity/Amount;

    .line 67
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->adjustedAmount:Lcom/payumoney/core/entity/Amount;

    .line 68
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->dpRuleName:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->couponCode:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->dpRuleType:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->country:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->binCardType:Ljava/lang/String;

    .line 149
    const-class v2, Lcom/payumoney/core/entity/Amount;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/payumoney/core/entity/Amount;

    iput-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->balanceAmount:Lcom/payumoney/core/entity/Amount;

    .line 150
    const-class v2, Lcom/payumoney/core/entity/Amount;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/payumoney/core/entity/Amount;

    iput-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->transactionAmount:Lcom/payumoney/core/entity/Amount;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->message:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->responseCode:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 154
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;->values()[Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    move-result-object v4

    aget-object v2, v4, v2

    :goto_0
    iput-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->transactionStatus:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    .line 155
    const-class v2, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;

    iput-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->transactionDetails:Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;

    .line 156
    const-class v2, Lcom/payumoney/core/entity/CitrusUser;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/payumoney/core/entity/CitrusUser;

    iput-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->citrusUser:Lcom/payumoney/core/entity/CitrusUser;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 158
    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;->values()[Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    move-result-object v0

    aget-object v0, v0, v2

    :goto_1
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->paymentMode:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->issuerCode:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->impsMobileNumber:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->impsMmid:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->authIdCode:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->signature:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->maskedCardNumber:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/payumoney/core/response/TransactionResponse;->COD:Z

    .line 166
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->customParamsMap:Ljava/util/Map;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->jsonResponse:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->country:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->binCardType:Ljava/lang/String;

    .line 170
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/payumoney/core/response/TransactionResponse$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/payumoney/core/response/TransactionResponse$1;

    .line 37
    invoke-direct {p0, p1}, Lcom/payumoney/core/response/TransactionResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/payumoney/core/entity/Amount;Ljava/lang/String;Ljava/lang/String;Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;Lcom/payumoney/core/entity/CitrusUser;Lcom/payumoney/core/response/TransactionResponse$PaymentMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V
    .locals 16
    .param p1, "transactionAmount"    # Lcom/payumoney/core/entity/Amount;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "responseCode"    # Ljava/lang/String;
    .param p4, "transactionStatus"    # Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;
    .param p5, "transactionDetails"    # Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;
    .param p6, "citrusUser"    # Lcom/payumoney/core/entity/CitrusUser;
    .param p7, "paymentMode"    # Lcom/payumoney/core/response/TransactionResponse$PaymentMode;
    .param p8, "issuerCode"    # Ljava/lang/String;
    .param p9, "impsMobileNumber"    # Ljava/lang/String;
    .param p10, "impsMmid"    # Ljava/lang/String;
    .param p11, "authIdCode"    # Ljava/lang/String;
    .param p12, "signature"    # Ljava/lang/String;
    .param p13, "COD"    # Z
    .param p14, "maskedCardNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payumoney/core/entity/Amount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;",
            "Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;",
            "Lcom/payumoney/core/entity/CitrusUser;",
            "Lcom/payumoney/core/response/TransactionResponse$PaymentMode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p15, "customParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->balanceAmount:Lcom/payumoney/core/entity/Amount;

    .line 49
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->transactionAmount:Lcom/payumoney/core/entity/Amount;

    .line 50
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->message:Ljava/lang/String;

    .line 51
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->autoLoadMessage:Ljava/lang/String;

    .line 52
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->responseCode:Ljava/lang/String;

    .line 53
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->transactionStatus:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    .line 54
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->transactionDetails:Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;

    .line 55
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->citrusUser:Lcom/payumoney/core/entity/CitrusUser;

    .line 56
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->paymentMode:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    .line 57
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->issuerCode:Ljava/lang/String;

    .line 58
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->impsMobileNumber:Ljava/lang/String;

    .line 59
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->impsMmid:Ljava/lang/String;

    .line 60
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->authIdCode:Ljava/lang/String;

    .line 61
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->signature:Ljava/lang/String;

    .line 62
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->maskedCardNumber:Ljava/lang/String;

    .line 63
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/payumoney/core/response/TransactionResponse;->COD:Z

    .line 64
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->customParamsMap:Ljava/util/Map;

    .line 65
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->jsonResponse:Ljava/lang/String;

    .line 66
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->originalAmount:Lcom/payumoney/core/entity/Amount;

    .line 67
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->adjustedAmount:Lcom/payumoney/core/entity/Amount;

    .line 68
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->dpRuleName:Ljava/lang/String;

    .line 69
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->couponCode:Ljava/lang/String;

    .line 70
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->dpRuleType:Ljava/lang/String;

    .line 71
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->country:Ljava/lang/String;

    .line 72
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->binCardType:Ljava/lang/String;

    .line 108
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->transactionAmount:Lcom/payumoney/core/entity/Amount;

    .line 109
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/payumoney/core/response/TransactionResponse;->message:Ljava/lang/String;

    .line 110
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/payumoney/core/response/TransactionResponse;->responseCode:Ljava/lang/String;

    .line 111
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/payumoney/core/response/TransactionResponse;->transactionStatus:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    .line 112
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/payumoney/core/response/TransactionResponse;->transactionDetails:Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;

    .line 113
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/payumoney/core/response/TransactionResponse;->citrusUser:Lcom/payumoney/core/entity/CitrusUser;

    .line 114
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/payumoney/core/response/TransactionResponse;->paymentMode:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    .line 115
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/payumoney/core/response/TransactionResponse;->issuerCode:Ljava/lang/String;

    .line 116
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/payumoney/core/response/TransactionResponse;->impsMobileNumber:Ljava/lang/String;

    .line 117
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/payumoney/core/response/TransactionResponse;->impsMmid:Ljava/lang/String;

    .line 118
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/payumoney/core/response/TransactionResponse;->authIdCode:Ljava/lang/String;

    .line 119
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/payumoney/core/response/TransactionResponse;->signature:Ljava/lang/String;

    .line 120
    move/from16 v13, p13

    iput-boolean v13, v0, Lcom/payumoney/core/response/TransactionResponse;->COD:Z

    .line 121
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/payumoney/core/response/TransactionResponse;->maskedCardNumber:Ljava/lang/String;

    .line 122
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/payumoney/core/response/TransactionResponse;->customParamsMap:Ljava/util/Map;

    .line 123
    return-void
.end method

.method private constructor <init>(Lcom/payumoney/core/entity/Amount;Ljava/lang/String;Ljava/lang/String;Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;Lcom/payumoney/core/entity/CitrusUser;Lcom/payumoney/core/response/TransactionResponse$PaymentMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Lcom/payumoney/core/entity/Amount;Lcom/payumoney/core/entity/Amount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "transactionAmount"    # Lcom/payumoney/core/entity/Amount;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "responseCode"    # Ljava/lang/String;
    .param p4, "transactionStatus"    # Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;
    .param p5, "transactionDetails"    # Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;
    .param p6, "citrusUser"    # Lcom/payumoney/core/entity/CitrusUser;
    .param p7, "paymentMode"    # Lcom/payumoney/core/response/TransactionResponse$PaymentMode;
    .param p8, "issuerCode"    # Ljava/lang/String;
    .param p9, "impsMobileNumber"    # Ljava/lang/String;
    .param p10, "impsMmid"    # Ljava/lang/String;
    .param p11, "authIdCode"    # Ljava/lang/String;
    .param p12, "signature"    # Ljava/lang/String;
    .param p13, "COD"    # Z
    .param p14, "maskedCardNumber"    # Ljava/lang/String;
    .param p16, "originalAmount"    # Lcom/payumoney/core/entity/Amount;
    .param p17, "adjustedAmount"    # Lcom/payumoney/core/entity/Amount;
    .param p18, "dpRuleName"    # Ljava/lang/String;
    .param p19, "couponCode"    # Ljava/lang/String;
    .param p20, "dpRuleType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/payumoney/core/entity/Amount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;",
            "Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;",
            "Lcom/payumoney/core/entity/CitrusUser;",
            "Lcom/payumoney/core/response/TransactionResponse$PaymentMode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/payumoney/core/entity/Amount;",
            "Lcom/payumoney/core/entity/Amount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 125
    .local p15, "customParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->balanceAmount:Lcom/payumoney/core/entity/Amount;

    .line 49
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->transactionAmount:Lcom/payumoney/core/entity/Amount;

    .line 50
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->message:Ljava/lang/String;

    .line 51
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->autoLoadMessage:Ljava/lang/String;

    .line 52
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->responseCode:Ljava/lang/String;

    .line 53
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->transactionStatus:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    .line 54
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->transactionDetails:Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;

    .line 55
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->citrusUser:Lcom/payumoney/core/entity/CitrusUser;

    .line 56
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->paymentMode:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    .line 57
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->issuerCode:Ljava/lang/String;

    .line 58
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->impsMobileNumber:Ljava/lang/String;

    .line 59
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->impsMmid:Ljava/lang/String;

    .line 60
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->authIdCode:Ljava/lang/String;

    .line 61
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->signature:Ljava/lang/String;

    .line 62
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->maskedCardNumber:Ljava/lang/String;

    .line 63
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/payumoney/core/response/TransactionResponse;->COD:Z

    .line 64
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->customParamsMap:Ljava/util/Map;

    .line 65
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->jsonResponse:Ljava/lang/String;

    .line 66
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->originalAmount:Lcom/payumoney/core/entity/Amount;

    .line 67
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->adjustedAmount:Lcom/payumoney/core/entity/Amount;

    .line 68
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->dpRuleName:Ljava/lang/String;

    .line 69
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->couponCode:Ljava/lang/String;

    .line 70
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->dpRuleType:Ljava/lang/String;

    .line 71
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->country:Ljava/lang/String;

    .line 72
    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->binCardType:Ljava/lang/String;

    .line 126
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->transactionAmount:Lcom/payumoney/core/entity/Amount;

    .line 127
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/payumoney/core/response/TransactionResponse;->message:Ljava/lang/String;

    .line 128
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/payumoney/core/response/TransactionResponse;->responseCode:Ljava/lang/String;

    .line 129
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/payumoney/core/response/TransactionResponse;->transactionStatus:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    .line 130
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/payumoney/core/response/TransactionResponse;->transactionDetails:Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;

    .line 131
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/payumoney/core/response/TransactionResponse;->citrusUser:Lcom/payumoney/core/entity/CitrusUser;

    .line 132
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/payumoney/core/response/TransactionResponse;->paymentMode:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    .line 133
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/payumoney/core/response/TransactionResponse;->issuerCode:Ljava/lang/String;

    .line 134
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/payumoney/core/response/TransactionResponse;->impsMobileNumber:Ljava/lang/String;

    .line 135
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/payumoney/core/response/TransactionResponse;->impsMmid:Ljava/lang/String;

    .line 136
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/payumoney/core/response/TransactionResponse;->authIdCode:Ljava/lang/String;

    .line 137
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/payumoney/core/response/TransactionResponse;->signature:Ljava/lang/String;

    .line 138
    move-object/from16 v13, p14

    iput-object v13, v0, Lcom/payumoney/core/response/TransactionResponse;->maskedCardNumber:Ljava/lang/String;

    .line 139
    move/from16 v14, p13

    iput-boolean v14, v0, Lcom/payumoney/core/response/TransactionResponse;->COD:Z

    .line 140
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/payumoney/core/response/TransactionResponse;->customParamsMap:Ljava/util/Map;

    .line 141
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->originalAmount:Lcom/payumoney/core/entity/Amount;

    .line 142
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->adjustedAmount:Lcom/payumoney/core/entity/Amount;

    .line 143
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->dpRuleName:Ljava/lang/String;

    .line 144
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->couponCode:Ljava/lang/String;

    .line 145
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/payumoney/core/response/TransactionResponse;->dpRuleType:Ljava/lang/String;

    .line 146
    return-void
.end method

.method constructor <init>(Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "transactionStatus"    # Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "transactionId"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->balanceAmount:Lcom/payumoney/core/entity/Amount;

    .line 49
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->transactionAmount:Lcom/payumoney/core/entity/Amount;

    .line 50
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->message:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->autoLoadMessage:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->responseCode:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->transactionStatus:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    .line 54
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->transactionDetails:Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;

    .line 55
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->citrusUser:Lcom/payumoney/core/entity/CitrusUser;

    .line 56
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->paymentMode:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    .line 57
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->issuerCode:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->impsMobileNumber:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->impsMmid:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->authIdCode:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->signature:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->maskedCardNumber:Ljava/lang/String;

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/payumoney/core/response/TransactionResponse;->COD:Z

    .line 64
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->customParamsMap:Ljava/util/Map;

    .line 65
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->jsonResponse:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->originalAmount:Lcom/payumoney/core/entity/Amount;

    .line 67
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->adjustedAmount:Lcom/payumoney/core/entity/Amount;

    .line 68
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->dpRuleName:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->couponCode:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->dpRuleType:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->country:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->binCardType:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/payumoney/core/response/TransactionResponse;->transactionStatus:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    .line 87
    iput-object p2, p0, Lcom/payumoney/core/response/TransactionResponse;->message:Ljava/lang/String;

    .line 88
    new-instance v0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;

    invoke-direct {v0, p3}, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->transactionDetails:Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;

    .line 89
    return-void
.end method

.method public static fromJSON(Ljava/lang/String;)Lcom/payumoney/core/response/TransactionResponse;
    .locals 1
    .param p0, "response"    # Ljava/lang/String;

    .line 187
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/payumoney/core/response/TransactionResponse;->fromJSON(Ljava/lang/String;Ljava/util/Map;)Lcom/payumoney/core/response/TransactionResponse;

    move-result-object v0

    return-object v0
.end method

.method public static fromJSON(Ljava/lang/String;Ljava/util/Map;)Lcom/payumoney/core/response/TransactionResponse;
    .locals 1
    .param p0, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/payumoney/core/response/TransactionResponse;"
        }
    .end annotation

    .line 173
    .local p1, "customParamsOriginalMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 176
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-static {v0, p1}, Lcom/payumoney/core/response/TransactionResponse;->fromJSONObject(Lorg/json/JSONObject;Ljava/util/Map;)Lcom/payumoney/core/response/TransactionResponse;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 180
    new-instance v0, Lcom/payumoney/core/response/TransactionResponse;

    invoke-direct {v0}, Lcom/payumoney/core/response/TransactionResponse;-><init>()V

    .line 181
    invoke-virtual {v0, p0}, Lcom/payumoney/core/response/TransactionResponse;->setJsonResponse(Ljava/lang/String;)V

    .line 183
    :goto_0
    return-object v0
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;Ljava/util/Map;)Lcom/payumoney/core/response/TransactionResponse;
    .locals 19
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/payumoney/core/response/TransactionResponse;"
        }
    .end annotation

    .line 191
    .local p1, "customParamsOriginalMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    .line 193
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 195
    const-string v2, "Error"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 196
    const-string v2, "Reason"

    const-string v3, "Transaction Failed"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    new-instance v3, Lcom/payumoney/core/response/TransactionResponse;

    sget-object v4, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;->FAILED:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    invoke-direct {v3, v4, v2, v1}, Lcom/payumoney/core/response/TransactionResponse;-><init>(Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    move-object v1, v3

    goto/16 :goto_3

    .line 199
    :cond_0
    const-string v2, "paymentMode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;->getPaymentMode(Ljava/lang/String;)Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    move-result-object v10

    .line 200
    const-string v2, "TxStatus"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;->getTransactionStatus(Ljava/lang/String;)Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    move-result-object v7

    .line 201
    const-string v2, "currency"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    const-string v3, "amount"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 203
    const-string v4, "pgRespCode"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 206
    sget-object v4, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;->CANCELLED:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    if-ne v7, v4, :cond_1

    .line 207
    const-string v4, "Transaction Cancelled."

    move-object v5, v4

    goto :goto_0

    .line 209
    :cond_1
    const-string v4, "TxMsg"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 210
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto :goto_0

    .line 212
    :cond_2
    const-string v4, "errorMessage"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 217
    :goto_0
    const-string v4, "isCOD"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 218
    const-string v8, "signature"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 219
    const-string v8, "issuerCode"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 220
    const-string v8, "impsMmid"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 221
    const-string v8, "impsMobileNumber"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 222
    const-string v8, "authIdCode"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 223
    const-string v8, "maskedcardNumber"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 225
    nop

    .line 227
    if-eqz p1, :cond_5

    .line 228
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 229
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 230
    if-nez v1, :cond_3

    .line 231
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 234
    :cond_3
    move-object/from16 v16, v8

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    move-object/from16 v8, v16

    goto :goto_1

    .line 229
    :cond_4
    move-object/from16 v18, v1

    goto :goto_2

    .line 227
    :cond_5
    move-object/from16 v18, v1

    .line 238
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->fromJSONObject(Lorg/json/JSONObject;)Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;

    move-result-object v8

    .line 239
    invoke-static/range {p0 .. p0}, Lcom/payumoney/core/entity/CitrusUser;->fromJSONObject(Lorg/json/JSONObject;)Lcom/payumoney/core/entity/CitrusUser;

    move-result-object v9

    .line 240
    const-string v1, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    .line 242
    new-instance v4, Lcom/payumoney/core/entity/Amount;

    invoke-direct {v4, v3, v2}, Lcom/payumoney/core/entity/Amount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v1, Lcom/payumoney/core/response/TransactionResponse;

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Lcom/payumoney/core/response/TransactionResponse;-><init>(Lcom/payumoney/core/entity/Amount;Ljava/lang/String;Ljava/lang/String;Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;Lcom/payumoney/core/entity/CitrusUser;Lcom/payumoney/core/response/TransactionResponse$PaymentMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;)V

    .line 245
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/payumoney/core/response/TransactionResponse;->setJsonResponse(Ljava/lang/String;)V

    .line 250
    :cond_6
    :goto_3
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method public getAdjustedAmount()Lcom/payumoney/core/entity/Amount;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->adjustedAmount:Lcom/payumoney/core/entity/Amount;

    return-object v0
.end method

.method public getAuthIdCode()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->authIdCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoLoadMessage()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->autoLoadMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getBalanceAmount()Lcom/payumoney/core/entity/Amount;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->balanceAmount:Lcom/payumoney/core/entity/Amount;

    return-object v0
.end method

.method public getBinCardType()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->binCardType:Ljava/lang/String;

    return-object v0
.end method

.method public getCitrusUser()Lcom/payumoney/core/entity/CitrusUser;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->citrusUser:Lcom/payumoney/core/entity/CitrusUser;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCouponCode()Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->couponCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomParamsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->customParamsMap:Ljava/util/Map;

    return-object v0
.end method

.method public getDpRuleName()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->dpRuleName:Ljava/lang/String;

    return-object v0
.end method

.method public getDpRuleType()Ljava/lang/String;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->dpRuleType:Ljava/lang/String;

    return-object v0
.end method

.method public getImpsMmid()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->impsMmid:Ljava/lang/String;

    return-object v0
.end method

.method public getImpsMobileNumber()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->impsMobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getIssuerCode()Ljava/lang/String;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->issuerCode:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonResponse()Ljava/lang/String;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->jsonResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getMaskedCardNumber()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->maskedCardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalAmount()Lcom/payumoney/core/entity/Amount;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->originalAmount:Lcom/payumoney/core/entity/Amount;

    return-object v0
.end method

.method public getPaymentMode()Lcom/payumoney/core/response/TransactionResponse$PaymentMode;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->paymentMode:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    return-object v0
.end method

.method public getResponseCode()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->responseCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionAmount()Lcom/payumoney/core/entity/Amount;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->transactionAmount:Lcom/payumoney/core/entity/Amount;

    return-object v0
.end method

.method public getTransactionDetails()Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->transactionDetails:Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->transactionDetails:Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 286
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransactionStatus()Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->transactionStatus:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    return-object v0
.end method

.method public isCOD()Z
    .locals 1

    .line 318
    iget-boolean v0, p0, Lcom/payumoney/core/response/TransactionResponse;->COD:Z

    return v0
.end method

.method protected setAutoLoadMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "autoLoadMessage"    # Ljava/lang/String;

    .line 258
    iput-object p1, p0, Lcom/payumoney/core/response/TransactionResponse;->autoLoadMessage:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setBinCardType(Ljava/lang/String;)V
    .locals 0
    .param p1, "binCardType"    # Ljava/lang/String;

    .line 274
    iput-object p1, p0, Lcom/payumoney/core/response/TransactionResponse;->binCardType:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .line 266
    iput-object p1, p0, Lcom/payumoney/core/response/TransactionResponse;->country:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setJsonResponse(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonResponse"    # Ljava/lang/String;

    .line 374
    iput-object p1, p0, Lcom/payumoney/core/response/TransactionResponse;->jsonResponse:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CitrusTransactionResponse{transactionAmount=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payumoney/core/response/TransactionResponse;->transactionAmount:Lcom/payumoney/core/entity/Amount;

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 380
    invoke-virtual {v1}, Lcom/payumoney/core/entity/Amount;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "balanceAmount=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/payumoney/core/response/TransactionResponse;->balanceAmount:Lcom/payumoney/core/entity/Amount;

    if-eqz v3, :cond_1

    .line 382
    invoke-virtual {v3}, Lcom/payumoney/core/entity/Amount;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", message=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", responseCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->responseCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", transactionStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->transactionStatus:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", transactionDetails="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->transactionDetails:Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", citrusUser="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->citrusUser:Lcom/payumoney/core/entity/CitrusUser;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", paymentMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->paymentMode:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", issuerCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->issuerCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", impsMobileNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->impsMobileNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", impsMmid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->impsMmid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", authIdCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->authIdCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", signature=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->signature:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", maskedCardNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->maskedCardNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", COD="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/payumoney/core/response/TransactionResponse;->COD:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", customParamsMap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->customParamsMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", jsonResponse=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->jsonResponse:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", originalAmount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->originalAmount:Lcom/payumoney/core/entity/Amount;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", adjustedAmount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->adjustedAmount:Lcom/payumoney/core/entity/Amount;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", dpRuleName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->dpRuleName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", couponCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->couponCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", dpRuleType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/TransactionResponse;->dpRuleType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 415
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->balanceAmount:Lcom/payumoney/core/entity/Amount;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 416
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->transactionAmount:Lcom/payumoney/core/entity/Amount;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 417
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->responseCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->transactionStatus:Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;

    const/4 v2, -0x1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/payumoney/core/response/TransactionResponse$TransactionStatus;->ordinal()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->transactionDetails:Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 421
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->citrusUser:Lcom/payumoney/core/entity/CitrusUser;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 422
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->paymentMode:Lcom/payumoney/core/response/TransactionResponse$PaymentMode;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/payumoney/core/response/TransactionResponse$PaymentMode;->ordinal()I

    move-result v2

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->issuerCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->impsMobileNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->impsMmid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->authIdCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->signature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->maskedCardNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 429
    iget-boolean v0, p0, Lcom/payumoney/core/response/TransactionResponse;->COD:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 430
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->customParamsMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 431
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->jsonResponse:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->country:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse;->binCardType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 434
    return-void
.end method
