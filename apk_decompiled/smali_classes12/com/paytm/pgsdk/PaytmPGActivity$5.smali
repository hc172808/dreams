.class Lcom/paytm/pgsdk/PaytmPGActivity$5;
.super Ljava/lang/Object;
.source "PaytmPGActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/paytm/pgsdk/PaytmPGActivity;->initSmsConsent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/paytm/pgsdk/PaytmPGActivity;


# direct methods
.method constructor <init>(Lcom/paytm/pgsdk/PaytmPGActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/paytm/pgsdk/PaytmPGActivity;

    .line 473
    iput-object p1, p0, Lcom/paytm/pgsdk/PaytmPGActivity$5;->this$0:Lcom/paytm/pgsdk/PaytmPGActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 476
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 477
    const-string v0, "kanish"

    const-string v1, "initSmsConsent:Error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-void
.end method
