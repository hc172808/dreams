.class public Lcom/payu/custombrowser/util/g$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payu/custombrowser/util/g$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/util/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/util/g;

.field private final b:Lcom/payu/custombrowser/util/g$n;

.field private final c:Ljava/io/OutputStream;

.field private d:Ljava/io/PushbackInputStream;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lcom/payu/custombrowser/util/g$j;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/payu/custombrowser/util/g$c;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/payu/custombrowser/util/g;Lcom/payu/custombrowser/util/g$n;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V
    .locals 0

    .line 868
    iput-object p1, p0, Lcom/payu/custombrowser/util/g$h;->a:Lcom/payu/custombrowser/util/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 869
    iput-object p2, p0, Lcom/payu/custombrowser/util/g$h;->b:Lcom/payu/custombrowser/util/g$n;

    .line 870
    new-instance p1, Ljava/io/PushbackInputStream;

    const/16 p2, 0x2000

    invoke-direct {p1, p3, p2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object p1, p0, Lcom/payu/custombrowser/util/g$h;->d:Ljava/io/PushbackInputStream;

    .line 871
    iput-object p4, p0, Lcom/payu/custombrowser/util/g$h;->c:Ljava/io/OutputStream;

    .line 872
    invoke-virtual {p5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "127.0.0.1"

    .line 873
    :goto_1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/payu/custombrowser/util/g$h;->j:Ljava/util/Map;

    .line 875
    const-string p3, "remote-addr"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    iget-object p2, p0, Lcom/payu/custombrowser/util/g$h;->j:Ljava/util/Map;

    const-string p3, "http-client-ip"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;I)I
    .locals 3

    .line 1266
    nop

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 1267
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1268
    goto :goto_1

    .line 1266
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1271
    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method private a([BI)I
    .locals 6

    .line 1188
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1189
    :goto_0
    add-int/lit8 v2, v1, 0x3

    if-ge v2, p2, :cond_1

    .line 1190
    aget-byte v3, p1, v1

    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p1, v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_0

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, p1, v3

    if-ne v3, v4, :cond_0

    aget-byte v2, p1, v2

    if-ne v2, v5, :cond_0

    .line 1191
    add-int/lit8 v1, v1, 0x4

    return v1

    .line 1193
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1195
    :cond_1
    return v0
.end method

.method private a(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 4

    .line 1232
    nop

    .line 1233
    if-lez p3, :cond_0

    .line 1234
    const/4 v0, 0x0

    .line 1236
    :try_start_0
    iget-object v1, p0, Lcom/payu/custombrowser/util/g$h;->b:Lcom/payu/custombrowser/util/g$n;

    invoke-interface {v1}, Lcom/payu/custombrowser/util/g$n;->a()Lcom/payu/custombrowser/util/g$m;

    move-result-object v1

    .line 1237
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 1238
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-interface {v1}, Lcom/payu/custombrowser/util/g$m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1239
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1240
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    add-int/2addr p2, p3

    invoke-virtual {v3, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 1241
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1242
    invoke-interface {v1}, Lcom/payu/custombrowser/util/g$m;->b()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1246
    invoke-static {v2}, Lcom/payu/custombrowser/util/g;->a(Ljava/io/Closeable;)V

    .line 1247
    goto :goto_2

    .line 1246
    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    .line 1243
    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_0

    .line 1246
    :catchall_1
    move-exception p1

    goto :goto_1

    .line 1243
    :catch_1
    move-exception p1

    .line 1244
    :goto_0
    :try_start_2
    new-instance p2, Ljava/lang/Error;

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1246
    :goto_1
    invoke-static {v0}, Lcom/payu/custombrowser/util/g;->a(Ljava/io/Closeable;)V

    .line 1247
    throw p1

    .line 1233
    :cond_0
    const-string p1, ""

    .line 1249
    :goto_2
    return-object p1
.end method

.method private a(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/payu/custombrowser/util/g$l;
        }
    .end annotation

    .line 1063
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1064
    if-nez v0, :cond_0

    .line 1065
    return-void

    .line 1068
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1073
    const-string v0, "method"

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1079
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1082
    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1083
    const/4 v3, 0x0

    if-ltz v2, :cond_1

    .line 1084
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p3}, Lcom/payu/custombrowser/util/g$h;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1085
    iget-object p3, p0, Lcom/payu/custombrowser/util/g$h;->a:Lcom/payu/custombrowser/util/g;

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/payu/custombrowser/util/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 1087
    :cond_1
    iget-object p3, p0, Lcom/payu/custombrowser/util/g$h;->a:Lcom/payu/custombrowser/util/g;

    invoke-virtual {p3, v0}, Lcom/payu/custombrowser/util/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1094
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1095
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1096
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1097
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1098
    if-ltz v1, :cond_2

    .line 1099
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    :cond_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1101
    goto :goto_1

    .line 1104
    :cond_3
    const-string p1, "uri"

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    nop

    .line 1108
    return-void

    .line 1076
    :cond_4
    new-instance p1, Lcom/payu/custombrowser/util/g$l;

    sget-object p2, Lcom/payu/custombrowser/util/g$k$b;->BAD_REQUEST:Lcom/payu/custombrowser/util/g$k$b;

    const-string p3, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    invoke-direct {p1, p2, p3}, Lcom/payu/custombrowser/util/g$l;-><init>(Lcom/payu/custombrowser/util/g$k$b;Ljava/lang/String;)V

    throw p1

    .line 1070
    :cond_5
    new-instance p1, Lcom/payu/custombrowser/util/g$l;

    sget-object p2, Lcom/payu/custombrowser/util/g$k$b;->BAD_REQUEST:Lcom/payu/custombrowser/util/g$k$b;

    const-string p3, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    invoke-direct {p1, p2, p3}, Lcom/payu/custombrowser/util/g$l;-><init>(Lcom/payu/custombrowser/util/g$k$b;Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1105
    :catch_0
    move-exception p1

    .line 1106
    new-instance p2, Lcom/payu/custombrowser/util/g$l;

    sget-object p3, Lcom/payu/custombrowser/util/g$k$b;->INTERNAL_ERROR:Lcom/payu/custombrowser/util/g$k$b;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4, p1}, Lcom/payu/custombrowser/util/g$l;-><init>(Lcom/payu/custombrowser/util/g$k$b;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method private a(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/io/BufferedReader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/payu/custombrowser/util/g$l;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1116
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/payu/custombrowser/util/g$h;->a(Ljava/nio/ByteBuffer;[B)[I

    move-result-object v3

    .line 1117
    nop

    .line 1118
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 1119
    :goto_0
    if-eqz v4, :cond_e

    .line 1120
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1123
    add-int/2addr v6, v5

    .line 1124
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1125
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 1126
    :goto_1
    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 1127
    const/16 v10, 0x3a

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 1128
    if-eq v10, v9, :cond_0

    .line 1129
    invoke-virtual {v7, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 1132
    goto :goto_1

    .line 1133
    :cond_1
    if-eqz v7, :cond_c

    .line 1134
    const-string v10, "content-disposition"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1135
    if-eqz v10, :cond_b

    .line 1138
    new-instance v11, Ljava/util/StringTokenizer;

    const-string v12, ";"

    invoke-direct {v11, v10, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1140
    :goto_2
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1141
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 1142
    const/16 v13, 0x3d

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 1143
    if-eq v13, v9, :cond_2

    .line 1144
    invoke-virtual {v12, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    :cond_2
    goto :goto_2

    .line 1147
    :cond_3
    const-string v11, "name"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1148
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v5

    invoke-virtual {v11, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1150
    const-string v12, ""

    .line 1151
    const-string v13, "content-type"

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_7

    .line 1152
    :cond_4
    :goto_3
    if-eqz v7, :cond_6

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1153
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 1154
    if-eqz v7, :cond_4

    .line 1155
    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1156
    if-ne v4, v9, :cond_5

    .line 1157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    goto :goto_4

    .line 1159
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    .line 1161
    :goto_4
    goto :goto_3

    .line 1176
    :cond_6
    move-object/from16 v8, p5

    goto :goto_5

    .line 1164
    :cond_7
    array-length v4, v3

    if-gt v6, v4, :cond_a

    .line 1167
    add-int/lit8 v4, v6, -0x2

    aget v4, v3, v4

    invoke-direct {v1, v2, v4}, Lcom/payu/custombrowser/util/g$h;->a(Ljava/nio/ByteBuffer;I)I

    move-result v4

    .line 1168
    add-int/lit8 v7, v6, -0x1

    aget v7, v3, v7

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x4

    invoke-direct {v1, v2, v4, v7}, Lcom/payu/custombrowser/util/g$h;->a(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v4

    .line 1169
    move-object/from16 v8, p5

    invoke-interface {v8, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    const-string v4, "filename"

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1171
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1173
    :cond_8
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 1174
    if-eqz v7, :cond_9

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1176
    :cond_9
    :goto_5
    move-object/from16 v4, p4

    invoke-interface {v4, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1165
    :cond_a
    new-instance v0, Lcom/payu/custombrowser/util/g$l;

    sget-object v2, Lcom/payu/custombrowser/util/g$k$b;->INTERNAL_ERROR:Lcom/payu/custombrowser/util/g$k$b;

    const-string v3, "Error processing request"

    invoke-direct {v0, v2, v3}, Lcom/payu/custombrowser/util/g$l;-><init>(Lcom/payu/custombrowser/util/g$k$b;Ljava/lang/String;)V

    throw v0

    .line 1136
    :cond_b
    new-instance v0, Lcom/payu/custombrowser/util/g$l;

    sget-object v2, Lcom/payu/custombrowser/util/g$k$b;->BAD_REQUEST:Lcom/payu/custombrowser/util/g$k$b;

    const-string v3, "BAD REQUEST: Content type is multipart/form-data but no content-disposition info found. Usage: GET /example/file.html"

    invoke-direct {v0, v2, v3}, Lcom/payu/custombrowser/util/g$l;-><init>(Lcom/payu/custombrowser/util/g$k$b;Ljava/lang/String;)V

    throw v0

    .line 1133
    :cond_c
    move-object/from16 v4, p4

    move-object/from16 v8, p5

    .line 1178
    :goto_6
    move-object v4, v7

    goto/16 :goto_0

    .line 1121
    :cond_d
    new-instance v0, Lcom/payu/custombrowser/util/g$l;

    sget-object v2, Lcom/payu/custombrowser/util/g$k$b;->BAD_REQUEST:Lcom/payu/custombrowser/util/g$k$b;

    const-string v3, "BAD REQUEST: Content type is multipart/form-data but next chunk does not start with boundary. Usage: GET /example/file.html"

    invoke-direct {v0, v2, v3}, Lcom/payu/custombrowser/util/g$l;-><init>(Lcom/payu/custombrowser/util/g$k$b;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1181
    :cond_e
    nop

    .line 1182
    return-void

    .line 1179
    :catch_0
    move-exception v0

    .line 1180
    new-instance v2, Lcom/payu/custombrowser/util/g$l;

    sget-object v3, Lcom/payu/custombrowser/util/g$k$b;->INTERNAL_ERROR:Lcom/payu/custombrowser/util/g$k$b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/payu/custombrowser/util/g$l;-><init>(Lcom/payu/custombrowser/util/g$k$b;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1279
    const-string v0, ""

    if-nez p1, :cond_0

    .line 1280
    iput-object v0, p0, Lcom/payu/custombrowser/util/g$h;->l:Ljava/lang/String;

    .line 1281
    return-void

    .line 1284
    :cond_0
    iput-object p1, p0, Lcom/payu/custombrowser/util/g$h;->l:Ljava/lang/String;

    .line 1285
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "&"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1287
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 1288
    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1289
    if-ltz v2, :cond_1

    .line 1290
    iget-object v3, p0, Lcom/payu/custombrowser/util/g$h;->a:Lcom/payu/custombrowser/util/g;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/payu/custombrowser/util/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/payu/custombrowser/util/g$h;->a:Lcom/payu/custombrowser/util/g;

    add-int/lit8 v2, v2, 0x1

    .line 1291
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/payu/custombrowser/util/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1290
    invoke-interface {p2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1293
    :cond_1
    iget-object v2, p0, Lcom/payu/custombrowser/util/g$h;->a:Lcom/payu/custombrowser/util/g;

    invoke-virtual {v2, p1}, Lcom/payu/custombrowser/util/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    :goto_1
    goto :goto_0

    .line 1296
    :cond_2
    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;[B)[I
    .locals 8

    .line 1202
    nop

    .line 1203
    nop

    .line 1204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1205
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 1206
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    aget-byte v7, p2, v4

    if-ne v6, v7, :cond_1

    .line 1207
    if-nez v4, :cond_0

    .line 1208
    move v5, v3

    .line 1209
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 1210
    array-length v6, p2

    if-ne v4, v6, :cond_2

    .line 1211
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1212
    nop

    .line 1213
    const/4 v4, 0x0

    const/4 v5, -0x1

    goto :goto_1

    .line 1216
    :cond_1
    sub-int/2addr v3, v4

    .line 1217
    nop

    .line 1218
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 1205
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1221
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p2, p1, [I

    .line 1222
    nop

    :goto_2
    if-ge v2, p1, :cond_4

    .line 1223
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p2, v2

    .line 1222
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1225
    :cond_4
    return-object p2
.end method

.method private g()Ljava/io/RandomAccessFile;
    .locals 3

    .line 1254
    :try_start_0
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$h;->b:Lcom/payu/custombrowser/util/g$n;

    invoke-interface {v0}, Lcom/payu/custombrowser/util/g$n;->a()Lcom/payu/custombrowser/util/g$m;

    move-result-object v0

    .line 1255
    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-interface {v0}, Lcom/payu/custombrowser/util/g$m;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1256
    :catch_0
    move-exception v0

    .line 1257
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 886
    const-string v0, "NanoHttpd Shutdown"

    const-string v1, "text/plain"

    const/16 v2, 0x2000

    :try_start_0
    new-array v3, v2, [B

    .line 887
    const/4 v4, 0x0

    iput v4, p0, Lcom/payu/custombrowser/util/g$h;->e:I

    .line 888
    iput v4, p0, Lcom/payu/custombrowser/util/g$h;->f:I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/payu/custombrowser/util/g$l; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    nop

    .line 892
    :try_start_1
    iget-object v5, p0, Lcom/payu/custombrowser/util/g$h;->d:Ljava/io/PushbackInputStream;

    invoke-virtual {v5, v3, v4, v2}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/payu/custombrowser/util/g$l; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 897
    nop

    .line 898
    const/4 v5, -0x1

    if-eq v2, v5, :cond_6

    .line 904
    :goto_0
    if-lez v2, :cond_1

    .line 905
    :try_start_2
    iget v0, p0, Lcom/payu/custombrowser/util/g$h;->f:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/payu/custombrowser/util/g$h;->f:I

    .line 906
    invoke-direct {p0, v3, v0}, Lcom/payu/custombrowser/util/g$h;->a([BI)I

    move-result v0

    iput v0, p0, Lcom/payu/custombrowser/util/g$h;->e:I

    .line 907
    if-lez v0, :cond_0

    .line 908
    goto :goto_1

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$h;->d:Ljava/io/PushbackInputStream;

    iget v2, p0, Lcom/payu/custombrowser/util/g$h;->f:I

    rsub-int v5, v2, 0x2000

    invoke-virtual {v0, v3, v2, v5}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v2

    goto :goto_0

    .line 913
    :cond_1
    :goto_1
    iget v0, p0, Lcom/payu/custombrowser/util/g$h;->e:I

    iget v2, p0, Lcom/payu/custombrowser/util/g$h;->f:I

    if-ge v0, v2, :cond_2

    .line 914
    iget-object v5, p0, Lcom/payu/custombrowser/util/g$h;->d:Ljava/io/PushbackInputStream;

    sub-int/2addr v2, v0

    invoke-virtual {v5, v3, v0, v2}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 917
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/util/g$h;->i:Ljava/util/Map;

    .line 918
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$h;->j:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 919
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/util/g$h;->j:Ljava/util/Map;

    .line 923
    :cond_3
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget v6, p0, Lcom/payu/custombrowser/util/g$h;->f:I

    invoke-direct {v5, v3, v4, v6}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 926
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 927
    iget-object v3, p0, Lcom/payu/custombrowser/util/g$h;->i:Ljava/util/Map;

    iget-object v4, p0, Lcom/payu/custombrowser/util/g$h;->j:Ljava/util/Map;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/payu/custombrowser/util/g$h;->a(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 929
    const-string v0, "method"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/payu/custombrowser/util/g$j;->lookup(Ljava/lang/String;)Lcom/payu/custombrowser/util/g$j;

    move-result-object v0

    iput-object v0, p0, Lcom/payu/custombrowser/util/g$h;->h:Lcom/payu/custombrowser/util/g$j;

    .line 930
    if-eqz v0, :cond_5

    .line 934
    const-string v0, "uri"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/payu/custombrowser/util/g$h;->g:Ljava/lang/String;

    .line 936
    new-instance v0, Lcom/payu/custombrowser/util/g$c;

    iget-object v2, p0, Lcom/payu/custombrowser/util/g$h;->a:Lcom/payu/custombrowser/util/g;

    iget-object v3, p0, Lcom/payu/custombrowser/util/g$h;->j:Ljava/util/Map;

    invoke-direct {v0, v2, v3}, Lcom/payu/custombrowser/util/g$c;-><init>(Lcom/payu/custombrowser/util/g;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/payu/custombrowser/util/g$h;->k:Lcom/payu/custombrowser/util/g$c;

    .line 939
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$h;->a:Lcom/payu/custombrowser/util/g;

    invoke-virtual {v0, p0}, Lcom/payu/custombrowser/util/g;->a(Lcom/payu/custombrowser/util/g$i;)Lcom/payu/custombrowser/util/g$k;

    move-result-object v0

    .line 940
    if-eqz v0, :cond_4

    .line 943
    iget-object v2, p0, Lcom/payu/custombrowser/util/g$h;->k:Lcom/payu/custombrowser/util/g$c;

    invoke-virtual {v2, v0}, Lcom/payu/custombrowser/util/g$c;->a(Lcom/payu/custombrowser/util/g$k;)V

    .line 944
    iget-object v2, p0, Lcom/payu/custombrowser/util/g$h;->h:Lcom/payu/custombrowser/util/g$j;

    invoke-virtual {v0, v2}, Lcom/payu/custombrowser/util/g$k;->a(Lcom/payu/custombrowser/util/g$j;)V

    .line 945
    iget-object v2, p0, Lcom/payu/custombrowser/util/g$h;->c:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Lcom/payu/custombrowser/util/g$k;->a(Ljava/io/OutputStream;)V

    goto :goto_2

    .line 941
    :cond_4
    new-instance v0, Lcom/payu/custombrowser/util/g$l;

    sget-object v2, Lcom/payu/custombrowser/util/g$k$b;->INTERNAL_ERROR:Lcom/payu/custombrowser/util/g$k$b;

    const-string v3, "SERVER INTERNAL ERROR: Serve() returned a null response."

    invoke-direct {v0, v2, v3}, Lcom/payu/custombrowser/util/g$l;-><init>(Lcom/payu/custombrowser/util/g$k$b;Ljava/lang/String;)V

    throw v0

    .line 931
    :cond_5
    new-instance v0, Lcom/payu/custombrowser/util/g$l;

    sget-object v2, Lcom/payu/custombrowser/util/g$k$b;->BAD_REQUEST:Lcom/payu/custombrowser/util/g$k$b;

    const-string v3, "BAD REQUEST: Syntax error."

    invoke-direct {v0, v2, v3}, Lcom/payu/custombrowser/util/g$l;-><init>(Lcom/payu/custombrowser/util/g$k$b;Ljava/lang/String;)V

    throw v0

    .line 900
    :cond_6
    iget-object v2, p0, Lcom/payu/custombrowser/util/g$h;->d:Ljava/io/PushbackInputStream;

    invoke-static {v2}, Lcom/payu/custombrowser/util/g;->a(Ljava/io/Closeable;)V

    .line 901
    iget-object v2, p0, Lcom/payu/custombrowser/util/g$h;->c:Ljava/io/OutputStream;

    invoke-static {v2}, Lcom/payu/custombrowser/util/g;->a(Ljava/io/Closeable;)V

    .line 902
    new-instance v2, Ljava/net/SocketException;

    invoke-direct {v2, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 893
    :catch_0
    move-exception v2

    .line 894
    iget-object v2, p0, Lcom/payu/custombrowser/util/g$h;->d:Ljava/io/PushbackInputStream;

    invoke-static {v2}, Lcom/payu/custombrowser/util/g;->a(Ljava/io/Closeable;)V

    .line 895
    iget-object v2, p0, Lcom/payu/custombrowser/util/g$h;->c:Ljava/io/OutputStream;

    invoke-static {v2}, Lcom/payu/custombrowser/util/g;->a(Ljava/io/Closeable;)V

    .line 896
    new-instance v2, Ljava/net/SocketException;

    invoke-direct {v2, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/payu/custombrowser/util/g$l; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 961
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 956
    :catch_1
    move-exception v0

    .line 957
    :try_start_3
    new-instance v2, Lcom/payu/custombrowser/util/g$k;

    invoke-virtual {v0}, Lcom/payu/custombrowser/util/g$l;->a()Lcom/payu/custombrowser/util/g$k$b;

    move-result-object v3

    invoke-virtual {v0}, Lcom/payu/custombrowser/util/g$l;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v1, v0}, Lcom/payu/custombrowser/util/g$k;-><init>(Lcom/payu/custombrowser/util/g$k$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$h;->c:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Lcom/payu/custombrowser/util/g$k;->a(Ljava/io/OutputStream;)V

    .line 959
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$h;->c:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/payu/custombrowser/util/g;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 961
    :goto_2
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$h;->b:Lcom/payu/custombrowser/util/g$n;

    invoke-interface {v0}, Lcom/payu/custombrowser/util/g$n;->b()V

    .line 962
    goto :goto_3

    .line 952
    :catch_2
    move-exception v0

    .line 953
    :try_start_4
    new-instance v2, Lcom/payu/custombrowser/util/g$k;

    sget-object v3, Lcom/payu/custombrowser/util/g$k$b;->INTERNAL_ERROR:Lcom/payu/custombrowser/util/g$k$b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v1, v0}, Lcom/payu/custombrowser/util/g$k;-><init>(Lcom/payu/custombrowser/util/g$k$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$h;->c:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Lcom/payu/custombrowser/util/g$k;->a(Ljava/io/OutputStream;)V

    .line 955
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$h;->c:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/payu/custombrowser/util/g;->a(Ljava/io/Closeable;)V

    goto :goto_2

    .line 963
    :goto_3
    return-void

    .line 950
    :catch_3
    move-exception v0

    .line 951
    throw v0

    .line 947
    :catch_4
    move-exception v0

    .line 949
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 961
    :goto_4
    iget-object v1, p0, Lcom/payu/custombrowser/util/g$h;->b:Lcom/payu/custombrowser/util/g$n;

    invoke-interface {v1}, Lcom/payu/custombrowser/util/g$n;->b()V

    .line 962
    throw v0
.end method

.method public a(Ljava/util/Map;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/payu/custombrowser/util/g$l;
        }
    .end annotation

    .line 967
    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const-string v1, "\""

    const-string v2, "content-length"

    .line 968
    nop

    .line 971
    const/4 v3, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/payu/custombrowser/util/g$h;->g()Ljava/io/RandomAccessFile;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 974
    :try_start_1
    iget-object v4, v7, Lcom/payu/custombrowser/util/g$h;->j:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_0

    .line 975
    iget-object v4, v7, Lcom/payu/custombrowser/util/g$h;->j:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v9, v2

    goto :goto_0

    .line 976
    :cond_0
    iget v2, v7, Lcom/payu/custombrowser/util/g$h;->e:I

    iget v4, v7, Lcom/payu/custombrowser/util/g$h;->f:I

    if-ge v2, v4, :cond_1

    .line 977
    sub-int/2addr v4, v2

    int-to-long v9, v4

    goto :goto_0

    .line 979
    :cond_1
    move-wide v9, v5

    .line 983
    :goto_0
    const/16 v2, 0x200

    new-array v4, v2, [B

    .line 984
    :cond_2
    :goto_1
    iget v11, v7, Lcom/payu/custombrowser/util/g$h;->f:I

    const/4 v12, 0x0

    if-ltz v11, :cond_3

    cmp-long v11, v9, v5

    if-lez v11, :cond_3

    .line 985
    iget-object v11, v7, Lcom/payu/custombrowser/util/g$h;->d:Ljava/io/PushbackInputStream;

    const-wide/16 v13, 0x200

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    long-to-int v14, v13

    invoke-virtual {v11, v4, v12, v14}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v11

    iput v11, v7, Lcom/payu/custombrowser/util/g$h;->f:I

    .line 986
    int-to-long v13, v11

    sub-long/2addr v9, v13

    .line 987
    if-lez v11, :cond_2

    .line 988
    invoke-virtual {v8, v4, v12, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_1

    .line 993
    :cond_3
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v13

    sget-object v14, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v15, 0x0

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v17

    invoke-virtual/range {v13 .. v18}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v4

    .line 994
    invoke-virtual {v8, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 997
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 998
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1002
    :try_start_2
    sget-object v5, Lcom/payu/custombrowser/util/g$j;->POST:Lcom/payu/custombrowser/util/g$j;

    iget-object v6, v7, Lcom/payu/custombrowser/util/g$h;->h:Lcom/payu/custombrowser/util/g$j;

    invoke-virtual {v5, v6}, Lcom/payu/custombrowser/util/g$j;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1003
    nop

    .line 1004
    iget-object v5, v7, Lcom/payu/custombrowser/util/g$h;->j:Ljava/util/Map;

    const-string v6, "content-type"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1006
    nop

    .line 1007
    const-string v6, ""

    if-eqz v5, :cond_5

    .line 1008
    :try_start_3
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v10, ",; "

    invoke-direct {v3, v5, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1010
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 1009
    :cond_4
    move-object v10, v6

    goto :goto_2

    .line 1007
    :cond_5
    move-object v10, v6

    .line 1014
    :goto_2
    const-string v11, "multipart/form-data"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1016
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1020
    const-string v2, "boundary="

    .line 1021
    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    .line 1022
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1023
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1024
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 1027
    :cond_6
    iget-object v5, v7, Lcom/payu/custombrowser/util/g$h;->i:Ljava/util/Map;

    move-object/from16 v1, p0

    move-object v3, v4

    move-object v4, v9

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/payu/custombrowser/util/g$h;->a(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;)V

    .line 1028
    goto :goto_4

    .line 1017
    :cond_7
    new-instance v0, Lcom/payu/custombrowser/util/g$l;

    sget-object v1, Lcom/payu/custombrowser/util/g$k$b;->BAD_REQUEST:Lcom/payu/custombrowser/util/g$k$b;

    const-string v2, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    invoke-direct {v0, v1, v2}, Lcom/payu/custombrowser/util/g$l;-><init>(Lcom/payu/custombrowser/util/g$k$b;Ljava/lang/String;)V

    throw v0

    .line 1029
    :cond_8
    nop

    .line 1030
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1031
    new-array v2, v2, [C

    .line 1032
    invoke-virtual {v9, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    .line 1033
    :goto_3
    if-ltz v3, :cond_9

    const-string v4, "\r\n"

    invoke-virtual {v6, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1034
    invoke-static {v2, v12, v3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v6

    .line 1035
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    invoke-virtual {v9, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    goto :goto_3

    .line 1038
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1040
    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1041
    iget-object v0, v7, Lcom/payu/custombrowser/util/g$h;->i:Ljava/util/Map;

    invoke-direct {v7, v1, v0}, Lcom/payu/custombrowser/util/g$h;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4

    .line 1042
    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_c

    .line 1044
    const-string v2, "postData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1047
    :cond_b
    sget-object v1, Lcom/payu/custombrowser/util/g$j;->PUT:Lcom/payu/custombrowser/util/g$j;

    iget-object v2, v7, Lcom/payu/custombrowser/util/g$h;->h:Lcom/payu/custombrowser/util/g$j;

    invoke-virtual {v1, v2}, Lcom/payu/custombrowser/util/g$j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1048
    const-string v1, "content"

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v7, v4, v12, v2}, Lcom/payu/custombrowser/util/g$h;->a(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 1047
    :cond_c
    :goto_4
    nop

    .line 1051
    :goto_5
    invoke-static {v8}, Lcom/payu/custombrowser/util/g;->a(Ljava/io/Closeable;)V

    .line 1052
    invoke-static {v9}, Lcom/payu/custombrowser/util/g;->a(Ljava/io/Closeable;)V

    .line 1053
    nop

    .line 1054
    return-void

    .line 1051
    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v9, v3

    :goto_6
    move-object v3, v8

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v9, v3

    :goto_7
    invoke-static {v3}, Lcom/payu/custombrowser/util/g;->a(Ljava/io/Closeable;)V

    .line 1052
    invoke-static {v9}, Lcom/payu/custombrowser/util/g;->a(Ljava/io/Closeable;)V

    .line 1053
    throw v0
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1300
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$h;->i:Ljava/util/Map;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1304
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$h;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1309
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$h;->j:Ljava/util/Map;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1314
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Lcom/payu/custombrowser/util/g$j;
    .locals 1

    .line 1319
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$h;->h:Lcom/payu/custombrowser/util/g$j;

    return-object v0
.end method
