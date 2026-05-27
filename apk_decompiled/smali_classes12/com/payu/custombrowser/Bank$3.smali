.class Lcom/payu/custombrowser/Bank$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/payu/custombrowser/Bank;->nativeHelperForNB(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/payu/custombrowser/Bank;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/Bank;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1186
    iput-object p1, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    iput-object p2, p0, Lcom/payu/custombrowser/Bank$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/payu/custombrowser/Bank$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1190
    :try_start_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->dismissReviewOrder()V

    .line 1191
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    iget-boolean v0, v0, Lcom/payu/custombrowser/Bank;->n:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "-1"

    if-eqz v0, :cond_0

    .line 1192
    :try_start_1
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 1196
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    const-string v2, "snooze_window_action"

    const-string v3, "snooze_window_dismissed_by_cb"

    invoke-virtual {v0, v2, v3}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    const-string v2, "snooze_window_automatically_disappear_time"

    invoke-virtual {v0, v2, v1}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    const-string v2, "NBLogin Page"

    iput-object v2, v0, Lcom/payu/custombrowser/Bank;->pageType:Ljava/lang/String;

    .line 1202
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    const-string v2, "arrival"

    invoke-virtual {v0, v2, v1}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->onHelpAvailable()V

    .line 1204
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    const-string v1, "cb_status"

    sget-object v2, Lcom/payu/custombrowser/util/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3;->a:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    if-eqz v0, :cond_8

    .line 1206
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->dismissSnoozeWindow()V

    .line 1207
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/payu/custombrowser/R$layout;->nb_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1208
    sget v1, Lcom/payu/custombrowser/R$id;->b_continue:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1209
    sget v3, Lcom/payu/custombrowser/R$id;->checkbox:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 1210
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/payu/custombrowser/Bank$3;->b:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1211
    iget-object v5, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    sget v6, Lcom/payu/custombrowser/R$string;->cb_btn_text:I

    invoke-virtual {v5, v6}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1212
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1213
    iget-object v6, p0, Lcom/payu/custombrowser/Bank$3;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    sget v8, Lcom/payu/custombrowser/R$string;->cb_button:I

    invoke-virtual {v7, v8}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    .line 1214
    iget-object v6, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    sget v9, Lcom/payu/custombrowser/R$string;->cb_checkbox:I

    invoke-virtual {v6, v9}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const/16 v9, 0x8

    if-eqz v6, :cond_3

    .line 1215
    iget-object v6, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    sget v10, Lcom/payu/custombrowser/R$string;->cb_checkbox:I

    invoke-virtual {v6, v10}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1217
    iget-object v6, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    invoke-static {v6}, Lcom/payu/custombrowser/Bank;->c(Lcom/payu/custombrowser/Bank;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1218
    iget-object v6, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    sget-object v9, Lcom/payu/custombrowser/util/a;->f:Ljava/lang/String;

    const-string v10, "y"

    invoke-virtual {v6, v9, v10}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 1221
    :cond_1
    iget-object v6, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    sget-object v9, Lcom/payu/custombrowser/util/a;->f:Ljava/lang/String;

    const-string v10, "n"

    invoke-virtual {v6, v9, v10}, Lcom/payu/custombrowser/Bank;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1226
    :goto_0
    new-instance v6, Lcom/payu/custombrowser/Bank$3$1;

    invoke-direct {v6, p0, v3}, Lcom/payu/custombrowser/Bank$3$1;-><init>(Lcom/payu/custombrowser/Bank$3;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1239
    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 1241
    :cond_2
    invoke-virtual {v3, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 1245
    :cond_3
    invoke-virtual {v3, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1247
    :goto_1
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1248
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1249
    new-instance v2, Lcom/payu/custombrowser/Bank$3$2;

    invoke-direct {v2, p0, v1}, Lcom/payu/custombrowser/Bank$3$2;-><init>(Lcom/payu/custombrowser/Bank$3;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1261
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1262
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1263
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    iput-boolean v8, v0, Lcom/payu/custombrowser/Bank;->p:Z

    goto/16 :goto_4

    .line 1264
    :cond_4
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$3;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    sget v9, Lcom/payu/custombrowser/R$string;->cb_pwd_btn:I

    invoke-virtual {v6, v9}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1265
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1266
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    invoke-static {v2}, Lcom/payu/custombrowser/Bank;->d(Lcom/payu/custombrowser/Bank;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1267
    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 1269
    :cond_5
    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1270
    :goto_2
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_6

    .line 1272
    :try_start_2
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    iget-object v2, v2, Lcom/payu/custombrowser/Bank;->r:Landroid/webkit/WebView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "javascript:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    iget-object v5, v5, Lcom/payu/custombrowser/Bank;->i:Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    sget v9, Lcom/payu/custombrowser/R$string;->cb_toggle_field:I

    invoke-virtual {v6, v9}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1275
    goto :goto_3

    .line 1273
    :catch_0
    move-exception v2

    .line 1274
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1277
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    sget v4, Lcom/payu/custombrowser/R$string;->cb_show_password:I

    invoke-virtual {v2, v4}, Lcom/payu/custombrowser/Bank;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1278
    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1279
    new-instance v2, Lcom/payu/custombrowser/Bank$3$3;

    invoke-direct {v2, p0, v3}, Lcom/payu/custombrowser/Bank$3$3;-><init>(Lcom/payu/custombrowser/Bank$3;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1302
    new-instance v2, Lcom/payu/custombrowser/Bank$3$4;

    invoke-direct {v2, p0}, Lcom/payu/custombrowser/Bank$3$4;-><init>(Lcom/payu/custombrowser/Bank$3;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1313
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    iput-boolean v8, v1, Lcom/payu/custombrowser/Bank;->p:Z

    .line 1314
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1315
    iget-object v1, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    iget-object v1, v1, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 1319
    :cond_7
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    invoke-virtual {v0}, Lcom/payu/custombrowser/Bank;->onHelpUnavailable()V

    .line 1320
    iget-object v0, p0, Lcom/payu/custombrowser/Bank$3;->c:Lcom/payu/custombrowser/Bank;

    iget-object v0, v0, Lcom/payu/custombrowser/Bank;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1325
    :cond_8
    :goto_4
    goto :goto_5

    .line 1323
    :catch_1
    move-exception v0

    .line 1324
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1326
    :goto_5
    return-void
.end method
