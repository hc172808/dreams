.class public final synthetic Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$MessageAdapter$FuBOEHpA_nzcWQOxh98N8lMqsuw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;

.field public final synthetic f$1:Lcom/definiteautomation/dreamludofantacy/model/Messages;


# direct methods
.method public synthetic constructor <init>(Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;Lcom/definiteautomation/dreamludofantacy/model/Messages;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$MessageAdapter$FuBOEHpA_nzcWQOxh98N8lMqsuw;->f$0:Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;

    iput-object p2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$MessageAdapter$FuBOEHpA_nzcWQOxh98N8lMqsuw;->f$1:Lcom/definiteautomation/dreamludofantacy/model/Messages;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$MessageAdapter$FuBOEHpA_nzcWQOxh98N8lMqsuw;->f$0:Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$MessageAdapter$FuBOEHpA_nzcWQOxh98N8lMqsuw;->f$1:Lcom/definiteautomation/dreamludofantacy/model/Messages;

    invoke-virtual {v0, v1, p1}, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;->lambda$onBindViewHolder$1$MessageAdapter(Lcom/definiteautomation/dreamludofantacy/model/Messages;Landroid/view/View;)V

    return-void
.end method
