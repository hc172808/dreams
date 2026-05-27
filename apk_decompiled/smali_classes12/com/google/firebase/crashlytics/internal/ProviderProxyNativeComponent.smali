.class public final Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent;
.super Ljava/lang/Object;
.source "ProviderProxyNativeComponent.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent$MissingNativeSessionFileProvider;
    }
.end annotation


# static fields
.field private static final MISSING_NATIVE_SESSION_FILE_PROVIDER:Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;


# instance fields
.field private final provider:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent$MissingNativeSessionFileProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent$MissingNativeSessionFileProvider;-><init>(Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent$1;)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent;->MISSING_NATIVE_SESSION_FILE_PROVIDER:Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;",
            ">;)V"
        }
    .end annotation

    .line 28
    .local p1, "provider":Lcom/google/firebase/inject/Provider;, "Lcom/google/firebase/inject/Provider<Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent;->provider:Lcom/google/firebase/inject/Provider;

    .line 30
    return-void
.end method


# virtual methods
.method public finalizeSession(Ljava/lang/String;)Z
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent;->provider:Lcom/google/firebase/inject/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    .line 53
    .local v0, "nativeComponent":Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;
    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0, p1}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;->finalizeSession(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 56
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getSessionFileProvider(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent;->provider:Lcom/google/firebase/inject/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    .line 63
    .local v0, "nativeComponent":Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;
    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0, p1}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;->getSessionFileProvider(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;

    move-result-object v1

    return-object v1

    .line 66
    :cond_0
    sget-object v1, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent;->MISSING_NATIVE_SESSION_FILE_PROVIDER:Lcom/google/firebase/crashlytics/internal/NativeSessionFileProvider;

    return-object v1
.end method

.method public hasCrashDataForSession(Ljava/lang/String;)Z
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent;->provider:Lcom/google/firebase/inject/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    .line 35
    .local v0, "nativeComponent":Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;
    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0, p1}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;->hasCrashDataForSession(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 38
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public openSession(Ljava/lang/String;)Z
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent;->provider:Lcom/google/firebase/inject/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    .line 44
    .local v0, "nativeComponent":Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;
    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0, p1}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;->openSession(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 47
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public writeBeginSession(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "generator"    # Ljava/lang/String;
    .param p3, "startedAtSeconds"    # J

    .line 72
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent;->provider:Lcom/google/firebase/inject/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    .line 73
    .local v0, "nativeComponent":Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;
    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;->writeBeginSession(Ljava/lang/String;Ljava/lang/String;J)V

    .line 76
    :cond_0
    return-void
.end method

.method public writeSessionApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 10
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .param p3, "versionCode"    # Ljava/lang/String;
    .param p4, "versionName"    # Ljava/lang/String;
    .param p5, "installUuid"    # Ljava/lang/String;
    .param p6, "deliveryMechanism"    # I
    .param p7, "unityVersion"    # Ljava/lang/String;

    .line 87
    move-object v0, p0

    iget-object v1, v0, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent;->provider:Lcom/google/firebase/inject/Provider;

    invoke-interface {v1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    .line 88
    .local v1, "nativeComponent":Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;
    if-eqz v1, :cond_0

    .line 89
    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;->writeSessionApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

.method public writeSessionDevice(Ljava/lang/String;ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "arch"    # I
    .param p3, "model"    # Ljava/lang/String;
    .param p4, "availableProcessors"    # I
    .param p5, "totalRam"    # J
    .param p7, "diskSpace"    # J
    .param p9, "isEmulator"    # Z
    .param p10, "state"    # I
    .param p11, "manufacturer"    # Ljava/lang/String;
    .param p12, "modelClass"    # Ljava/lang/String;

    .line 124
    move-object v0, p0

    iget-object v1, v0, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent;->provider:Lcom/google/firebase/inject/Provider;

    invoke-interface {v1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    .line 125
    .local v1, "nativeComponent":Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;
    if-eqz v1, :cond_0

    .line 126
    move-object v2, v1

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-interface/range {v2 .. v14}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;->writeSessionDevice(Ljava/lang/String;ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    return-void
.end method

.method public writeSessionOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "osRelease"    # Ljava/lang/String;
    .param p3, "osCodeName"    # Ljava/lang/String;
    .param p4, "isRooted"    # Z

    .line 106
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/ProviderProxyNativeComponent;->provider:Lcom/google/firebase/inject/Provider;

    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;

    .line 107
    .local v0, "nativeComponent":Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;
    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponent;->writeSessionOs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 110
    :cond_0
    return-void
.end method
