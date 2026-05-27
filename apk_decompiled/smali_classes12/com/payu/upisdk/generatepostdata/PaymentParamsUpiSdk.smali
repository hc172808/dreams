.class public Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 150
    new-instance v0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk$1;

    invoke-direct {v0}, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk$1;-><init>()V

    sput-object v0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->a:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->b:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->c:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->d:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->n:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->m:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->e:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->f:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->g:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->p:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->q:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->r:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->s:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->t:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->u:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->v:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->w:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->x:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->h:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->i:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->j:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->k:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->l:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->y:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->z:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->A:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->B:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->C:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->D:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->E:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->F:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->G:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->H:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->I:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->J:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->K:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->L:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->o:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->M:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->N:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->P:Ljava/lang/String;

    .line 147
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "in":Landroid/os/Parcel;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->O:Ljava/lang/String;

    .line 148
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress1()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getBankCode()Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->M:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getCodUrl()Ljava/lang/String;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomNote()Ljava/lang/String;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getDropCategory()Ljava/lang/String;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getEnforcePayMethod()Ljava/lang/String;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getFurl()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getNoteCategory()Ljava/lang/String;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->C:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyURL()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->O:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferKey()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getPg()Ljava/lang/String;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->N:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getProductInfo()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingAddress1()Ljava/lang/String;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->F:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingAddress2()Ljava/lang/String;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->G:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingCity()Ljava/lang/String;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->H:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingCounty()Ljava/lang/String;
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->J:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingFirstName()Ljava/lang/String;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->D:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingLastName()Ljava/lang/String;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->E:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingPhone()Ljava/lang/String;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->L:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingState()Ljava/lang/String;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->I:Ljava/lang/String;

    return-object v0
.end method

.method public getShippingZipCode()Ljava/lang/String;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->K:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getSurl()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getTxnId()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUdf1()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getUdf2()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getUdf3()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getUdf4()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getUdf5()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCredentials()Ljava/lang/String;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getVpa()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->P:Ljava/lang/String;

    return-object v0
.end method

.method public getZipCode()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->x:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress1(Ljava/lang/String;)V
    .locals 0
    .param p1, "address1"    # Ljava/lang/String;

    .line 263
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "address1":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->s:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setAddress2(Ljava/lang/String;)V
    .locals 0
    .param p1, "address2"    # Ljava/lang/String;

    .line 271
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "address2":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->t:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "amount"    # Ljava/lang/String;

    .line 183
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "amount":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->c:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setBankCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankCode"    # Ljava/lang/String;

    .line 473
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "bankCode":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->M:Ljava/lang/String;

    .line 474
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .line 279
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "city":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->u:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public setCodUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "codUrl"    # Ljava/lang/String;

    .line 351
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "codUrl":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->y:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .line 295
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "country":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->w:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setCustomNote(Ljava/lang/String;)V
    .locals 0
    .param p1, "customNote"    # Ljava/lang/String;

    .line 375
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "customNote":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->B:Ljava/lang/String;

    .line 376
    return-void
.end method

.method public setDropCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "dropCategory"    # Ljava/lang/String;

    .line 359
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "dropCategory":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->z:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .line 207
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "email":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->m:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setEnforcePayMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "enforcePayMethod"    # Ljava/lang/String;

    .line 367
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "enforcePayMethod":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->A:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .line 199
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "firstName":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->n:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setFurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "furl"    # Ljava/lang/String;

    .line 223
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "furl":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->f:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "hash"    # Ljava/lang/String;

    .line 231
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "hash":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->g:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 167
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "key":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->a:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastName"    # Ljava/lang/String;

    .line 255
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "lastName":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->r:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setNoteCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "noteCategory"    # Ljava/lang/String;

    .line 383
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "noteCategory":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->C:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public setNotifyURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "notifyURL"    # Ljava/lang/String;

    .line 92
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "notifyURL":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->O:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setOfferKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "offerKey"    # Ljava/lang/String;

    .line 239
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "offerKey":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->p:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setPg(Ljava/lang/String;)V
    .locals 0
    .param p1, "pg"    # Ljava/lang/String;

    .line 481
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "pg":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->N:Ljava/lang/String;

    .line 482
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .line 247
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "phone":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->q:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setProductInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "productInfo"    # Ljava/lang/String;

    .line 191
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "productInfo":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->d:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setShippingAddress1(Ljava/lang/String;)V
    .locals 0
    .param p1, "shippingAddress1"    # Ljava/lang/String;

    .line 407
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "shippingAddress1":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->F:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public setShippingAddress2(Ljava/lang/String;)V
    .locals 0
    .param p1, "shippingAddress2"    # Ljava/lang/String;

    .line 415
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "shippingAddress2":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->G:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public setShippingCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "shippingCity"    # Ljava/lang/String;

    .line 423
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "shippingCity":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->H:Ljava/lang/String;

    .line 424
    return-void
