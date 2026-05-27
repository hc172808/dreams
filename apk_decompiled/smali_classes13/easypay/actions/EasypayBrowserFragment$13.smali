.class Leasypay/actions/EasypayBrowserFragment$13;
.super Ljava/lang/Object;
.source "EasypayBrowserFragment.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/EasypayBrowserFragment;->initSmsConsent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/actions/EasypayBrowserFragment;


# direct methods
.method constructor <init>(Leasypay/actions/EasypayBrowserFragment;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/actions/EasypayBrowserFragment;

    .line 1697
    iput-object p1, p0, Leasypay/actions/EasypayBrowserFragment$13;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 1700
    const-string v0, "Init sms consent: failed"

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1701
    return-void
.end method
