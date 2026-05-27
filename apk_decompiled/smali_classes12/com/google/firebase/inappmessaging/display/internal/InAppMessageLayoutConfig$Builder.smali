.class public Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;
.super Ljava/lang/Object;
.source "InAppMessageLayoutConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final config:Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->config:Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    .line 122
    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->config:Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    return-object v0
.end method

.method public setAnimate(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;
    .locals 1
    .param p1, "animate"    # Ljava/lang/Boolean;

    .line 180
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->config:Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->access$1102(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 181
    return-object p0
.end method

.method public setAutoDismiss(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;
    .locals 1
    .param p1, "autoDismiss"    # Ljava/lang/Boolean;

    .line 185
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->config:Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->access$1202(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 186
    return-object p0
.end method

.method public setBackgroundEnabled(Ljava/lang/Boolean;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;
    .locals 1
    .param p1, "backgroundEnabled"    # Ljava/lang/Boolean;

    .line 175
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->config:Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->access$1002(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 176
    return-object p0
.end method

.method public setMaxBodyHeightWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;
    .locals 1
    .param p1, "maxBodyHeightWeight"    # Ljava/lang/Float;

    .line 135
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->config:Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->access$202(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Ljava/lang/Float;)Ljava/lang/Float;

    .line 136
    return-object p0
.end method

.method public setMaxBodyWidthWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;
    .locals 1
    .param p1, "maxBodyWidthWeight"    # Ljava/lang/Float;

    .line 140
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->config:Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->access$302(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Ljava/lang/Float;)Ljava/lang/Float;

    .line 141
    return-object p0
.end method

.method public setMaxDialogHeightPx(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;
    .locals 1
    .param p1, "maxDialogHeightPx"    # Ljava/lang/Integer;

    .line 145
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->config:Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->access$402(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 146
    return-object p0
.end method

.method public setMaxDialogWidthPx(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;
    .locals 1
    .param p1, "maxDialogWidthPx"    # Ljava/lang/Integer;

    .line 150
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->config:Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->access$502(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 151
    return-object p0
.end method

.method public setMaxImageHeightWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;
    .locals 1
    .param p1, "maxImageHeightWeight"    # Ljava/lang/Float;

    .line 125
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->config:Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->access$002(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Ljava/lang/Float;)Ljava/lang/Float;

    .line 126
    return-object p0
.end method

.method public setMaxImageWidthWeight(Ljava/lang/Float;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;
    .locals 1
    .param p1, "maxImageWidthWeight"    # Ljava/lang/Float;

    .line 130
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->config:Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->access$102(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Ljava/lang/Float;)Ljava/lang/Float;

    .line 131
    return-object p0
.end method

.method public setViewWindowGravity(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;
    .locals 1
    .param p1, "viewWindowGravity"    # Ljava/lang/Integer;

    .line 155
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->config:Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->access$602(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 156
    return-object p0
.end method

.method public setWindowFlag(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;
    .locals 1
    .param p1, "windowFlag"    # Ljava/lang/Integer;

    .line 160
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->config:Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->access$702(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 161
    return-object p0
.end method

.method public setWindowHeight(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;
    .locals 1
    .param p1, "windowHeight"    # Ljava/lang/Integer;

    .line 170
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->config:Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->access$902(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 171
    return-object p0
.end method

.method public setWindowWidth(Ljava/lang/Integer;)Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;
    .locals 1
    .param p1, "windowWidth"    # Ljava/lang/Integer;

    .line 165
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig$Builder;->config:Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;

    invoke-static {v0, p1}, Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;->access$802(Lcom/google/firebase/inappmessaging/display/internal/InAppMessageLayoutConfig;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 166
    return-object p0
.end method
