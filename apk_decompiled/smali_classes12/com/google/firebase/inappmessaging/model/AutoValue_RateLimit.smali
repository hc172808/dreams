.class final Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit;
.super Lcom/google/firebase/inappmessaging/model/RateLimit;
.source "AutoValue_RateLimit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;
    }
.end annotation


# instance fields
.field private final limit:J

.field private final limiterKey:Ljava/lang/String;

.field private final timeToLiveMillis:J


# direct methods
.method private constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "limiterKey"    # Ljava/lang/String;
    .param p2, "limit"    # J
    .param p4, "timeToLiveMillis"    # J

    .line 19
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/model/RateLimit;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit;->limiterKey:Ljava/lang/String;

    .line 21
    iput-wide p2, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit;->limit:J

    .line 22
    iput-wide p4, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit;->timeToLiveMillis:J

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JJLcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$1;

    .line 8
    invoke-direct/range {p0 .. p5}, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit;-><init>(Ljava/lang/String;JJ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 51
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 52
    return v0

    .line 54
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/inappmessaging/model/RateLimit;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 55
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/inappmessaging/model/RateLimit;

    .line 56
    .local v1, "that":Lcom/google/firebase/inappmessaging/model/RateLimit;
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit;->limiterKey:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/RateLimit;->limiterKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit;->limit:J

    .line 57
    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/RateLimit;->limit()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    iget-wide v3, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit;->timeToLiveMillis:J

    .line 58
    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/RateLimit;->timeToLiveMillis()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    .line 60
    .end local v1    # "that":Lcom/google/firebase/inappmessaging/model/RateLimit;
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 7

    .line 65
    const/4 v0, 0x1

    .line 66
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int v0, v0, v1

    .line 67
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit;->limiterKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 68
    mul-int v0, v0, v1

    .line 69
    iget-wide v2, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit;->limit:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    xor-int/2addr v0, v3

    .line 70
    mul-int v0, v0, v1

    .line 71
    iget-wide v1, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit;->timeToLiveMillis:J

    ushr-long v3, v1, v4

    xor-long/2addr v1, v3

    long-to-int v2, v1

    xor-int/2addr v0, v2

    .line 72
    return v0
.end method

.method public limit()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit;->limit:J

    return-wide v0
.end method

.method public limiterKey()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit;->limiterKey:Ljava/lang/String;

    return-object v0
.end method

.method public timeToLiveMillis()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit;->timeToLiveMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RateLimit{limiterKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit;->limiterKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit;->limit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timeToLiveMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit;->timeToLiveMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
