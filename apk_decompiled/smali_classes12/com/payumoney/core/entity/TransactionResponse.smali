.class public final Lcom/payumoney/core/entity/TransactionResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;,
        Lcom/payumoney/core/entity/TransactionResponse$PaymentMode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payumoney/core/entity/TransactionResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private message:Ljava/lang/String;

.field public payuResponse:Ljava/lang/String;

.field private transactionDetails:Ljava/lang/String;

.field private transactionStatus:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/payumoney/core/entity/TransactionResponse$1;

    invoke-direct {v0}, Lcom/payumoney/core/entity/TransactionResponse$1;-><init>()V

    sput-object v0, Lcom/payumoney/core/entity/TransactionResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/entity/TransactionResponse;->message:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/payumoney/core/entity/TransactionResponse;->transactionStatus:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    .line 73
    iput-object v0, p0, Lcom/payumoney/core/entity/TransactionResponse;->transactionDetails:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/entity/TransactionResponse;->message:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/payumoney/core/entity/TransactionResponse;->transactionStatus:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    .line 73
    iput-object v0, p0, Lcom/payumoney/core/entity/TransactionResponse;->transactionDetails:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payumoney/core/entity/TransactionResponse;->message:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 97
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->values()[Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    move-result-object v0

    aget-object v0, v0, v1

    :goto_0
    iput-object v0, p0, Lcom/payumoney/core/entity/TransactionResponse;->transactionStatus:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/TransactionResponse;->transactionDetails:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/TransactionResponse;->payuResponse:Ljava/lang/String;

    .line 100
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/payumoney/core/entity/TransactionResponse$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/payumoney/core/entity/TransactionResponse$1;

    .line 34
    invoke-direct {p0, p1}, Lcom/payumoney/core/entity/TransactionResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "transactionStatus"    # Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "transactionDetails"    # Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/entity/TransactionResponse;->message:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/payumoney/core/entity/TransactionResponse;->transactionStatus:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    .line 73
    iput-object v0, p0, Lcom/payumoney/core/entity/TransactionResponse;->transactionDetails:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/payumoney/core/entity/TransactionResponse;->transactionStatus:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    .line 88
    iput-object p2, p0, Lcom/payumoney/core/entity/TransactionResponse;->message:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/payumoney/core/entity/TransactionResponse;->transactionDetails:Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/payumoney/core/entity/TransactionResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPayuResponse()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/payumoney/core/entity/TransactionResponse;->payuResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionDetails()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/payumoney/core/entity/TransactionResponse;->transactionDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionStatus()Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/payumoney/core/entity/TransactionResponse;->transactionStatus:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/payumoney/core/entity/TransactionResponse;->message:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setPayuResponse(Ljava/lang/String;)V
    .locals 0
    .param p1, "payuResponse"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/payumoney/core/entity/TransactionResponse;->payuResponse:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setTransactionDetails(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionDetails"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/payumoney/core/entity/TransactionResponse;->transactionDetails:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setTransactionStatus(Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;)V
    .locals 0
    .param p1, "transactionStatus"    # Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    .line 62
    iput-object p1, p0, Lcom/payumoney/core/entity/TransactionResponse;->transactionStatus:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    .line 63
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 122
    iget-object v0, p0, Lcom/payumoney/core/entity/TransactionResponse;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/payumoney/core/entity/TransactionResponse;->transactionStatus:Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/payumoney/core/entity/TransactionResponse$TransactionStatus;->ordinal()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object v0, p0, Lcom/payumoney/core/entity/TransactionResponse;->transactionDetails:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/payumoney/core/entity/TransactionResponse;->payuResponse:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return-void
.end method
