.class Lcom/payumoney/core/utils/ResponseParser$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/core/utils/ResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/payumoney/core/entity/EmiTenure;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/core/utils/ResponseParser;


# direct methods
.method constructor <init>(Lcom/payumoney/core/utils/ResponseParser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/core/utils/ResponseParser;

    .line 689
    iput-object p1, p0, Lcom/payumoney/core/utils/ResponseParser$1;->a:Lcom/payumoney/core/utils/ResponseParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/payumoney/core/entity/EmiTenure;Lcom/payumoney/core/entity/EmiTenure;)I
    .locals 5
    .param p1, "lhs"    # Lcom/payumoney/core/entity/EmiTenure;
    .param p2, "rhs"    # Lcom/payumoney/core/entity/EmiTenure;

    .line 692
    const-string v0, "months"

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/payumoney/core/entity/EmiTenure;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lcom/payumoney/core/entity/EmiTenure;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 696
    :cond_0
    invoke-virtual {p1}, Lcom/payumoney/core/entity/EmiTenure;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 697
    invoke-virtual {p2}, Lcom/payumoney/core/entity/EmiTenure;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 700
    nop

    .line 702
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 704
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 705
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 707
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 708
    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 710
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 714
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 715
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 717
    invoke-virtual {v1, v0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0

    .line 711
    :cond_2
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 721
    :cond_3
    goto :goto_1

    .line 719
    :catch_0
    move-exception v0

    .line 720
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 723
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 693
    :cond_4
    :goto_2
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 689
    check-cast p1, Lcom/payumoney/core/entity/EmiTenure;

    check-cast p2, Lcom/payumoney/core/entity/EmiTenure;

    invoke-virtual {p0, p1, p2}, Lcom/payumoney/core/utils/ResponseParser$1;->compare(Lcom/payumoney/core/entity/EmiTenure;Lcom/payumoney/core/entity/EmiTenure;)I

    move-result p1

    return p1
.end method
