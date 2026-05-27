.class Leasypay/actions/NBHelper$1;
.super Ljava/lang/Object;
.source "NBHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/NBHelper;->fireActions(Ljava/lang/String;Leasypay/entity/Operation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/actions/NBHelper;

.field final synthetic val$actionType:Ljava/lang/String;

.field final synthetic val$operation:Leasypay/entity/Operation;


# direct methods
.method constructor <init>(Leasypay/actions/NBHelper;Leasypay/entity/Operation;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/actions/NBHelper;

    .line 133
    iput-object p1, p0, Leasypay/actions/NBHelper$1;->this$0:Leasypay/actions/NBHelper;

    iput-object p2, p0, Leasypay/actions/NBHelper$1;->val$operation:Leasypay/entity/Operation;

    iput-object p3, p0, Leasypay/actions/NBHelper$1;->val$actionType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 136
    iget-object v0, p0, Leasypay/actions/NBHelper$1;->val$operation:Leasypay/entity/Operation;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Leasypay/entity/Operation;->getJsTemplate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 138
    :try_start_0
    iget-object v0, p0, Leasypay/actions/NBHelper$1;->val$actionType:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "PASSWORD_FINDER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1
    const-string v2, "FILLER_FROM_WEB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2
    const-string v2, "PREVIOUS_BTN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "FILLER_FROM_CODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "PASSOWRD_INPUT_REGISTER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_5
    const-string v2, "READ_OTP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_6
    const-string v2, "AUTOFILL_USERID"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_7
    const-string v2, "SUBMIT_BTN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_8
    const-string v2, "NEXT_BTN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 177
    :pswitch_0
    const-string v0, "Inside AUTOFILL_USERID"

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Leasypay/actions/NBHelper$1;->this$0:Leasypay/actions/NBHelper;

    iget-object v1, p0, Leasypay/actions/NBHelper$1;->val$operation:Leasypay/entity/Operation;

    invoke-static {v0, v1}, Leasypay/actions/NBHelper;->access$202(Leasypay/actions/NBHelper;Leasypay/entity/Operation;)Leasypay/entity/Operation;

    .line 179
    iget-object v0, p0, Leasypay/actions/NBHelper$1;->this$0:Leasypay/actions/NBHelper;

    invoke-static {v0}, Leasypay/actions/NBHelper;->access$300(Leasypay/actions/NBHelper;)V

    goto :goto_1

    .line 173
    :pswitch_1
    iget-object v0, p0, Leasypay/actions/NBHelper$1;->this$0:Leasypay/actions/NBHelper;

    iget-object v1, p0, Leasypay/actions/NBHelper$1;->val$operation:Leasypay/entity/Operation;

    invoke-virtual {v1}, Leasypay/entity/Operation;->getJsTemplate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leasypay/actions/NBHelper;->access$000(Leasypay/actions/NBHelper;Ljava/lang/String;)V

    .line 175
    goto :goto_1

    .line 167
    :pswitch_2
    const-string v0, " called Action FILLER_FROM_WEB "

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Leasypay/actions/NBHelper$1;->this$0:Leasypay/actions/NBHelper;

    iget-object v1, p0, Leasypay/actions/NBHelper$1;->val$operation:Leasypay/entity/Operation;

    invoke-virtual {v1}, Leasypay/entity/Operation;->getJsTemplate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leasypay/actions/NBHelper;->access$000(Leasypay/actions/NBHelper;Ljava/lang/String;)V

    .line 169
    goto :goto_1

    .line 163
    :pswitch_3
    goto :goto_1

    .line 159
    :pswitch_4
    iget-object v0, p0, Leasypay/actions/NBHelper$1;->this$0:Leasypay/actions/NBHelper;

    iget-object v1, p0, Leasypay/actions/NBHelper$1;->val$operation:Leasypay/entity/Operation;

    invoke-virtual {v1}, Leasypay/entity/Operation;->getJsTemplate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leasypay/actions/NBHelper;->access$000(Leasypay/actions/NBHelper;Ljava/lang/String;)V

    .line 160
    goto :goto_1

    .line 153
    :pswitch_5
    const-string v0, "Action  NEXT_BTN"

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Leasypay/actions/NBHelper$1;->this$0:Leasypay/actions/NBHelper;

    iget-object v1, p0, Leasypay/actions/NBHelper$1;->val$operation:Leasypay/entity/Operation;

    invoke-virtual {v1}, Leasypay/entity/Operation;->getJsTemplate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leasypay/actions/NBHelper;->access$000(Leasypay/actions/NBHelper;Ljava/lang/String;)V

    .line 155
    goto :goto_1

    .line 144
    :pswitch_6
    const-string v0, "Action  SUBMIT_BTN"

    invoke-static {v0, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Leasypay/actions/NBHelper$1;->this$0:Leasypay/actions/NBHelper;

    iget-object v1, p0, Leasypay/actions/NBHelper$1;->val$operation:Leasypay/entity/Operation;

    invoke-virtual {v1}, Leasypay/entity/Operation;->getJsTemplate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leasypay/actions/NBHelper;->access$000(Leasypay/actions/NBHelper;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Leasypay/actions/NBHelper$1;->this$0:Leasypay/actions/NBHelper;

    invoke-static {v0}, Leasypay/actions/NBHelper;->access$100(Leasypay/actions/NBHelper;)Leasypay/actions/EasypayBrowserFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leasypay/actions/NBHelper$1;->this$0:Leasypay/actions/NBHelper;

    invoke-static {v0}, Leasypay/actions/NBHelper;->access$100(Leasypay/actions/NBHelper;)Leasypay/actions/EasypayBrowserFragment;

    move-result-object v0

    invoke-virtual {v0}, Leasypay/actions/EasypayBrowserFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Leasypay/actions/NBHelper$1;->this$0:Leasypay/actions/NBHelper;

    invoke-static {v0}, Leasypay/actions/NBHelper;->access$100(Leasypay/actions/NBHelper;)Leasypay/actions/EasypayBrowserFragment;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1, v3}, Leasypay/actions/EasypayBrowserFragment;->passwordViewer(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 141
    :pswitch_7
    nop

    .line 183
    :cond_1
    :goto_1
    goto :goto_2

    .line 181
    :catch_0
    move-exception v0

    .line 185
    :cond_2
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7c5ffd10 -> :sswitch_8
        -0x5ecc666b -> :sswitch_7
        -0x1c035cad -> :sswitch_6
        -0x4fc071e -> :sswitch_5
        0x3deccac -> :sswitch_4
        0x42381953 -> :sswitch_3
        0x479988f4 -> :sswitch_2
        0x5cf9d70e -> :sswitch_1
        0x701faa4a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
