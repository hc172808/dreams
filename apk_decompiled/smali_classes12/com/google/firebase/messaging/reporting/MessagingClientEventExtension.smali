.class public final Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension;


# instance fields
.field private final messaging_client_event_:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension$Builder;

    .line 1
    invoke-direct {v0}, Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension$Builder;->build()Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension;->DEFAULT_INSTANCE:Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/messaging/reporting/MessagingClientEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension;->messaging_client_event_:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension;
    .locals 1

    sget-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension;->DEFAULT_INSTANCE:Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension$Builder;
    .locals 1

    new-instance v0, Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension$Builder;

    .line 1
    invoke-direct {v0}, Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getMessagingClientEvent()Lcom/google/firebase/messaging/reporting/MessagingClientEvent;
    .locals 1
    .annotation runtime Lcom/google/firebase/encoders/annotations/Encodable$Ignore;
    .end annotation

    .end local p0    # "this":Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension;
    iget-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension;->messaging_client_event_:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->getDefaultInstance()Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMessagingClientEventInternal()Lcom/google/firebase/messaging/reporting/MessagingClientEvent;
    .locals 1
    .annotation runtime Lcom/google/firebase/encoders/annotations/Encodable$Field;
        name = "messagingClientEvent"
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension;->messaging_client_event_:Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    return-object v0
.end method

.method public toByteArray()[B
    .locals 1

    .line 1
    .end local p0    # "this":Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension;
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_messaging/zze;->zza(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .end local p0    # "this":Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension;
    .end local p1    # "output":Ljava/io/OutputStream;
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_messaging/zze;->zzb(Ljava/lang/Object;Ljava/io/OutputStream;)V

    return-void
.end method
