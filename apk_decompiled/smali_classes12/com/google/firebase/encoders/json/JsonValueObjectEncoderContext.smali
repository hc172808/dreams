.class final Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
.super Ljava/lang/Object;
.source "JsonValueObjectEncoderContext.java"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoderContext;
.implements Lcom/google/firebase/encoders/ValueEncoderContext;


# instance fields
.field private active:Z

.field private childContext:Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

.field private final fallbackEncoder:Lcom/google/firebase/encoders/ObjectEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final ignoreNullValues:Z

.field private final jsonWriter:Landroid/util/JsonWriter;

.field private final objectEncoders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final valueEncoders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/ValueEncoder<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;)V
    .locals 1
    .param p1, "anotherContext"    # Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->childContext:Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->active:Z

    .line 57
    iget-object v0, p1, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    iput-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    .line 58
    iget-object v0, p1, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->objectEncoders:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->objectEncoders:Ljava/util/Map;

    .line 59
    iget-object v0, p1, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->valueEncoders:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->valueEncoders:Ljava/util/Map;

    .line 60
    iget-object v0, p1, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->fallbackEncoder:Lcom/google/firebase/encoders/ObjectEncoder;

    iput-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->fallbackEncoder:Lcom/google/firebase/encoders/ObjectEncoder;

    .line 61
    iget-boolean v0, p1, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->ignoreNullValues:Z

    iput-boolean v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->ignoreNullValues:Z

    .line 62
    return-void
.end method

