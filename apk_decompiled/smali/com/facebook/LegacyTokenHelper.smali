.class public final Lcom/facebook/LegacyTokenHelper;
.super Ljava/lang/Object;
.source "LegacyTokenHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/LegacyTokenHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u001b\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\t\u001a\u00020\nJ\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010\u0010\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eJ \u0010\u0011\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/facebook/LegacyTokenHelper;",
        "",
        "context",
        "Landroid/content/Context;",
        "cacheKey",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "cache",
        "Landroid/content/SharedPreferences;",
        "clear",
        "",
        "deserializeKey",
        "key",
        "bundle",
        "Landroid/os/Bundle;",
        "load",
        "save",
        "serializeKey",
        "editor",
        "Landroid/content/SharedPreferences$Editor;",
        "Companion",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final APPLICATION_ID_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.ApplicationId"

.field public static final Companion:Lcom/facebook/LegacyTokenHelper$Companion;

.field public static final DECLINED_PERMISSIONS_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.DeclinedPermissions"

.field public static final DEFAULT_CACHE_KEY:Ljava/lang/String; = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY"

.field public static final EXPIRATION_DATE_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.ExpirationDate"

.field public static final EXPIRED_PERMISSIONS_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.ExpiredPermissions"

.field private static final INVALID_BUNDLE_MILLISECONDS:J = -0x8000000000000000L

.field private static final IS_SSO_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.IsSSO"

.field private static final JSON_VALUE:Ljava/lang/String; = "value"

.field private static final JSON_VALUE_ENUM_TYPE:Ljava/lang/String; = "enumType"

.field private static final JSON_VALUE_TYPE:Ljava/lang/String; = "valueType"

.field public static final LAST_REFRESH_DATE_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.LastRefreshDate"

.field public static final PERMISSIONS_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.Permissions"

.field private static final TAG:Ljava/lang/String;

.field public static final TOKEN_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.Token"

.field public static final TOKEN_SOURCE_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.AccessTokenSource"

.field private static final TYPE_BOOLEAN:Ljava/lang/String; = "bool"

.field private static final TYPE_BOOLEAN_ARRAY:Ljava/lang/String; = "bool[]"

.field private static final TYPE_BYTE:Ljava/lang/String; = "byte"

.field private static final TYPE_BYTE_ARRAY:Ljava/lang/String; = "byte[]"

.field private static final TYPE_CHAR:Ljava/lang/String; = "char"

.field private static final TYPE_CHAR_ARRAY:Ljava/lang/String; = "char[]"

.field private static final TYPE_DOUBLE:Ljava/lang/String; = "double"

.field private static final TYPE_DOUBLE_ARRAY:Ljava/lang/String; = "double[]"

.field private static final TYPE_ENUM:Ljava/lang/String; = "enum"

.field private static final TYPE_FLOAT:Ljava/lang/String; = "float"

.field private static final TYPE_FLOAT_ARRAY:Ljava/lang/String; = "float[]"

.field private static final TYPE_INTEGER:Ljava/lang/String; = "int"

.field private static final TYPE_INTEGER_ARRAY:Ljava/lang/String; = "int[]"

.field private static final TYPE_LONG:Ljava/lang/String; = "long"

.field private static final TYPE_LONG_ARRAY:Ljava/lang/String; = "long[]"

.field private static final TYPE_SHORT:Ljava/lang/String; = "short"

.field private static final TYPE_SHORT_ARRAY:Ljava/lang/String; = "short[]"

.field private static final TYPE_STRING:Ljava/lang/String; = "string"

.field private static final TYPE_STRING_LIST:Ljava/lang/String; = "stringList"


# instance fields
.field private final cache:Landroid/content/SharedPreferences;

