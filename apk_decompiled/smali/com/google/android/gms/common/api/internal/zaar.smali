.class public final Lcom/google/android/gms/common/api/internal/zaar;
.super Lcom/google/android/gms/common/api/GoogleApiClient;
.source "com.google.android.gms:play-services-base@@17.5.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabn;


# instance fields
.field final zaa:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "**>;>;"
        }
    .end annotation
.end field

.field final zab:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;"
        }
    .end annotation
.end field

.field zac:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field zad:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/zacn;",
            ">;"
        }
    .end annotation
.end field

.field final zae:Lcom/google/android/gms/common/api/internal/zaco;

.field private final zaf:Ljava/util/concurrent/locks/Lock;

.field private final zag:Lcom/google/android/gms/common/internal/zah;

.field private zah:Lcom/google/android/gms/common/api/internal/zabo;

.field private final zai:I

.field private final zaj:Landroid/content/Context;

.field private final zak:Landroid/os/Looper;

.field private volatile zal:Z

.field private zam:J

.field private zan:J

.field private final zao:Lcom/google/android/gms/common/api/internal/zaau;

.field private final zap:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private zaq:Lcom/google/android/gms/common/api/internal/zabk;

.field private final zar:Lcom/google/android/gms/common/internal/ClientSettings;

.field private final zas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final zat:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zae;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field private final zau:Lcom/google/android/gms/common/api/internal/ListenerHolders;

.field private final zav:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/zaq;",
            ">;"
        }
    .end annotation
.end field

.field private zaw:Ljava/lang/Integer;

