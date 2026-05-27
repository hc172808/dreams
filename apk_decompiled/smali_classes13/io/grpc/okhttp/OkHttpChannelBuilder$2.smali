.class synthetic Lio/grpc/okhttp/OkHttpChannelBuilder$2;
.super Ljava/lang/Object;
.source "OkHttpChannelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpChannelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$io$grpc$okhttp$NegotiationType:[I

.field static final synthetic $SwitchMap$io$grpc$okhttp$OkHttpChannelBuilder$NegotiationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 390
    invoke-static {}, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;->values()[Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/grpc/okhttp/OkHttpChannelBuilder$2;->$SwitchMap$io$grpc$okhttp$OkHttpChannelBuilder$NegotiationType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;->PLAINTEXT:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    invoke-virtual {v2}, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lio/grpc/okhttp/OkHttpChannelBuilder$2;->$SwitchMap$io$grpc$okhttp$OkHttpChannelBuilder$NegotiationType:[I

    sget-object v3, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;->TLS:Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;

    invoke-virtual {v3}, Lio/grpc/okhttp/OkHttpChannelBuilder$NegotiationType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 190
    :goto_1
    invoke-static {}, Lio/grpc/okhttp/NegotiationType;->values()[Lio/grpc/okhttp/NegotiationType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lio/grpc/okhttp/OkHttpChannelBuilder$2;->$SwitchMap$io$grpc$okhttp$NegotiationType:[I

    :try_start_2
    sget-object v3, Lio/grpc/okhttp/NegotiationType;->TLS:Lio/grpc/okhttp/NegotiationType;

    invoke-virtual {v3}, Lio/grpc/okhttp/NegotiationType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_2
    :try_start_3
    sget-object v1, Lio/grpc/okhttp/OkHttpChannelBuilder$2;->$SwitchMap$io$grpc$okhttp$NegotiationType:[I

    sget-object v2, Lio/grpc/okhttp/NegotiationType;->PLAINTEXT:Lio/grpc/okhttp/NegotiationType;

    invoke-virtual {v2}, Lio/grpc/okhttp/NegotiationType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    return-void
.end method
