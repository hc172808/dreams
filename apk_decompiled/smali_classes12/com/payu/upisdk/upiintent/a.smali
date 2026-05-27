.class public final Lcom/payu/upisdk/upiintent/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/payu/upisdk/upiintent/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/graphics/drawable/Drawable;

.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/payu/upisdk/upiintent/a$1;

    invoke-direct {v0}, Lcom/payu/upisdk/upiintent/a$1;-><init>()V

    sput-object v0, Lcom/payu/upisdk/upiintent/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    nop

    .line 1091
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/upisdk/upiintent/a;->a:Ljava/lang/String;

    .line 1092
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/payu/upisdk/upiintent/a;->b:Landroid/graphics/drawable/Drawable;

    .line 1093
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/upisdk/upiintent/a;->c:Ljava/lang/String;

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/payu/upisdk/upiintent/a;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/payu/upisdk/upiintent/a;->a:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/payu/upisdk/upiintent/a;->b:Landroid/graphics/drawable/Drawable;

    .line 29
    iput-object p3, p0, Lcom/payu/upisdk/upiintent/a;->c:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 70
    if-ne p0, p1, :cond_0

    .line 71
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_0
    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/payu/upisdk/upiintent/a;

    if-nez v0, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    nop

    .end local p1    # "o":Ljava/lang/Object;
    check-cast p1, Lcom/payu/upisdk/upiintent/a;

    .line 75
    nop

    .end local p0    # "this":Lcom/payu/upisdk/upiintent/a;
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/a;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/payu/upisdk/upiintent/a;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 73
    .restart local p0    # "this":Lcom/payu/upisdk/upiintent/a;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/payu/upisdk/upiintent/a;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payu/upisdk/upiintent/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, 0xd9

    .line 82
    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 99
    iget-object p2, p0, Lcom/payu/upisdk/upiintent/a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Lcom/payu/upisdk/upiintent/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    .line 101
    invoke-static {p2}, Lcom/payu/upisdk/util/b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    :cond_0
    nop

    .end local p0    # "this":Lcom/payu/upisdk/upiintent/a;
    .end local p1    # "parcel":Landroid/os/Parcel;
    iget-object p2, p0, Lcom/payu/upisdk/upiintent/a;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return-void
.end method