.field private final zax:Lcom/google/android/gms/common/internal/zak;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Lcom/google/android/gms/common/GoogleApiAvailability;",
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zae;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;II",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/zaq;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    move-object v1, p3

    move/from16 v2, p11

    invoke-direct {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;-><init>()V

    .line 2
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zaar;->zah:Lcom/google/android/gms/common/api/internal/zabo;

    .line 3
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Ljava/util/Queue;

    .line 4
    nop

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x2710

    goto :goto_0

    :cond_0
    const-wide/32 v4, 0x1d4c0

    :goto_0
    iput-wide v4, v0, Lcom/google/android/gms/common/api/internal/zaar;->zam:J

    .line 6
    const-wide/16 v4, 0x1388

    iput-wide v4, v0, Lcom/google/android/gms/common/api/internal/zaar;->zan:J

    .line 7
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zaar;->zac:Ljava/util/Set;

    .line 8
    new-instance v4, Lcom/google/android/gms/common/api/internal/ListenerHolders;

    invoke-direct {v4}, Lcom/google/android/gms/common/api/internal/ListenerHolders;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zaar;->zau:Lcom/google/android/gms/common/api/internal/ListenerHolders;

    .line 9
    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zaar;->zaw:Ljava/lang/Integer;

    .line 10
    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zaar;->zad:Ljava/util/Set;

    .line 11
    new-instance v3, Lcom/google/android/gms/common/api/internal/zaaq;

    invoke-direct {v3, p0}, Lcom/google/android/gms/common/api/internal/zaaq;-><init>(Lcom/google/android/gms/common/api/internal/zaar;)V

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zaar;->zax:Lcom/google/android/gms/common/internal/zak;

    .line 12
    move-object v4, p1

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zaar;->zaj:Landroid/content/Context;

    .line 13
    move-object v4, p2

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    .line 14
    new-instance v4, Lcom/google/android/gms/common/internal/zah;

    invoke-direct {v4, p3, v3}, Lcom/google/android/gms/common/internal/zah;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/zak;)V

    iput-object v4, v0, Lcom/google/android/gms/common/api/internal/zaar;->zag:Lcom/google/android/gms/common/internal/zah;

    .line 15
    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaar;->zak:Landroid/os/Looper;

    .line 16
    new-instance v3, Lcom/google/android/gms/common/api/internal/zaau;

    invoke-direct {v3, p0, p3}, Lcom/google/android/gms/common/api/internal/zaau;-><init>(Lcom/google/android/gms/common/api/internal/zaar;Landroid/os/Looper;)V

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zaar;->zao:Lcom/google/android/gms/common/api/internal/zaau;

    .line 17
    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaar;->zap:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 18
    iput v2, v0, Lcom/google/android/gms/common/api/internal/zaar;->zai:I

    .line 19
    if-ltz v2, :cond_1

    .line 20
    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaar;->zaw:Ljava/lang/Integer;

    .line 21
    :cond_1
    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaar;->zas:Ljava/util/Map;

    .line 22
    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaar;->zab:Ljava/util/Map;

    .line 23
    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaar;->zav:Ljava/util/ArrayList;

    .line 24
    new-instance v1, Lcom/google/android/gms/common/api/internal/zaco;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zaco;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaar;->zae:Lcom/google/android/gms/common/api/internal/zaco;

    .line 25
    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .line 26
    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/zaar;->zag:Lcom/google/android/gms/common/internal/zah;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/internal/zah;->zaa(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    .line 27
    goto :goto_1

    .line 28
    :cond_2
    invoke-interface {p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .line 29
    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/zaar;->zag:Lcom/google/android/gms/common/internal/zah;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/internal/zah;->zaa(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 30
    goto :goto_2

    .line 31
    :cond_3
    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaar;->zar:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 32
    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaar;->zat:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 33
    return-void
.end method

.method public static zaa(Ljava/lang/Iterable;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;Z)I"
        }
    .end annotation

    .line 380
    nop

    .line 381
    nop

    .line 382
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$Client;

    .line 383
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 384
    const/4 v0, 0x1

    .line 385
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->providesSignIn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    const/4 v1, 0x1

    .line 387
    :cond_1
    goto :goto_0

    .line 388
    :cond_2
    if-eqz v0, :cond_4

    .line 389
    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 390
    const/4 p0, 0x2

    return p0

    .line 391
    :cond_3
    return v3

    .line 392
    :cond_4
    const/4 p0, 0x3

    return p0
.end method

.method private final zaa(I)V
    .locals 13

    .line 224
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaw:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 225
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaw:Ljava/lang/Integer;

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_8

    .line 230
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zah:Lcom/google/android/gms/common/api/internal/zabo;

    if-eqz p1, :cond_1

    .line 231
    return-void

    .line 232
    :cond_1
    nop

    .line 233
    nop

    .line 234
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zab:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$Client;

    .line 235
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 236
    const/4 v0, 0x1

    .line 237
    :cond_2
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->providesSignIn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 238
    const/4 v1, 0x1

    .line 239
    :cond_3
    goto :goto_1

    .line 240
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaw:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 241
    :pswitch_0
    goto :goto_2

    .line 246
    :pswitch_1
    if-eqz v0, :cond_7

    .line 247
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaj:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zaar;->zak:Landroid/os/Looper;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zaar;->zap:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zaar;->zab:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/zaar;->zar:Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v9, p0, Lcom/google/android/gms/common/api/internal/zaar;->zas:Ljava/util/Map;

    iget-object v10, p0, Lcom/google/android/gms/common/api/internal/zaar;->zat:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v11, p0, Lcom/google/android/gms/common/api/internal/zaar;->zav:Ljava/util/ArrayList;

    .line 248
    move-object v3, p0

    invoke-static/range {v2 .. v11}, Lcom/google/android/gms/common/api/internal/zas;->zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaar;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zas;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zah:Lcom/google/android/gms/common/api/internal/zabo;

    .line 249
    return-void

    .line 242
    :pswitch_2
    if-eqz v0, :cond_6

    .line 244
    if-nez v1, :cond_5

    goto :goto_2

    .line 245
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 243
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 250
    :cond_7
    :goto_2
    new-instance p1, Lcom/google/android/gms/common/api/internal/zaaz;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaj:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zaar;->zak:Landroid/os/Looper;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zaar;->zap:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zaar;->zab:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/zaar;->zar:Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v9, p0, Lcom/google/android/gms/common/api/internal/zaar;->zas:Ljava/util/Map;

    iget-object v10, p0, Lcom/google/android/gms/common/api/internal/zaar;->zat:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v11, p0, Lcom/google/android/gms/common/api/internal/zaar;->zav:Ljava/util/ArrayList;

    move-object v1, p1

    move-object v3, p0

    move-object v12, p0

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/common/api/internal/zaaz;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaar;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zabn;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zah:Lcom/google/android/gms/common/api/internal/zabo;

    .line 251
    return-void

    .line 227
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 228
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaar;->zab(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaw:Ljava/lang/Integer;

    .line 229
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zaar;->zab(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Cannot use sign-in mode: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Mode was already set to "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zaa(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/StatusPendingResult;Z)V
    .locals 2

    .line 215
    sget-object v0, Lcom/google/android/gms/common/internal/service/Common;->zaa:Lcom/google/android/gms/common/internal/service/zab;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/service/zab;->zaa(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/zaav;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/google/android/gms/common/api/internal/zaav;-><init>(Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/common/api/internal/StatusPendingResult;ZLcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 216
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 217
    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zaar;)V
    .locals 0

    .line 398
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaar;->zae()V

    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/StatusPendingResult;Z)V
    .locals 0

    .line 400
    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/zaar;->zaa(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/StatusPendingResult;Z)V

    return-void
.end method

.method private static zab(I)Ljava/lang/String;
    .locals 0

    .line 393
    packed-switch p0, :pswitch_data_0

    .line 397
    const-string p0, "UNKNOWN"

    return-object p0

    .line 394
    :pswitch_0
    const-string p0, "SIGN_IN_MODE_NONE"

    return-object p0

    .line 396
    :pswitch_1
    const-string p0, "SIGN_IN_MODE_OPTIONAL"

    return-object p0

    .line 395
    :pswitch_2
    const-string p0, "SIGN_IN_MODE_REQUIRED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic zab(Lcom/google/android/gms/common/api/internal/zaar;)V
    .locals 0

    .line 399
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaar;->zaf()V

    return-void
.end method

.method static synthetic zac(Lcom/google/android/gms/common/api/internal/zaar;)Landroid/content/Context;
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaj:Landroid/content/Context;

    return-object p0
.end method

.method private final zad()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zag:Lcom/google/android/gms/common/internal/zah;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zah;->zab()V

    .line 253
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zah:Lcom/google/android/gms/common/api/internal/zabo;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zabo;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabo;->zaa()V

    .line 254
    return-void
.end method

.method private final zae()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 256
    nop

    .line 257
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zal:Z

    .line 258
    if-eqz v0, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaar;->zad()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 261
    return-void

    .line 262
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 263
    throw v0
.end method

.method private final zaf()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 265
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaar;->zab()Z

    move-result v0

    .line 266
    if-eqz v0, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaar;->zad()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 269
    return-void

    .line 270
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 271
    throw v0
.end method

.method private final zag()Z
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zad:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 361
    nop

    .line 362
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 363
    const/4 v0, 0x0

    return v0

    .line 364
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 366
    return v0

    .line 367
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 368
    throw v0
.end method


# virtual methods
.method public final blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .locals 4

    .line 141
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 142
    :goto_0
    const-string v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 144
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zai:I

    if-ltz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaw:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v0, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_2

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaw:Ljava/lang/Integer;

    if-nez v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zab:Ljava/util/Map;

    .line 148
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/api/internal/zaar;->zaa(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaw:Ljava/lang/Integer;

    goto :goto_2

    .line 149
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 151
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaw:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zaar;->zaa(I)V

    .line 152
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zag:Lcom/google/android/gms/common/internal/zah;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zah;->zab()V

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zah:Lcom/google/android/gms/common/api/internal/zabo;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zabo;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabo;->zab()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 155
    return-object v0

    .line 150
    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 157
    throw v0
.end method

.method public final blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 3

    .line 158
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 159
    :goto_0
    const-string v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 160
    const-string v0, "TimeUnit must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaw:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zab:Ljava/util/Map;

    .line 164
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/api/internal/zaar;->zaa(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaw:Ljava/lang/Integer;

    goto :goto_1

    .line 165
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 167
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaw:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zaar;->zaa(I)V

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zag:Lcom/google/android/gms/common/internal/zah;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zah;->zab()V

    .line 169
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zah:Lcom/google/android/gms/common/api/internal/zabo;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zabo;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/zabo;->zaa(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 171
    return-object p1

    .line 166
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 173
    throw p1
.end method

.method public final clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaw:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 199
    :goto_1
    const-string v2, "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 200
    new-instance v0, Lcom/google/android/gms/common/api/internal/StatusPendingResult;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/StatusPendingResult;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 201
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaar;->zab:Ljava/util/Map;

    sget-object v3, Lcom/google/android/gms/common/internal/service/Common;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 202
    invoke-direct {p0, p0, v0, v1}, Lcom/google/android/gms/common/api/internal/zaar;->zaa(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/StatusPendingResult;Z)V

    goto :goto_2

    .line 203
    :cond_2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 204
    new-instance v2, Lcom/google/android/gms/common/api/internal/zaat;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/common/api/internal/zaat;-><init>(Lcom/google/android/gms/common/api/internal/zaar;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/common/api/internal/StatusPendingResult;)V

    .line 205
    new-instance v3, Lcom/google/android/gms/common/api/internal/zaas;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/common/api/internal/zaas;-><init>(Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/common/api/internal/StatusPendingResult;)V

    .line 206
    new-instance v4, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaj:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/android/gms/common/internal/service/Common;->API:Lcom/google/android/gms/common/api/Api;

    .line 207
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v4

    .line 208
    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    .line 209
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zaar;->zao:Lcom/google/android/gms/common/api/internal/zaau;

    .line 210
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setHandler(Landroid/os/Handler;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    .line 211
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    .line 212
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 214
    :goto_2
    return-object v0
.end method

.method public final connect()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 121
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zai:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaw:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v0, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaw:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zab:Ljava/util/Map;

    .line 125
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zaar;->zaa(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaw:Ljava/lang/Integer;

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaw:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 130
    return-void

    .line 127
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 132
    throw v0
.end method

.method public final connect(I)V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 134
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const/16 v0, 0x21

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Illegal sign-in mode: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zaar;->zaa(I)V

    .line 136
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaar;->zad()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 138
    return-void

    .line 139
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 140
    throw p1
.end method

.method public final disconnect()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zae:Lcom/google/android/gms/common/api/internal/zaco;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaco;->zaa()V

    .line 176
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zah:Lcom/google/android/gms/common/api/internal/zabo;

    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabo;->zac()V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zau:Lcom/google/android/gms/common/api/internal/ListenerHolders;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ListenerHolders;->zaa()V

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    .line 180
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa(Lcom/google/android/gms/common/api/internal/zacq;)V

    .line 181
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/PendingResult;->cancel()V

    .line 182
    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 184
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zah:Lcom/google/android/gms/common/api/internal/zabo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 186
    return-void

    .line 187
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaar;->zab()Z

    .line 188
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zag:Lcom/google/android/gms/common/internal/zah;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zah;->zaa()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 190
    return-void

    .line 191
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 192
    throw v0
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 372
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mContext="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaj:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 373
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mResuming="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zal:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 374
    const-string v0, " mWorkQueue.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 375
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zae:Lcom/google/android/gms/common/api/internal/zaco;

    .line 376
    const-string v1, " mUnconsumedApiCalls.size()="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaco;->zab:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 377
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zah:Lcom/google/android/gms/common/api/internal/zabo;

    if-eqz v0, :cond_0

    .line 378
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/zabo;->zaa(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 379
    :cond_0
    return-void
.end method

.method public final enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getApi()Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zab:Ljava/util/Map;

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 37
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zad()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "the API"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x41

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleApiClient is not configured to use "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " required for this call."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zah:Lcom/google/android/gms/common/api/internal/zabo;

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    nop

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 44
    return-object p1

    .line 45
    :cond_1
    :try_start_1
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zabo;->zaa(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 47
    return-object p1

    .line 48
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 49
    throw p1
.end method

.method public final execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getApi()Lcom/google/android/gms/common/api/Api;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zab:Ljava/util/Map;

    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 53
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zad()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "the API"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x41

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleApiClient is not configured to use "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " required for this call."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zah:Lcom/google/android/gms/common/api/internal/zabo;

    .line 57
    if-eqz v0, :cond_3

    .line 59
    nop

    .line 60
    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zal:Z

    .line 61
    if-eqz v1, :cond_2

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 63
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    .line 65
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zae:Lcom/google/android/gms/common/api/internal/zaco;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zaco;->zaa(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    .line 66
    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    nop

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 70
    return-object p1

    .line 71
    :cond_2
    :try_start_1
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zabo;->zab(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 73
    return-object p1

    .line 58
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GoogleApiClient is not connected yet."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 75
    throw p1
.end method

.method public final getClient(Lcom/google/android/gms/common/api/Api$AnyClientKey;)Lcom/google/android/gms/common/api/Api$Client;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "TC;>;)TC;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zab:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Api$Client;

    .line 85
    const-string v0, "Appropriate Api was not requested."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-object p1
.end method

.method public final getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    .line 92
    const-string v0, "GoogleApiClientImpl"

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zal:Z

    .line 95
    if-eqz v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot invoke getConnectionResult unless GoogleApiClient is connected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zab:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 98
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zah:Lcom/google/android/gms/common/api/internal/zabo;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/zabo;

    invoke-interface {v1, p1}, Lcom/google/android/gms/common/api/internal/zabo;->zaa(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    .line 99
    if-nez v1, :cond_3

    .line 100
    nop

    .line 101
    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zal:Z

    .line 102
    if-eqz v1, :cond_2

    .line 103
    sget-object p1, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 105
    return-object p1

    .line 106
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaar;->zac()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    nop

    .line 108
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zad()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, " requested in getConnectionResult is not connected but is not present in the failed  connections map"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 109
    invoke-static {v0, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 112
    return-object p1

    .line 113
    :cond_3
    nop

    .line 114
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 115
    return-object v1

    .line 116
    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 117
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zad()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, " was never registered with GoogleApiClient"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 119
    throw p1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaj:Landroid/content/Context;

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zak:Landroid/os/Looper;

    return-object v0
.end method

.method public final hasApi(Lcom/google/android/gms/common/api/Api;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;)Z"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zab:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hasConnectedApi(Lcom/google/android/gms/common/api/Api;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;)Z"
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 89
    return v1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zab:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Api$Client;

    .line 91
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final isConnected()Z
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zah:Lcom/google/android/gms/common/api/internal/zabo;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabo;->zad()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isConnecting()Z
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zah:Lcom/google/android/gms/common/api/internal/zabo;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabo;->zae()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zag:Lcom/google/android/gms/common/internal/zah;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zah;->zab(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z

    move-result p1

    return p1
.end method

.method public final isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zag:Lcom/google/android/gms/common/internal/zah;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zah;->zab(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z

    move-result p1

    return p1
.end method

.method public final maybeSignIn(Lcom/google/android/gms/common/api/internal/SignInConnectionListener;)Z
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zah:Lcom/google/android/gms/common/api/internal/zabo;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zabo;->zaa(Lcom/google/android/gms/common/api/internal/SignInConnectionListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final maybeSignOut()V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zah:Lcom/google/android/gms/common/api/internal/zabo;

    if-eqz v0, :cond_0

    .line 337
    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabo;->zag()V

    .line 338
    :cond_0
    return-void
.end method

.method public final reconnect()V
    .locals 0

    .line 193
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 194
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 195
    return-void
.end method

.method public final registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zag:Lcom/google/android/gms/common/internal/zah;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zah;->zaa(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    .line 284
    return-void
.end method

.method public final registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zag:Lcom/google/android/gms/common/internal/zah;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zah;->zaa(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 289
    return-void
.end method

.method public final registerListener(Ljava/lang/Object;)Lcom/google/android/gms/common/api/internal/ListenerHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            ")",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zau:Lcom/google/android/gms/common/api/internal/ListenerHolders;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zak:Landroid/os/Looper;

    .line 78
    const-string v2, "NO_TYPE"

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/api/internal/ListenerHolders;->zaa(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    nop

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 81
    return-object p1

    .line 82
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 83
    throw p1
.end method

.method public final stopAutoManage(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 218
    new-instance v0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleActivity;-><init>(Landroid/app/Activity;)V

    .line 219
    iget p1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zai:I

    if-ltz p1, :cond_0

    .line 220
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zai;->zaa(Lcom/google/android/gms/common/api/internal/LifecycleActivity;)Lcom/google/android/gms/common/api/internal/zai;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zai:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/zai;->zaa(I)V

    return-void

    .line 221
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Called stopAutoManage but automatic lifecycle management is not enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zag:Lcom/google/android/gms/common/internal/zah;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zah;->zac(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    .line 287
    return-void
.end method

.method public final unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zag:Lcom/google/android/gms/common/internal/zah;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zah;->zac(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 292
    return-void
.end method

.method public final zaa(IZ)V
    .locals 5

    .line 305
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-nez p2, :cond_1

    .line 306
    nop

    .line 307
    nop

    .line 308
    iget-boolean p2, p0, Lcom/google/android/gms/common/api/internal/zaar;->zal:Z

    .line 309
    if-nez p2, :cond_1

    .line 310
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zal:Z

    .line 311
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaq:Lcom/google/android/gms/common/api/internal/zabk;

    if-nez p2, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result p2

    if-nez p2, :cond_0

    .line 312
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaar;->zap:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaj:Landroid/content/Context;

    .line 313
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/api/internal/zaax;

    invoke-direct {v3, p0}, Lcom/google/android/gms/common/api/internal/zaax;-><init>(Lcom/google/android/gms/common/api/internal/zaar;)V

    .line 314
    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zabm;)Lcom/google/android/gms/common/api/internal/zabk;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaq:Lcom/google/android/gms/common/api/internal/zabk;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    goto :goto_0

    .line 316
    :catch_0
    move-exception p2

    .line 317
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaar;->zao:Lcom/google/android/gms/common/api/internal/zaau;

    .line 318
    invoke-virtual {p2, v1}, Lcom/google/android/gms/common/api/internal/zaau;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/api/internal/zaar;->zam:J

    .line 319
    invoke-virtual {p2, v1, v2, v3}, Lcom/google/android/gms/common/api/internal/zaau;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 320
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaar;->zao:Lcom/google/android/gms/common/api/internal/zaau;

    .line 321
    invoke-virtual {p2, v0}, Lcom/google/android/gms/common/api/internal/zaau;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/api/internal/zaar;->zan:J

    .line 322
    invoke-virtual {p2, v1, v2, v3}, Lcom/google/android/gms/common/api/internal/zaau;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 323
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaar;->zae:Lcom/google/android/gms/common/api/internal/zaco;

    .line 324
    iget-object p2, p2, Lcom/google/android/gms/common/api/internal/zaco;->zab:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {p2, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 325
    array-length v2, p2

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, p2, v1

    .line 326
    sget-object v4, Lcom/google/android/gms/common/api/internal/zaco;->zaa:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->forceFailureUnlessReady(Lcom/google/android/gms/common/api/Status;)V

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 328
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaar;->zag:Lcom/google/android/gms/common/internal/zah;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/internal/zah;->zaa(I)V

    .line 329
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaar;->zag:Lcom/google/android/gms/common/internal/zah;

    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/zah;->zaa()V

    .line 330
    if-ne p1, v0, :cond_3

    .line 331
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaar;->zad()V

    .line 332
    :cond_3
    return-void
.end method

.method public final zaa(Landroid/os/Bundle;)V
    .locals 1

    .line 293
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaa:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zag:Lcom/google/android/gms/common/internal/zah;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zah;->zaa(Landroid/os/Bundle;)V

    .line 296
    return-void
.end method

.method public final zaa(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zap:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaj:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isPlayServicesPossiblyUpdating(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaar;->zab()Z

    .line 299
    :cond_0
    nop

    .line 300
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zal:Z

    .line 301
    if-nez v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zag:Lcom/google/android/gms/common/internal/zah;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/zah;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 303
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zag:Lcom/google/android/gms/common/internal/zah;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zah;->zaa()V

    .line 304
    :cond_1
    return-void
.end method

.method public final zaa(Lcom/google/android/gms/common/api/internal/zacn;)V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zad:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zad:Ljava/util/Set;

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zad:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 344
    return-void

    .line 345
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 346
    throw p1
.end method

.method public final zab(Lcom/google/android/gms/common/api/internal/zacn;)V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zad:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "GoogleApiClientImpl"

    if-nez v0, :cond_0

    .line 349
    :try_start_1
    const-string p1, "Attempted to remove pending transform when no transforms are registered."

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 350
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 351
    const-string p1, "Failed to remove pending transform - this may lead to memory leaks!"

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 352
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaar;->zag()Z

    move-result p1

    if-nez p1, :cond_2

    .line 353
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zah:Lcom/google/android/gms/common/api/internal/zabo;

    if-eqz p1, :cond_2

    .line 354
    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/zabo;->zaf()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 356
    return-void

    .line 357
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaf:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 358
    throw p1
.end method

.method final zab()Z
    .locals 2

    .line 272
    nop

    .line 273
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zal:Z

    .line 274
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 275
    return v1

    .line 276
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaar;->zal:Z

    .line 277
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zao:Lcom/google/android/gms/common/api/internal/zaau;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zaau;->removeMessages(I)V

    .line 278
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zao:Lcom/google/android/gms/common/api/internal/zaau;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zaau;->removeMessages(I)V

    .line 279
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaq:Lcom/google/android/gms/common/api/internal/zabk;

    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabk;->zaa()V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zaq:Lcom/google/android/gms/common/api/internal/zabk;

    .line 282
    :cond_1
    return v1
.end method

.method final zac()Ljava/lang/String;
    .locals 4

    .line 369
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 370
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1, v3}, Lcom/google/android/gms/common/api/GoogleApiClient;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
