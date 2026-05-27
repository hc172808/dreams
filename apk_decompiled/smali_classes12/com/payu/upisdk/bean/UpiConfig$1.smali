.class final Lcom/payu/upisdk/bean/UpiConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/upisdk/bean/UpiConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/payu/upisdk/bean/UpiConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .line 2175
    new-instance v0, Lcom/payu/upisdk/bean/UpiConfig;

    invoke-direct {v0, p1}, Lcom/payu/upisdk/bean/UpiConfig;-><init>(Landroid/os/Parcel;)V

    .line 172
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 172
    nop

    .line 1180
    new-array p1, p1, [Lcom/payu/upisdk/bean/UpiConfig;

    .line 172
    return-object p1
.end method
