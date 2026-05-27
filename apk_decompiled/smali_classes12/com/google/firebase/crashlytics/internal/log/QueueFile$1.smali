.class Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;
.super Ljava/lang/Object;
.source "QueueFile.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/log/QueueFile$ElementReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/log/QueueFile;->toString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field first:Z

.field final synthetic this$0:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

.field final synthetic val$builder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/log/QueueFile;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    .line 561
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;->this$0:Lcom/google/firebase/crashlytics/internal/log/QueueFile;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;->val$builder:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;->first:Z

    return-void
.end method


# virtual methods
.method public read(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 566
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;->first:Z

    if-eqz v0, :cond_0

    .line 567
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;->first:Z

    goto :goto_0

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;->val$builder:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/log/QueueFile$1;->val$builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 572
    return-void
.end method