.method constructor <init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/ObjectEncoder;Z)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p5, "ignoreNullValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/firebase/encoders/ValueEncoder<",
            "*>;>;",
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 48
    .local p2, "objectEncoders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/google/firebase/encoders/ObjectEncoder<*>;>;"
    .local p3, "valueEncoders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/google/firebase/encoders/ValueEncoder<*>;>;"
    .local p4, "fallbackEncoder":Lcom/google/firebase/encoders/ObjectEncoder;, "Lcom/google/firebase/encoders/ObjectEncoder<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->childContext:Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->active:Z

    .line 49
    new-instance v0, Landroid/util/JsonWriter;

    invoke-direct {v0, p1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    .line 50
    iput-object p2, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->objectEncoders:Ljava/util/Map;

    .line 51
    iput-object p3, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->valueEncoders:Ljava/util/Map;

    .line 52
    iput-object p4, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->fallbackEncoder:Lcom/google/firebase/encoders/ObjectEncoder;

    .line 53
    iput-boolean p5, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->ignoreNullValues:Z

    .line 54
    return-void
.end method

.method private cannotBeInline(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 336
    if-eqz p1, :cond_1

    .line 337
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/util/Collection;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/util/Date;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Enum;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 336
    :goto_1
    return v0
.end method

.method private internalAdd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/firebase/encoders/EncodingException;
        }
    .end annotation

    .line 364
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 365
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 366
    if-nez p2, :cond_0

    .line 367
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    .line 368
    return-object p0

    .line 370
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method private internalAddIgnoreNullValues(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/firebase/encoders/EncodingException;
        }
    .end annotation

    .line 375
    if-nez p2, :cond_0

    .line 376
    return-object p0

    .line 378
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 379
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 380
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method private maybeUnNest()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    iget-boolean v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->active:Z

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->childContext:Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    if-eqz v0, :cond_0

    .line 355
    invoke-direct {v0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 356
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->childContext:Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->active:Z

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->childContext:Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    .line 358
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 360
    :cond_0
    return-void

    .line 351
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Parent context used since this context was created. Cannot use this context anymore."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Lcom/google/firebase/encoders/FieldDescriptor;D)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 1
    .param p1, "field"    # Lcom/google/firebase/encoders/FieldDescriptor;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Lcom/google/firebase/encoders/FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;D)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/google/firebase/encoders/FieldDescriptor;F)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 3
    .param p1, "field"    # Lcom/google/firebase/encoders/FieldDescriptor;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-virtual {p1}, Lcom/google/firebase/encoders/FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    float-to-double v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;D)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/google/firebase/encoders/FieldDescriptor;I)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 1
    .param p1, "field"    # Lcom/google/firebase/encoders/FieldDescriptor;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Lcom/google/firebase/encoders/FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;I)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/google/firebase/encoders/FieldDescriptor;J)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 1
    .param p1, "field"    # Lcom/google/firebase/encoders/FieldDescriptor;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Lcom/google/firebase/encoders/FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;J)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 1
    .param p1, "field"    # Lcom/google/firebase/encoders/FieldDescriptor;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-virtual {p1}, Lcom/google/firebase/encoders/FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/google/firebase/encoders/FieldDescriptor;Z)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 1
    .param p1, "field"    # Lcom/google/firebase/encoders/FieldDescriptor;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-virtual {p1}, Lcom/google/firebase/encoders/FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(Ljava/lang/String;D)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;D)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/String;I)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;I)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/String;J)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;J)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/String;Z)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(D)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(D)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(F)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(F)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(I)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(I)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(J)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(J)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/String;)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Z)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add([B)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add([B)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object p1

    return-object p1
.end method

.method public add(D)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .locals 1
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 186
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1, p2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 187
    return-object p0
.end method

.method public add(F)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .locals 3
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 178
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 179
    return-object p0
.end method

.method public add(I)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 194
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 195
    return-object p0
.end method

.method public add(J)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 202
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1, p2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 203
    return-object p0
.end method

.method add(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "inline"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->cannotBeInline(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    new-instance v2, Lcom/google/firebase/encoders/EncodingException;

    new-array v0, v0, [Ljava/lang/Object;

    .line 230
    if-nez p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    :goto_0
    aput-object v3, v0, v1

    const-string v1, "%s cannot be encoded inline"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 232
    :cond_1
    if-nez p1, :cond_2

    .line 233
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    .line 234
    return-object p0

    .line 236
    :cond_2
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_3

    .line 237
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 238
    return-object p0

    .line 241
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 244
    instance-of v0, p1, [B

    if-eqz v0, :cond_4

    .line 245
    move-object v0, p1

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add([B)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object v0

    return-object v0

    .line 248
    :cond_4
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 249
    instance-of v0, p1, [I

    if-eqz v0, :cond_5

    .line 250
    move-object v0, p1

    check-cast v0, [I

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_a

    aget v3, v0, v1

    .line 251
    .local v3, "item":I
    iget-object v4, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 250
    .end local v3    # "item":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 253
    :cond_5
    instance-of v0, p1, [J

    if-eqz v0, :cond_6

    .line 254
    move-object v0, p1

    check-cast v0, [J

    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_a

    aget-wide v3, v0, v1

    .line 255
    .local v3, "item":J
    invoke-virtual {p0, v3, v4}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(J)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    .line 254
    .end local v3    # "item":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 257
    :cond_6
    instance-of v0, p1, [D

    if-eqz v0, :cond_7

    .line 258
    move-object v0, p1

    check-cast v0, [D

    array-length v2, v0

    :goto_3
    if-ge v1, v2, :cond_a

    aget-wide v3, v0, v1

    .line 259
    .local v3, "item":D
    iget-object v5, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v5, v3, v4}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 258
    .end local v3    # "item":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 261
    :cond_7
    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    .line 262
    move-object v0, p1

    check-cast v0, [Z

    array-length v2, v0

    :goto_4
    if-ge v1, v2, :cond_a

    aget-boolean v3, v0, v1

    .line 263
    .local v3, "item":Z
    iget-object v4, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v4, v3}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 262
    .end local v3    # "item":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 265
    :cond_8
    instance-of v0, p1, [Ljava/lang/Number;

    if-eqz v0, :cond_9

    .line 266
    move-object v0, p1

    check-cast v0, [Ljava/lang/Number;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_a

    aget-object v4, v0, v3

    .line 267
    .local v4, "item":Ljava/lang/Number;
    invoke-virtual {p0, v4, v1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    .line 266
    .end local v4    # "item":Ljava/lang/Number;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 271
    :cond_9
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_a

    aget-object v4, v0, v3

    .line 272
    .local v4, "item":Ljava/lang/Object;
    invoke-virtual {p0, v4, v1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    .line 271
    .end local v4    # "item":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 275
    :cond_a
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 276
    return-object p0

    .line 278
    :cond_b
    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_d

    .line 279
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 280
    .local v0, "collection":Ljava/util/Collection;
    iget-object v2, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 281
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 282
    .local v3, "elem":Ljava/lang/Object;
    invoke-virtual {p0, v3, v1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    .line 283
    .end local v3    # "elem":Ljava/lang/Object;
    goto :goto_7

    .line 284
    :cond_c
    iget-object v1, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 285
    return-object p0

    .line 287
    .end local v0    # "collection":Ljava/util/Collection;
    :cond_d
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_f

    .line 289
    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    .line 290
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v3}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 291
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 292
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 294
    .local v5, "key":Ljava/lang/Object;
    :try_start_0
    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    nop

    .line 302
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v5    # "key":Ljava/lang/Object;
    goto :goto_8

    .line 295
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v5    # "key":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 296
    .local v3, "ex":Ljava/lang/ClassCastException;
    new-instance v6, Lcom/google/firebase/encoders/EncodingException;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v1

    .line 299
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v7, v0

    .line 297
    const-string v0, "Only String keys are currently supported in maps, got %s of type %s instead."

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v3}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 303
    .end local v3    # "ex":Ljava/lang/ClassCastException;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v5    # "key":Ljava/lang/Object;
    :cond_e
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 304
    return-object p0

    .line 307
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_f
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->objectEncoders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/encoders/ObjectEncoder;

    .line 308
    .local v0, "objectEncoder":Lcom/google/firebase/encoders/ObjectEncoder;, "Lcom/google/firebase/encoders/ObjectEncoder<Ljava/lang/Object;>;"
    if-eqz v0, :cond_10

    .line 309
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->doEncode(Lcom/google/firebase/encoders/ObjectEncoder;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object v1

    return-object v1

    .line 312
    :cond_10
    iget-object v1, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->valueEncoders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/encoders/ValueEncoder;

    .line 313
    .local v1, "valueEncoder":Lcom/google/firebase/encoders/ValueEncoder;, "Lcom/google/firebase/encoders/ValueEncoder<Ljava/lang/Object;>;"
    if-eqz v1, :cond_11

    .line 314
    invoke-interface {v1, p1, p0}, Lcom/google/firebase/encoders/ValueEncoder;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 315
    return-object p0

    .line 319
    :cond_11
    instance-of v2, p1, Ljava/lang/Enum;

    if-eqz v2, :cond_12

    .line 320
    move-object v2, p1

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/String;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    .line 321
    return-object p0

    .line 324
    :cond_12
    iget-object v2, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->fallbackEncoder:Lcom/google/firebase/encoders/ObjectEncoder;

    invoke-virtual {p0, v2, p1, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->doEncode(Lcom/google/firebase/encoders/ObjectEncoder;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object v2

    return-object v2
.end method

.method public add(Ljava/lang/String;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 170
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 171
    return-object p0
.end method

.method public add(Ljava/lang/String;D)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 78
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 79
    invoke-virtual {p0, p2, p3}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(D)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;I)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 86
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 87
    invoke-virtual {p0, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(I)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;J)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 94
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 95
    invoke-virtual {p0, p2, p3}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(J)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-boolean v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->ignoreNullValues:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->internalAddIgnoreNullValues(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->internalAdd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 102
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 103
    invoke-virtual {p0, p2}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method public add(Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 210
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 211
    return-object p0
.end method

.method public add([B)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 218
    if-nez p1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 223
    :goto_0
    return-object p0
.end method

.method close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 346
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->flush()V

    .line 347
    return-void
.end method

.method doEncode(Lcom/google/firebase/encoders/ObjectEncoder;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    .locals 1
    .param p2, "o"    # Ljava/lang/Object;
    .param p3, "inline"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/encoders/ObjectEncoder<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    .local p1, "encoder":Lcom/google/firebase/encoders/ObjectEncoder;, "Lcom/google/firebase/encoders/ObjectEncoder<Ljava/lang/Object;>;"
    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 330
    :cond_0
    invoke-interface {p1, p2, p0}, Lcom/google/firebase/encoders/ObjectEncoder;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 331
    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 332
    :cond_1
    return-object p0
.end method

.method public inline(Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method public nested(Lcom/google/firebase/encoders/FieldDescriptor;)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 1
    .param p1, "field"    # Lcom/google/firebase/encoders/FieldDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-virtual {p1}, Lcom/google/firebase/encoders/FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->nested(Ljava/lang/String;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    move-result-object v0

    return-object v0
.end method

.method public nested(Ljava/lang/String;)Lcom/google/firebase/encoders/ObjectEncoderContext;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->maybeUnNest()V

    .line 154
    new-instance v0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    invoke-direct {v0, p0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;-><init>(Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;)V

    iput-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->childContext:Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    .line 155
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 156
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->jsonWriter:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 157
    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->childContext:Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    return-object v0
.end method
