.class public Lcom/payumoney/sdkui/ui/utils/ResultModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payumoney/sdkui/ui/utils/ResultModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private error:Lcom/payumoney/core/response/PayumoneyError;

.field private transactionResponse:Lcom/payumoney/core/entity/TransactionResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/payumoney/sdkui/ui/utils/ResultModel$1;

    invoke-direct {v0}, Lcom/payumoney/sdkui/ui/utils/ResultModel$1;-><init>()V

    sput-object v0, Lcom/payumoney/sdkui/ui/utils/ResultModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-class v0, Lcom/payumoney/core/entity/TransactionResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/TransactionResponse;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/utils/ResultModel;->transactionResponse:Lcom/payumoney/core/entity/TransactionResponse;

    .line 39
    const-class v0, Lcom/payumoney/core/response/PayumoneyError;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/response/PayumoneyError;

    iput-object v0, p0, Lcom/payumoney/sdkui/ui/utils/ResultModel;->error:Lcom/payumoney/core/response/PayumoneyError;

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/payumoney/sdkui/ui/utils/ResultModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/payumoney/sdkui/ui/utils/ResultModel$1;

    .line 15
    invoke-direct {p0, p1}, Lcom/payumoney/sdkui/ui/utils/ResultModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/payumoney/core/response/PayumoneyError;Lcom/payumoney/core/entity/TransactionResponse;)V
    .locals 0
    .param p1, "error"    # Lcom/payumoney/core/response/PayumoneyError;
    .param p2, "transactionResponse"    # Lcom/payumoney/core/entity/TransactionResponse;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/utils/ResultModel;->error:Lcom/payumoney/core/response/PayumoneyError;

    .line 30
    iput-object p2, p0, Lcom/payumoney/sdkui/ui/utils/ResultModel;->transactionResponse:Lcom/payumoney/core/entity/TransactionResponse;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/payumoney/core/response/PayumoneyError;Z)V
    .locals 0
    .param p1, "paymentResponse"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/payumoney/core/response/PayumoneyError;
    .param p3, "isWithdraw"    # Z

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/payumoney/sdkui/ui/utils/ResultModel;->error:Lcom/payumoney/core/response/PayumoneyError;

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getError()Lcom/payumoney/core/response/PayumoneyError;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/ResultModel;->error:Lcom/payumoney/core/response/PayumoneyError;

    return-object v0
.end method

.method public getTransactionResponse()Lcom/payumoney/core/entity/TransactionResponse;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/ResultModel;->transactionResponse:Lcom/payumoney/core/entity/TransactionResponse;

    return-object v0
.end method

.method public setError(Lcom/payumoney/core/response/PayumoneyError;)V
    .locals 0
    .param p1, "error"    # Lcom/payumoney/core/response/PayumoneyError;

    .line 47
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/utils/ResultModel;->error:Lcom/payumoney/core/response/PayumoneyError;

    .line 48
    return-void
.end method

.method public setTransactionResponse(Lcom/payumoney/core/entity/TransactionResponse;)V
    .locals 0
    .param p1, "transactionResponse"    # Lcom/payumoney/core/entity/TransactionResponse;

    .line 55
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/utils/ResultModel;->transactionResponse:Lcom/payumoney/core/entity/TransactionResponse;

    .line 56
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 68
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/ResultModel;->transactionResponse:Lcom/payumoney/core/entity/TransactionResponse;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 69
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/utils/ResultModel;->error:Lcom/payumoney/core/response/PayumoneyError;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 70
    return-void
.end method
