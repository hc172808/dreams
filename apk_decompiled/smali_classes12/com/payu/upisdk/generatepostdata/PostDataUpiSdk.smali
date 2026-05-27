.class public Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk$1;

    invoke-direct {v0}, Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk$1;-><init>()V

    sput-object v0, Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;->a:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;->b:Ljava/lang/String;

    .line 46
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;
    .end local p1    # "in":Landroid/os/Parcel;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;->c:I

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getCode()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;->c:I

    return v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .line 94
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;
    .end local p1    # "code":I
    iput p1, p0, Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;->c:I

    .line 95
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .line 86
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;
    .end local p1    # "result":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;->b:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .line 78
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;
    .end local p1    # "status":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;->a:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 51
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    nop

    .end local p0    # "this":Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;
    .end local p1    # "dest":Landroid/os/Parcel;
    iget p2, p0, Lcom/payu/upisdk/generatepostdata/PostDataUpiSdk;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    return-void
.end method
