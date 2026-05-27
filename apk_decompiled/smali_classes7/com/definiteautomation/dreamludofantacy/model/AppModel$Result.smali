.class public Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;
.super Ljava/lang/Object;
.source "AppModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/definiteautomation/dreamludofantacy/model/AppModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private country_code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "country_code"
    .end annotation
.end field

.field private currency_code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currency_code"
    .end annotation
.end field

.field private currency_sign:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currency_sign"
    .end annotation
.end field

.field private cus_support_email:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cus_support_email"
    .end annotation
.end field

.field private fcm_server_key:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fcm_server_key"
    .end annotation
.end field

.field private force_update:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "force_update"
    .end annotation
.end field

.field private how_to_play:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "how_to_play"
    .end annotation
.end field

.field private latest_version_code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "latest_version_code"
    .end annotation
.end field

.field private latest_version_name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "latest_version_name"
    .end annotation
.end field

.field private maintenance_mode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maintenance_mode"
    .end annotation
.end field

.field private mop:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mop"
    .end annotation
.end field

.field private msg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg"
    .end annotation
.end field

.field private paytm_mer_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paytm_mer_id"
    .end annotation
.end field

.field private paytm_mer_key:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paytm_mer_key"
    .end annotation
.end field

.field private payu_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payu_id"
    .end annotation
.end field

.field private payu_key:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payu_key"
    .end annotation
.end field

.field private payu_salt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payu_salt"
    .end annotation
.end field

.field private refer_percentage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refer_percentage"
    .end annotation
.end field

.field private success:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "success"
    .end annotation
.end field

.field private update_date:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_date"
    .end annotation
.end field

.field private update_url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_url"
    .end annotation
.end field

.field private whats_new:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "whats_new"
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
.method public getCurrency_code()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->currency_code:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency_sign()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->currency_sign:Ljava/lang/String;

    return-object v0
.end method

.method public getCus_support_email()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->cus_support_email:Ljava/lang/String;

    return-object v0
.end method

.method public getFcm_server_key()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->fcm_server_key:Ljava/lang/String;

    return-object v0
.end method

.method public getForce_update()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->force_update:Ljava/lang/String;

    return-object v0
.end method

.method public getHow_to_play()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->how_to_play:Ljava/lang/String;

    return-object v0
.end method

.method public getLatest_version_code()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->latest_version_code:Ljava/lang/String;

    return-object v0
.end method

.method public getLatest_version_name()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->latest_version_name:Ljava/lang/String;

    return-object v0
.end method

.method public getMaintenance_mode()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->maintenance_mode:I

    return v0
.end method

.method public getMop()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->mop:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getPaytm_mer_id()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->paytm_mer_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPaytm_mer_key()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->paytm_mer_key:Ljava/lang/String;

    return-object v0
.end method

.method public getPayu_id()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->payu_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPayu_key()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->payu_key:Ljava/lang/String;

    return-object v0
.end method

.method public getPayu_salt()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->payu_salt:Ljava/lang/String;

    return-object v0
.end method

.method public getRefer_percentage()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->refer_percentage:I

    return v0
.end method

.method public getSuccess()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->success:I

    return v0
.end method

.method public getUpdate_date()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->update_date:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_url()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->update_url:Ljava/lang/String;

    return-object v0
.end method

.method public getWhats_new()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->whats_new:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrency_code(Ljava/lang/String;)V
    .locals 0
    .param p1, "currency_code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currency_code"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->currency_code:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setCurrency_sign(Ljava/lang/String;)V
    .locals 0
    .param p1, "currency_sign"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currency_sign"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->currency_sign:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setCus_support_email(Ljava/lang/String;)V
    .locals 0
    .param p1, "cus_support_email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cus_support_email"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->cus_support_email:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setFcm_server_key(Ljava/lang/String;)V
    .locals 0
    .param p1, "fcm_server_key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fcm_server_key"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->fcm_server_key:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setForce_update(Ljava/lang/String;)V
    .locals 0
    .param p1, "force_update"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "force_update"
        }
    .end annotation

    .line 214
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->force_update:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setHow_to_play(Ljava/lang/String;)V
    .locals 0
    .param p1, "how_to_play"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "how_to_play"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->how_to_play:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setLatest_version_code(Ljava/lang/String;)V
    .locals 0
    .param p1, "latest_version_code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "latest_version_code"
        }
    .end annotation

    .line 246
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->latest_version_code:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setLatest_version_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "latest_version_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "latest_version_name"
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->latest_version_name:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setMaintenance_mode(I)V
    .locals 0
    .param p1, "maintenance_mode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maintenance_mode"
        }
    .end annotation

    .line 150
    iput p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->maintenance_mode:I

    .line 151
    return-void
.end method

.method public setMop(I)V
    .locals 0
    .param p1, "mop"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mop"
        }
    .end annotation

    .line 190
    iput p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->mop:I

    .line 191
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

    .line 94
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->msg:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setPaytm_mer_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "paytm_mer_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paytm_mer_id"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->paytm_mer_id:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setPaytm_mer_key(Ljava/lang/String;)V
    .locals 0
    .param p1, "paytm_mer_key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paytm_mer_key"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->paytm_mer_key:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setPayu_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "payu_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "payu_id"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->payu_id:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setPayu_key(Ljava/lang/String;)V
    .locals 0
    .param p1, "payu_key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "payu_key"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->payu_key:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setPayu_salt(Ljava/lang/String;)V
    .locals 0
    .param p1, "payu_salt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "payu_salt"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->payu_salt:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setRefer_percentage(I)V
    .locals 0
    .param p1, "refer_percentage"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refer_percentage"
        }
    .end annotation

    .line 142
    iput p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->refer_percentage:I

    .line 143
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

    .line 102
    iput p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->success:I

    .line 103
    return-void
.end method

.method public setUpdate_date(Ljava/lang/String;)V
    .locals 0
    .param p1, "update_date"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "update_date"
        }
    .end annotation

    .line 230
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->update_date:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setUpdate_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "update_url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "update_url"
        }
    .end annotation

    .line 254
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->update_url:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setWhats_new(Ljava/lang/String;)V
    .locals 0
    .param p1, "whats_new"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "whats_new"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/AppModel$Result;->whats_new:Ljava/lang/String;

    .line 223
    return-void
.end method
