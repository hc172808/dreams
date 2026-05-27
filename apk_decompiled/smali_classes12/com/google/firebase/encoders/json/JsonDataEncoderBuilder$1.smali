.class Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$1;
.super Ljava/lang/Object;
.source "JsonDataEncoderBuilder.java"

# interfaces
.implements Lcom/google/firebase/encoders/DataEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->build()Lcom/google/firebase/encoders/DataEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;


# direct methods
.method constructor <init>(Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    .line 115
    iput-object p1, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$1;->this$0:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 129
    .local v0, "stringWriter":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$1;->encode(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    .line 133
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public encode(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    new-instance v6, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$1;->this$0:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    .line 120
    invoke-static {v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->access$100(Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;)Ljava/util/Map;

    move-result-object v2

    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$1;->this$0:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    invoke-static {v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->access$200(Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;)Ljava/util/Map;

    move-result-object v3

    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$1;->this$0:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    invoke-static {v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->access$300(Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;)Lcom/google/firebase/encoders/ObjectEncoder;

    move-result-object v4

    iget-object v0, p0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder$1;->this$0:Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    invoke-static {v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->access$400(Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;)Z

    move-result v5

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;-><init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Lcom/google/firebase/encoders/ObjectEncoder;Z)V

    .line 121
    .local v0, "encoderContext":Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->add(Ljava/lang/Object;Z)Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;

    .line 122
    invoke-virtual {v0}, Lcom/google/firebase/encoders/json/JsonValueObjectEncoderContext;->close()V

    .line 123
    return-void
.end method
