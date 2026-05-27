.class public abstract Lcom/facebook/ppml/receiver/IReceiverService$Stub;
.super Landroid/os/Binder;
.source "IReceiverService.java"

# interfaces
.implements Lcom/facebook/ppml/receiver/IReceiverService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ppml/receiver/IReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ppml/receiver/IReceiverService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.facebook.ppml.receiver.IReceiverService"

.field static final TRANSACTION_sendEvents:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "com.facebook.ppml.receiver.IReceiverService"

    invoke-virtual {p0, p0, v0}, Lcom/facebook/ppml/receiver/IReceiverService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/facebook/ppml/receiver/IReceiverService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_0
    const-string v0, "com.facebook.ppml.receiver.IReceiverService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/facebook/ppml/receiver/IReceiverService;

    if-eqz v1, :cond_1

    .line 39
    move-object v1, v0

    check-cast v1, Lcom/facebook/ppml/receiver/IReceiverService;

    return-object v1

    .line 41
    :cond_1
    new-instance v1, Lcom/facebook/ppml/receiver/IReceiverService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/facebook/ppml/receiver/IReceiverService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/facebook/ppml/receiver/IReceiverService;
    .locals 1

    .line 131
    sget-object v0, Lcom/facebook/ppml/receiver/IReceiverService$Stub$Proxy;->sDefaultImpl:Lcom/facebook/ppml/receiver/IReceiverService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/facebook/ppml/receiver/IReceiverService;)Z
    .locals 1
    .param p0, "impl"    # Lcom/facebook/ppml/receiver/IReceiverService;

    .line 124
    sget-object v0, Lcom/facebook/ppml/receiver/IReceiverService$Stub$Proxy;->sDefaultImpl:Lcom/facebook/ppml/receiver/IReceiverService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 125
    sput-object p0, Lcom/facebook/ppml/receiver/IReceiverService$Stub$Proxy;->sDefaultImpl:Lcom/facebook/ppml/receiver/IReceiverService;

    .line 126
    const/4 v0, 0x1

    return v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 45
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const-string v0, "com.facebook.ppml.receiver.IReceiverService"

    .line 50
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 54
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    return v1

    .line 59
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .local v2, "_arg0":Landroid/os/Bundle;
    goto :goto_0

    .line 65
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :cond_0
    const/4 v2, 0x0

    .line 67
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0, v2}, Lcom/facebook/ppml/receiver/IReceiverService$Stub;->sendEvents(Landroid/os/Bundle;)I

    move-result v3

    .line 68
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
