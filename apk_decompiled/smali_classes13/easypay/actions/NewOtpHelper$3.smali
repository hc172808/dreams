.class Leasypay/actions/NewOtpHelper$3;
.super Ljava/lang/Object;
.source "NewOtpHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/NewOtpHelper;->successEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/actions/NewOtpHelper;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Leasypay/actions/NewOtpHelper;I)V
    .locals 0
    .param p1, "this$0"    # Leasypay/actions/NewOtpHelper;

    .line 195
    iput-object p1, p0, Leasypay/actions/NewOtpHelper$3;->this$0:Leasypay/actions/NewOtpHelper;

    iput p2, p0, Leasypay/actions/NewOtpHelper$3;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 199
    const-string v0, "READ_OTP"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insideSuccessEvent : Event value passed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Leasypay/actions/NewOtpHelper$3;->val$id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    iget-object v1, p0, Leasypay/actions/NewOtpHelper$3;->this$0:Leasypay/actions/NewOtpHelper;

    invoke-static {v1}, Leasypay/actions/NewOtpHelper;->access$400(Leasypay/actions/NewOtpHelper;)V

    .line 201
    iget-object v1, p0, Leasypay/actions/NewOtpHelper$3;->this$0:Leasypay/actions/NewOtpHelper;

    invoke-static {v1}, Leasypay/actions/NewOtpHelper;->access$500(Leasypay/actions/NewOtpHelper;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.READ_SMS"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 202
    iget-object v1, p0, Leasypay/actions/NewOtpHelper$3;->this$0:Leasypay/actions/NewOtpHelper;

    invoke-static {v1}, Leasypay/actions/NewOtpHelper;->access$600(Leasypay/actions/NewOtpHelper;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 203
    const-string v0, "Reading existing messages."

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Leasypay/actions/NewOtpHelper$3;->this$0:Leasypay/actions/NewOtpHelper;

    invoke-static {v0}, Leasypay/actions/NewOtpHelper;->access$700(Leasypay/actions/NewOtpHelper;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    iget-object v0, p0, Leasypay/actions/NewOtpHelper$3;->this$0:Leasypay/actions/NewOtpHelper;

    invoke-static {v0}, Leasypay/actions/NewOtpHelper;->access$500(Leasypay/actions/NewOtpHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Leasypay/actions/NewOtpHelper;->access$800(Leasypay/actions/NewOtpHelper;Landroid/app/Activity;)V

    goto :goto_0

    .line 210
    :cond_0
    const-string v1, "Reading current message."

    invoke-static {v1, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    iget-object v1, p0, Leasypay/actions/NewOtpHelper$3;->this$0:Leasypay/actions/NewOtpHelper;

    invoke-virtual {v1, v0}, Leasypay/actions/NewOtpHelper;->doAction(Ljava/lang/String;)V

    .line 215
    :cond_1
    :goto_0
    iget-object v0, p0, Leasypay/actions/NewOtpHelper$3;->this$0:Leasypay/actions/NewOtpHelper;

    const-string v1, "SUBMIT_BTN"

    invoke-virtual {v0, v1}, Leasypay/actions/NewOtpHelper;->doAction(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Leasypay/actions/NewOtpHelper$3;->this$0:Leasypay/actions/NewOtpHelper;

    const-string v1, "FILLER_FROM_CODE"

    invoke-virtual {v0, v1}, Leasypay/actions/NewOtpHelper;->doAction(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Leasypay/actions/NewOtpHelper$3;->this$0:Leasypay/actions/NewOtpHelper;

    const-string v1, "RESEND_BUTTON"

    invoke-virtual {v0, v1}, Leasypay/actions/NewOtpHelper;->doAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    goto :goto_1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Any Exception in OTP Flow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 220
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
