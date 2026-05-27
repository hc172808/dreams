.class public final Lcom/payumoney/core/entity/CitrusUser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payumoney/core/entity/CitrusUser$Address;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payumoney/core/entity/CitrusUser;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_USER:Lcom/payumoney/core/entity/CitrusUser;


# instance fields
.field private address:Lcom/payumoney/core/entity/CitrusUser$Address;

.field private emailId:Ljava/lang/String;

.field private emailVerified:Z

.field private firstName:Ljava/lang/String;

.field private lastName:Ljava/lang/String;

.field private mobileNo:Ljava/lang/String;

.field private mobileVerified:Z

.field private uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27
    new-instance v6, Lcom/payumoney/core/entity/CitrusUser;

    sget-object v5, Lcom/payumoney/core/entity/CitrusUser$Address;->DEFAULT_ADDRESS:Lcom/payumoney/core/entity/CitrusUser$Address;

    const-string v1, "developercitrus@gmail.com"

    const-string v2, "9876543210"

    const-string v3, "Developer"

    const-string v4, "Citrus"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/payumoney/core/entity/CitrusUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/payumoney/core/entity/CitrusUser$Address;)V

    sput-object v6, Lcom/payumoney/core/entity/CitrusUser;->DEFAULT_USER:Lcom/payumoney/core/entity/CitrusUser;

    .line 28
    new-instance v0, Lcom/payumoney/core/entity/CitrusUser$1;

    invoke-direct {v0}, Lcom/payumoney/core/entity/CitrusUser$1;-><init>()V

    sput-object v0, Lcom/payumoney/core/entity/CitrusUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->emailId:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->mobileNo:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->firstName:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->lastName:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->address:Lcom/payumoney/core/entity/CitrusUser$Address;

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/payumoney/core/entity/CitrusUser;->emailVerified:Z

    .line 47
    iput-boolean v1, p0, Lcom/payumoney/core/entity/CitrusUser;->mobileVerified:Z

    .line 48
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->uuid:Ljava/lang/String;

    .line 52
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->emailId:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->mobileNo:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->firstName:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->lastName:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->address:Lcom/payumoney/core/entity/CitrusUser$Address;

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/payumoney/core/entity/CitrusUser;->emailVerified:Z

    .line 47
    iput-boolean v1, p0, Lcom/payumoney/core/entity/CitrusUser;->mobileVerified:Z

    .line 48
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->uuid:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->firstName:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->lastName:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->emailId:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->mobileNo:Ljava/lang/String;

    .line 82
    const-class v0, Lcom/payumoney/core/entity/CitrusUser$Address;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/payumoney/core/entity/CitrusUser$Address;

    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->address:Lcom/payumoney/core/entity/CitrusUser$Address;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/payumoney/core/entity/CitrusUser;->emailVerified:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/payumoney/core/entity/CitrusUser;->mobileVerified:Z

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "emailId"    # Ljava/lang/String;
    .param p2, "mobileNo"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->emailId:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->mobileNo:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->firstName:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->lastName:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->address:Lcom/payumoney/core/entity/CitrusUser$Address;

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/payumoney/core/entity/CitrusUser;->emailVerified:Z

    .line 47
    iput-boolean v1, p0, Lcom/payumoney/core/entity/CitrusUser;->mobileVerified:Z

    .line 48
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->uuid:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/payumoney/core/entity/CitrusUser;->emailId:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/payumoney/core/entity/CitrusUser;->mobileNo:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/payumoney/core/entity/CitrusUser$Address;)V
    .locals 2
    .param p1, "emailId"    # Ljava/lang/String;
    .param p2, "mobileNo"    # Ljava/lang/String;
    .param p3, "firstName"    # Ljava/lang/String;
    .param p4, "lastName"    # Ljava/lang/String;
    .param p5, "address"    # Lcom/payumoney/core/entity/CitrusUser$Address;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->emailId:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->mobileNo:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->firstName:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->lastName:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->address:Lcom/payumoney/core/entity/CitrusUser$Address;

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/payumoney/core/entity/CitrusUser;->emailVerified:Z

    .line 47
    iput-boolean v1, p0, Lcom/payumoney/core/entity/CitrusUser;->mobileVerified:Z

    .line 48
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->uuid:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/payumoney/core/entity/CitrusUser;->emailId:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/payumoney/core/entity/CitrusUser;->mobileNo:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/payumoney/core/entity/CitrusUser;->firstName:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/payumoney/core/entity/CitrusUser;->lastName:Ljava/lang/String;

    .line 64
    iput-object p5, p0, Lcom/payumoney/core/entity/CitrusUser;->address:Lcom/payumoney/core/entity/CitrusUser$Address;

    .line 65
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/payumoney/core/entity/CitrusUser$Address;)V
    .locals 2
    .param p1, "emailId"    # Ljava/lang/String;
    .param p2, "mobileNo"    # Ljava/lang/String;
    .param p3, "firstName"    # Ljava/lang/String;
    .param p4, "lastName"    # Ljava/lang/String;
    .param p5, "emailVerified"    # Z
    .param p6, "mobileVerified"    # Z
    .param p7, "address"    # Lcom/payumoney/core/entity/CitrusUser$Address;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->emailId:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->mobileNo:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->firstName:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->lastName:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->address:Lcom/payumoney/core/entity/CitrusUser$Address;

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/payumoney/core/entity/CitrusUser;->emailVerified:Z

    .line 47
    iput-boolean v1, p0, Lcom/payumoney/core/entity/CitrusUser;->mobileVerified:Z

    .line 48
    iput-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->uuid:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/payumoney/core/entity/CitrusUser;->emailId:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/payumoney/core/entity/CitrusUser;->mobileNo:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/payumoney/core/entity/CitrusUser;->firstName:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/payumoney/core/entity/CitrusUser;->lastName:Ljava/lang/String;

    .line 72
    iput-boolean p5, p0, Lcom/payumoney/core/entity/CitrusUser;->emailVerified:Z

    .line 73
    iput-boolean p6, p0, Lcom/payumoney/core/entity/CitrusUser;->mobileVerified:Z

    .line 74
    iput-object p7, p0, Lcom/payumoney/core/entity/CitrusUser;->address:Lcom/payumoney/core/entity/CitrusUser$Address;

    .line 75
    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 25
    invoke-static {p0}, Lcom/payumoney/core/entity/CitrusUser;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromJSON(Ljava/lang/String;)Lcom/payumoney/core/entity/CitrusUser;
    .locals 1
    .param p0, "json"    # Ljava/lang/String;

    .line 88
    nop

    .line 91
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    .line 96
    :goto_0
    invoke-static {v0}, Lcom/payumoney/core/entity/CitrusUser;->fromJSONObject(Lorg/json/JSONObject;)Lcom/payumoney/core/entity/CitrusUser;

    move-result-object v0

    return-object v0
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/payumoney/core/entity/CitrusUser;
    .locals 1
    .param p0, "response"    # Lorg/json/JSONObject;

    .line 102
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/payumoney/core/entity/CitrusUser;->fromJSONObject(Lorg/json/JSONObject;Z)Lcom/payumoney/core/entity/CitrusUser;

    move-result-object v0

    return-object v0
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;Z)Lcom/payumoney/core/entity/CitrusUser;
    .locals 11
    .param p0, "response"    # Lorg/json/JSONObject;
    .param p1, "flattenedJSON"    # Z

    .line 106
    nop

    .line 108
    if-eqz p0, :cond_3

    .line 109
    const-string v0, "email"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    const-string v0, "mobile"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobileNo"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    const-string v0, "firstName"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    const-string v0, "lastName"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    const-string v0, "emailVerified"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 114
    :goto_0
    const-string v7, "mobileVerified"

    invoke-virtual {p0, v7, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 115
    :goto_1
    const-string v1, "uuid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 118
    if-eqz p1, :cond_2

    .line 119
    invoke-static {p0}, Lcom/payumoney/core/entity/CitrusUser$Address;->fromJSONObject(Lorg/json/JSONObject;)Lcom/payumoney/core/entity/CitrusUser$Address;

    move-result-object v1

    move-object v8, v1

    goto :goto_2

    .line 121
    :cond_2
    const-string v1, "address"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/payumoney/core/entity/CitrusUser$Address;->fromJSONObject(Lorg/json/JSONObject;)Lcom/payumoney/core/entity/CitrusUser$Address;

    move-result-object v1

    move-object v8, v1

    .line 124
    :goto_2
    new-instance v10, Lcom/payumoney/core/entity/CitrusUser;

    move-object v1, v10

    move v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/payumoney/core/entity/CitrusUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/payumoney/core/entity/CitrusUser$Address;)V

    .line 125
    iput-object v9, v10, Lcom/payumoney/core/entity/CitrusUser;->uuid:Ljava/lang/String;

    goto :goto_3

    .line 108
    :cond_3
    const/4 v10, 0x0

    .line 128
    :goto_3
    return-object v10
