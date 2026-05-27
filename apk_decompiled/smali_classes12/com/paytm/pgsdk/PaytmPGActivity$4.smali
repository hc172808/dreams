.class Lcom/paytm/pgsdk/PaytmPGActivity$4;
.super Ljava/lang/Object;
.source "PaytmPGActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/paytm/pgsdk/PaytmPGActivity;->initSmsConsent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/paytm/pgsdk/PaytmPGActivity;


# direct methods
.method constructor <init>(Lcom/paytm/pgsdk/PaytmPGActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/paytm/pgsdk/PaytmPGActivity;

    .line 466
    iput-object p1, p0, Lcom/paytm/pgsdk/PaytmPGActivity$4;->this$0:Lcom/paytm/pgsdk/PaytmPGActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 466
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/paytm/pgsdk/PaytmPGActivity$4;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 2
    .param p1, "ignore"    # Ljava/lang/Void;

    .line 470
    const-string v0, "kanish"

    const-string v1, "initSmsConsent|onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-void
.end method
