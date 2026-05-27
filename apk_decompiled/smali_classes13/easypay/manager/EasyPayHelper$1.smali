.class Leasypay/manager/EasyPayHelper$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "EasyPayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/manager/EasyPayHelper;->sendBnkDtlToApp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/manager/EasyPayHelper;


# direct methods
.method constructor <init>(Leasypay/manager/EasyPayHelper;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/manager/EasyPayHelper;

    .line 192
    iput-object p1, p0, Leasypay/manager/EasyPayHelper$1;->this$0:Leasypay/manager/EasyPayHelper;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
