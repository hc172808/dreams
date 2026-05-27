.class public Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData$1;

    invoke-direct {v0}, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData$1;-><init>()V

    sput-object v0, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "GET"

    iput-object v0, p0, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->a:Ljava/lang/String;

    .line 39
    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->d:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->a:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->b:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->c:Ljava/lang/String;

    .line 22
    nop

    .end local p0    # "this":Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;
    .end local p1    # "in":Landroid/os/Parcel;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->d:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpMethod()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPostData()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .line 71
    nop

    .end local p0    # "this":Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;
    .end local p1    # "contentType":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->d:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setHttpMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "httpMethod"    # Ljava/lang/String;

    .line 47
    nop

    .end local p0    # "this":Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;
    .end local p1    # "httpMethod":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->a:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setPostData(Ljava/lang/String;)V
    .locals 0
    .param p1, "postData"    # Ljava/lang/String;

    .line 63
    nop

    .end local p0    # "this":Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;
    .end local p1    # "postData":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->c:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 55
    nop

    .end local p0    # "this":Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;
    .end local p1    # "url":Ljava/lang/String;
    iput-object p1, p0, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->b:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 86
    iget-object p2, p0, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object p2, p0, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object p2, p0, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    nop

    .end local p0    # "this":Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;
    .end local p1    # "parcel":Landroid/os/Parcel;
    iget-object p2, p0, Lcom/payu/socketverification/bean/PayUNetworkAsyncTaskData;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return-void
.end method
