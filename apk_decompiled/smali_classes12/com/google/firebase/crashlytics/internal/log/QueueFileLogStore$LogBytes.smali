.class Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$LogBytes;
.super Ljava/lang/Object;
.source "QueueFileLogStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogBytes"
.end annotation


# instance fields
.field public final bytes:[B

.field public final offset:I


# direct methods
.method constructor <init>([BI)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$LogBytes;->bytes:[B

    .line 41
    iput p2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFileLogStore$LogBytes;->offset:I

    .line 42
    return-void
.end method
