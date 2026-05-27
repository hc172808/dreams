.class public Lcom/payumoney/core/entity/CitrusUser$Address;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/core/entity/CitrusUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Address"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payumoney/core/entity/CitrusUser$Address;",
            ">;"
        }
    .end annotation
.end field

.field public static DEFAULT_ADDRESS:Lcom/payumoney/core/entity/CitrusUser$Address;


# instance fields
.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private street1:Ljava/lang/String;

.field private street2:Ljava/lang/String;

.field private zip:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 387
    new-instance v0, Lcom/payumoney/core/entity/CitrusUser$Address$1;

    invoke-direct {v0}, Lcom/payumoney/core/entity/CitrusUser$Address$1;-><init>()V

    sput-object v0, Lcom/payumoney/core/entity/CitrusUser$Address;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 396
    new-instance v0, Lcom/payumoney/core/entity/CitrusUser$Address;

    const-string v2, "Street1"

    const-string v3, "Street2"

    const-string v4, "Pune"

    const-string v5, "Maharashtra"

    const-string v6, "India"

    const-string v7, "411045"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/payumoney/core/entity/CitrusUser$Address;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/payumoney/core/entity/CitrusUser$Address;->DEFAULT_ADDRESS:Lcom/payumoney/core/entity/CitrusUser$Address;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    const-string v0, ""

    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->street1:Ljava/lang/String;

    .line 398
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->street2:Ljava/lang/String;

    .line 399
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->city:Ljava/lang/String;

    .line 400
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->state:Ljava/lang/String;

    .line 401
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->country:Ljava/lang/String;

    .line 402
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->zip:Ljava/lang/String;

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->street1:Ljava/lang/String;

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->street2:Ljava/lang/String;

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->city:Ljava/lang/String;

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->state:Ljava/lang/String;

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->country:Ljava/lang/String;

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->zip:Ljava/lang/String;

    .line 420
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/payumoney/core/entity/CitrusUser$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/payumoney/core/entity/CitrusUser$1;

    .line 385
    invoke-direct {p0, p1}, Lcom/payumoney/core/entity/CitrusUser$Address;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "street1"    # Ljava/lang/String;
    .param p2, "street2"    # Ljava/lang/String;
    .param p3, "city"    # Ljava/lang/String;
    .param p4, "state"    # Ljava/lang/String;
    .param p5, "country"    # Ljava/lang/String;
    .param p6, "zip"    # Ljava/lang/String;

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    const-string v0, ""

    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->street1:Ljava/lang/String;

    .line 398
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->street2:Ljava/lang/String;

    .line 399
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->city:Ljava/lang/String;

    .line 400
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->state:Ljava/lang/String;

    .line 401
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->country:Ljava/lang/String;

    .line 402
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->zip:Ljava/lang/String;

    .line 405
    invoke-static {p1}, Lcom/payumoney/core/entity/CitrusUser;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->street1:Ljava/lang/String;

    .line 406
    invoke-static {p2}, Lcom/payumoney/core/entity/CitrusUser;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->street2:Ljava/lang/String;

    .line 407
    invoke-static {p3}, Lcom/payumoney/core/entity/CitrusUser;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->city:Ljava/lang/String;

    .line 408
    invoke-static {p4}, Lcom/payumoney/core/entity/CitrusUser;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->state:Ljava/lang/String;

    .line 409
    invoke-static {p5}, Lcom/payumoney/core/entity/CitrusUser;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->country:Ljava/lang/String;

    .line 410
    invoke-static {p6}, Lcom/payumoney/core/entity/CitrusUser;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->zip:Ljava/lang/String;

    .line 411
    return-void
.end method

.method static synthetic access$000(Lcom/payumoney/core/entity/CitrusUser$Address;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/entity/CitrusUser$Address;

    .line 385
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->street1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/payumoney/core/entity/CitrusUser$Address;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/entity/CitrusUser$Address;

    .line 385
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->street2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/payumoney/core/entity/CitrusUser$Address;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/entity/CitrusUser$Address;

    .line 385
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->city:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/payumoney/core/entity/CitrusUser$Address;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/entity/CitrusUser$Address;

    .line 385
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->state:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/payumoney/core/entity/CitrusUser$Address;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/entity/CitrusUser$Address;

    .line 385
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->country:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/payumoney/core/entity/CitrusUser$Address;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/payumoney/core/entity/CitrusUser$Address;

    .line 385
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->zip:Ljava/lang/String;

    return-object v0
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/payumoney/core/entity/CitrusUser$Address;
    .locals 10
    .param p0, "response"    # Lorg/json/JSONObject;

    .line 423
    nop

    .line 425
    if-eqz p0, :cond_0

    .line 426
    const-string v0, "country"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "addressCountry"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 427
    const-string v0, "state"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "addressState"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 428
    const-string v0, "city"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "addressCity"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 429
    const-string v0, "street1"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "addressStreet1"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 430
    const-string v0, "street2"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "addressStreet2"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 431
    const-string v0, "zip"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "addressZip"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 433
    new-instance v0, Lcom/payumoney/core/entity/CitrusUser$Address;

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/payumoney/core/entity/CitrusUser$Address;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_0
    const/4 v0, 0x0

    .line 436
    :goto_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet1()Ljava/lang/String;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->street1:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet2()Ljava/lang/String;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->street2:Ljava/lang/String;

    return-object v0
.end method

.method public getZip()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->zip:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address{street1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->street1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", street2=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->street2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", city=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->city:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", state=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->state:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", country=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->country:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", zip=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->zip:Ljava/lang/String;

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

    .line 482
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->street1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->street2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->city:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->state:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->country:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser$Address;->zip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 488
    return-void
.end method
