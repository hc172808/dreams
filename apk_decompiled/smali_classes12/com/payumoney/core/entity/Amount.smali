.class public Lcom/payumoney/core/entity/Amount;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/payumoney/core/entity/Amount;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payumoney/core/entity/Amount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final currency:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/payumoney/core/entity/Amount$1;

    invoke-direct {v0}, Lcom/payumoney/core/entity/Amount$1;-><init>()V

    sput-object v0, Lcom/payumoney/core/entity/Amount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/Amount;->value:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payumoney/core/entity/Amount;->currency:Ljava/lang/String;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/payumoney/core/entity/Amount$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/payumoney/core/entity/Amount$1;

    .line 15
    invoke-direct {p0, p1}, Lcom/payumoney/core/entity/Amount;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/payumoney/core/entity/Amount;->value:Ljava/lang/String;

    .line 35
    const-string v0, "INR"

    iput-object v0, p0, Lcom/payumoney/core/entity/Amount;->currency:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "currency"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/payumoney/core/entity/Amount;->value:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/payumoney/core/entity/Amount;->currency:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static fromJSON(Ljava/lang/String;)Lcom/payumoney/core/entity/Amount;
    .locals 1
    .param p0, "response"    # Ljava/lang/String;

    .line 49
    nop

    .line 52
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-static {v0}, Lcom/payumoney/core/entity/Amount;->fromJSONObject(Lorg/json/JSONObject;)Lcom/payumoney/core/entity/Amount;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 62
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/payumoney/core/entity/Amount;
    .locals 3
    .param p0, "amountObject"    # Lorg/json/JSONObject;

    .line 66
    nop

    .line 68
    if-eqz p0, :cond_0

    .line 69
    const-string v0, "value"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string v1, "currency"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    new-instance v2, Lcom/payumoney/core/entity/Amount;

    invoke-direct {v2, v0, v1}, Lcom/payumoney/core/entity/Amount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public static toJSON(Lcom/payumoney/core/entity/Amount;)Ljava/lang/String;
    .locals 1
    .param p0, "amount"    # Lcom/payumoney/core/entity/Amount;

    .line 81
    invoke-static {p0}, Lcom/payumoney/core/entity/Amount;->toJSONObject(Lcom/payumoney/core/entity/Amount;)Lorg/json/JSONObject;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static toJSONObject(Lcom/payumoney/core/entity/Amount;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "amount"    # Lcom/payumoney/core/entity/Amount;

    .line 90
    nop

    .line 92
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 94
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    :try_start_1
    const-string v0, "value"

    iget-object v2, p0, Lcom/payumoney/core/entity/Amount;->value:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v0, "currency"

    iget-object v2, p0, Lcom/payumoney/core/entity/Amount;->currency:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    move-object v0, v1

    goto :goto_1

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 98
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    .line 102
    :cond_0
    :goto_1
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/payumoney/core/entity/Amount;)I
    .locals 5
    .param p1, "another"    # Lcom/payumoney/core/entity/Amount;

    .line 189
    invoke-virtual {p0}, Lcom/payumoney/core/entity/Amount;->getValueAsDouble()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/payumoney/core/entity/Amount;->getValueAsDouble()D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 190
    const/4 v0, 0x1

    return v0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/payumoney/core/entity/Amount;->getValueAsDouble()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/payumoney/core/entity/Amount;->getValueAsDouble()D

    move-result-wide v2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    .line 192
    const/4 v0, -0x1

    return v0

    .line 194
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 15
    check-cast p1, Lcom/payumoney/core/entity/Amount;

    invoke-virtual {p0, p1}, Lcom/payumoney/core/entity/Amount;->compareTo(Lcom/payumoney/core/entity/Amount;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 175
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 176
    return v0

    .line 178
    :cond_0
    instance-of v1, p1, Lcom/payumoney/core/entity/Amount;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 179
    move-object v1, p1

    check-cast v1, Lcom/payumoney/core/entity/Amount;

    .line 180
    invoke-virtual {p0}, Lcom/payumoney/core/entity/Amount;->getValueAsDouble()D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/payumoney/core/entity/Amount;->getValueAsDouble()D

    move-result-wide v5

    cmpl-double v7, v3, v5

    if-nez v7, :cond_1

    iget-object v3, p0, Lcom/payumoney/core/entity/Amount;->currency:Ljava/lang/String;

    .line 181
    invoke-virtual {v1}, Lcom/payumoney/core/entity/Amount;->getCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 180
    :goto_0
    return v0

    .line 183
    :cond_2
    return v2
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/payumoney/core/entity/Amount;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/payumoney/core/entity/Amount;->value:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/payumoney/core/entity/Amount;->value:Ljava/lang/String;

    const-string v1, "^0+(?!$)"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/payumoney/core/entity/Amount;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getValueAsDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 140
    nop

    .line 142
    iget-object v0, p0, Lcom/payumoney/core/entity/Amount;->value:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/payumoney/core/entity/Amount;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    .line 142
    :cond_0
    const-wide/16 v0, 0x0

    .line 146
    :goto_0
    return-wide v0
.end method

.method public getValueAsFormattedDouble(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/payumoney/core/entity/Amount;

    const-string v1, "1.00"

    invoke-direct {v0, v1}, Lcom/payumoney/core/entity/Amount;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/payumoney/core/entity/Amount;->compareTo(Lcom/payumoney/core/entity/Amount;)I

    move-result v0

    if-gez v0, :cond_0

    .line 127
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/payumoney/core/entity/Amount;->getValueAsDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/payumoney/core/entity/Amount;->getValueAsDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 170
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isValidAmount()Z
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/payumoney/core/entity/Amount;->value:Ljava/lang/String;

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 204
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 205
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 206
    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 208
    :cond_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Amount{value=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/payumoney/core/entity/Amount;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", currency=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/payumoney/core/entity/Amount;->currency:Ljava/lang/String;

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

    .line 156
    iget-object v0, p0, Lcom/payumoney/core/entity/Amount;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/payumoney/core/entity/Amount;->currency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    return-void
.end method