.end method

.method private static normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .line 288
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    const-string v0, "[\\p{Cntrl}^\r\n\t]+"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static toJSON(Lcom/payumoney/core/entity/CitrusUser;)Ljava/lang/String;
    .locals 1
    .param p0, "citrusUser"    # Lcom/payumoney/core/entity/CitrusUser;

    .line 283
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/payumoney/core/entity/CitrusUser;->toJSONObject(Lcom/payumoney/core/entity/CitrusUser;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static toJSONObject(Lcom/payumoney/core/entity/CitrusUser;Z)Lorg/json/JSONObject;
    .locals 15
    .param p0, "user"    # Lcom/payumoney/core/entity/CitrusUser;
    .param p1, "flattenJson"    # Z

    .line 169
    move-object v1, p0

    .line 176
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    if-eqz v1, :cond_1

    :try_start_1
    iget-object v0, v1, Lcom/payumoney/core/entity/CitrusUser;->firstName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, v1, Lcom/payumoney/core/entity/CitrusUser;->firstName:Ljava/lang/String;

    goto :goto_1

    .line 192
    :cond_1
    :goto_0
    const-string v0, "Tester"

    .line 196
    :goto_1
    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/payumoney/core/entity/CitrusUser;->lastName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 199
    :cond_2
    iget-object v2, v1, Lcom/payumoney/core/entity/CitrusUser;->lastName:Ljava/lang/String;

    goto :goto_3

    .line 197
    :cond_3
    :goto_2
    const-string v2, "Citrus"

    .line 202
    :goto_3
    if-eqz v1, :cond_5

    iget-object v4, v1, Lcom/payumoney/core/entity/CitrusUser;->emailId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    .line 205
    :cond_4
    iget-object v4, v1, Lcom/payumoney/core/entity/CitrusUser;->emailId:Ljava/lang/String;

    goto :goto_5

    .line 203
    :cond_5
    :goto_4
    const-string v4, "tester@gmail.com"

    .line 208
    :goto_5
    if-eqz v1, :cond_7

    iget-object v5, v1, Lcom/payumoney/core/entity/CitrusUser;->mobileNo:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_6

    .line 211
    :cond_6
    iget-object v5, v1, Lcom/payumoney/core/entity/CitrusUser;->mobileNo:Ljava/lang/String;

    goto :goto_7

    .line 209
    :cond_7
    :goto_6
    const-string v5, "9999999999"

    .line 214
    :goto_7
    if-eqz v1, :cond_9

    iget-object v6, v1, Lcom/payumoney/core/entity/CitrusUser;->address:Lcom/payumoney/core/entity/CitrusUser$Address;

    if-eqz v6, :cond_9

    invoke-static {v6}, Lcom/payumoney/core/entity/CitrusUser$Address;->access$000(Lcom/payumoney/core/entity/CitrusUser$Address;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_8

    .line 217
    :cond_8
    iget-object v6, v1, Lcom/payumoney/core/entity/CitrusUser;->address:Lcom/payumoney/core/entity/CitrusUser$Address;

    invoke-static {v6}, Lcom/payumoney/core/entity/CitrusUser$Address;->access$000(Lcom/payumoney/core/entity/CitrusUser$Address;)Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    .line 215
    :cond_9
    :goto_8
    const-string v6, "streetone"

    .line 220
    :goto_9
    if-eqz v1, :cond_b

    iget-object v7, v1, Lcom/payumoney/core/entity/CitrusUser;->address:Lcom/payumoney/core/entity/CitrusUser$Address;

    if-eqz v7, :cond_b

    invoke-static {v7}, Lcom/payumoney/core/entity/CitrusUser$Address;->access$100(Lcom/payumoney/core/entity/CitrusUser$Address;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_a

    .line 223
    :cond_a
    iget-object v7, v1, Lcom/payumoney/core/entity/CitrusUser;->address:Lcom/payumoney/core/entity/CitrusUser$Address;

    invoke-static {v7}, Lcom/payumoney/core/entity/CitrusUser$Address;->access$100(Lcom/payumoney/core/entity/CitrusUser$Address;)Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    .line 221
    :cond_b
    :goto_a
    const-string v7, "streettwo"

    .line 226
    :goto_b
    if-eqz v1, :cond_d

    iget-object v8, v1, Lcom/payumoney/core/entity/CitrusUser;->address:Lcom/payumoney/core/entity/CitrusUser$Address;

    if-eqz v8, :cond_d

    invoke-static {v8}, Lcom/payumoney/core/entity/CitrusUser$Address;->access$200(Lcom/payumoney/core/entity/CitrusUser$Address;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_c

    .line 229
    :cond_c
    iget-object v8, v1, Lcom/payumoney/core/entity/CitrusUser;->address:Lcom/payumoney/core/entity/CitrusUser$Address;

    invoke-static {v8}, Lcom/payumoney/core/entity/CitrusUser$Address;->access$200(Lcom/payumoney/core/entity/CitrusUser$Address;)Ljava/lang/String;

    move-result-object v8

    goto :goto_d

    .line 227
    :cond_d
    :goto_c
    const-string v8, "Mumbai"

    .line 232
    :goto_d
    if-eqz v1, :cond_f

    iget-object v9, v1, Lcom/payumoney/core/entity/CitrusUser;->address:Lcom/payumoney/core/entity/CitrusUser$Address;

    if-eqz v9, :cond_f

    invoke-static {v9}, Lcom/payumoney/core/entity/CitrusUser$Address;->access$300(Lcom/payumoney/core/entity/CitrusUser$Address;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_e

    .line 235
    :cond_e
    iget-object v9, v1, Lcom/payumoney/core/entity/CitrusUser;->address:Lcom/payumoney/core/entity/CitrusUser$Address;

    invoke-static {v9}, Lcom/payumoney/core/entity/CitrusUser$Address;->access$300(Lcom/payumoney/core/entity/CitrusUser$Address;)Ljava/lang/String;

    move-result-object v9

    goto :goto_f

    .line 233
    :cond_f
    :goto_e
    const-string v9, "Maharashtra"

    .line 238
    :goto_f
    if-eqz v1, :cond_11

    iget-object v10, v1, Lcom/payumoney/core/entity/CitrusUser;->address:Lcom/payumoney/core/entity/CitrusUser$Address;

    if-eqz v10, :cond_11

    invoke-static {v10}, Lcom/payumoney/core/entity/CitrusUser$Address;->access$400(Lcom/payumoney/core/entity/CitrusUser$Address;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_10

    goto :goto_10

    .line 241
    :cond_10
    iget-object v10, v1, Lcom/payumoney/core/entity/CitrusUser;->address:Lcom/payumoney/core/entity/CitrusUser$Address;

    invoke-static {v10}, Lcom/payumoney/core/entity/CitrusUser$Address;->access$400(Lcom/payumoney/core/entity/CitrusUser$Address;)Ljava/lang/String;

    move-result-object v10

    goto :goto_11

    .line 239
    :cond_11
    :goto_10
    const-string v10, "India"

    .line 244
    :goto_11
    if-eqz v1, :cond_13

    iget-object v11, v1, Lcom/payumoney/core/entity/CitrusUser;->address:Lcom/payumoney/core/entity/CitrusUser$Address;

    if-eqz v11, :cond_13

    invoke-static {v11}, Lcom/payumoney/core/entity/CitrusUser$Address;->access$500(Lcom/payumoney/core/entity/CitrusUser$Address;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_12

    goto :goto_12

    .line 247
    :cond_12
    iget-object v11, v1, Lcom/payumoney/core/entity/CitrusUser;->address:Lcom/payumoney/core/entity/CitrusUser$Address;

    invoke-static {v11}, Lcom/payumoney/core/entity/CitrusUser$Address;->access$500(Lcom/payumoney/core/entity/CitrusUser$Address;)Ljava/lang/String;

    move-result-object v11

    goto :goto_13

    .line 245
    :cond_13
    :goto_12
    const-string v11, "400052"

    .line 250
    :goto_13
    const-string v12, "email"

    invoke-virtual {v3, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string v4, "mobileNo"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string v4, "firstName"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v0, "lastName"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 255
    const-string v0, "country"

    const-string v2, "state"

    const-string v4, "zip"

    const-string v5, "city"

    const-string v12, "street2"

    const-string v13, "street1"

    if-eqz p1, :cond_14

    .line 256
    :try_start_2
    invoke-virtual {v3, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    invoke-virtual {v3, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    invoke-virtual {v3, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    invoke-virtual {v3, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    invoke-virtual {v3, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    invoke-virtual {v3, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_14

    .line 264
    :cond_14
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 265
    invoke-virtual {v14, v13, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    invoke-virtual {v14, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    invoke-virtual {v14, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    invoke-virtual {v14, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    invoke-virtual {v14, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    invoke-virtual {v14, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string v0, "address"

    invoke-virtual {v3, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 277
    :goto_14
    goto :goto_16

    .line 275
    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_15

    :catch_1
    move-exception v0

    .line 276
    :goto_15
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v3, v2

    .line 279
    :goto_16
    return-object v3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 368
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 369
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 371
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/payumoney/core/entity/CitrusUser;

    .line 373
    iget-object v2, p0, Lcom/payumoney/core/entity/CitrusUser;->emailId:Ljava/lang/String;

    iget-object v3, v1, Lcom/payumoney/core/entity/CitrusUser;->emailId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->mobileNo:Ljava/lang/String;

    iget-object v1, v1, Lcom/payumoney/core/entity/CitrusUser;->mobileNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 369
    :cond_3
    :goto_0
    return v0
.end method

.method public getAddress()Lcom/payumoney/core/entity/CitrusUser$Address;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->address:Lcom/payumoney/core/entity/CitrusUser$Address;

    return-object v0
.end method

.method public getEmailId()Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->emailId:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileNo()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->mobileNo:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->emailId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 381
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/payumoney/core/entity/CitrusUser;->mobileNo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 382
    return v0
.end method

.method public isEmailVerified()Z
    .locals 1

    .line 324
    iget-boolean v0, p0, Lcom/payumoney/core/entity/CitrusUser;->emailVerified:Z

    return v0
.end method

.method public isMobileVerified()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/payumoney/core/entity/CitrusUser;->mobileVerified:Z

    return v0
.end method

.method public setAddress(Lcom/payumoney/core/entity/CitrusUser$Address;)V
    .locals 0
    .param p1, "address"    # Lcom/payumoney/core/entity/CitrusUser$Address;

    .line 320
    iput-object p1, p0, Lcom/payumoney/core/entity/CitrusUser;->address:Lcom/payumoney/core/entity/CitrusUser$Address;

    .line 321
    return-void
.end method

.method public setEmailId(Ljava/lang/String;)V
    .locals 0
    .param p1, "emailId"    # Ljava/lang/String;

    .line 296
    iput-object p1, p0, Lcom/payumoney/core/entity/CitrusUser;->emailId:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public setMobileNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobileNo"    # Ljava/lang/String;

    .line 304
    iput-object p1, p0, Lcom/payumoney/core/entity/CitrusUser;->mobileNo:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .line 336
    iput-object p1, p0, Lcom/payumoney/core/entity/CitrusUser;->uuid:Ljava/lang/String;

    .line 337
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CitrusUser{firstName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payumoney/core/entity/CitrusUser;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lastName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/entity/CitrusUser;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", emailId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/entity/CitrusUser;->emailId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mobileNo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/entity/CitrusUser;->mobileNo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payumoney/core/entity/CitrusUser;->address:Lcom/payumoney/core/entity/CitrusUser$Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 357
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->firstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->emailId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->mobileNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/payumoney/core/entity/CitrusUser;->address:Lcom/payumoney/core/entity/CitrusUser$Address;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 362
    iget-boolean v0, p0, Lcom/payumoney/core/entity/CitrusUser;->emailVerified:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 363
    iget-boolean v0, p0, Lcom/payumoney/core/entity/CitrusUser;->mobileVerified:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 364
    return-void
.end method
