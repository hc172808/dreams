.class public Lcom/payu/custombrowser/bean/CustomBrowserConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payu/custombrowser/bean/CustomBrowserConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLE:I = -0x1

.field public static final ENABLE:I = 0x0

.field public static final FAIL_MODE:I = 0x2

.field public static final FALSE:I = -0x1

.field private static N:Landroid/view/View; = null

.field public static final TRUE:I = 0x0

.field public static final WARN_MODE:I = 0x1


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:Ljava/lang/String;

.field private H:Landroid/widget/ArrayAdapter;

.field private I:I

.field private J:Ljava/lang/String;

.field private K:I

.field private transient L:Lcom/payu/custombrowser/bean/ReviewOrderBundle;

.field private M:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:I

.field private U:Landroid/view/View;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/StringBuffer;

.field private X:Ljava/lang/String;

.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

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

    .line 142
    new-instance v0, Lcom/payu/custombrowser/bean/CustomBrowserConfig$1;

    invoke-direct {v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig$1;-><init>()V

    sput-object v0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->b:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->c:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->d:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->e:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->f:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->g:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->h:I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->i:I

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->j:I

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->k:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->l:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->m:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->n:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->o:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->p:I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->q:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->r:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->s:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->t:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->u:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->v:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->w:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->x:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->y:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->z:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->A:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->B:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->G:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->C:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->D:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->E:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->M:I

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->I:I

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->J:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->K:I

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->O:I

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->P:I

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->Q:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->R:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->T:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->F:I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->V:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->X:Ljava/lang/String;

    .line 203
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->W:Ljava/lang/StringBuffer;

    .line 204
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "merchantKey"    # Ljava/lang/String;
    .param p2, "transactionID"    # Ljava/lang/String;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->W:Ljava/lang/StringBuffer;

    .line 208
    iput-object p2, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->e:Ljava/lang/String;

    .line 209
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->f:Ljava/lang/String;

    .line 211
    sget v0, Lcom/payu/custombrowser/R$drawable;->surepay_logo:I

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->p:I

    .line 212
    const-string v0, "Internet Restored"

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->q:Ljava/lang/String;

    .line 213
    const-string v0, "You can now resume the transaction"

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->r:Ljava/lang/String;

    .line 215
    const-string v0, "No Internet Found"

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->t:Ljava/lang/String;

    .line 216
    const-string v0, "We could not detect internet on your device"

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->u:Ljava/lang/String;

    .line 218
    const-string v0, "Transaction Verified"

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->w:Ljava/lang/String;

    .line 219
    const-string v0, "The bank has verified this transaction and we are good to go."

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->x:Ljava/lang/String;

    .line 221
    const-string v0, "Transaction Status Unknown"

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->z:Ljava/lang/String;

    .line 222
    const-string v0, "The bank could not verify the transaction at this time."

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->A:Ljava/lang/String;

    .line 224
    const-string v0, "payu_surepay_channel"

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->G:Ljava/lang/String;

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->k:I

    .line 229
    const/4 v1, 0x1

    iput v1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->C:I

    .line 231
    const v2, 0x1b7740

    iput v2, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->D:I

    .line 233
    const/16 v2, 0x1388

    iput v2, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->E:I

    .line 234
    const/4 v3, -0x1

    iput v3, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->M:I

    .line 235
    iput v3, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->I:I

    .line 236
    iput v3, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->K:I

    .line 238
    iput v1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->P:I

    .line 240
    iput v3, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->Q:I

    .line 241
    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->T:I

    .line 242
    iput v2, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->F:I

    .line 243
    const-string v0, "https://info.payu.in/merchant/postservice.php?form=2"

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->X:Ljava/lang/String;

    .line 244
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->W:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 759
    iget-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->W:Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 760
    iget-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->W:Ljava/lang/StringBuffer;

    const-string p2, "|"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 761
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public getAnalyticsString()Ljava/lang/String;
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->W:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoApprove()I
    .locals 1

    .line 403
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->c:I

    return v0
.end method

.method public getAutoSelectOTP()I
    .locals 1

    .line 417
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->d:I

    return v0
.end method

.method public getCbDrawerCustomMenu()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->O:I

    return v0
.end method

.method public getCbMenuAdapter()Landroid/widget/ArrayAdapter;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->H:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method public getDisableBackButtonDialog()I
    .locals 1

    .line 385
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->i:I

    return v0
.end method

.method public getEnableReviewOrder()I
    .locals 1

    .line 637
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->I:I

    return v0
.end method

.method public getEnableSurePay()I
    .locals 1

    .line 340
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->k:I

    return v0
.end method

.method public getEnableWebFlow()I
    .locals 1

    .line 358
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->P:I

    return v0
.end method

.method public getGmsProviderUpdatedStatus()I
    .locals 1

    .line 672
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->Q:I

    return v0
.end method

.method public getHtmlData()Ljava/lang/String;
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getInternetRestoredWindowTTL()I
    .locals 1

    .line 592
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->E:I

    return v0
.end method

.method public getIsPhonePeUserCacheEnabled()I
    .locals 1

    .line 722
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->T:I

    return v0
.end method

.method public getMerchantCheckoutActivityPath()Ljava/lang/String;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantKey()Ljava/lang/String;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantResponseTimeout()I
    .locals 1

    .line 731
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->F:I

    return v0
.end method

.method public getMerchantSMSPermission()I
    .locals 1

    .line 349
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->j:I

    return v0
.end method

.method public getPayUOptionPaymentHash()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentType()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->V:Ljava/lang/String;

    return-object v0
.end method

.method public getPayuPostData()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getPostURL()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressDialogCustomView()Landroid/view/View;
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->U:Landroid/view/View;

    return-object v0
.end method

.method public getReactVersion()Ljava/lang/String;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->S:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewOrderButtonText()Ljava/lang/String;
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->J:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewOrderButtonTextColor()I
    .locals 1

    .line 628
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->K:I

    return v0
.end method

.method public getReviewOrderCustomView()I
    .locals 1

    .line 655
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->M:I

    return v0
.end method

.method public getReviewOrderDefaultViewData()Lcom/payu/custombrowser/bean/ReviewOrderBundle;
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->L:Lcom/payu/custombrowser/bean/ReviewOrderBundle;

    return-object v0
.end method

.method public getSdkVersionName()Ljava/lang/String;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getShowCustombrowser()I
    .locals 1

    .line 457
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->h:I

    return v0
.end method

.method public getSurePayBackgroundTTL()I
    .locals 1

    .line 646
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->D:I

    return v0
.end method

.method public getSurePayMode()I
    .locals 1

    .line 583
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->C:I

    return v0
.end method

.method public getSurePayNotificationChannelId()Ljava/lang/String;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->G:Ljava/lang/String;

    return-object v0
.end method

.method public getSurePayNotificationGoodNetWorkBody()Ljava/lang/String;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getSurePayNotificationGoodNetWorkHeader()Ljava/lang/String;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getSurePayNotificationGoodNetworkTitle()Ljava/lang/String;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getSurePayNotificationIcon()I
    .locals 1

    .line 574
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->p:I

    return v0
.end method

.method public getSurePayNotificationPoorNetWorkBody()Ljava/lang/String;
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getSurePayNotificationPoorNetWorkHeader()Ljava/lang/String;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getSurePayNotificationPoorNetWorkTitle()Ljava/lang/String;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getSurePayNotificationTransactionNotVerifiedBody()Ljava/lang/String;
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getSurePayNotificationTransactionNotVerifiedHeader()Ljava/lang/String;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getSurePayNotificationTransactionNotVerifiedTitle()Ljava/lang/String;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getSurePayNotificationTransactionVerifiedBody()Ljava/lang/String;
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getSurePayNotificationTransactionVerifiedHeader()Ljava/lang/String;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getSurePayNotificationTransactionVerifiedTitle()Ljava/lang/String;
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getSurepayS2Surl()Ljava/lang/String;
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->R:Ljava/lang/String;

    return-object v0
.end method

.method public getToolBarView()Landroid/view/View;
    .locals 1

    .line 135
    sget-object v0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->N:Landroid/view/View;

    return-object v0
.end method

.method public getTransactionID()Ljava/lang/String;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getViewPortWideEnable()I
    .locals 1

    .line 394
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->b:I

    return v0
.end method

.method public getWebServiceUrl()Ljava/lang/String;
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->X:Ljava/lang/String;

    return-object v0
.end method

.method public setAutoApprove(Z)V
    .locals 2
    .param p1, "autoApprove"    # Z

    .line 407
    iput p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->c:I

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aa_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public setAutoSelectOTP(Z)V
    .locals 2
    .param p1, "autoSelectOTP"    # Z

    .line 421
    iput p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->d:I

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aso_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method public setCbDrawerCustomMenu(I)V
    .locals 0
    .param p1, "cbDrawerCustomMenu"    # I

    .line 131
    iput p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->O:I

    .line 132
    return-void
.end method

.method public setCbMenuAdapter(Landroid/widget/ArrayAdapter;)V
    .locals 0
    .param p1, "cbMenuAdapter"    # Landroid/widget/ArrayAdapter;

    .line 92
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->H:Landroid/widget/ArrayAdapter;

    .line 93
    return-void
.end method

.method public setDisableBackButtonDialog(Z)V
    .locals 2
    .param p1, "disableBackButtonDialog"    # Z

    .line 389
    iput p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->i:I

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dbbd_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public setEnableReviewOrder(I)V
    .locals 2
    .param p1, "enableReviewOrder"    # I

    .line 641
    iput p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->I:I

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->I:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ero_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    return-void
.end method

.method public setEnableSurePay(I)V
    .locals 2
    .param p1, "enableSurePay"    # I

    .line 344
    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->k:I

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "esp_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public setEnableWebFlow(Lcom/payu/custombrowser/upiintent/Payment;Z)V
    .locals 0
    .param p1, "payment"    # Lcom/payu/custombrowser/upiintent/Payment;
    .param p2, "enableWebFlow"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 363
    invoke-virtual {p1, p2}, Lcom/payu/custombrowser/upiintent/Payment;->setWebFlowSupported(Z)V

    .line 364
    return-void
.end method

.method public setGmsProviderUpdatedStatus(I)V
    .locals 2
    .param p1, "gmsProviderUpdatedStatus"    # I

    .line 676
    iput p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->Q:I

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->Q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gpus_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method public setHtmlData(Ljava/lang/String;)V
    .locals 2
    .param p1, "htmlData"    # Ljava/lang/String;

    .line 685
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->o:Ljava/lang/String;

    .line 686
    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "hd_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    return-void
.end method

.method public setInternetRestoredWindowTTL(I)V
    .locals 2
    .param p1, "internetRestoredWindowTTL"    # I

    .line 596
    iput p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->E:I

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->E:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "irwttl_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method public setIsPhonePeUserCacheEnabled(I)V
    .locals 2
    .param p1, "isPhonePeUserCacheEnabled"    # I

    .line 726
    iput p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->T:I

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->T:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ipuce_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    return-void
.end method

.method public setMerchantCheckoutActivityPath(Ljava/lang/String;)V
    .locals 2
    .param p1, "merchantCheckoutActivityPath"    # Ljava/lang/String;

    .line 380
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->l:Ljava/lang/String;

    .line 381
    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "mcap_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public setMerchantKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "merchantKey"    # Ljava/lang/String;

    .line 439
    sget-object v0, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    iput-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->f:Ljava/lang/String;

    .line 440
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 441
    :cond_0
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->f:Ljava/lang/String;

    .line 442
    sput-object p1, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->f:Ljava/lang/String;

    const-string v1, "mk_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public setMerchantResponseTimeout(I)V
    .locals 2
    .param p1, "merchantResponseTimeout"    # I

    .line 735
    iput p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->F:I

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mrt_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method public setMerchantSMSPermission(Z)V
    .locals 2
    .param p1, "merchantSMSPermission"    # Z

    .line 353
    iput p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->j:I

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msp_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public setPayUOptionPaymentHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "payUOptionPaymentHash"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setPaymentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "paymentType"    # Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->V:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setPayuPostData(Ljava/lang/String;)V
    .locals 3
    .param p1, "payuPostData"    # Ljava/lang/String;

    .line 314
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->n:Ljava/lang/String;

    .line 317
    new-instance v0, Lcom/payu/custombrowser/util/c;

    invoke-direct {v0}, Lcom/payu/custombrowser/util/c;-><init>()V

    invoke-virtual {v0, p1}, Lcom/payu/custombrowser/util/c;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Product info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "productinfo"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nAmount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "amount"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    iget-object v2, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->s:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 320
    iput-object v1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->s:Ljava/lang/String;

    .line 322
    :cond_0
    iget-object v2, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->v:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 323
    iput-object v1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->v:Ljava/lang/String;

    .line 325
    :cond_1
    iget-object v2, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->y:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 326
    iput-object v1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->y:Ljava/lang/String;

    .line 328
    :cond_2
    iget-object v2, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->B:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 329
    iput-object v1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->B:Ljava/lang/String;

    .line 333
    :cond_3
    const-string v1, "key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 334
    sget-object v2, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    if-nez v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/payu/custombrowser/Bank;->keyAnalytics:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->setMerchantKey(Ljava/lang/String;)V

    .line 337
    :cond_5
    return-void
.end method

.method public setPostURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "postURL"    # Ljava/lang/String;

    .line 306
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->m:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public setProgressDialogCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "progressDialogCustomView"    # Landroid/view/View;

    .line 744
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->U:Landroid/view/View;

    .line 745
    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "pdcv_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    return-void
.end method

.method public setReactVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "reactVersion"    # Ljava/lang/String;

    .line 713
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->S:Ljava/lang/String;

    .line 714
    const-string v0, "rv_"

    invoke-direct {p0, v0, p1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    return-void
.end method

.method public setReviewOrderButtonText(Ljava/lang/String;)V
    .locals 2
    .param p1, "reviewOrderButtonText"    # Ljava/lang/String;

    .line 617
    if-eqz p1, :cond_1

    .line 619
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    .line 622
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->J:Ljava/lang/String;

    .line 624
    const-string v0, "robt_"

    invoke-direct {p0, v0, p1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    return-void

    .line 620
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ReviewOrderButtonText size should be less than 16"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ReviewOrderButtonText cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReviewOrderButtonTextColor(I)V
    .locals 2
    .param p1, "reviewOrderButtonTextColor"    # I

    .line 632
    iput p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->K:I

    .line 633
    if-lez p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "robtc_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    return-void
.end method

.method public setReviewOrderCustomView(I)V
    .locals 2
    .param p1, "reviewOrderCustomView"    # I

    .line 659
    iput p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->M:I

    .line 660
    if-lez p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "rocv_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method public setReviewOrderDefaultViewData(Lcom/payu/custombrowser/bean/ReviewOrderBundle;)V
    .locals 0
    .param p1, "reviewOrderDefaultViewData"    # Lcom/payu/custombrowser/bean/ReviewOrderBundle;

    .line 668
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->L:Lcom/payu/custombrowser/bean/ReviewOrderBundle;

    .line 669
    return-void
.end method

.method public setSdkVersionName(Ljava/lang/String;)V
    .locals 2
    .param p1, "sdkVersionName"    # Ljava/lang/String;

    .line 452
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->g:Ljava/lang/String;

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->C:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "svn_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public setShowCustombrowser(Z)V
    .locals 2
    .param p1, "showCustombrowser"    # Z

    .line 461
    iput p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->h:I

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scb_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    return-void
.end method

.method public setSurePayBackgroundTTL(I)V
    .locals 2
    .param p1, "surePayBackgroundTTL"    # I

    .line 650
    iput p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->D:I

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spbttl_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method public setSurePayMode(I)V
    .locals 2
    .param p1, "surePayMode"    # I

    .line 587
    iput p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->C:I

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->C:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spm_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    return-void
.end method

.method public setSurePayNotificationChannelId(Ljava/lang/String;)V
    .locals 1
    .param p1, "surePayNotificationChannelId"    # Ljava/lang/String;

    .line 698
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->G:Ljava/lang/String;

    .line 699
    const-string v0, "spnci_"

    invoke-direct {p0, v0, p1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method public setSurePayNotificationGoodNetWorkBody(Ljava/lang/String;)V
    .locals 2
    .param p1, "surePayNotificationGoodNetWorkBody"    # Ljava/lang/String;

    .line 488
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->s:Ljava/lang/String;

    .line 489
    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "spngnb_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method public setSurePayNotificationGoodNetWorkHeader(Ljava/lang/String;)V
    .locals 2
    .param p1, "surePayNotificationGoodNetWorkHeader"    # Ljava/lang/String;

    .line 479
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->r:Ljava/lang/String;

    .line 480
    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "spngnh_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method public setSurePayNotificationGoodNetworkTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "surePayNotificationGoodNetworkTitle"    # Ljava/lang/String;

    .line 470
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->q:Ljava/lang/String;

    .line 471
    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "spngnt_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method public setSurePayNotificationIcon(I)V
    .locals 2
    .param p1, "surePayNotificationIcon"    # I

    .line 578
    iput p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->p:I

    .line 579
    if-lez p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "irwttl_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method public setSurePayNotificationPoorNetWorkBody(Ljava/lang/String;)V
    .locals 2
    .param p1, "surePayNotificationPoorNetWorkBody"    # Ljava/lang/String;

    .line 515
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->v:Ljava/lang/String;

    .line 516
    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "spnpnb_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method public setSurePayNotificationPoorNetWorkHeader(Ljava/lang/String;)V
    .locals 2
    .param p1, "surePayNotificationPoorNetWorkHeader"    # Ljava/lang/String;

    .line 506
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->u:Ljava/lang/String;

    .line 507
    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "spnpnh_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method public setSurePayNotificationPoorNetWorkTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "surePayNotificationPoorNetWorkTitle"    # Ljava/lang/String;

    .line 497
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->t:Ljava/lang/String;

    .line 498
    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "spnpnt_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method public setSurePayNotificationTransactionNotVerifiedBody(Ljava/lang/String;)V
    .locals 2
    .param p1, "surePayNotificationTransactionNotVerifiedBody"    # Ljava/lang/String;

    .line 569
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->B:Ljava/lang/String;

    .line 570
    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "spntnvb_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method public setSurePayNotificationTransactionNotVerifiedHeader(Ljava/lang/String;)V
    .locals 2
    .param p1, "surePayNotificationTransactionNotVerifiedHeader"    # Ljava/lang/String;

    .line 560
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->A:Ljava/lang/String;

    .line 561
    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "spntnvh_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    return-void
.end method

.method public setSurePayNotificationTransactionNotVerifiedTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "surePayNotificationTransactionNotVerifiedTitle"    # Ljava/lang/String;

    .line 551
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->z:Ljava/lang/String;

    .line 552
    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "spntnvt_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method public setSurePayNotificationTransactionVerifiedBody(Ljava/lang/String;)V
    .locals 2
    .param p1, "surePayNotificationTransactionVerifiedBody"    # Ljava/lang/String;

    .line 542
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->y:Ljava/lang/String;

    .line 543
    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "spntvb_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method public setSurePayNotificationTransactionVerifiedHeader(Ljava/lang/String;)V
    .locals 2
    .param p1, "surePayNotificationTransactionVerifiedHeader"    # Ljava/lang/String;

    .line 533
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->x:Ljava/lang/String;

    .line 534
    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "spntvh_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method public setSurePayNotificationTransactionVerifiedTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "surePayNotificationTransactionVerifiedTitle"    # Ljava/lang/String;

    .line 524
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->w:Ljava/lang/String;

    .line 525
    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "spntvt_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method public setSurepayS2Surl(Ljava/lang/String;)V
    .locals 1
    .param p1, "surepayS2Surl"    # Ljava/lang/String;

    .line 708
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->R:Ljava/lang/String;

    .line 709
    const-string v0, "spsu_"

    invoke-direct {p0, v0, p1}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    return-void
.end method

.method public setToolBarView(Landroid/view/View;)V
    .locals 0
    .param p1, "toolBarView"    # Landroid/view/View;

    .line 139
    sput-object p1, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->N:Landroid/view/View;

    .line 140
    return-void
.end method

.method public setViewPortWideEnable(Z)V
    .locals 2
    .param p1, "viewPortWideEnable"    # Z

    .line 398
    iput p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->b:I

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vpwe_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public setWebServiceUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "webServiceUrl"    # Ljava/lang/String;

    .line 753
    iput-object p1, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->X:Ljava/lang/String;

    .line 754
    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "wsu_"

    invoke-direct {p0, v1, v0}, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 249
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->p:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->G:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->C:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->D:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->E:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->M:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->I:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->J:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->K:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->O:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->P:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->Q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->R:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->T:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->F:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->V:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->X:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/payu/custombrowser/bean/CustomBrowserConfig;->W:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    return-void
.end method
