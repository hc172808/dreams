.class public Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowStyle"
.end annotation


# instance fields
.field rowHeigh:Ljava/lang/Float;

.field stickyWidth:Ljava/lang/Float;

.field textColor:Ljava/lang/Integer;

.field textSize:Ljava/lang/Float;

.field textStyle:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "rHeight"    # Ljava/lang/Float;
    .param p2, "sWidth"    # Ljava/lang/Float;
    .param p3, "tColor"    # Ljava/lang/Integer;
    .param p4, "tSize"    # Ljava/lang/Float;
    .param p5, "tStyle"    # Ljava/lang/Integer;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->rowHeigh:Ljava/lang/Float;

    .line 126
    iput-object p2, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->stickyWidth:Ljava/lang/Float;

    .line 127
    iput-object p3, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->textColor:Ljava/lang/Integer;

    .line 128
    iput-object p4, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->textSize:Ljava/lang/Float;

    .line 129
    iput-object p5, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->textStyle:Ljava/lang/Integer;

    .line 130
    return-void
.end method


# virtual methods
.method public getRowHeigh()Ljava/lang/Float;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->rowHeigh:Ljava/lang/Float;

    return-object v0
.end method

.method public getStickyWidth()Ljava/lang/Float;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->stickyWidth:Ljava/lang/Float;

    return-object v0
.end method

.method public getTextColor()Ljava/lang/Integer;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->textColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTextSize()Ljava/lang/Float;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->textSize:Ljava/lang/Float;

    return-object v0
.end method

.method public getTextStyle()Ljava/lang/Integer;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->textStyle:Ljava/lang/Integer;

    return-object v0
.end method

.method public setRowHeigh(Ljava/lang/Float;)V
    .locals 0
    .param p1, "rowHeigh"    # Ljava/lang/Float;

    .line 145
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->rowHeigh:Ljava/lang/Float;

    .line 146
    return-void
.end method

.method public setStickyWidth(Ljava/lang/Float;)V
    .locals 0
    .param p1, "stickyWidth"    # Ljava/lang/Float;

    .line 137
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->stickyWidth:Ljava/lang/Float;

    .line 138
    return-void
.end method

.method public setTextColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "textColor"    # Ljava/lang/Integer;

    .line 153
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->textColor:Ljava/lang/Integer;

    .line 154
    return-void
.end method

.method public setTextSize(Ljava/lang/Float;)V
    .locals 0
    .param p1, "textSize"    # Ljava/lang/Float;

    .line 161
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->textSize:Ljava/lang/Float;

    .line 162
    return-void
.end method

.method public setTextStyle(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "textStyle"    # Ljava/lang/Integer;

    .line 169
    iput-object p1, p0, Lcom/payumoney/sdkui/ui/adapters/IndexHeaderAdapter$RowStyle;->textStyle:Ljava/lang/Integer;

    .line 170
    return-void
.end method
