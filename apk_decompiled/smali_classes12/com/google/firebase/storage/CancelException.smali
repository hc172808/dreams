.class Lcom/google/firebase/storage/CancelException;
.super Ljava/io/IOException;
.source "CancelException.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 23
    const-string v0, "The operation was canceled."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method
