.class public final Lcom/google/android/datatransport/Encoding;
.super Ljava/lang/Object;
.source "Encoding.java"


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-eqz p1, :cond_0

    .line 41
    iput-object p1, p0, Lcom/google/android/datatransport/Encoding;->name:Ljava/lang/String;

    .line 42
    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/google/android/datatransport/Encoding;

    invoke-direct {v0, p0}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 46
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 47
    :cond_0
    instance-of v0, p1, Lcom/google/android/datatransport/Encoding;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/google/android/datatransport/Encoding;->name:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/google/android/datatransport/Encoding;

    iget-object v1, v1, Lcom/google/android/datatransport/Encoding;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/android/datatransport/Encoding;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 54
    const v0, 0xf4243

    .line 55
    .local v0, "h":I
    iget-object v1, p0, Lcom/google/android/datatransport/Encoding;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 56
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Encoding{name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/Encoding;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