.field private final cacheKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/LegacyTokenHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/LegacyTokenHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/LegacyTokenHelper;->Companion:Lcom/facebook/LegacyTokenHelper$Companion;

    .line 366
    const-class v0, Lcom/facebook/LegacyTokenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegacyTokenHelper::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/LegacyTokenHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/facebook/LegacyTokenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cacheKey"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    nop

    .line 40
    move-object v0, p1

    .line 41
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p2

    goto :goto_2

    :cond_2
    :goto_1
    const-string v2, "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY"

    :goto_2
    iput-object v2, p0, Lcom/facebook/LegacyTokenHelper;->cacheKey:Ljava/lang/String;

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 47
    .local v3, "applicationContext":Landroid/content/Context;
    if-eqz v3, :cond_3

    move-object v4, v3

    goto :goto_3

    :cond_3
    move-object v4, v0

    :goto_3
    move-object v0, v4

    .line 48
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "context.getSharedPrefere\u2026ey, Context.MODE_PRIVATE)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/LegacyTokenHelper;->cache:Landroid/content/SharedPreferences;

    .line 49
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "applicationContext":Landroid/content/Context;
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 35
    const/4 p2, 0x0

    check-cast p2, Ljava/lang/String;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/LegacyTokenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final deserializeKey(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/facebook/LegacyTokenHelper;->cache:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "{}"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 224
    .local v0, "jsonString":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 225
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v2, "valueType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "valueType":Ljava/lang/String;
    const-string v3, "bool"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "value"

    if-eqz v3, :cond_0

    .line 227
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p2, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_a

    .line 228
    :cond_0
    const-string v3, "bool[]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    .line 229
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 230
    .local v3, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Z

    .line 231
    .local v4, "array":[Z
    array-length v7, v4

    :goto_0
    if-ge v6, v7, :cond_1

    .line 232
    .local v6, "i":I
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v8

    aput-boolean v8, v4, v6

    .line 231
    nop

    .end local v6    # "i":I
    add-int/2addr v6, v5

    goto :goto_0

    .line 234
    :cond_1
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "array":[Z
    goto/16 :goto_a

    .line 235
    :cond_2
    const-string v3, "byte"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 236
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {p2, p1, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto/16 :goto_a

    .line 237
    :cond_3
    const-string v3, "byte[]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 238
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 239
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [B

    .line 240
    .local v4, "array":[B
    array-length v7, v4

    :goto_1
    if-ge v6, v7, :cond_4

    .line 241
    .restart local v6    # "i":I
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v4, v6

    .line 240
    nop

    .end local v6    # "i":I
    add-int/2addr v6, v5

    goto :goto_1

    .line 243
    :cond_4
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "array":[B
    goto/16 :goto_a

    .line 244
    :cond_5
    const-string v3, "short"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 245
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {p2, p1, v3}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto/16 :goto_a

    .line 246
    :cond_6
    const-string v3, "short[]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 247
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 248
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [S

    .line 249
    .local v4, "array":[S
    array-length v7, v4

    :goto_2
    if-ge v6, v7, :cond_7

    .line 250
    .restart local v6    # "i":I
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    int-to-short v8, v8

    aput-short v8, v4, v6

    .line 249
    nop

    .end local v6    # "i":I
    add-int/2addr v6, v5

    goto :goto_2

    .line 252
    :cond_7
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "array":[S
    goto/16 :goto_a

    .line 253
    :cond_8
    const-string v3, "int"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 254
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_a

    .line 255
    :cond_9
    const-string v3, "int[]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 256
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 257
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [I

    .line 258
    .local v4, "array":[I
    array-length v7, v4

    :goto_3
    if-ge v6, v7, :cond_a

    .line 259
    .restart local v6    # "i":I
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    aput v8, v4, v6

    .line 258
    nop

    .end local v6    # "i":I
    add-int/2addr v6, v5

    goto :goto_3

    .line 261
    :cond_a
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "array":[I
    goto/16 :goto_a

    .line 262
    :cond_b
    const-string v3, "long"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 263
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p2, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_a

    .line 264
    :cond_c
    const-string v3, "long[]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 265
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 266
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [J

    .line 267
    .local v4, "array":[J
    array-length v7, v4

    :goto_4
    if-ge v6, v7, :cond_d

    .line 268
    .restart local v6    # "i":I
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    aput-wide v8, v4, v6

    .line 267
    nop

    .end local v6    # "i":I
    add-int/2addr v6, v5

    goto :goto_4

    .line 270
    :cond_d
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "array":[J
    goto/16 :goto_a

    .line 271
    :cond_e
    const-string v3, "float"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 272
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {p2, p1, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_a

    .line 273
    :cond_f
    const-string v3, "float[]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 274
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 275
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [F

    .line 276
    .local v4, "array":[F
    array-length v7, v4

    :goto_5
    if-ge v6, v7, :cond_10

    .line 277
    .restart local v6    # "i":I
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, v4, v6

    .line 276
    nop

    .end local v6    # "i":I
    add-int/2addr v6, v5

    goto :goto_5

    .line 279
    :cond_10
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "array":[F
    goto/16 :goto_a

    .line 280
    :cond_11
    const-string v3, "double"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 281
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {p2, p1, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_a

    .line 282
    :cond_12
    const-string v3, "double[]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 283
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 284
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [D

    .line 285
    .local v4, "array":[D
    array-length v7, v4

    :goto_6
    if-ge v6, v7, :cond_13

    .line 286
    .restart local v6    # "i":I
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    aput-wide v8, v4, v6

    .line 285
    nop

    .end local v6    # "i":I
    add-int/2addr v6, v5

    goto :goto_6

    .line 288
    :cond_13
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "array":[D
    goto/16 :goto_a

    .line 289
    :cond_14
    const-string v3, "char"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 290
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, "charString":Ljava/lang/String;
    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_1f

    .line 292
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .end local v3    # "charString":Ljava/lang/String;
    goto/16 :goto_a

    .line 294
    :cond_15
    const-string v3, "char[]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 295
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 296
    .local v3, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [C

    .line 297
    .local v4, "array":[C
    array-length v7, v4

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v7, :cond_17

    .line 298
    .local v8, "i":I
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 299
    .local v9, "charString":Ljava/lang/String;
    if-eqz v9, :cond_16

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v5, :cond_16

    .line 300
    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    aput-char v10, v4, v8

    .line 297
    .end local v9    # "charString":Ljava/lang/String;
    :cond_16
    nop

    .end local v8    # "i":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 303
    :cond_17
    invoke-virtual {p2, p1, v4}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "array":[C
    goto/16 :goto_a

    .line 304
    :cond_18
    const-string/jumbo v3, "string"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 305
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 306
    :cond_19
    const-string/jumbo v3, "stringList"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 307
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 308
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 309
    .local v4, "numStrings":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 310
    .local v5, "stringList":Ljava/util/ArrayList;
    nop

    :goto_8
    if-ge v6, v4, :cond_1c

    .line 311
    .restart local v6    # "i":I
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 312
    .local v7, "jsonStringValue":Ljava/lang/Object;
    nop

    .line 313
    sget-object v8, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v7, v8, :cond_1a

    const/4 v8, 0x0

    goto :goto_9

    :cond_1a
    if-eqz v7, :cond_1b

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    .line 312
    :goto_9
    invoke-virtual {v5, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 310
    .end local v7    # "jsonStringValue":Ljava/lang/Object;
    nop

    .end local v6    # "i":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 313
    .restart local v6    # "i":I
    .restart local v7    # "jsonStringValue":Ljava/lang/Object;
    :cond_1b
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 315
    .end local v6    # "i":I
    .end local v7    # "jsonStringValue":Ljava/lang/Object;
    :cond_1c
    invoke-virtual {p2, p1, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "numStrings":I
    .end local v5    # "stringList":Ljava/util/ArrayList;
    goto :goto_a

    .line 316
    :cond_1d
    const-string v3, "enum"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 317
    nop

    .line 318
    :try_start_0
    const-string v3, "enumType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "enumType":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_1e

    .line 320
    .local v5, "enumClass":Ljava/lang/Class;
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    .line 321
    .local v4, "enumValue":Ljava/lang/Enum;
    move-object v6, v4

    check-cast v6, Ljava/io/Serializable;

    invoke-virtual {p2, p1, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .end local v3    # "enumType":Ljava/lang/String;
    .end local v4    # "enumValue":Ljava/lang/Enum;
    .end local v5    # "enumClass":Ljava/lang/Class;
    goto :goto_a

    .line 319
    .restart local v3    # "enumType":Ljava/lang/String;
    :cond_1e
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type java.lang.Class<out kotlin.Enum<*>>"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "jsonString":Ljava/lang/String;
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "valueType":Ljava/lang/String;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "bundle":Landroid/os/Bundle;
    throw v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v3    # "enumType":Ljava/lang/String;
    .restart local v0    # "jsonString":Ljava/lang/String;
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v2    # "valueType":Ljava/lang/String;
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    goto :goto_a

    :catch_1
    move-exception v3

    .line 323
    :cond_1f
    :goto_a
    nop

    .line 324
    return-void

    .line 223
    .end local v0    # "jsonString":Ljava/lang/String;
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "valueType":Ljava/lang/String;
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final getApplicationId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/LegacyTokenHelper;->Companion:Lcom/facebook/LegacyTokenHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/LegacyTokenHelper$Companion;->getApplicationId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getExpirationDate(Landroid/os/Bundle;)Ljava/util/Date;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/LegacyTokenHelper;->Companion:Lcom/facebook/LegacyTokenHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/LegacyTokenHelper$Companion;->getExpirationDate(Landroid/os/Bundle;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static final getExpirationMilliseconds(Landroid/os/Bundle;)J
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/LegacyTokenHelper;->Companion:Lcom/facebook/LegacyTokenHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/LegacyTokenHelper$Companion;->getExpirationMilliseconds(Landroid/os/Bundle;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getLastRefreshDate(Landroid/os/Bundle;)Ljava/util/Date;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/LegacyTokenHelper;->Companion:Lcom/facebook/LegacyTokenHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/LegacyTokenHelper$Companion;->getLastRefreshDate(Landroid/os/Bundle;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static final getLastRefreshMilliseconds(Landroid/os/Bundle;)J
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/LegacyTokenHelper;->Companion:Lcom/facebook/LegacyTokenHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/LegacyTokenHelper$Companion;->getLastRefreshMilliseconds(Landroid/os/Bundle;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getPermissions(Landroid/os/Bundle;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/LegacyTokenHelper;->Companion:Lcom/facebook/LegacyTokenHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/LegacyTokenHelper$Companion;->getPermissions(Landroid/os/Bundle;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static final getSource(Landroid/os/Bundle;)Lcom/facebook/AccessTokenSource;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/LegacyTokenHelper;->Companion:Lcom/facebook/LegacyTokenHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/LegacyTokenHelper$Companion;->getSource(Landroid/os/Bundle;)Lcom/facebook/AccessTokenSource;

    move-result-object v0

    return-object v0
.end method

.method public static final getToken(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/LegacyTokenHelper;->Companion:Lcom/facebook/LegacyTokenHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/LegacyTokenHelper$Companion;->getToken(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final hasTokenInformation(Landroid/os/Bundle;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/LegacyTokenHelper;->Companion:Lcom/facebook/LegacyTokenHelper$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/LegacyTokenHelper$Companion;->hasTokenInformation(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static final putApplicationId(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/LegacyTokenHelper;->Companion:Lcom/facebook/LegacyTokenHelper$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/LegacyTokenHelper$Companion;->putApplicationId(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static final putDeclinedPermissions(Landroid/os/Bundle;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/LegacyTokenHelper;->Companion:Lcom/facebook/LegacyTokenHelper$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/LegacyTokenHelper$Companion;->putDeclinedPermissions(Landroid/os/Bundle;Ljava/util/Collection;)V

    return-void
.end method

.method public static final putExpirationDate(Landroid/os/Bundle;Ljava/util/Date;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/LegacyTokenHelper;->Companion:Lcom/facebook/LegacyTokenHelper$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/LegacyTokenHelper$Companion;->putExpirationDate(Landroid/os/Bundle;Ljava/util/Date;)V

    return-void
.end method

.method public static final putExpirationMilliseconds(Landroid/os/Bundle;J)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/LegacyTokenHelper;->Companion:Lcom/facebook/LegacyTokenHelper$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/facebook/LegacyTokenHelper$Companion;->putExpirationMilliseconds(Landroid/os/Bundle;J)V

    return-void
.end method

.method public static final putExpiredPermissions(Landroid/os/Bundle;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/LegacyTokenHelper;->Companion:Lcom/facebook/LegacyTokenHelper$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/LegacyTokenHelper$Companion;->putExpiredPermissions(Landroid/os/Bundle;Ljava/util/Collection;)V

    return-void
.end method

.method public static final putLastRefreshDate(Landroid/os/Bundle;Ljava/util/Date;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/LegacyTokenHelper;->Companion:Lcom/facebook/LegacyTokenHelper$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/LegacyTokenHelper$Companion;->putLastRefreshDate(Landroid/os/Bundle;Ljava/util/Date;)V

    return-void
.end method

.method public static final putLastRefreshMilliseconds(Landroid/os/Bundle;J)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/LegacyTokenHelper;->Companion:Lcom/facebook/LegacyTokenHelper$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/facebook/LegacyTokenHelper$Companion;->putLastRefreshMilliseconds(Landroid/os/Bundle;J)V

    return-void
.end method

.method public static final putPermissions(Landroid/os/Bundle;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/LegacyTokenHelper;->Companion:Lcom/facebook/LegacyTokenHelper$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/LegacyTokenHelper$Companion;->putPermissions(Landroid/os/Bundle;Ljava/util/Collection;)V

    return-void
.end method

.method public static final putSource(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/LegacyTokenHelper;->Companion:Lcom/facebook/LegacyTokenHelper$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/LegacyTokenHelper$Companion;->putSource(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)V

    return-void
.end method

.method public static final putToken(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/LegacyTokenHelper;->Companion:Lcom/facebook/LegacyTokenHelper$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/LegacyTokenHelper$Companion;->putToken(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method private final serializeKey(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;)V
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "editor"    # Landroid/content/SharedPreferences$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 93
    nop

    .line 94
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 95
    const-string v1, "bundle[key] ?: // Cannot\u2026ll values.\n        return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    nop

    .line 96
    .local v0, "value":Ljava/lang/Object;
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 97
    .local v2, "supportedType":Ljava/lang/String;
    move-object v3, v1

    check-cast v3, Lorg/json/JSONArray;

    .line 98
    .local v3, "jsonArray":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 99
    .local v4, "json":Lorg/json/JSONObject;
    nop

    .line 100
    instance-of v5, v0, Ljava/lang/Byte;

    const-string/jumbo v6, "value"

    if-eqz v5, :cond_0

    .line 101
    const-string v2, "byte"

    .line 102
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_a

    .line 104
    :cond_0
    instance-of v5, v0, Ljava/lang/Short;

    if-eqz v5, :cond_1

    .line 105
    const-string v2, "short"

    .line 106
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_a

    .line 108
    :cond_1
    instance-of v5, v0, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 109
    const-string v2, "int"

    .line 110
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_a

    .line 112
    :cond_2
    instance-of v5, v0, Ljava/lang/Long;

    if-eqz v5, :cond_3

    .line 113
    const-string v2, "long"

    .line 114
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto/16 :goto_a

    .line 116
    :cond_3
    instance-of v5, v0, Ljava/lang/Float;

    if-eqz v5, :cond_4

    .line 117
    const-string v2, "float"

    .line 118
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    float-to-double v7, v1

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto/16 :goto_a

    .line 120
    :cond_4
    instance-of v5, v0, Ljava/lang/Double;

    if-eqz v5, :cond_5

    .line 121
    const-string v2, "double"

    .line 122
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v4, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto/16 :goto_a

    .line 124
    :cond_5
    instance-of v5, v0, Ljava/lang/Boolean;

    if-eqz v5, :cond_7

    .line 125
    const-string v2, "bool"

    .line 126
    if-eqz v0, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_a

    :cond_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {v1, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_7
    instance-of v5, v0, Ljava/lang/Character;

    if-eqz v5, :cond_8

    .line 129
    const-string v2, "char"

    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_a

    .line 132
    :cond_8
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 133
    const-string/jumbo v2, "string"

    .line 134
    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_a

    .line 136
    :cond_9
    instance-of v5, v0, Ljava/lang/Enum;

    if-eqz v5, :cond_a

    .line 137
    const-string v2, "enum"

    .line 138
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    move-object v1, v0

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "enumType"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_a

    .line 144
    :cond_a
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    move-object v3, v5

    .line 145
    nop

    .line 146
    instance-of v5, v0, [B

    const/4 v7, 0x0

    if-eqz v5, :cond_b

    .line 147
    const-string v2, "byte[]"

    .line 148
    move-object v1, v0

    check-cast v1, [B

    array-length v5, v1

    :goto_0
    if-ge v7, v5, :cond_16

    aget-byte v8, v1, v7

    .line 149
    .local v8, "v":B
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 148
    nop

    .end local v8    # "v":B
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 152
    :cond_b
    instance-of v5, v0, [S

    if-eqz v5, :cond_c

    .line 153
    const-string v2, "short[]"

    .line 154
    move-object v1, v0

    check-cast v1, [S

    array-length v5, v1

    :goto_1
    if-ge v7, v5, :cond_16

    aget-short v8, v1, v7

    .line 155
    .local v8, "v":S
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 154
    nop

    .end local v8    # "v":S
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 158
    :cond_c
    instance-of v5, v0, [I

    if-eqz v5, :cond_d

    .line 159
    const-string v2, "int[]"

    .line 160
    move-object v1, v0

    check-cast v1, [I

    array-length v5, v1

    :goto_2
    if-ge v7, v5, :cond_16

    aget v8, v1, v7

    .line 161
    .local v8, "v":I
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 160
    nop

    .end local v8    # "v":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 164
    :cond_d
    instance-of v5, v0, [J

    if-eqz v5, :cond_e

    .line 165
    const-string v2, "long[]"

    .line 166
    move-object v1, v0

    check-cast v1, [J

    array-length v5, v1

    :goto_3
    if-ge v7, v5, :cond_16

    aget-wide v8, v1, v7

    .line 167
    .local v8, "v":J
    invoke-virtual {v3, v8, v9}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 166
    nop

    .end local v8    # "v":J
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 170
    :cond_e
    instance-of v5, v0, [F

    if-eqz v5, :cond_f

    .line 171
    const-string v2, "float[]"

    .line 172
    move-object v1, v0

    check-cast v1, [F

    array-length v5, v1

    :goto_4
    if-ge v7, v5, :cond_16

    aget v8, v1, v7

    .line 173
    .local v8, "v":F
    float-to-double v9, v8

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 172
    nop

    .end local v8    # "v":F
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 176
    :cond_f
    instance-of v5, v0, [D

    if-eqz v5, :cond_10

    .line 177
    const-string v2, "double[]"

    .line 178
    move-object v1, v0

    check-cast v1, [D

    array-length v5, v1

    :goto_5
    if-ge v7, v5, :cond_16

    aget-wide v8, v1, v7

    .line 179
    .local v8, "v":D
    invoke-virtual {v3, v8, v9}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 178
    nop

    .end local v8    # "v":D
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 182
    :cond_10
    instance-of v5, v0, [Z

    if-eqz v5, :cond_11

    .line 183
    const-string v2, "bool[]"

    .line 184
    move-object v1, v0

    check-cast v1, [Z

    array-length v5, v1

    :goto_6
    if-ge v7, v5, :cond_16

    aget-boolean v8, v1, v7

    .line 185
    .local v8, "v":Z
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 184
    nop

    .end local v8    # "v":Z
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 188
    :cond_11
    instance-of v5, v0, [C

    if-eqz v5, :cond_12

    .line 189
    const-string v2, "char[]"

    .line 190
    move-object v1, v0

    check-cast v1, [C

    array-length v5, v1

    :goto_7
    if-ge v7, v5, :cond_16

    aget-char v8, v1, v7

    .line 191
    .local v8, "v":C
    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 190
    nop

    .end local v8    # "v":C
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 194
    :cond_12
    instance-of v5, v0, Ljava/util/List;

    if-eqz v5, :cond_15

    .line 195
    const-string/jumbo v2, "stringList"

    .line 196
    if-eqz v0, :cond_14

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 197
    .local v1, "stringList":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 198
    .local v7, "v":Ljava/lang/String;
    if-eqz v7, :cond_13

    move-object v8, v7

    goto :goto_9

    :cond_13
    sget-object v8, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_9
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 197
    .end local v7    # "v":Ljava/lang/String;
    goto :goto_8

    .line 196
    .end local v1    # "stringList":Ljava/util/List;
    :cond_14
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type kotlin.collections.List<kotlin.String>"

    invoke-direct {v1, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_15
    move-object v3, v1

    check-cast v3, Lorg/json/JSONArray;

    .line 206
    :cond_16
    :goto_a
    nop

    .line 208
    nop

    .line 209
    if-eqz v2, :cond_18

    .line 210
    const-string/jumbo v1, "valueType"

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    if-eqz v3, :cond_17

    .line 214
    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    :cond_17
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "json.toString()"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .local v1, "jsonString":Ljava/lang/String;
    invoke-interface {p3, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 219
    .end local v1    # "jsonString":Ljava/lang/String;
    :cond_18
    return-void

    .line 95
    .end local v0    # "value":Ljava/lang/Object;
    .end local v2    # "supportedType":Ljava/lang/String;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "json":Lorg/json/JSONObject;
    :cond_19
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/facebook/LegacyTokenHelper;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    return-void
.end method

.method public final load()Landroid/os/Bundle;
    .locals 10

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v0, "settings":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/facebook/LegacyTokenHelper;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 54
    .local v1, "allCachedEntries":Ljava/util/Map;
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 55
    .local v3, "key":Ljava/lang/String;
    nop

    .line 56
    :try_start_0
    const-string v4, "key"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v0}, Lcom/facebook/LegacyTokenHelper;->deserializeKey(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v3    # "key":Ljava/lang/String;
    nop

    .line 54
    goto :goto_0

    .line 57
    .restart local v3    # "key":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/facebook/internal/Logger;->Companion:Lcom/facebook/internal/Logger$Companion;

    .line 60
    sget-object v5, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    .line 61
    const/4 v6, 0x5

    .line 62
    sget-object v7, Lcom/facebook/LegacyTokenHelper;->TAG:Ljava/lang/String;

    .line 63
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error reading cached value for key: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\' -- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 59
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/facebook/internal/Logger$Companion;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v4, 0x0

    return-object v4

    .line 67
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public final save(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/facebook/LegacyTokenHelper;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 73
    .local v2, "key":Ljava/lang/String;
    nop

    .line 74
    :try_start_0
    const-string v3, "key"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "editor"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, p1, v0}, Lcom/facebook/LegacyTokenHelper;->serializeKey(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v2    # "key":Ljava/lang/String;
    nop

    .line 72
    goto :goto_0

    .line 75
    .restart local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/facebook/internal/Logger;->Companion:Lcom/facebook/internal/Logger$Companion;

    sget-object v4, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v5, 0x5

    sget-object v6, Lcom/facebook/LegacyTokenHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error processing value for key: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/facebook/internal/Logger$Companion;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void

    .line 83
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 84
    return-void
.end method
