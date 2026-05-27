.class public Lcom/payumoney/core/entity/CardDetail;
.super Lcom/payumoney/core/entity/SdkEntity;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payumoney/core/entity/CardDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLabel:Ljava/lang/String;

.field private mMode:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private oneClickCheckout:Z

.field private pg:Ljava/lang/String;

.field private rewardPoint:Z

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/payumoney/core/entity/CardDetail$1;

    invoke-direct {v0}, Lcom/payumoney/core/entity/CardDetail$1;-><init>()V

    sput-object v0, Lcom/payumoney/core/entity/CardDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/payumoney/core/entity/SdkEntity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mName:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mNumber:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mLabel:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mToken:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mMode:Ljava/lang/String;

    .line 33
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 35
    invoke-direct {p0}, Lcom/payumoney/core/entity/SdkEntity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mName:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mNumber:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mLabel:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mToken:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mMode:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mName:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mNumber:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mLabel:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mToken:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mMode:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->pg:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->type:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/payumoney/core/entity/CardDetail;->oneClickCheckout:Z

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/payumoney/core/entity/CardDetail;->rewardPoint:Z

    .line 45
    return-void
.end method

.method public static isAmex(Ljava/lang/String;)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .line 68
    const-string v0, "34"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "37"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isValidNumber(Ljava/lang/String;)Z
    .locals 7
    .param p0, "number"    # Ljava/lang/String;

    .line 48
    const-string v0, "0"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 49
    return v1

    .line 51
    :cond_0
    nop

    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-ge v2, v5, :cond_3

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 55
    rem-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_1

    .line 56
    add-int/2addr v3, v5

    goto :goto_1

    .line 58
    :cond_1
    mul-int/lit8 v6, v5, 0x2

    add-int/2addr v4, v6

    .line 59
    const/4 v6, 0x5

    if-lt v5, v6, :cond_2

    .line 60
    add-int/lit8 v4, v4, -0x9

    .line 53
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_3
    add-int/2addr v3, v4

    rem-int/2addr v3, v6

    if-nez v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public getIssuer()Lcom/payumoney/core/entity/SdkIssuer;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mNumber:Ljava/lang/String;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/payumoney/core/entity/SdkIssuer;->VISA:Lcom/payumoney/core/entity/SdkIssuer;

    return-object v0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mNumber:Ljava/lang/String;

    const-string v1, "^((6304)|(6706)|(6771)|(6709))[\\d]+X+\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    sget-object v0, Lcom/payumoney/core/entity/SdkIssuer;->LASER:Lcom/payumoney/core/entity/SdkIssuer;

    return-object v0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mNumber:Ljava/lang/String;

    const-string v1, "(5[06-8]|6\\d)\\d{14}(\\d{2,3})?[\\d]+X+\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mNumber:Ljava/lang/String;

    const-string v1, "(5[06-8]|6\\d)[\\d]+X+\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mNumber:Ljava/lang/String;

    const-string v1, "((504([435|645|774|775|809|993]))|(60([0206]|[3845]))|(622[018])\\d)[\\d]+X+\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mNumber:Ljava/lang/String;

    const-string v1, "^5[1-5][\\d]+X+\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    sget-object v0, Lcom/payumoney/core/entity/SdkIssuer;->MASTERCARD:Lcom/payumoney/core/entity/SdkIssuer;

    return-object v0

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mNumber:Ljava/lang/String;

    const-string v1, "^3[47][\\d]+X+\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    sget-object v0, Lcom/payumoney/core/entity/SdkIssuer;->AMEX:Lcom/payumoney/core/entity/SdkIssuer;

    return-object v0

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mNumber:Ljava/lang/String;

    const-string v1, "36"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mNumber:Ljava/lang/String;

    const-string v1, "34"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mNumber:Ljava/lang/String;

    const-string v1, "37"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mNumber:Ljava/lang/String;

    const-string v1, "^30[0-5][\\d]+X+\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mNumber:Ljava/lang/String;

    const-string v1, "2(014|149)[\\d]+X+\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 133
    sget-object v0, Lcom/payumoney/core/entity/SdkIssuer;->DINER:Lcom/payumoney/core/entity/SdkIssuer;

    return-object v0

    .line 134
    :cond_6
    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mNumber:Ljava/lang/String;

    const-string v1, "^35(2[89]|[3-8][0-9])[\\d]+X+\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 135
    sget-object v0, Lcom/payumoney/core/entity/SdkIssuer;->JCB:Lcom/payumoney/core/entity/SdkIssuer;

    return-object v0

    .line 136
    :cond_7
    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mNumber:Ljava/lang/String;

    const-string v1, "6(?:011|5[0-9]{2})[0-9]{12}[\\d]+X+\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 137
    sget-object v0, Lcom/payumoney/core/entity/SdkIssuer;->DISCOVER:Lcom/payumoney/core/entity/SdkIssuer;

    return-object v0

    .line 139
    :cond_8
    sget-object v0, Lcom/payumoney/core/entity/SdkIssuer;->UNKNOWN:Lcom/payumoney/core/entity/SdkIssuer;

    return-object v0

    .line 131
    :cond_9
    :goto_0
    sget-object v0, Lcom/payumoney/core/entity/SdkIssuer;->DINER:Lcom/payumoney/core/entity/SdkIssuer;

    return-object v0

    .line 125
    :cond_a
    :goto_1
    sget-object v0, Lcom/payumoney/core/entity/SdkIssuer;->MAESTRO:Lcom/payumoney/core/entity/SdkIssuer;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mMode:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPg()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->pg:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isOneClickCheckout()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/payumoney/core/entity/CardDetail;->oneClickCheckout:Z

    return v0
.end method

.method public isRewardPoint()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/payumoney/core/entity/CardDetail;->rewardPoint:Z

    return v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 116
    iput-object p1, p0, Lcom/payumoney/core/entity/CardDetail;->mLabel:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .line 156
    iput-object p1, p0, Lcom/payumoney/core/entity/CardDetail;->mMode:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/payumoney/core/entity/CardDetail;->mName:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/payumoney/core/entity/CardDetail;->mNumber:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setOneClickCheckout(Z)V
    .locals 0
    .param p1, "oneClickCheckout"    # Z

    .line 76
    iput-boolean p1, p0, Lcom/payumoney/core/entity/CardDetail;->oneClickCheckout:Z

    .line 77
    return-void
.end method

.method public setPg(Ljava/lang/String;)V
    .locals 0
    .param p1, "pg"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/payumoney/core/entity/CardDetail;->pg:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setRewardPoint(Z)V
    .locals 0
    .param p1, "rewardPoint"    # Z

    .line 84
    iput-boolean p1, p0, Lcom/payumoney/core/entity/CardDetail;->rewardPoint:Z

    .line 85
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lcom/payumoney/core/entity/CardDetail;->mToken:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 164
    iput-object p1, p0, Lcom/payumoney/core/entity/CardDetail;->type:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 174
    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->mMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->pg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/payumoney/core/entity/CardDetail;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-boolean v0, p0, Lcom/payumoney/core/entity/CardDetail;->oneClickCheckout:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 182
    iget-boolean v0, p0, Lcom/payumoney/core/entity/CardDetail;->rewardPoint:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 183
    return-void
.end method
