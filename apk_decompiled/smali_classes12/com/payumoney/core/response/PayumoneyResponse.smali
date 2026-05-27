.class public Lcom/payumoney/core/response/PayumoneyResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/core/response/PayumoneyResponse$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payumoney/core/response/PayumoneyResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected message:Ljava/lang/String;

.field protected rawResponse:Ljava/lang/String;

.field protected status:Lcom/payumoney/core/response/PayumoneyResponse$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/payumoney/core/response/PayumoneyResponse$1;

    invoke-direct {v0}, Lcom/payumoney/core/response/PayumoneyResponse$1;-><init>()V

    sput-object v0, Lcom/payumoney/core/response/PayumoneyResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/response/PayumoneyResponse;->message:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/payumoney/core/response/PayumoneyResponse;->status:Lcom/payumoney/core/response/PayumoneyResponse$Status;

    .line 24
    iput-object v0, p0, Lcom/payumoney/core/response/PayumoneyResponse;->rawResponse:Ljava/lang/String;

    .line 27
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/response/PayumoneyResponse;->message:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/payumoney/core/response/PayumoneyResponse;->status:Lcom/payumoney/core/response/PayumoneyResponse$Status;

    .line 24
    iput-object v0, p0, Lcom/payumoney/core/response/PayumoneyResponse;->rawResponse:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/payumoney/core/response/PayumoneyResponse;->message:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 43
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/payumoney/core/response/PayumoneyResponse$Status;->values()[Lcom/payumoney/core/response/PayumoneyResponse$Status;

    move-result-object v0

    aget-object v0, v0, v1

    :goto_0
    iput-object v0, p0, Lcom/payumoney/core/response/PayumoneyResponse;->status:Lcom/payumoney/core/response/PayumoneyResponse$Status;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/response/PayumoneyResponse;->rawResponse:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/payumoney/core/response/PayumoneyResponse$Status;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/payumoney/core/response/PayumoneyResponse$Status;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/response/PayumoneyResponse;->message:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/payumoney/core/response/PayumoneyResponse;->status:Lcom/payumoney/core/response/PayumoneyResponse$Status;

    .line 24
    iput-object v0, p0, Lcom/payumoney/core/response/PayumoneyResponse;->rawResponse:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/payumoney/core/response/PayumoneyResponse;->message:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/payumoney/core/response/PayumoneyResponse;->status:Lcom/payumoney/core/response/PayumoneyResponse$Status;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/payumoney/core/response/PayumoneyResponse$Status;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "rawResponse"    # Ljava/lang/String;
    .param p3, "status"    # Lcom/payumoney/core/response/PayumoneyResponse$Status;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/response/PayumoneyResponse;->message:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/payumoney/core/response/PayumoneyResponse;->status:Lcom/payumoney/core/response/PayumoneyResponse$Status;

    .line 24
    iput-object v0, p0, Lcom/payumoney/core/response/PayumoneyResponse;->rawResponse:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/payumoney/core/response/PayumoneyResponse;->message:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/payumoney/core/response/PayumoneyResponse;->rawResponse:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/payumoney/core/response/PayumoneyResponse;->status:Lcom/payumoney/core/response/PayumoneyResponse$Status;

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/payumoney/core/response/PayumoneyResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getRawResponse()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/payumoney/core/response/PayumoneyResponse;->rawResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/payumoney/core/response/PayumoneyResponse$Status;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/payumoney/core/response/PayumoneyResponse;->status:Lcom/payumoney/core/response/PayumoneyResponse$Status;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 66
    iget-object v0, p0, Lcom/payumoney/core/response/PayumoneyResponse;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/payumoney/core/response/PayumoneyResponse;->status:Lcom/payumoney/core/response/PayumoneyResponse$Status;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/payumoney/core/response/PayumoneyResponse$Status;->ordinal()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Lcom/payumoney/core/response/PayumoneyResponse;->rawResponse:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return-void
.end method
