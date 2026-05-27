.class Leasypay/actions/NBHelper$2;
.super Ljava/lang/Object;
.source "NBHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/NBHelper;->fetchUserId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/actions/NBHelper;


# direct methods
.method constructor <init>(Leasypay/actions/NBHelper;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/actions/NBHelper;

    .line 230
    iput-object p1, p0, Leasypay/actions/NBHelper$2;->this$0:Leasypay/actions/NBHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 233
    new-instance v0, Leasypay/utils/EasyPaySecureSharedPref;

    iget-object v1, p0, Leasypay/actions/NBHelper$2;->this$0:Leasypay/actions/NBHelper;

    invoke-static {v1}, Leasypay/actions/NBHelper;->access$400(Leasypay/actions/NBHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "PaytmAsist"

    invoke-direct {v0, v1, v2}, Leasypay/utils/EasyPaySecureSharedPref;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 234
    .local v0, "easyPaySecureSharedPref":Leasypay/utils/EasyPaySecureSharedPref;
    const-string v1, "USER_ID_NET_BANK_KEY"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Leasypay/utils/EasyPaySecureSharedPref;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "storedHashMapString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside fetch USerID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    :try_start_0
    new-instance v2, Leasypay/actions/NBHelper$2$1;

    invoke-direct {v2, p0}, Leasypay/actions/NBHelper$2$1;-><init>(Leasypay/actions/NBHelper$2;)V

    .line 238
    invoke-virtual {v2}, Leasypay/actions/NBHelper$2$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 239
    .local v2, "type":Ljava/lang/reflect/Type;
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 240
    .local v4, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v4, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 242
    .local v5, "mUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz v5, :cond_1

    .line 243
    invoke-static {v3, p0}, Leasypay/utils/AssistLogs;->printLog(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    iget-object v3, p0, Leasypay/actions/NBHelper$2;->this$0:Leasypay/actions/NBHelper;

    invoke-static {v3}, Leasypay/actions/NBHelper;->access$500(Leasypay/actions/NBHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 245
    .local v3, "mUIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 246
    iget-object v6, p0, Leasypay/actions/NBHelper$2;->this$0:Leasypay/actions/NBHelper;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Leasypay/actions/NBHelper;->access$602(Leasypay/actions/NBHelper;I)I

    .line 247
    iget-object v6, p0, Leasypay/actions/NBHelper$2;->this$0:Leasypay/actions/NBHelper;

    invoke-static {v6}, Leasypay/actions/NBHelper;->access$600(Leasypay/actions/NBHelper;)I

    move-result v6

    if-lez v6, :cond_1

    .line 248
    iget-object v6, p0, Leasypay/actions/NBHelper$2;->this$0:Leasypay/actions/NBHelper;

    invoke-static {v6}, Leasypay/actions/NBHelper;->access$600(Leasypay/actions/NBHelper;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 249
    .local v6, "mCurrentUserId":Ljava/lang/String;
    iget-object v7, p0, Leasypay/actions/NBHelper$2;->this$0:Leasypay/actions/NBHelper;

    invoke-static {v7}, Leasypay/actions/NBHelper;->access$400(Leasypay/actions/NBHelper;)Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Leasypay/actions/NBHelper$2;->this$0:Leasypay/actions/NBHelper;

    invoke-static {v7}, Leasypay/actions/NBHelper;->access$400(Leasypay/actions/NBHelper;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_0

    .line 250
    iget-object v7, p0, Leasypay/actions/NBHelper$2;->this$0:Leasypay/actions/NBHelper;

    invoke-static {v7}, Leasypay/actions/NBHelper;->access$400(Leasypay/actions/NBHelper;)Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Leasypay/actions/NBHelper$2$2;

    invoke-direct {v8, p0, v6, v3}, Leasypay/actions/NBHelper$2$2;-><init>(Leasypay/actions/NBHelper$2;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 266
    :cond_0
    iget-object v7, p0, Leasypay/actions/NBHelper$2;->this$0:Leasypay/actions/NBHelper;

    invoke-static {v7}, Leasypay/actions/NBHelper;->access$400(Leasypay/actions/NBHelper;)Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Leasypay/actions/NBHelper$2;->this$0:Leasypay/actions/NBHelper;

    invoke-static {v7}, Leasypay/actions/NBHelper;->access$400(Leasypay/actions/NBHelper;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_1

    .line 267
    iget-object v7, p0, Leasypay/actions/NBHelper$2;->this$0:Leasypay/actions/NBHelper;

    invoke-static {v7}, Leasypay/actions/NBHelper;->access$400(Leasypay/actions/NBHelper;)Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Leasypay/actions/NBHelper$2$3;

    invoke-direct {v8, p0, v3}, Leasypay/actions/NBHelper$2$3;-><init>(Leasypay/actions/NBHelper$2;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v2    # "type":Ljava/lang/reflect/Type;
    .end local v3    # "mUIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "gson":Lcom/google/gson/Gson;
    .end local v5    # "mUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v6    # "mCurrentUserId":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 280
    :catch_0
    move-exception v2

    .line 281
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 285
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
