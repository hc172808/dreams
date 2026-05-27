.class Leasypay/actions/EasypayBrowserFragment$9;
.super Ljava/lang/Object;
.source "EasypayBrowserFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/EasypayBrowserFragment;->passwordViewer(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/actions/EasypayBrowserFragment;

.field final synthetic val$pwdValue1:Ljava/lang/String;

.field final synthetic val$viewCode:I


# direct methods
.method constructor <init>(Leasypay/actions/EasypayBrowserFragment;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/actions/EasypayBrowserFragment;

    .line 1106
    iput-object p1, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    iput p2, p0, Leasypay/actions/EasypayBrowserFragment$9;->val$viewCode:I

    iput-object p3, p0, Leasypay/actions/EasypayBrowserFragment$9;->val$pwdValue1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1111
    :try_start_0
    iget v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->val$viewCode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_3

    .line 1112
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$900(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1113
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1000(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1114
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1000(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1115
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1100(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Leasypay/actions/EasypayBrowserFragment;->access$402(Leasypay/actions/EasypayBrowserFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1117
    :cond_0
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1200(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1118
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1300(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1119
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1400(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1120
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1100(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1121
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1500(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1123
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1600(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1124
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1600(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1126
    :cond_1
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1700(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1127
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->val$pwdValue1:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1128
    return-void

    .line 1130
    :cond_2
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1200(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Leasypay/actions/EasypayBrowserFragment$9;->val$pwdValue1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1131
    :cond_3
    const/4 v1, 0x4

    if-nez v0, :cond_b

    .line 1132
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1200(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1200(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 1133
    :cond_4
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1200(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1136
    :cond_5
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1700(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1700(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 1137
    :cond_6
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1700(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1140
    :cond_7
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1000(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1000(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 1141
    :cond_8
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1000(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1144
    :cond_9
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1600(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1600(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_e

    .line 1145
    :cond_a
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1600(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1147
    :cond_b
    const/4 v4, 0x3

    if-ne v0, v4, :cond_c

    .line 1148
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$900(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1149
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1200(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1150
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$1200(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1153
    :cond_c
    if-ne v0, v1, :cond_d

    .line 1154
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$900(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1155
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$900(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1157
    :cond_d
    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    .line 1158
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$900(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1159
    iget-object v0, p0, Leasypay/actions/EasypayBrowserFragment$9;->this$0:Leasypay/actions/EasypayBrowserFragment;

    invoke-static {v0}, Leasypay/actions/EasypayBrowserFragment;->access$900(Leasypay/actions/EasypayBrowserFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1166
    :cond_e
    :goto_0
    goto :goto_1

    .line 1163
    :catch_0
    move-exception v0

    .line 1164
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1165
    const-string v1, "EXCEPTION"

    invoke-static {v1, v0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1167
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
