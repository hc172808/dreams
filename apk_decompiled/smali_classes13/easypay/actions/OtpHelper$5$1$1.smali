.class Leasypay/actions/OtpHelper$5$1$1;
.super Ljava/lang/Object;
.source "OtpHelper.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/OtpHelper$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Leasypay/actions/OtpHelper$5$1;


# direct methods
.method constructor <init>(Leasypay/actions/OtpHelper$5$1;)V
    .locals 0
    .param p1, "this$2"    # Leasypay/actions/OtpHelper$5$1;

    .line 272
    iput-object p1, p0, Leasypay/actions/OtpHelper$5$1$1;->this$2:Leasypay/actions/OtpHelper$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 272
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Leasypay/actions/OtpHelper$5$1$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 276
    return-void
.end method
