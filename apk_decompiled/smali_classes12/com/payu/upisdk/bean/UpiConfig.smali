.class public Lcom/payu/upisdk/bean/UpiConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payu/upisdk/bean/UpiConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLE:I = -0x1

.field public static final ENABLE:I = 0x0

.field public static final TRUE:Z = true


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Landroid/view/View;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 172
    new-instance v0, Lcom/payu/upisdk/bean/UpiConfig$1;

    invoke-direct {v0}, Lcom/payu/upisdk/bean/UpiConfig$1;-><init>()V

    sput-object v0, Lcom/payu/upisdk/bean/UpiConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->m:Ljava/lang/String;

    .line 73
    const/16 v0, 0x2710

    iput v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->j:I

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->k:I

    .line 76
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->m:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->c:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->e:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->g:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->a:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->b:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->d:Z

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->j:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->k:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->m:Ljava/lang/String;

    .line 162
    nop

    .end local p0    # "this":Lcom/payu/upisdk/bean/UpiConfig;
    .end local p1    # "in":Landroid/os/Parcel;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/upisdk/bean/UpiConfig;->n:Ljava/lang/String;

    .line 163
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public getGmsProviderUpdatedStatus()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->k:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantKey()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantResponseTimeout()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->j:I

    return v0
.end method

.method public getPayUOptionPaymentHash()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentRelatedDetailsForMobileSdkHash()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentType()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPayuPostData()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getPostUrl()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressDialogCustomView()Landroid/view/View;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->l:Landroid/view/View;

    return-object v0
.end method

.method public getTransactionID()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCredentials()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getWebServiceUrl()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->m:Ljava/lang/String;

    return-object v0
.end method

.method public isPhonePeUserCacheEnabled()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->d:Z

    return v0
.end method

.method public setGmsProviderUpdatedStatus(I)V
    .locals 0
    .param p1, "gmsProviderUpdatedStatus"    # I

    .line 169
    nop

    .end local p0    # "this":Lcom/payu/upisdk/bean/UpiConfig;
    .end local p1    # "gmsProviderUpdatedStatus":I
    iput p1, p0, Lcom/payu/upisdk/bean/UpiConfig;->k:I

    .line 170
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 53
    nop

    .end local p0    # "this":Lcom/payu/upisdk/bean/UpiConfig;
    .end local p1    # "key":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/bean/UpiConfig;->h:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setMerchantKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "merchantKey"    # Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/payu/upisdk/bean/UpiConfig;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 115
    :cond_0
    nop

    .end local p0    # "this":Lcom/payu/upisdk/bean/UpiConfig;
    .end local p1    # "merchantKey":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/bean/UpiConfig;->e:Ljava/lang/String;

    .line 118
    :cond_1
    return-void
.end method

.method public setMerchantResponseTimeout(I)V
    .locals 0
    .param p1, "merchantResponseTimeout"    # I

    .line 37
    nop

    .end local p0    # "this":Lcom/payu/upisdk/bean/UpiConfig;
    .end local p1    # "merchantResponseTimeout":I
    iput p1, p0, Lcom/payu/upisdk/bean/UpiConfig;->j:I

    .line 38
    return-void
.end method

.method public setPayUOptionPaymentHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "payUOptionPaymentHash"    # Ljava/lang/String;

    .line 91
    nop

    .end local p0    # "this":Lcom/payu/upisdk/bean/UpiConfig;
    .end local p1    # "payUOptionPaymentHash":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/bean/UpiConfig;->c:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setPaymentRelatedDetailsForMobileSdkHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "paymentRelatedDetailsForMobileSdkHash"    # Ljava/lang/String;

    .line 45
    nop

    .end local p0    # "this":Lcom/payu/upisdk/bean/UpiConfig;
    .end local p1    # "paymentRelatedDetailsForMobileSdkHash":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/bean/UpiConfig;->f:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setPaymentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "paymentType"    # Ljava/lang/String;

    .line 83
    nop

    .end local p0    # "this":Lcom/payu/upisdk/bean/UpiConfig;
    .end local p1    # "paymentType":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/bean/UpiConfig;->a:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setPayuPostData(Ljava/lang/String;)V
    .locals 0
    .param p1, "payuPostData"    # Ljava/lang/String;

    .line 100
    nop

    .end local p0    # "this":Lcom/payu/upisdk/bean/UpiConfig;
    .end local p1    # "payuPostData":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/bean/UpiConfig;->g:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setPhonePeUserCacheEnabled(Z)V
    .locals 0
    .param p1, "phonePeUserCacheEnabled"    # Z

    .line 69
    nop

    .end local p0    # "this":Lcom/payu/upisdk/bean/UpiConfig;
    .end local p1    # "phonePeUserCacheEnabled":Z
    iput-boolean p1, p0, Lcom/payu/upisdk/bean/UpiConfig;->d:Z

    .line 70
    return-void
.end method

.method public setPostUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "postUrl"    # Ljava/lang/String;

    .line 206
    nop

    .end local p0    # "this":Lcom/payu/upisdk/bean/UpiConfig;
    .end local p1    # "postUrl":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/bean/UpiConfig;->n:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setProgressDialogCustomView(Landroid/view/View;)V
    .locals 0
    .param p1, "progressDialogCustomView"    # Landroid/view/View;

    .line 189
    nop

    .end local p0    # "this":Lcom/payu/upisdk/bean/UpiConfig;
    .end local p1    # "progressDialogCustomView":Landroid/view/View;
    iput-object p1, p0, Lcom/payu/upisdk/bean/UpiConfig;->l:Landroid/view/View;

    .line 190
    return-void
.end method

.method public setTransactionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionID"    # Ljava/lang/String;

    .line 135
    nop

    .end local p0    # "this":Lcom/payu/upisdk/bean/UpiConfig;
    .end local p1    # "transactionID":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/bean/UpiConfig;->b:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setUserCredentials(Ljava/lang/String;)V
    .locals 0
    .param p1, "userCredentials"    # Ljava/lang/String;

    .line 61
    nop

    .end local p0    # "this":Lcom/payu/upisdk/bean/UpiConfig;
    .end local p1    # "userCredentials":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/bean/UpiConfig;->i:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setWebServiceUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "webServiceUrl"    # Ljava/lang/String;

    .line 198
    nop

    .end local p0    # "this":Lcom/payu/upisdk/bean/UpiConfig;
    .end local p1    # "webServiceUrl":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/bean/UpiConfig;->m:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 140
    iget-object p2, p0, Lcom/payu/upisdk/bean/UpiConfig;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object p2, p0, Lcom/payu/upisdk/bean/UpiConfig;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object p2, p0, Lcom/payu/upisdk/bean/UpiConfig;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object p2, p0, Lcom/payu/upisdk/bean/UpiConfig;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object p2, p0, Lcom/payu/upisdk/bean/UpiConfig;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-boolean p2, p0, Lcom/payu/upisdk/bean/UpiConfig;->d:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 146
    iget p2, p0, Lcom/payu/upisdk/bean/UpiConfig;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget p2, p0, Lcom/payu/upisdk/bean/UpiConfig;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object p2, p0, Lcom/payu/upisdk/bean/UpiConfig;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    nop

    .end local p0    # "this":Lcom/payu/upisdk/bean/UpiConfig;
    .end local p1    # "dest":Landroid/os/Parcel;
    iget-object p2, p0, Lcom/payu/upisdk/bean/UpiConfig;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    return-void
.end method
