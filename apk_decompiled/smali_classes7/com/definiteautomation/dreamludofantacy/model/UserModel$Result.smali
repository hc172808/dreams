.class public Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;
.super Ljava/lang/Object;
.source "UserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/definiteautomation/dreamludofantacy/model/UserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private bonus_bal:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bonus_bal"
    .end annotation
.end field

.field private country_code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "country_code"
    .end annotation
.end field

.field private deposit_bal:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deposit_bal"
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field private fcm_token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fcm_token"
    .end annotation
.end field

.field private full_name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "full_name"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private is_active:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_active"
    .end annotation
.end field

.field private is_block:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_block"
    .end annotation
.end field

.field private mobile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mobile"
    .end annotation
.end field

.field private msg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg"
    .end annotation
.end field

.field private profile_img:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile_img"
    .end annotation
.end field

.field private success:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "success"
    .end annotation
.end field

.field private username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field

.field private whatsapp_no:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "whatsapp_no"
    .end annotation
.end field

.field private won_bal:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "won_bal"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBonus_bal()D
    .locals 2

    .line 168
    iget-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->bonus_bal:D

    return-wide v0
.end method

.method public getCountry_code()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->country_code:Ljava/lang/String;

    return-object v0
.end method

.method public getDeposit_bal()D
    .locals 2

    .line 152
    iget-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->deposit_bal:D

    return-wide v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFcm_token()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->fcm_token:Ljava/lang/String;

    return-object v0
.end method

.method public getFull_name()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->full_name:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_active()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->is_active:I

    return v0
.end method

.method public getIs_block()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->is_block:I

    return v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile_img()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->profile_img:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccess()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->success:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getWhatsapp_no()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->whatsapp_no:Ljava/lang/String;

    return-object v0
.end method

.method public getWon_bal()D
    .locals 2

    .line 160
    iget-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->won_bal:D

    return-wide v0
.end method

.method public setBonus_bal(D)V
    .locals 0
    .param p1, "bonus_bal"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bonus_bal"
        }
    .end annotation

    .line 172
    iput-wide p1, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->bonus_bal:D

    .line 173
    return-void
.end method

.method public setCountry_code(Ljava/lang/String;)V
    .locals 0
    .param p1, "country_code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "country_code"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->country_code:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setDeposit_bal(D)V
    .locals 0
    .param p1, "deposit_bal"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deposit_bal"
        }
    .end annotation

    .line 156
    iput-wide p1, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->deposit_bal:D

    .line 157
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "email"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->email:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setFcm_token(Ljava/lang/String;)V
    .locals 0
    .param p1, "fcm_token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fcm_token"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->fcm_token:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setFull_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "full_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "full_name"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->full_name:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->id:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setIs_active(I)V
    .locals 0
    .param p1, "is_active"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_active"
        }
    .end annotation

    .line 188
    iput p1, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->is_active:I

    .line 189
    return-void
.end method

.method public setIs_block(I)V
    .locals 0
    .param p1, "is_block"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is_block"
        }
    .end annotation

    .line 196
    iput p1, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->is_block:I

    .line 197
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mobile"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->mobile:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->msg:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setProfile_img(Ljava/lang/String;)V
    .locals 0
    .param p1, "profile_img"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "profile_img"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->profile_img:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setSuccess(I)V
    .locals 0
    .param p1, "success"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "success"
        }
    .end annotation

    .line 84
    iput p1, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->success:I

    .line 85
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "username"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->username:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setWhatsapp_no(Ljava/lang/String;)V
    .locals 0
    .param p1, "whatsapp_no"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "whatsapp_no"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->whatsapp_no:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setWon_bal(D)V
    .locals 0
    .param p1, "won_bal"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "won_bal"
        }
    .end annotation

    .line 164
    iput-wide p1, p0, Lcom/definiteautomation/dreamludofantacy/model/UserModel$Result;->won_bal:D

    .line 165
    return-void
.end method
