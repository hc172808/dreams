.class final Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;
.super Lcom/google/android/datatransport/runtime/TransportContext;
.source "AutoValue_TransportContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/AutoValue_TransportContext$Builder;
    }
.end annotation


# instance fields
.field private final backendName:Ljava/lang/String;

.field private final extras:[B

.field private final priority:Lcom/google/android/datatransport/Priority;


# direct methods
.method private constructor <init>(Ljava/lang/String;[BLcom/google/android/datatransport/Priority;)V
    .locals 0
    .param p1, "backendName"    # Ljava/lang/String;
    .param p2, "extras"    # [B
    .param p3, "priority"    # Lcom/google/android/datatransport/Priority;

    .line 22
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/TransportContext;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->backendName:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->extras:[B

    .line 25
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->priority:Lcom/google/android/datatransport/Priority;

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[BLcom/google/android/datatransport/Priority;Lcom/google/android/datatransport/runtime/AutoValue_TransportContext$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # [B
    .param p3, "x2"    # Lcom/google/android/datatransport/Priority;
    .param p4, "x3"    # Lcom/google/android/datatransport/runtime/AutoValue_TransportContext$1;

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;-><init>(Ljava/lang/String;[BLcom/google/android/datatransport/Priority;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 47
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 48
    return v0

    .line 50
    :cond_0
    instance-of v1, p1, Lcom/google/android/datatransport/runtime/TransportContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 51
    move-object v1, p1

    check-cast v1, Lcom/google/android/datatransport/runtime/TransportContext;

    .line 52
    .local v1, "that":Lcom/google/android/datatransport/runtime/TransportContext;
    iget-object v3, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->backendName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/TransportContext;->getBackendName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->extras:[B

    .line 53
    instance-of v4, v1, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;

    if-eqz v4, :cond_1

    move-object v4, v1

    check-cast v4, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;

    iget-object v4, v4, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->extras:[B

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/TransportContext;->getExtras()[B

    move-result-object v4

    :goto_0
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->priority:Lcom/google/android/datatransport/Priority;

    .line 54
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/TransportContext;->getPriority()Lcom/google/android/datatransport/Priority;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/datatransport/Priority;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 52
    :goto_1
    return v0

    .line 56
    .end local v1    # "that":Lcom/google/android/datatransport/runtime/TransportContext;
    :cond_3
    return v2
.end method

.method public getBackendName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->backendName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()[B
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->extras:[B

    return-object v0
.end method

.method public getPriority()Lcom/google/android/datatransport/Priority;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->priority:Lcom/google/android/datatransport/Priority;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 61
    const/4 v0, 0x1

    .line 62
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int v0, v0, v1

    .line 63
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->backendName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 64
    mul-int v0, v0, v1

    .line 65
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->extras:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    .line 66
    mul-int v0, v0, v1

    .line 67
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_TransportContext;->priority:Lcom/google/android/datatransport/Priority;

    invoke-virtual {v1}, Lcom/google/android/datatransport/Priority;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 68
    return v0
.end method
