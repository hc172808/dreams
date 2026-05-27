.class public Lcom/payu/custombrowser/util/g$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/payu/custombrowser/util/g$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/util/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, "NH-"

    const-string v1, ""

    invoke-static {p1, v1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/payu/custombrowser/util/g$e;->a:Ljava/io/File;

    .line 530
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/payu/custombrowser/util/g$e;->a:Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/payu/custombrowser/util/g$e;->b:Ljava/io/OutputStream;

    .line 531
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$e;->b:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/payu/custombrowser/util/g;->a(Ljava/io/Closeable;)V

    .line 541
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$e;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 542
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$e;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
