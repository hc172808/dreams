.class public Lcom/google/firebase/inappmessaging/model/Text;
.super Ljava/lang/Object;
.source "Text.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/model/Text$Builder;
    }
.end annotation


# instance fields
.field private final hexColor:Ljava/lang/String;

.field private final text:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "hexColor"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/Text;->text:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/model/Text;->hexColor:Ljava/lang/String;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/inappmessaging/model/Text$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/google/firebase/inappmessaging/model/Text$1;

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/model/Text;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static builder()Lcom/google/firebase/inappmessaging/model/Text$Builder;
    .locals 1

    .line 86
    new-instance v0, Lcom/google/firebase/inappmessaging/model/Text$Builder;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/model/Text$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 41
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 42
    return v0

    .line 44
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/inappmessaging/model/Text;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 45
    return v2

    .line 47
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/inappmessaging/model/Text;

    .line 48
    .local v1, "t":Lcom/google/firebase/inappmessaging/model/Text;
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/model/Text;->hashCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/Text;->hashCode()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 49
    return v2

    .line 51
    :cond_2
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/Text;->text:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v4, v1, Lcom/google/firebase/inappmessaging/model/Text;->text:Ljava/lang/String;

    if-nez v4, :cond_4

    :cond_3
    if-eqz v3, :cond_5

    iget-object v4, v1, Lcom/google/firebase/inappmessaging/model/Text;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 52
    :cond_4
    return v2

    .line 54
    :cond_5
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/Text;->hexColor:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/firebase/inappmessaging/model/Text;->hexColor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 55
    return v0

    .line 57
    :cond_6
    return v2
.end method

.method public getHexColor()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/Text;->hexColor:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/Text;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/Text;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/Text;->hexColor:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/Text;->hexColor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method
