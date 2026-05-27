.class public Lcom/payumoney/core/response/PayumoneyError;
.super Lcom/payumoney/core/response/PayumoneyResponse;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payumoney/core/response/PayumoneyError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private errorData:Lorg/json/JSONObject;

.field private statusCode:I

.field private final transactionResponse:Lcom/payumoney/core/response/TransactionResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/payumoney/core/response/PayumoneyError$1;

    invoke-direct {v0}, Lcom/payumoney/core/response/PayumoneyError$1;-><init>()V

    sput-object v0, Lcom/payumoney/core/response/PayumoneyError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 61
    invoke-direct {p0, p1}, Lcom/payumoney/core/response/PayumoneyResponse;-><init>(Landroid/os/Parcel;)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/payumoney/core/response/PayumoneyError;->statusCode:I

    .line 62
    const-class v0, Lcom/payumoney/core/response/TransactionResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/response/TransactionResponse;

    iput-object v0, p0, Lcom/payumoney/core/response/PayumoneyError;->transactionResponse:Lcom/payumoney/core/response/TransactionResponse;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/payumoney/core/response/PayumoneyResponse$Status;->FAILED:Lcom/payumoney/core/response/PayumoneyResponse$Status;

    invoke-direct {p0, p1, v0}, Lcom/payumoney/core/response/PayumoneyResponse;-><init>(Ljava/lang/String;Lcom/payumoney/core/response/PayumoneyResponse$Status;)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/payumoney/core/response/PayumoneyError;->statusCode:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/response/PayumoneyError;->transactionResponse:Lcom/payumoney/core/response/TransactionResponse;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/payumoney/core/response/PayumoneyResponse$Status;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/payumoney/core/response/PayumoneyResponse$Status;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/payumoney/core/response/PayumoneyResponse;-><init>(Ljava/lang/String;Lcom/payumoney/core/response/PayumoneyResponse$Status;)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/payumoney/core/response/PayumoneyError;->statusCode:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/response/PayumoneyError;->transactionResponse:Lcom/payumoney/core/response/TransactionResponse;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/payumoney/core/response/PayumoneyResponse$Status;Lcom/payumoney/core/response/TransactionResponse;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/payumoney/core/response/PayumoneyResponse$Status;
    .param p3, "transactionResponse"    # Lcom/payumoney/core/response/TransactionResponse;

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/payumoney/core/response/PayumoneyResponse;-><init>(Ljava/lang/String;Lcom/payumoney/core/response/PayumoneyResponse$Status;)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/payumoney/core/response/PayumoneyError;->statusCode:I

    .line 52
    iput-object p3, p0, Lcom/payumoney/core/response/PayumoneyError;->transactionResponse:Lcom/payumoney/core/response/TransactionResponse;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/payumoney/core/response/PayumoneyResponse$Status;Lcom/payumoney/core/response/TransactionResponse;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "rawResponse"    # Ljava/lang/String;
    .param p3, "status"    # Lcom/payumoney/core/response/PayumoneyResponse$Status;
    .param p4, "transactionResponse"    # Lcom/payumoney/core/response/TransactionResponse;

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/payumoney/core/response/PayumoneyResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/payumoney/core/response/PayumoneyResponse$Status;)V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/payumoney/core/response/PayumoneyError;->statusCode:I

    .line 57
    iput-object p4, p0, Lcom/payumoney/core/response/PayumoneyError;->transactionResponse:Lcom/payumoney/core/response/TransactionResponse;

    .line 58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getErrorData()Lorg/json/JSONObject;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/payumoney/core/response/PayumoneyError;->errorData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/payumoney/core/response/PayumoneyError;->statusCode:I

    return v0
.end method

.method public getTransactionResponse()Lcom/payumoney/core/response/TransactionResponse;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/payumoney/core/response/PayumoneyError;->transactionResponse:Lcom/payumoney/core/response/TransactionResponse;

    return-object v0
.end method

.method public setErrorData(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "errorData"    # Lorg/json/JSONObject;

    .line 93
    iput-object p1, p0, Lcom/payumoney/core/response/PayumoneyError;->errorData:Lorg/json/JSONObject;

    .line 94
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .line 85
    iput p1, p0, Lcom/payumoney/core/response/PayumoneyError;->statusCode:I

    .line 86
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 76
    invoke-super {p0, p1, p2}, Lcom/payumoney/core/response/PayumoneyResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 77
    iget-object v0, p0, Lcom/payumoney/core/response/PayumoneyError;->transactionResponse:Lcom/payumoney/core/response/TransactionResponse;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 78
    return-void
.end method
