.class public final synthetic Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$MessageAdapter$6KXhUYbpUXq7yWOgpo_GT8-hf14;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;

.field public final synthetic f$1:Lcom/definiteautomation/dreamludofantacy/model/Messages;


# direct methods
.method public synthetic constructor <init>(Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;Lcom/definiteautomation/dreamludofantacy/model/Messages;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$MessageAdapter$6KXhUYbpUXq7yWOgpo_GT8-hf14;->f$0:Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;

    iput-object p2, p0, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$MessageAdapter$6KXhUYbpUXq7yWOgpo_GT8-hf14;->f$1:Lcom/definiteautomation/dreamludofantacy/model/Messages;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$MessageAdapter$6KXhUYbpUXq7yWOgpo_GT8-hf14;->f$0:Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;

    iget-object v1, p0, Lcom/definiteautomation/dreamludofantacy/adapter/-$$Lambda$MessageAdapter$6KXhUYbpUXq7yWOgpo_GT8-hf14;->f$1:Lcom/definiteautomation/dreamludofantacy/model/Messages;

    invoke-virtual {v0, v1, p1}, Lcom/definiteautomation/dreamludofantacy/adapter/MessageAdapter;->lambda$onBindViewHolder$2$MessageAdapter(Lcom/definiteautomation/dreamludofantacy/model/Messages;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
