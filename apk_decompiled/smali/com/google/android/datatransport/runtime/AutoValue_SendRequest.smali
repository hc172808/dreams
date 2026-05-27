.class final Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;
.super Lcom/google/android/datatransport/runtime/SendRequest;
.source "AutoValue_SendRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;
    }
.end annotation


# instance fields
.field private final encoding:Lcom/google/android/datatransport/Encoding;

.field private final event:Lcom/google/android/datatransport/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/Event<",
            "*>;"
        }
    .end annotation
.end field

.field private final transformer:Lcom/google/android/datatransport/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/Transformer<",
            "*[B>;"
        }
    .end annotation
.end field

.field private final transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

.field private final transportName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/datatransport/runtime/TransportContext;Ljava/lang/String;Lcom/google/android/datatransport/Event;Lcom/google/android/datatransport/Transformer;Lcom/google/android/datatransport/Encoding;)V
    .locals 0
    .param p1, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;
    .param p2, "transportName"    # Ljava/lang/String;
    .param p5, "encoding"    # Lcom/google/android/datatransport/Encoding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/runtime/TransportContext;",
            "Ljava/lang/String;",
            "Lcom/google/android/datatransport/Event<",
            "*>;",
            "Lcom/google/android/datatransport/Transformer<",
            "*[B>;",
            "Lcom/google/android/datatransport/Encoding;",
            ")V"
        }
    .end annotation

    .line 27
    .local p3, "event":Lcom/google/android/datatransport/Event;, "Lcom/google/android/datatransport/Event<*>;"
    .local p4, "transformer":Lcom/google/android/datatransport/Transformer;, "Lcom/google/android/datatransport/Transformer<*[B>;"
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/SendRequest;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 29
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transportName:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->event:Lcom/google/android/datatransport/Event;

    .line 31
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transformer:Lcom/google/android/datatransport/Transformer;

    .line 32
    iput-object p5, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->encoding:Lcom/google/android/datatransport/Encoding;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/datatransport/runtime/TransportContext;Ljava/lang/String;Lcom/google/android/datatransport/Event;Lcom/google/android/datatransport/Transformer;Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/datatransport/runtime/TransportContext;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/google/android/datatransport/Event;
    .param p4, "x3"    # Lcom/google/android/datatransport/Transformer;
    .param p5, "x4"    # Lcom/google/android/datatransport/Encoding;
    .param p6, "x5"    # Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$1;

    .line 10
    invoke-direct/range {p0 .. p5}, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;-><init>(Lcom/google/android/datatransport/runtime/TransportContext;Ljava/lang/String;Lcom/google/android/datatransport/Event;Lcom/google/android/datatransport/Transformer;Lcom/google/android/datatransport/Encoding;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 73
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 74
    return v0

    .line 76
    :cond_0
    instance-of v1, p1, Lcom/google/android/datatransport/runtime/SendRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 77
    move-object v1, p1

    check-cast v1, Lcom/google/android/datatransport/runtime/SendRequest;

    .line 78
    .local v1, "that":Lcom/google/android/datatransport/runtime/SendRequest;
    iget-object v3, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/SendRequest;->getTransportContext()Lcom/google/android/datatransport/runtime/TransportContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transportName:Ljava/lang/String;

    .line 79
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/SendRequest;->getTransportName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->event:Lcom/google/android/datatransport/Event;

    .line 80
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/SendRequest;->getEvent()Lcom/google/android/datatransport/Event;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transformer:Lcom/google/android/datatransport/Transformer;

    .line 81
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/SendRequest;->getTransformer()Lcom/google/android/datatransport/Transformer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->encoding:Lcom/google/android/datatransport/Encoding;

    .line 82
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/SendRequest;->getEncoding()Lcom/google/android/datatransport/Encoding;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/datatransport/Encoding;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    .line 84
    .end local v1    # "that":Lcom/google/android/datatransport/runtime/SendRequest;
    :cond_2
    return v2
.end method

.method public getEncoding()Lcom/google/android/datatransport/Encoding;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->encoding:Lcom/google/android/datatransport/Encoding;

    return-object v0
.end method

.method getEvent()Lcom/google/android/datatransport/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/datatransport/Event<",
            "*>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->event:Lcom/google/android/datatransport/Event;

    return-object v0
.end method

.method getTransformer()Lcom/google/android/datatransport/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/datatransport/Transformer<",
            "*[B>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transformer:Lcom/google/android/datatransport/Transformer;

    return-object v0
.end method

.method public getTransportContext()Lcom/google/android/datatransport/runtime/TransportContext;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    return-object v0
.end method

.method public getTransportName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transportName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 89
    const/4 v0, 0x1

    .line 90
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int v0, v0, v1

    .line 91
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 92
    mul-int v0, v0, v1

    .line 93
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transportName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 94
    mul-int v0, v0, v1

    .line 95
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->event:Lcom/google/android/datatransport/Event;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 96
    mul-int v0, v0, v1

    .line 97
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transformer:Lcom/google/android/datatransport/Transformer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 98
    mul-int v0, v0, v1

    .line 99
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->encoding:Lcom/google/android/datatransport/Encoding;

    invoke-virtual {v1}, Lcom/google/android/datatransport/Encoding;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 100
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendRequest{transportContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transportName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transportName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->event:Lcom/google/android/datatransport/Event;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->transformer:Lcom/google/android/datatransport/Transformer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;->encoding:Lcom/google/android/datatransport/Encoding;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
