.class public final Lcom/squareup/okhttp/CacheControl;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/CacheControl$Builder;
    }
.end annotation


# static fields
.field public static final FORCE_CACHE:Lcom/squareup/okhttp/CacheControl;

.field public static final FORCE_NETWORK:Lcom/squareup/okhttp/CacheControl;


# instance fields
.field headerValue:Ljava/lang/String;

.field private final isPrivate:Z

.field private final isPublic:Z

.field private final maxAgeSeconds:I

.field private final maxStaleSeconds:I

.field private final minFreshSeconds:I

.field private final mustRevalidate:Z

.field private final noCache:Z

.field private final noStore:Z

.field private final noTransform:Z

.field private final onlyIfCached:Z

.field private final sMaxAgeSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/squareup/okhttp/CacheControl$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl$Builder;->noCache()Lcom/squareup/okhttp/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl$Builder;->build()Lcom/squareup/okhttp/CacheControl;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/CacheControl;->FORCE_NETWORK:Lcom/squareup/okhttp/CacheControl;

    .line 28
    new-instance v0, Lcom/squareup/okhttp/CacheControl$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/CacheControl$Builder;-><init>()V

    .line 29
    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl$Builder;->onlyIfCached()Lcom/squareup/okhttp/CacheControl$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    const v2, 0x7fffffff

    invoke-virtual {v0, v2, v1}, Lcom/squareup/okhttp/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lcom/squareup/okhttp/CacheControl$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl$Builder;->build()Lcom/squareup/okhttp/CacheControl;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/CacheControl;->FORCE_CACHE:Lcom/squareup/okhttp/CacheControl;

    .line 28
    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/CacheControl$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/squareup/okhttp/CacheControl$Builder;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iget-boolean v0, p1, Lcom/squareup/okhttp/CacheControl$Builder;->noCache:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/CacheControl;->noCache:Z

    .line 66
    iget-boolean v0, p1, Lcom/squareup/okhttp/CacheControl$Builder;->noStore:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/CacheControl;->noStore:Z

    .line 67
    iget v0, p1, Lcom/squareup/okhttp/CacheControl$Builder;->maxAgeSeconds:I

    iput v0, p0, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds:I

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/CacheControl;->sMaxAgeSeconds:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/okhttp/CacheControl;->isPrivate:Z

    .line 70
    iput-boolean v0, p0, Lcom/squareup/okhttp/CacheControl;->isPublic:Z

    .line 71
    iput-boolean v0, p0, Lcom/squareup/okhttp/CacheControl;->mustRevalidate:Z

    .line 72
    iget v0, p1, Lcom/squareup/okhttp/CacheControl$Builder;->maxStaleSeconds:I

    iput v0, p0, Lcom/squareup/okhttp/CacheControl;->maxStaleSeconds:I

    .line 73
    iget v0, p1, Lcom/squareup/okhttp/CacheControl$Builder;->minFreshSeconds:I

    iput v0, p0, Lcom/squareup/okhttp/CacheControl;->minFreshSeconds:I

    .line 74
    iget-boolean v0, p1, Lcom/squareup/okhttp/CacheControl$Builder;->onlyIfCached:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/CacheControl;->onlyIfCached:Z

    .line 75
    iget-boolean v0, p1, Lcom/squareup/okhttp/CacheControl$Builder;->noTransform:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/CacheControl;->noTransform:Z

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/CacheControl$Builder;Lcom/squareup/okhttp/CacheControl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/CacheControl$Builder;
    .param p2, "x1"    # Lcom/squareup/okhttp/CacheControl$1;

    .line 14
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/CacheControl;-><init>(Lcom/squareup/okhttp/CacheControl$Builder;)V

    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZLjava/lang/String;)V
    .locals 0
    .param p1, "noCache"    # Z
    .param p2, "noStore"    # Z
    .param p3, "maxAgeSeconds"    # I
    .param p4, "sMaxAgeSeconds"    # I
    .param p5, "isPrivate"    # Z
    .param p6, "isPublic"    # Z
    .param p7, "mustRevalidate"    # Z
    .param p8, "maxStaleSeconds"    # I
    .param p9, "minFreshSeconds"    # I
    .param p10, "onlyIfCached"    # Z
    .param p11, "noTransform"    # Z
    .param p12, "headerValue"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean p1, p0, Lcom/squareup/okhttp/CacheControl;->noCache:Z

    .line 51
    iput-boolean p2, p0, Lcom/squareup/okhttp/CacheControl;->noStore:Z

    .line 52
    iput p3, p0, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds:I

    .line 53
    iput p4, p0, Lcom/squareup/okhttp/CacheControl;->sMaxAgeSeconds:I

    .line 54
    iput-boolean p5, p0, Lcom/squareup/okhttp/CacheControl;->isPrivate:Z

    .line 55
    iput-boolean p6, p0, Lcom/squareup/okhttp/CacheControl;->isPublic:Z

    .line 56
    iput-boolean p7, p0, Lcom/squareup/okhttp/CacheControl;->mustRevalidate:Z

    .line 57
    iput p8, p0, Lcom/squareup/okhttp/CacheControl;->maxStaleSeconds:I

    .line 58
    iput p9, p0, Lcom/squareup/okhttp/CacheControl;->minFreshSeconds:I

    .line 59
    iput-boolean p10, p0, Lcom/squareup/okhttp/CacheControl;->onlyIfCached:Z

    .line 60
    iput-boolean p11, p0, Lcom/squareup/okhttp/CacheControl;->noTransform:Z

    .line 61
    iput-object p12, p0, Lcom/squareup/okhttp/CacheControl;->headerValue:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private headerValue()Ljava/lang/String;
    .locals 4

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/squareup/okhttp/CacheControl;->noCache:Z

    if-eqz v1, :cond_0

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_0
    iget-boolean v1, p0, Lcom/squareup/okhttp/CacheControl;->noStore:Z

    if-eqz v1, :cond_1

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_1
    iget v1, p0, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds:I

    const-string v2, ", "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_2
    iget v1, p0, Lcom/squareup/okhttp/CacheControl;->sMaxAgeSeconds:I

    if-eq v1, v3, :cond_3

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/okhttp/CacheControl;->sMaxAgeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_3
    iget-boolean v1, p0, Lcom/squareup/okhttp/CacheControl;->isPrivate:Z

    if-eqz v1, :cond_4

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_4
    iget-boolean v1, p0, Lcom/squareup/okhttp/CacheControl;->isPublic:Z

    if-eqz v1, :cond_5

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_5
    iget-boolean v1, p0, Lcom/squareup/okhttp/CacheControl;->mustRevalidate:Z

    if-eqz v1, :cond_6

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_6
    iget v1, p0, Lcom/squareup/okhttp/CacheControl;->maxStaleSeconds:I

    if-eq v1, v3, :cond_7

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/okhttp/CacheControl;->maxStaleSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_7
    iget v1, p0, Lcom/squareup/okhttp/CacheControl;->minFreshSeconds:I

    if-eq v1, v3, :cond_8

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/squareup/okhttp/CacheControl;->minFreshSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_8
    iget-boolean v1, p0, Lcom/squareup/okhttp/CacheControl;->onlyIfCached:Z

    if-eqz v1, :cond_9

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_9
    iget-boolean v1, p0, Lcom/squareup/okhttp/CacheControl;->noTransform:Z

    if-eqz v1, :cond_a

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_b

    const-string v1, ""

    return-object v1

    .line 267
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parse(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/CacheControl;
    .locals 30
    .param p0, "headers"    # Lcom/squareup/okhttp/Headers;

    .line 152
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 153
    .local v1, "noCache":Z
    const/4 v2, 0x0

    .line 154
    .local v2, "noStore":Z
    const/4 v3, -0x1

    .line 155
    .local v3, "maxAgeSeconds":I
    const/4 v4, -0x1

    .line 156
    .local v4, "sMaxAgeSeconds":I
    const/4 v5, 0x0

    .line 157
    .local v5, "isPrivate":Z
    const/4 v6, 0x0

    .line 158
    .local v6, "isPublic":Z
    const/4 v7, 0x0

    .line 159
    .local v7, "mustRevalidate":Z
    const/4 v8, -0x1

    .line 160
    .local v8, "maxStaleSeconds":I
    const/4 v9, -0x1

    .line 161
    .local v9, "minFreshSeconds":I
    const/4 v10, 0x0

    .line 162
    .local v10, "onlyIfCached":Z
    const/4 v11, 0x0

    .line 164
    .local v11, "noTransform":Z
    const/4 v12, 0x1

    .line 165
    .local v12, "canUseHeaderValue":Z
    const/4 v13, 0x0

    .line 167
    .local v13, "headerValue":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v15

    .local v15, "size":I
    :goto_0
    if-ge v14, v15, :cond_13

    .line 168
    move/from16 v16, v15

    .end local v15    # "size":I
    .local v16, "size":I
    invoke-virtual {v0, v14}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v15

    .line 169
    .local v15, "name":Ljava/lang/String;
    move/from16 v29, v11

    .end local v11    # "noTransform":Z
    .local v29, "noTransform":Z
    invoke-virtual {v0, v14}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v11

    .line 171
    .local v11, "value":Ljava/lang/String;
    const-string v0, "Cache-Control"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    if-eqz v13, :cond_0

    .line 174
    const/4 v12, 0x0

    goto :goto_1

    .line 176
    :cond_0
    move-object v13, v11

    goto :goto_1

    .line 178
    :cond_1
    const-string v0, "Pragma"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 180
    const/4 v12, 0x0

    .line 185
    :goto_1
    const/4 v0, 0x0

    .line 186
    .local v0, "pos":I
    :goto_2
    move/from16 v17, v1

    .end local v1    # "noCache":Z
    .local v17, "noCache":Z
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 187
    move v1, v0

    .line 188
    .local v1, "tokenStart":I
    move/from16 v18, v2

    .end local v2    # "noStore":Z
    .local v18, "noStore":Z
    const-string v2, "=,;"

    invoke-static {v11, v0, v2}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 189
    invoke-virtual {v11, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "directive":Ljava/lang/String;
    move/from16 v19, v1

    .end local v1    # "tokenStart":I
    .local v19, "tokenStart":I
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v20, v3

    .end local v3    # "maxAgeSeconds":I
    .local v20, "maxAgeSeconds":I
    const/16 v3, 0x2c

    if-eq v1, v3, :cond_5

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3b

    if-ne v1, v3, :cond_2

    goto :goto_3

    .line 196
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 197
    invoke-static {v11, v0}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v0

    .line 200
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x22

    if-ne v1, v3, :cond_3

    .line 201
    add-int/lit8 v0, v0, 0x1

    .line 202
    move v1, v0

    .line 203
    .local v1, "parameterStart":I
    const-string v3, "\""

    invoke-static {v11, v0, v3}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 204
    invoke-virtual {v11, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "parameter":Ljava/lang/String;
    nop

    .end local v1    # "parameterStart":I
    add-int/lit8 v0, v0, 0x1

    .line 208
    goto :goto_4

    .line 209
    .end local v3    # "parameter":Ljava/lang/String;
    :cond_3
    move v1, v0

    .line 210
    .restart local v1    # "parameterStart":I
    const-string v3, ",;"

    invoke-static {v11, v0, v3}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 211
    invoke-virtual {v11, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "parameter":Ljava/lang/String;
    goto :goto_4

    .line 192
    .end local v1    # "parameterStart":I
    .end local v20    # "maxAgeSeconds":I
    .local v3, "maxAgeSeconds":I
    :cond_4
    move/from16 v20, v3

    .line 193
    .end local v3    # "maxAgeSeconds":I
    .restart local v20    # "maxAgeSeconds":I
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 194
    const/4 v3, 0x0

    .line 215
    .local v3, "parameter":Ljava/lang/String;
    :goto_4
    const-string v1, "no-cache"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 216
    const/4 v1, 0x1

    move/from16 v21, v0

    move/from16 v2, v18

    move/from16 v3, v20

    .end local v17    # "noCache":Z
    .local v1, "noCache":Z
    goto/16 :goto_5

    .line 217
    .end local v1    # "noCache":Z
    .restart local v17    # "noCache":Z
    :cond_6
    const-string v1, "no-store"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 218
    const/4 v1, 0x1

    move/from16 v21, v0

    move v2, v1

    move/from16 v1, v17

    move/from16 v3, v20

    .end local v18    # "noStore":Z
    .local v1, "noStore":Z
    goto/16 :goto_5

    .line 219
    .end local v1    # "noStore":Z
    .restart local v18    # "noStore":Z
    :cond_7
    const-string v1, "max-age"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    move/from16 v21, v0

    .end local v0    # "pos":I
    .local v21, "pos":I
    const/4 v0, -0x1

    if-eqz v1, :cond_8

    .line 220
    invoke-static {v3, v0}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    move v3, v0

    move/from16 v1, v17

    move/from16 v2, v18

    .end local v20    # "maxAgeSeconds":I
    .local v0, "maxAgeSeconds":I
    goto/16 :goto_5

    .line 221
    .end local v0    # "maxAgeSeconds":I
    .restart local v20    # "maxAgeSeconds":I
    :cond_8
    const-string v1, "s-maxage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 222
    invoke-static {v3, v0}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    move v4, v0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v20

    .end local v4    # "sMaxAgeSeconds":I
    .local v0, "sMaxAgeSeconds":I
    goto/16 :goto_5

    .line 223
    .end local v0    # "sMaxAgeSeconds":I
    .restart local v4    # "sMaxAgeSeconds":I
    :cond_9
    const-string v1, "private"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 224
    const/4 v0, 0x1

    move v5, v0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v20

    .end local v5    # "isPrivate":Z
    .local v0, "isPrivate":Z
    goto/16 :goto_5

    .line 225
    .end local v0    # "isPrivate":Z
    .restart local v5    # "isPrivate":Z
    :cond_a
    const-string v1, "public"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 226
    const/4 v0, 0x1

    move v6, v0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v20

    .end local v6    # "isPublic":Z
    .local v0, "isPublic":Z
    goto/16 :goto_5

    .line 227
    .end local v0    # "isPublic":Z
    .restart local v6    # "isPublic":Z
    :cond_b
    const-string v1, "must-revalidate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 228
    const/4 v0, 0x1

    move v7, v0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v20

    .end local v7    # "mustRevalidate":Z
    .local v0, "mustRevalidate":Z
    goto :goto_5

    .line 229
    .end local v0    # "mustRevalidate":Z
    .restart local v7    # "mustRevalidate":Z
    :cond_c
    const-string v1, "max-stale"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 230
    const v0, 0x7fffffff

    invoke-static {v3, v0}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    move v8, v0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v20

    .end local v8    # "maxStaleSeconds":I
    .local v0, "maxStaleSeconds":I
    goto :goto_5

    .line 231
    .end local v0    # "maxStaleSeconds":I
    .restart local v8    # "maxStaleSeconds":I
    :cond_d
    const-string v1, "min-fresh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 232
    invoke-static {v3, v0}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    move v9, v0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v20

    .end local v9    # "minFreshSeconds":I
    .local v0, "minFreshSeconds":I
    goto :goto_5

    .line 233
    .end local v0    # "minFreshSeconds":I
    .restart local v9    # "minFreshSeconds":I
    :cond_e
    const-string v0, "only-if-cached"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 234
    const/4 v0, 0x1

    move v10, v0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v20

    .end local v10    # "onlyIfCached":Z
    .local v0, "onlyIfCached":Z
    goto :goto_5

    .line 235
    .end local v0    # "onlyIfCached":Z
    .restart local v10    # "onlyIfCached":Z
    :cond_f
    const-string v0, "no-transform"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 236
    const/4 v0, 0x1

    move/from16 v29, v0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v20

    .end local v29    # "noTransform":Z
    .local v0, "noTransform":Z
    goto :goto_5

    .line 235
    .end local v0    # "noTransform":Z
    .restart local v29    # "noTransform":Z
    :cond_10
    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v20

    .line 238
    .end local v17    # "noCache":Z
    .end local v18    # "noStore":Z
    .end local v19    # "tokenStart":I
    .end local v20    # "maxAgeSeconds":I
    .local v1, "noCache":Z
    .local v2, "noStore":Z
    .local v3, "maxAgeSeconds":I
    :goto_5
    move/from16 v0, v21

    goto/16 :goto_2

    .line 186
    .end local v1    # "noCache":Z
    .end local v21    # "pos":I
    .local v0, "pos":I
    .restart local v17    # "noCache":Z
    :cond_11
    move/from16 v18, v2

    move/from16 v20, v3

    .end local v2    # "noStore":Z
    .end local v3    # "maxAgeSeconds":I
    .restart local v18    # "noStore":Z
    .restart local v20    # "maxAgeSeconds":I
    move/from16 v1, v17

    move/from16 v11, v29

    goto :goto_6

    .line 178
    .end local v0    # "pos":I
    .end local v17    # "noCache":Z
    .end local v18    # "noStore":Z
    .end local v20    # "maxAgeSeconds":I
    .restart local v1    # "noCache":Z
    .restart local v2    # "noStore":Z
    .restart local v3    # "maxAgeSeconds":I
    :cond_12
    move/from16 v11, v29

    .line 167
    .end local v15    # "name":Ljava/lang/String;
    .end local v29    # "noTransform":Z
    .local v11, "noTransform":Z
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v15, v16

    goto/16 :goto_0

    .end local v16    # "size":I
    .local v15, "size":I
    :cond_13
    move/from16 v29, v11

    move/from16 v16, v15

    .line 241
    .end local v11    # "noTransform":Z
    .end local v14    # "i":I
    .end local v15    # "size":I
    .restart local v29    # "noTransform":Z
    if-nez v12, :cond_14

    .line 242
    const/4 v13, 0x0

    .line 244
    :cond_14
    new-instance v0, Lcom/squareup/okhttp/CacheControl;

    move-object/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v29

    move-object/from16 v28, v13

    invoke-direct/range {v16 .. v28}, Lcom/squareup/okhttp/CacheControl;-><init>(ZZIIZZZIIZZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public isPrivate()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/squareup/okhttp/CacheControl;->isPrivate:Z

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/squareup/okhttp/CacheControl;->isPublic:Z

    return v0
.end method

.method public maxAgeSeconds()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds:I

    return v0
.end method

.method public maxStaleSeconds()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/squareup/okhttp/CacheControl;->maxStaleSeconds:I

    return v0
.end method

.method public minFreshSeconds()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/squareup/okhttp/CacheControl;->minFreshSeconds:I

    return v0
.end method

.method public mustRevalidate()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/squareup/okhttp/CacheControl;->mustRevalidate:Z

    return v0
.end method

.method public noCache()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/squareup/okhttp/CacheControl;->noCache:Z

    return v0
.end method

.method public noStore()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/squareup/okhttp/CacheControl;->noStore:Z

    return v0
.end method

.method public noTransform()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/squareup/okhttp/CacheControl;->noTransform:Z

    return v0
.end method

.method public onlyIfCached()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/squareup/okhttp/CacheControl;->onlyIfCached:Z

    return v0
.end method

.method public sMaxAgeSeconds()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/squareup/okhttp/CacheControl;->sMaxAgeSeconds:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/squareup/okhttp/CacheControl;->headerValue:Ljava/lang/String;

    .line 250
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/squareup/okhttp/CacheControl;->headerValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/CacheControl;->headerValue:Ljava/lang/String;

    :goto_0
    return-object v1
.end method
