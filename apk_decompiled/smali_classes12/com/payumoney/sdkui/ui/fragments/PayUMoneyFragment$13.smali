.class Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/payumoney/core/entity/PaymentEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;


# direct methods
.method constructor <init>(Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    .line 3067
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$13;->a:Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/payumoney/core/entity/PaymentEntity;Lcom/payumoney/core/entity/PaymentEntity;)I
    .locals 2
    .param p1, "e1"    # Lcom/payumoney/core/entity/PaymentEntity;
    .param p2, "e2"    # Lcom/payumoney/core/entity/PaymentEntity;

    .line 3071
    invoke-virtual {p1}, Lcom/payumoney/core/entity/PaymentEntity;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/payumoney/core/entity/PaymentEntity;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 3067
    check-cast p1, Lcom/payumoney/core/entity/PaymentEntity;

    check-cast p2, Lcom/payumoney/core/entity/PaymentEntity;

    invoke-virtual {p0, p1, p2}, Lcom/payumoney/sdkui/ui/fragments/PayUMoneyFragment$13;->compare(Lcom/payumoney/core/entity/PaymentEntity;Lcom/payumoney/core/entity/PaymentEntity;)I

    move-result p1

    return p1
.end method
