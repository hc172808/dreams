.class public Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/core/response/TransactionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransactionDetails"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private issuerRefNo:Ljava/lang/String;

.field private pgTxnNo:Ljava/lang/String;

.field private transactionDateTime:Ljava/lang/String;

.field private transactionGateway:Ljava/lang/String;

.field private transactionId:Ljava/lang/String;

.field private txRefNo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 481
    new-instance v0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails$1;

    invoke-direct {v0}, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails$1;-><init>()V

    sput-object v0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->transactionId:Ljava/lang/String;

    .line 491
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->txRefNo:Ljava/lang/String;

    .line 492
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->pgTxnNo:Ljava/lang/String;

    .line 493
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->issuerRefNo:Ljava/lang/String;

    .line 494
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->transactionGateway:Ljava/lang/String;

    .line 495
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->transactionDateTime:Ljava/lang/String;

    .line 514
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->transactionId:Ljava/lang/String;

    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->txRefNo:Ljava/lang/String;

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->pgTxnNo:Ljava/lang/String;

    .line 517
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->issuerRefNo:Ljava/lang/String;

    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->transactionGateway:Ljava/lang/String;

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->transactionDateTime:Ljava/lang/String;

    .line 520
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/payumoney/core/response/TransactionResponse$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/payumoney/core/response/TransactionResponse$1;

    .line 480
    invoke-direct {p0, p1}, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "transactionId"    # Ljava/lang/String;

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->transactionId:Ljava/lang/String;

    .line 491
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->txRefNo:Ljava/lang/String;

    .line 492
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->pgTxnNo:Ljava/lang/String;

    .line 493
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->issuerRefNo:Ljava/lang/String;

    .line 494
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->transactionGateway:Ljava/lang/String;

    .line 495
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->transactionDateTime:Ljava/lang/String;

    .line 501
    iput-object p1, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->transactionId:Ljava/lang/String;

    .line 502
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "txRefNo"    # Ljava/lang/String;
    .param p3, "pgTxnNo"    # Ljava/lang/String;
    .param p4, "issuerRefNo"    # Ljava/lang/String;
    .param p5, "transactionGateway"    # Ljava/lang/String;
    .param p6, "transactionDateTime"    # Ljava/lang/String;

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->transactionId:Ljava/lang/String;

    .line 491
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->txRefNo:Ljava/lang/String;

    .line 492
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->pgTxnNo:Ljava/lang/String;

    .line 493
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->issuerRefNo:Ljava/lang/String;

    .line 494
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->transactionGateway:Ljava/lang/String;

    .line 495
    iput-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->transactionDateTime:Ljava/lang/String;

    .line 505
    iput-object p1, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->transactionId:Ljava/lang/String;

    .line 506
    iput-object p2, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->txRefNo:Ljava/lang/String;

    .line 507
    iput-object p3, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->pgTxnNo:Ljava/lang/String;

    .line 508
    iput-object p4, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->issuerRefNo:Ljava/lang/String;

    .line 509
    iput-object p5, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->transactionGateway:Ljava/lang/String;

    .line 510
    iput-object p6, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->transactionDateTime:Ljava/lang/String;

    .line 511
    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;
    .locals 8
    .param p0, "response"    # Lorg/json/JSONObject;

    .line 523
    nop

    .line 525
    if-eqz p0, :cond_0

    .line 526
    const-string v0, "TxRefNo"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 527
    const-string v0, "pgTxnNo"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 528
    const-string v0, "issuerRefNo"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 529
    const-string v0, "TxGateway"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 530
    const-string v0, "txnDateTime"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 531
    const-string v0, "TxId"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 533
    new-instance v0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 525
    :cond_0
    const/4 v0, 0x0

    .line 536
    :goto_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method public getIssuerRefNo()Ljava/lang/String;
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->issuerRefNo:Ljava/lang/String;

    return-object v0
.end method

.method public getPgTxnNo()Ljava/lang/String;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->pgTxnNo:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionDateTime()Ljava/lang/String;
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->transactionDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionGateway()Ljava/lang/String;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->transactionGateway:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTxRefNo()Ljava/lang/String;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->txRefNo:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransactionDetails{transactionId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->transactionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", txRefNo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->txRefNo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pgTxnNo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->pgTxnNo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", issuerRefNo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->issuerRefNo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", transactionGateway=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->transactionGateway:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", transactionDateTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->transactionDateTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 582
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->transactionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->txRefNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->pgTxnNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->issuerRefNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->transactionGateway:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/payumoney/core/response/TransactionResponse$TransactionDetails;->transactionDateTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 588
    return-void
.end method