.end method

.method public setShippingCounty(Ljava/lang/String;)V
    .locals 0
    .param p1, "shippingCounty"    # Ljava/lang/String;

    .line 439
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "shippingCounty":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->J:Ljava/lang/String;

    .line 440
    return-void
.end method

.method public setShippingFirstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "shippingFirstName"    # Ljava/lang/String;

    .line 391
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "shippingFirstName":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->D:Ljava/lang/String;

    .line 392
    return-void
.end method

.method public setShippingLastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "shippingLastName"    # Ljava/lang/String;

    .line 399
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "shippingLastName":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->E:Ljava/lang/String;

    .line 400
    return-void
.end method

.method public setShippingPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "shippingPhone"    # Ljava/lang/String;

    .line 455
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "shippingPhone":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->L:Ljava/lang/String;

    .line 456
    return-void
.end method

.method public setShippingState(Ljava/lang/String;)V
    .locals 0
    .param p1, "shippingState"    # Ljava/lang/String;

    .line 431
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "shippingState":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->I:Ljava/lang/String;

    .line 432
    return-void
.end method

.method public setShippingZipCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "shippingZipCode"    # Ljava/lang/String;

    .line 447
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "shippingZipCode":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->K:Ljava/lang/String;

    .line 448
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .line 287
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "state":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->v:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setSurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "surl"    # Ljava/lang/String;

    .line 215
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "surl":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->e:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setTxnId(Ljava/lang/String;)V
    .locals 0
    .param p1, "txnId"    # Ljava/lang/String;

    .line 175
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "txnId":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->b:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setUdf1(Ljava/lang/String;)V
    .locals 0
    .param p1, "udf1"    # Ljava/lang/String;

    .line 311
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "udf1":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->h:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public setUdf2(Ljava/lang/String;)V
    .locals 0
    .param p1, "udf2"    # Ljava/lang/String;

    .line 319
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "udf2":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->i:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public setUdf3(Ljava/lang/String;)V
    .locals 0
    .param p1, "udf3"    # Ljava/lang/String;

    .line 327
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "udf3":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->j:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setUdf4(Ljava/lang/String;)V
    .locals 0
    .param p1, "udf4"    # Ljava/lang/String;

    .line 335
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "udf4":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->k:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setUdf5(Ljava/lang/String;)V
    .locals 0
    .param p1, "udf5"    # Ljava/lang/String;

    .line 343
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "udf5":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->l:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setUserCredentials(Ljava/lang/String;)V
    .locals 0
    .param p1, "userCredentials"    # Ljava/lang/String;

    .line 463
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "userCredentials":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->o:Ljava/lang/String;

    .line 464
    return-void
.end method

.method public setVpa(Ljava/lang/String;)V
    .locals 0
    .param p1, "vpa"    # Ljava/lang/String;

    .line 100
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "vpa":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->P:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setZipCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "zipCode"    # Ljava/lang/String;

    .line 303
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "zipCode":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->x:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 494
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 495
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 496
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 497
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 498
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 499
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 500
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 501
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 502
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 503
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 504
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 505
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->r:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 506
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 507
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->t:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 508
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->u:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 509
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->v:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 510
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->w:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 511
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->x:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 512
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 513
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 514
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 515
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 516
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 517
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->y:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 518
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->z:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 519
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->A:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 520
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->B:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 521
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->C:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 522
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->D:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 523
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->E:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 524
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->F:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 525
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->G:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 526
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->H:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 527
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->I:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 528
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->J:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 529
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->K:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 530
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->L:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 531
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 532
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->M:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 533
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->N:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 534
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->P:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 535
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;
    .end local p1    # "dest":Landroid/os/Parcel;
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PaymentParamsUpiSdk;->O:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 536
    return-void
.end method
