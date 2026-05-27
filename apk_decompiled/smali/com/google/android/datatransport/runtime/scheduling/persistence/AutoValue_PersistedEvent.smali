.class final Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;
.super Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;
.source "AutoValue_PersistedEvent.java"


# instance fields
.field private final event:Lcom/google/android/datatransport/runtime/EventInternal;

.field private final id:J

.field private final transportContext:Lcom/google/android/datatransport/runtime/TransportContext;


# direct methods
.method constructor <init>(JLcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;
    .param p4, "event"    # Lcom/google/android/datatransport/runtime/EventInternal;

    .line 20
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;->id:J

    .line 22
    if-eqz p3, :cond_1

    .line 25
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 26
    if-eqz p4, :cond_0

    .line 29
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;->event:Lcom/google/android/datatransport/runtime/EventInternal;

    .line 30
    return-void

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null event"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null transportContext"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 58
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 59
    return v0

    .line 61
    :cond_0
    instance-of v1, p1, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 62
    move-object v1, p1

    check-cast v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;

    .line 63
    .local v1, "that":Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;
    iget-wide v3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;->id:J

    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->getId()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 64
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->getTransportContext()Lcom/google/android/datatransport/runtime/TransportContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;->event:Lcom/google/android/datatransport/runtime/EventInternal;

    .line 65
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->getEvent()Lcom/google/android/datatransport/runtime/EventInternal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    .line 67
    .end local v1    # "that":Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;
    :cond_2
    return v2
.end method

.method public getEvent()Lcom/google/android/datatransport/runtime/EventInternal;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;->event:Lcom/google/android/datatransport/runtime/EventInternal;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;->id:J

    return-wide v0
.end method

.method public getTransportContext()Lcom/google/android/datatransport/runtime/TransportContext;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 72
    const/4 v0, 0x1

    .line 73
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int v0, v0, v1

    .line 74
    iget-wide v2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;->id:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    xor-int/2addr v0, v3

    .line 75
    mul-int v0, v0, v1

    .line 76
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 77
    mul-int v0, v0, v1

    .line 78
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;->event:Lcom/google/android/datatransport/runtime/EventInternal;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 79
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersistedEvent{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", transportContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/AutoValue_PersistedEvent;->event:Lcom/google/android/datatransport/runtime/EventInternal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
