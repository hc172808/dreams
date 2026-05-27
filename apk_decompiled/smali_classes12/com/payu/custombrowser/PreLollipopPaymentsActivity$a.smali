.class Lcom/payu/custombrowser/PreLollipopPaymentsActivity$a;
.super Lcom/payu/custombrowser/util/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payu/custombrowser/PreLollipopPaymentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;


# direct methods
.method constructor <init>(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$a;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    .line 178
    const/16 p1, 0x1f90

    invoke-direct {p0, p1}, Lcom/payu/custombrowser/util/g;-><init>(I)V

    .line 179
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/payu/custombrowser/util/g$j;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/payu/custombrowser/util/g$k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/payu/custombrowser/util/g$j;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/payu/custombrowser/util/g$k;"
        }
    .end annotation

    .line 186
    nop

    .line 187
    const-string p2, "/htmldata"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$a;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    invoke-static {p1}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->a(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$a;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    invoke-static {p1}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->c(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$a;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    invoke-static {p1}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->f(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "<html><head><link rel=\"icon\" type=\"image/png\" href=\"data:image/png;base64,iVBORw0KGgo=\"></head><body> <SCRIPT TYPE=\"text/JavaScript\">var f = document.createElement(\"form\");\nf.setAttribute(\'method\',\"post\");\nf.setAttribute(\'name\',\"dynamic\");\nf.setAttribute(\'action\',\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$a;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    .line 197
    invoke-static {p2}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->c(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\");\nvar json = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/payu/custombrowser/PreLollipopPaymentsActivity$a;->a:Lcom/payu/custombrowser/PreLollipopPaymentsActivity;

    .line 199
    invoke-static {p2}, Lcom/payu/custombrowser/PreLollipopPaymentsActivity;->f(Lcom/payu/custombrowser/PreLollipopPaymentsActivity;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";var objVal = Object.keys(json);for(var count=0 ; count<objVal.length;count++){var i = document.createElement(\"input\");i.setAttribute(\'type\',\"hidden\");i.name = objVal[count];i.value = json[objVal[count]];f.appendChild(i);}var button = document.createElement(\"input\");button.setAttribute(\'type\',\"submit\");button.setAttribute(\'style\',\"display: none;\");f.appendChild(button);document.getElementsByTagName(\'body\')[0].appendChild(f);</SCRIPT><SCRIPT TYPE=\"text/JavaScript\">document.forms[\"dynamic\"].submit();</SCRIPT></body></html>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 217
    :cond_1
    const/4 p1, 0x0

    :goto_0
    new-instance p2, Lcom/payu/custombrowser/util/g$k;

    invoke-direct {p2, p1}, Lcom/payu/custombrowser/util/g$k;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
