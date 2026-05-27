.class public Lcom/payu/custombrowser/util/g$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/util/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/payu/custombrowser/util/g$k$b;,
        Lcom/payu/custombrowser/util/g$k$a;
    }
.end annotation


# instance fields
.field private a:Lcom/payu/custombrowser/util/g$k$a;

.field private b:Ljava/lang/String;

.field private c:Ljava/io/InputStream;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/payu/custombrowser/util/g$j;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/payu/custombrowser/util/g$k$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/payu/custombrowser/util/g$k;->d:Ljava/util/Map;

    .line 599
    iput-object p1, p0, Lcom/payu/custombrowser/util/g$k;->a:Lcom/payu/custombrowser/util/g$k$a;

    .line 600
    iput-object p2, p0, Lcom/payu/custombrowser/util/g$k;->b:Ljava/lang/String;

    .line 602
    if-eqz p3, :cond_0

    :try_start_0
    new-instance p1, Ljava/io/ByteArrayInputStream;

    const-string p2, "UTF-8"

    invoke-virtual {p3, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    .line 603
    :catch_0
    move-exception p1

    goto :goto_1

    .line 602
    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/payu/custombrowser/util/g$k;->c:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    goto :goto_2

    .line 604
    :goto_1
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 606
    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 583
    sget-object v0, Lcom/payu/custombrowser/util/g$k$b;->OK:Lcom/payu/custombrowser/util/g$k$b;

    const-string v1, "text/html"

    invoke-direct {p0, v0, v1, p1}, Lcom/payu/custombrowser/util/g$k;-><init>(Lcom/payu/custombrowser/util/g$k$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method private a(Ljava/io/OutputStream;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 704
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$k;->e:Lcom/payu/custombrowser/util/g$j;

    sget-object v1, Lcom/payu/custombrowser/util/g$j;->HEAD:Lcom/payu/custombrowser/util/g$j;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/payu/custombrowser/util/g$k;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 705
    const/16 v0, 0x4000

    .line 706
    new-array v1, v0, [B

    .line 707
    :goto_0
    if-lez p2, :cond_2

    .line 708
    iget-object v2, p0, Lcom/payu/custombrowser/util/g$k;->c:Ljava/io/InputStream;

    if-le p2, v0, :cond_0

    const/16 v3, 0x4000

    goto :goto_1

    :cond_0
    move v3, p2

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 709
    if-gtz v2, :cond_1

    .line 710
    goto :goto_2

    .line 712
    :cond_1
    invoke-virtual {p1, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 713
    sub-int/2addr p2, v2

    .line 714
    goto :goto_0

    .line 716
    :cond_2
    :goto_2
    return-void
.end method

.method private a(Ljava/io/OutputStream;Ljava/io/PrintWriter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 688
    const-string v0, "Transfer-Encoding: chunked\r\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 689
    const-string v0, "\r\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 691
    nop

    .line 692
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 693
    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 695
    :goto_0
    iget-object v1, p0, Lcom/payu/custombrowser/util/g$k;->c:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 696
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "%x\r\n"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 697
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 698
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 700
    :cond_0
    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "0\r\n\r\n"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 701
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 680
    nop

    .line 681
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 682
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 683
    goto :goto_0

    .line 684
    :cond_0
    return v0
.end method


# virtual methods
.method public a(Lcom/payu/custombrowser/util/g$j;)V
    .locals 0

    .line 747
    iput-object p1, p0, Lcom/payu/custombrowser/util/g$k;->e:Lcom/payu/custombrowser/util/g$j;

    .line 748
    return-void
.end method

.method protected a(Ljava/io/OutputStream;)V
    .locals 6

    .line 623
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$k;->b:Ljava/lang/String;

    .line 624
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 625
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 628
    :try_start_0
    iget-object v2, p0, Lcom/payu/custombrowser/util/g$k;->a:Lcom/payu/custombrowser/util/g$k$a;

    if-eqz v2, :cond_6

    .line 631
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 632
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP/1.1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/payu/custombrowser/util/g$k;->a:Lcom/payu/custombrowser/util/g$k$a;

    invoke-interface {v4}, Lcom/payu/custombrowser/util/g$k$a;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    const-string v3, "\r\n"

    if-eqz v0, :cond_0

    .line 635
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$k;->d:Ljava/util/Map;

    if-eqz v0, :cond_1

    const-string v4, "Date"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 639
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Date: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 642
    :cond_2
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$k;->d:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 643
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 644
    iget-object v4, p0, Lcom/payu/custombrowser/util/g$k;->d:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 645
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 646
    goto :goto_0

    .line 649
    :cond_3
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$k;->d:Ljava/util/Map;

    invoke-virtual {p0, v2, v0}, Lcom/payu/custombrowser/util/g$k;->a(Ljava/io/PrintWriter;Ljava/util/Map;)V

    .line 651
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$k;->e:Lcom/payu/custombrowser/util/g$j;

    sget-object v1, Lcom/payu/custombrowser/util/g$j;->HEAD:Lcom/payu/custombrowser/util/g$j;

    if-eq v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/payu/custombrowser/util/g$k;->f:Z

    if-eqz v0, :cond_4

    .line 652
    invoke-direct {p0, p1, v2}, Lcom/payu/custombrowser/util/g$k;->a(Ljava/io/OutputStream;Ljava/io/PrintWriter;)V

    goto :goto_2

    .line 654
    :cond_4
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$k;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 655
    :goto_1
    iget-object v1, p0, Lcom/payu/custombrowser/util/g$k;->d:Ljava/util/Map;

    invoke-virtual {p0, v2, v1, v0}, Lcom/payu/custombrowser/util/g$k;->a(Ljava/io/PrintWriter;Ljava/util/Map;I)V

    .line 656
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 657
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 658
    invoke-direct {p0, p1, v0}, Lcom/payu/custombrowser/util/g$k;->a(Ljava/io/OutputStream;I)V

    .line 660
    :goto_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 661
    iget-object p1, p0, Lcom/payu/custombrowser/util/g$k;->c:Ljava/io/InputStream;

    invoke-static {p1}, Lcom/payu/custombrowser/util/g;->a(Ljava/io/Closeable;)V

    .line 664
    goto :goto_3

    .line 629
    :cond_6
    new-instance p1, Ljava/lang/Error;

    const-string v0, "sendResponse(): Status can\'t be null."

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 662
    :catch_0
    move-exception p1

    .line 665
    :goto_3
    return-void
.end method

.method protected a(Ljava/io/PrintWriter;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 674
    const-string v0, "connection"

    invoke-direct {p0, p2, v0}, Lcom/payu/custombrowser/util/g$k;->a(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 675
    const-string p2, "Connection: keep-alive\r\n"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 677
    :cond_0
    return-void
.end method

.method protected a(Ljava/io/PrintWriter;Ljava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 668
    const-string v0, "content-length"

    invoke-direct {p0, p2, v0}, Lcom/payu/custombrowser/util/g$k;->a(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 669
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Content-Length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\r\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 671
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/payu/custombrowser/util/g$k;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    return-void
.end method
