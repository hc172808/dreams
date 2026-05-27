.class final Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;
.super Lcom/google/android/datatransport/runtime/SendRequest$Builder;
.source "AutoValue_SendRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private encoding:Lcom/google/android/datatransport/Encoding;

.field private event:Lcom/google/android/datatransport/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/Event<",
            "*>;"
        }
    .end annotation
.end field

.field private transformer:Lcom/google/android/datatransport/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/Transformer<",
            "*[B>;"
        }
    .end annotation
.end field

.field private transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

.field private transportName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/SendRequest$Builder;-><init>()V

    .line 110
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/datatransport/runtime/SendRequest;
    .locals 9

    .line 153
    const-string v0, ""

    .line 154
    .local v0, "missing":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    if-nez v1, :cond_0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " transportContext"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->transportName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " transportName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->event:Lcom/google/android/datatransport/Event;

    if-nez v1, :cond_2

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->transformer:Lcom/google/android/datatransport/Transformer;

    if-nez v1, :cond_3

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " transformer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_3
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->encoding:Lcom/google/android/datatransport/Encoding;

    if-nez v1, :cond_4

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " encoding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 172
    new-instance v1, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    iget-object v4, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->transportName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->event:Lcom/google/android/datatransport/Event;

    iget-object v6, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->transformer:Lcom/google/android/datatransport/Transformer;

    iget-object v7, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->encoding:Lcom/google/android/datatransport/Encoding;

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest;-><init>(Lcom/google/android/datatransport/runtime/TransportContext;Ljava/lang/String;Lcom/google/android/datatransport/Event;Lcom/google/android/datatransport/Transformer;Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$1;)V

    return-object v1

    .line 170
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setEncoding(Lcom/google/android/datatransport/Encoding;)Lcom/google/android/datatransport/runtime/SendRequest$Builder;
    .locals 2
    .param p1, "encoding"    # Lcom/google/android/datatransport/Encoding;

    .line 145
    if-eqz p1, :cond_0

    .line 148
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->encoding:Lcom/google/android/datatransport/Encoding;

    .line 149
    return-object p0

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null encoding"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setEvent(Lcom/google/android/datatransport/Event;)Lcom/google/android/datatransport/runtime/SendRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/Event<",
            "*>;)",
            "Lcom/google/android/datatransport/runtime/SendRequest$Builder;"
        }
    .end annotation

    .line 129
    .local p1, "event":Lcom/google/android/datatransport/Event;, "Lcom/google/android/datatransport/Event<*>;"
    if-eqz p1, :cond_0

    .line 132
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->event:Lcom/google/android/datatransport/Event;

    .line 133
    return-object p0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null event"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setTransformer(Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/runtime/SendRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/Transformer<",
            "*[B>;)",
            "Lcom/google/android/datatransport/runtime/SendRequest$Builder;"
        }
    .end annotation

    .line 137
    .local p1, "transformer":Lcom/google/android/datatransport/Transformer;, "Lcom/google/android/datatransport/Transformer<*[B>;"
    if-eqz p1, :cond_0

    .line 140
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->transformer:Lcom/google/android/datatransport/Transformer;

    .line 141
    return-object p0

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null transformer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTransportContext(Lcom/google/android/datatransport/runtime/TransportContext;)Lcom/google/android/datatransport/runtime/SendRequest$Builder;
    .locals 2
    .param p1, "transportContext"    # Lcom/google/android/datatransport/runtime/TransportContext;

    .line 113
    if-eqz p1, :cond_0

    .line 116
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 117
    return-object p0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null transportContext"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTransportName(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/SendRequest$Builder;
    .locals 2
    .param p1, "transportName"    # Ljava/lang/String;

    .line 121
    if-eqz p1, :cond_0

    .line 124
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/AutoValue_SendRequest$Builder;->transportName:Ljava/lang/String;

    .line 125
    return-object p0

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null transportName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
