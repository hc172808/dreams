.class Leasypay/actions/PasswordHelper$2;
.super Ljava/lang/Object;
.source "PasswordHelper.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leasypay/actions/PasswordHelper;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Leasypay/actions/EasypayBrowserFragment;Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leasypay/actions/PasswordHelper;


# direct methods
.method constructor <init>(Leasypay/actions/PasswordHelper;)V
    .locals 0
    .param p1, "this$0"    # Leasypay/actions/PasswordHelper;

    .line 86
    iput-object p1, p0, Leasypay/actions/PasswordHelper$2;->this$0:Leasypay/actions/PasswordHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Editable;

    .line 98
    const-string v0, ""

    .line 99
    .local v0, "input":Ljava/lang/String;
    iget-object v1, p0, Leasypay/actions/PasswordHelper$2;->this$0:Leasypay/actions/PasswordHelper;

    invoke-static {v1, v0}, Leasypay/actions/PasswordHelper;->access$302(Leasypay/actions/PasswordHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Leasypay/actions/PasswordHelper$2;->this$0:Leasypay/actions/PasswordHelper;

    invoke-static {v2}, Leasypay/actions/PasswordHelper;->access$400(Leasypay/actions/PasswordHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "if(fields.length){fields[0].value=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\';};"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "filler":Ljava/lang/String;
    const-string v2, "javascript:"

    .line 102
    .local v2, "javascript":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Leasypay/actions/PasswordHelper$2;->this$0:Leasypay/actions/PasswordHelper;

    invoke-static {v4}, Leasypay/actions/PasswordHelper;->access$000(Leasypay/actions/PasswordHelper;)Ljava/util/Map;

    move-result-object v4

    const-string v5, "functionStart"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Leasypay/actions/PasswordHelper$2;->this$0:Leasypay/actions/PasswordHelper;

    invoke-static {v4}, Leasypay/actions/PasswordHelper;->access$000(Leasypay/actions/PasswordHelper;)Ljava/util/Map;

    move-result-object v4

    const-string v5, "functionEnd"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    iget-object v3, p0, Leasypay/actions/PasswordHelper$2;->this$0:Leasypay/actions/PasswordHelper;

    invoke-static {v3}, Leasypay/actions/PasswordHelper;->access$500(Leasypay/actions/PasswordHelper;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 108
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 109
    return-void
.end method
