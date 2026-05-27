.class public final Lcom/google/android/datatransport/runtime/EncodedPayload;
.super Ljava/lang/Object;
.source "EncodedPayload.java"


# instance fields
.field private final bytes:[B

.field private final encoding:Lcom/google/android/datatransport/Encoding;


# direct methods
.method public constructor <init>(Lcom/google/android/datatransport/Encoding;[B)V
    .locals 2
    .param p1, "encoding"    # Lcom/google/android/datatransport/Encoding;
    .param p2, "bytes"    # [B

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-eqz p1, :cond_1

    .line 37
    if-eqz p2, :cond_0

    .line 40
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/EncodedPayload;->encoding:Lcom/google/android/datatransport/Encoding;

    .line 41
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/EncodedPayload;->bytes:[B

    .line 42
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encoding is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 54
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 55
    :cond_0
    instance-of v0, p1, Lcom/google/android/datatransport/runtime/EncodedPayload;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 57
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 59
    .local v0, "that":Lcom/google/android/datatransport/runtime/EncodedPayload;
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/EncodedPayload;->encoding:Lcom/google/android/datatransport/Encoding;

    iget-object v3, v0, Lcom/google/android/datatransport/runtime/EncodedPayload;->encoding:Lcom/google/android/datatransport/Encoding;

    invoke-virtual {v2, v3}, Lcom/google/android/datatransport/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 60
    :cond_2
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/EncodedPayload;->bytes:[B

    iget-object v2, v0, Lcom/google/android/datatransport/runtime/EncodedPayload;->bytes:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public getBytes()[B
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/EncodedPayload;->bytes:[B

    return-object v0
.end method

.method public getEncoding()Lcom/google/android/datatransport/Encoding;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/EncodedPayload;->encoding:Lcom/google/android/datatransport/Encoding;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 65
    const v0, 0xf4243

    .line 66
    .local v0, "h":I
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/EncodedPayload;->encoding:Lcom/google/android/datatransport/Encoding;

    invoke-virtual {v1}, Lcom/google/android/datatransport/Encoding;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 67
    const v1, 0xf4243

    mul-int v0, v0, v1

    .line 68
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/EncodedPayload;->bytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    .line 69
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncodedPayload{encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/EncodedPayload;->encoding:Lcom/google/android/datatransport/Encoding;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bytes=[...]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
