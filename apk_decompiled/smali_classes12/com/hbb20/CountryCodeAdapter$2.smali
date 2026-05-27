.class Lcom/hbb20/CountryCodeAdapter$2;
.super Ljava/lang/Object;
.source "CountryCodeAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hbb20/CountryCodeAdapter;->setTextWatcher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hbb20/CountryCodeAdapter;


# direct methods
.method constructor <init>(Lcom/hbb20/CountryCodeAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/hbb20/CountryCodeAdapter;

    .line 78
    iput-object p1, p0, Lcom/hbb20/CountryCodeAdapter$2;->this$0:Lcom/hbb20/CountryCodeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 82
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 86
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 90
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter$2;->this$0:Lcom/hbb20/CountryCodeAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hbb20/CountryCodeAdapter;->access$000(Lcom/hbb20/CountryCodeAdapter;Ljava/lang/String;)V

    .line 91
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter$2;->this$0:Lcom/hbb20/CountryCodeAdapter;

    iget-object v0, v0, Lcom/hbb20/CountryCodeAdapter;->imgClearQuery:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodeAdapter$2;->this$0:Lcom/hbb20/CountryCodeAdapter;

    iget-object v0, v0, Lcom/hbb20/CountryCodeAdapter;->imgClearQuery:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    :goto_0
    return-void
.end method
