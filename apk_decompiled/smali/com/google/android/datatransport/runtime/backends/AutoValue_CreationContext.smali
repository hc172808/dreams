.class final Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;
.super Lcom/google/android/datatransport/runtime/backends/CreationContext;
.source "AutoValue_CreationContext.java"


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final backendName:Ljava/lang/String;

.field private final monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

.field private final wallClock:Lcom/google/android/datatransport/runtime/time/Clock;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;Ljava/lang/String;)V
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "wallClock"    # Lcom/google/android/datatransport/runtime/time/Clock;
    .param p3, "monotonicClock"    # Lcom/google/android/datatransport/runtime/time/Clock;
    .param p4, "backendName"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/backends/CreationContext;-><init>()V

    .line 25
    if-eqz p1, :cond_3

    .line 28
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->applicationContext:Landroid/content/Context;

    .line 29
    if-eqz p2, :cond_2

    .line 32
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->wallClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 33
    if-eqz p3, :cond_1

    .line 36
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 37
    if-eqz p4, :cond_0

    .line 40
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->backendName:Ljava/lang/String;

    .line 41
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null backendName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null monotonicClock"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null wallClock"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null applicationContext"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 76
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 77
    return v0

    .line 79
    :cond_0
    instance-of v1, p1, Lcom/google/android/datatransport/runtime/backends/CreationContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 80
    move-object v1, p1

    check-cast v1, Lcom/google/android/datatransport/runtime/backends/CreationContext;

    .line 81
    .local v1, "that":Lcom/google/android/datatransport/runtime/backends/CreationContext;
    iget-object v3, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/backends/CreationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->wallClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 82
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/backends/CreationContext;->getWallClock()Lcom/google/android/datatransport/runtime/time/Clock;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 83
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/backends/CreationContext;->getMonotonicClock()Lcom/google/android/datatransport/runtime/time/Clock;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->backendName:Ljava/lang/String;

    .line 84
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/backends/CreationContext;->getBackendName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    .line 86
    .end local v1    # "that":Lcom/google/android/datatransport/runtime/backends/CreationContext;
    :cond_2
    return v2
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getBackendName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->backendName:Ljava/lang/String;

    return-object v0
.end method

.method public getMonotonicClock()Lcom/google/android/datatransport/runtime/time/Clock;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    return-object v0
.end method

.method public getWallClock()Lcom/google/android/datatransport/runtime/time/Clock;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->wallClock:Lcom/google/android/datatransport/runtime/time/Clock;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 91
    const/4 v0, 0x1

    .line 92
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int v0, v0, v1

    .line 93
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 94
    mul-int v0, v0, v1

    .line 95
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->wallClock:Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 96
    mul-int v0, v0, v1

    .line 97
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 98
    mul-int v0, v0, v1

    .line 99
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->backendName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 100
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreationContext{applicationContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wallClock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->wallClock:Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", monotonicClock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backendName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/AutoValue_CreationContext;->backendName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
