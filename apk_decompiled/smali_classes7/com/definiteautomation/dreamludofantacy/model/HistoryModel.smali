.class public Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;
.super Ljava/lang/Object;
.source "HistoryModel.java"


# instance fields
.field private amount:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amount"
    .end annotation
.end field

.field private date_created:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date_created"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private msg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg"
    .end annotation
.end field

.field private order_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order_id"
    .end annotation
.end field

.field private payment_getway:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payment_getway"
    .end annotation
.end field

.field private payment_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payment_id"
    .end annotation
.end field

.field private reg_name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reg_name"
    .end annotation
.end field

.field private reg_number:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reg_number"
    .end annotation
.end field

.field private remark:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "remark"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private success:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "success"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private user_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()D
    .locals 2

    .line 115
    iget-wide v0, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->amount:D

    return-wide v0
.end method

.method public getDate_created()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->date_created:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder_id()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->order_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPayment_getway()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->payment_getway:Ljava/lang/String;

    return-object v0
.end method

.method public getPayment_id()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->payment_id:Ljava/lang/String;

    return-object v0
.end method

.method public getReg_name()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->reg_name:Ljava/lang/String;

    return-object v0
.end method

.method public getReg_number()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->reg_number:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccess()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->success:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(D)V
    .locals 0
    .param p1, "amount"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amount"
        }
    .end annotation

    .line 119
    iput-wide p1, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->amount:D

    .line 120
    return-void
.end method

.method public setDate_created(Ljava/lang/String;)V
    .locals 0
    .param p1, "date_created"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "date_created"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->date_created:Ljava/lang/String;

    .line 160
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

    .line 71
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->id:Ljava/lang/String;

    .line 72
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

    .line 55
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->msg:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setOrder_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "order_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "order_id"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->order_id:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setPayment_getway(Ljava/lang/String;)V
    .locals 0
    .param p1, "payment_getway"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "payment_getway"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->payment_getway:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setPayment_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "payment_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "payment_id"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->payment_id:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setReg_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "reg_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reg_name"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->reg_name:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setReg_number(Ljava/lang/String;)V
    .locals 0
    .param p1, "reg_number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reg_number"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->reg_number:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0
    .param p1, "remark"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remark"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->remark:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->status:Ljava/lang/String;

    .line 152
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

    .line 63
    iput p1, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->success:I

    .line 64
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->type:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "user_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "user_id"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/model/HistoryModel;->user_id:Ljava/lang/String;

    .line 80
    return-void
.end method
