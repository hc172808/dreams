.class public Lcom/payu/socketverification/socket/SocketPaymentResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payu/socketverification/socket/SocketPaymentResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lcom/payu/socketverification/socket/SocketPaymentResponse$1;

    invoke-direct {v0}, Lcom/payu/socketverification/socket/SocketPaymentResponse$1;-><init>()V

    sput-object v0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->a:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->b:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->c:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->d:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->e:Ljava/lang/String;

    .line 67
    nop

    .end local p0    # "this":Lcom/payu/socketverification/socket/SocketPaymentResponse;
    .end local p1    # "in":Landroid/os/Parcel;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->f:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getPushServiceUrl()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceId()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkUpiPushExpiry()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkUpiVerificationInterval()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getTxnId()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUpiPushDisabled()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUpiServicePollInterval()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->e:Ljava/lang/String;

    return-object v0
.end method

.method public setPushServiceUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushServiceUrl"    # Ljava/lang/String;

    .line 31
    nop

    .end local p0    # "this":Lcom/payu/socketverification/socket/SocketPaymentResponse;
    .end local p1    # "pushServiceUrl":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->d:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setReferenceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "referenceId"    # Ljava/lang/String;

    .line 94
    nop

    .end local p0    # "this":Lcom/payu/socketverification/socket/SocketPaymentResponse;
    .end local p1    # "referenceId":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->a:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setSdkUpiPushExpiry(Ljava/lang/String;)V
    .locals 0
    .param p1, "sdkUpiPushExpiry"    # Ljava/lang/String;

    .line 47
    nop

    .end local p0    # "this":Lcom/payu/socketverification/socket/SocketPaymentResponse;
    .end local p1    # "sdkUpiPushExpiry":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->f:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setSdkUpiVerificationInterval(Ljava/lang/String;)V
    .locals 0
    .param p1, "sdkUpiVerificationInterval"    # Ljava/lang/String;

    .line 55
    nop

    .end local p0    # "this":Lcom/payu/socketverification/socket/SocketPaymentResponse;
    .end local p1    # "sdkUpiVerificationInterval":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->g:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setTxnId(Ljava/lang/String;)V
    .locals 0
    .param p1, "txnId"    # Ljava/lang/String;

    .line 102
    nop

    .end local p0    # "this":Lcom/payu/socketverification/socket/SocketPaymentResponse;
    .end local p1    # "txnId":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->b:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setUpiPushDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "upiPushDisabled"    # Ljava/lang/String;

    .line 23
    nop

    .end local p0    # "this":Lcom/payu/socketverification/socket/SocketPaymentResponse;
    .end local p1    # "upiPushDisabled":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->c:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setUpiServicePollInterval(Ljava/lang/String;)V
    .locals 0
    .param p1, "upiServicePollInterval"    # Ljava/lang/String;

    .line 39
    nop

    .end local p0    # "this":Lcom/payu/socketverification/socket/SocketPaymentResponse;
    .end local p1    # "upiServicePollInterval":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->e:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 114
    iget-object p2, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object p2, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object p2, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object p2, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object p2, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    nop

    .end local p0    # "this":Lcom/payu/socketverification/socket/SocketPaymentResponse;
    .end local p1    # "parcel":Landroid/os/Parcel;
    iget-object p2, p0, Lcom/payu/socketverification/socket/SocketPaymentResponse;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    return-void
.end method
