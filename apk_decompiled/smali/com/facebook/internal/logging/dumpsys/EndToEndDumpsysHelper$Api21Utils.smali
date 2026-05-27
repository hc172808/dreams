.class final Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Api21Utils;
.super Ljava/lang/Object;
.source "EndToEndDumpsysHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api21Utils"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Api21Utils;",
        "",
        "()V",
        "keyedTagsField",
        "Ljava/lang/reflect/Field;",
        "getTags",
        "Lorg/json/JSONObject;",
        "view",
        "Landroid/view/View;",
        "writeExtraProps",
        "",
        "writer",
        "Ljava/io/PrintWriter;",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Api21Utils;

.field private static keyedTagsField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 170
    new-instance v0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Api21Utils;

    invoke-direct {v0}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Api21Utils;-><init>()V

    sput-object v0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Api21Utils;->INSTANCE:Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Api21Utils;

    .line 261
    nop

    .line 262
    nop

    .line 263
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mKeyedTags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Api21Utils;->keyedTagsField:Ljava/lang/reflect/Field;

    .line 264
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 267
    :cond_0
    :goto_0
    nop

    .line 268
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getTags(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 234
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    .line 235
    .local v1, "tags":Lorg/json/JSONObject;
    nop

    .line 236
    :try_start_0
    sget-object v2, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Api21Utils;->keyedTagsField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_0

    .line 237
    const-class v2, Landroid/view/View;

    const-string v3, "mKeyedTags"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Api21Utils;->keyedTagsField:Ljava/lang/reflect/Field;

    .line 238
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 240
    :cond_0
    sget-object v2, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Api21Utils;->keyedTagsField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    check-cast v0, Landroid/util/SparseArray;

    .line 241
    .local v0, "keyedTags":Landroid/util/SparseArray;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 242
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v2

    .line 243
    const/4 v2, 0x0

    .line 244
    .local v2, "i":I
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 245
    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/facebook/internal/logging/dumpsys/ResourcesUtil;->getIdStringQuietly(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 247
    .local v4, "id":Ljava/lang/String;
    nop

    .line 248
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 249
    :catch_0
    move-exception v5

    .line 251
    :goto_1
    nop

    .line 252
    nop

    .end local v4    # "id":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 245
    goto :goto_0

    .line 240
    .end local v0    # "keyedTags":Landroid/util/SparseArray;
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type android.util.SparseArray<*>"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v1    # "tags":Lorg/json/JSONObject;
    .end local p1    # "view":Landroid/view/View;
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 255
    .restart local v1    # "tags":Lorg/json/JSONObject;
    .restart local p1    # "view":Landroid/view/View;
    :catch_1
    move-exception v0

    .line 257
    :cond_3
    nop

    .line 258
    return-object v1
.end method


# virtual methods
.method public final writeExtraProps(Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 10
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "view"    # Landroid/view/View;

    const-string/jumbo v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 174
    return-void

    .line 176
    :cond_0
    sget-object v0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->Companion:Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;

    invoke-static {v0, p2}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;->access$createNodeInfoFromView(Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 177
    .local v0, "nodeInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 178
    .local v1, "props":Lorg/json/JSONObject;
    nop

    .line 179
    const/16 v2, 0x32

    :try_start_0
    instance-of v3, p2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 180
    const-string/jumbo v3, "textColor"

    move-object v4, p2

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    const-string/jumbo v5, "view.textColors"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 181
    const-string/jumbo v3, "textSize"

    move-object v4, p2

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 182
    const-string v3, "hint"

    sget-object v4, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->Companion:Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;

    move-object v5, p2

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v5

    const/16 v6, 0x64

    invoke-static {v4, v5, v6}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;->access$fixString(Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    :cond_1
    invoke-direct {p0, p2}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Api21Utils;->getTags(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 185
    .local v3, "tags":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 186
    const-string v4, "keyedTags"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    :cond_2
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 189
    .local v4, "actions":Lorg/json/JSONArray;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 190
    .local v6, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    const-string v7, "action"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_4

    check-cast v7, Ljava/lang/String;

    .line 191
    .local v7, "actionLabel":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 192
    sget-object v8, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->Companion:Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;

    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v8, v9, v2}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;->access$fixString(Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 190
    .end local v7    # "actionLabel":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v7, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v5, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "nodeInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v1    # "props":Lorg/json/JSONObject;
    .end local p1    # "writer":Ljava/io/PrintWriter;
    .end local p2    # "view":Landroid/view/View;
    throw v5

    .line 195
    .end local v6    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .restart local v0    # "nodeInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local v1    # "props":Lorg/json/JSONObject;
    .restart local p1    # "writer":Ljava/io/PrintWriter;
    .restart local p2    # "view":Landroid/view/View;
    :cond_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_6

    .line 196
    const-string v5, "actions"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    :cond_6
    sget-object v5, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->Companion:Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;->access$fixString(Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, "cd":Ljava/lang/String;
    if-eqz v5, :cond_8

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_7

    const/4 v6, 0x1

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_8

    .line 200
    const-string v6, "content-description"

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    :cond_8
    nop

    .line 219
    nop

    .line 202
    nop

    .line 218
    nop

    .line 202
    nop

    .line 217
    nop

    .line 202
    nop

    .line 216
    nop

    .line 202
    nop

    .line 215
    nop

    .line 202
    nop

    .line 214
    nop

    .line 202
    nop

    .line 213
    nop

    .line 202
    nop

    .line 212
    nop

    .line 202
    nop

    .line 211
    nop

    .line 202
    nop

    .line 210
    nop

    .line 202
    nop

    .line 209
    nop

    .line 202
    nop

    .line 208
    nop

    .line 202
    nop

    .line 207
    nop

    .line 202
    nop

    .line 206
    nop

    .line 202
    nop

    .line 205
    nop

    .line 202
    nop

    .line 204
    nop

    .line 202
    nop

    .line 203
    nop

    .line 202
    nop

    .line 203
    const-string v6, "accessibility-focused"

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    .line 204
    const-string v7, "checkable"

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    .line 205
    const-string v7, "checked"

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    .line 206
    const-string v7, "class-name"

    sget-object v8, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->Companion:Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v8, v9, v2}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;->access$fixString(Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 207
    const-string v7, "clickable"

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    .line 208
    const-string v7, "content-invalid"

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContentInvalid()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    .line 209
    const-string v7, "dismissable"

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDismissable()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    .line 210
    const-string v7, "editable"

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    .line 211
    const-string v7, "enabled"

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    .line 212
    const-string v7, "focusable"

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    .line 213
    const-string v7, "focused"

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    .line 214
    const-string v7, "long-clickable"

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    .line 215
    const-string v7, "multiline"

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isMultiLine()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    .line 216
    const-string v7, "password"

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    .line 217
    const-string v7, "scrollable"

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    .line 218
    const-string v7, "selected"

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    .line 219
    const-string/jumbo v7, "visible-to-user"

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 220
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_9

    .line 221
    sget-object v6, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Api24Utils;->INSTANCE:Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Api24Utils;

    invoke-virtual {v6, v1, v0}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Api24Utils;->addExtraProps(Lorg/json/JSONObject;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "tags":Lorg/json/JSONObject;
    .end local v4    # "actions":Lorg/json/JSONArray;
    .end local v5    # "cd":Ljava/lang/String;
    goto :goto_2

    .line 223
    :catch_0
    move-exception v3

    .line 224
    .local v3, "e":Ljava/lang/Exception;
    nop

    .line 225
    :try_start_1
    const-string v4, "DUMP-ERROR"

    sget-object v5, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->Companion:Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v5, v6, v2}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;->access$fixString(Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 226
    :catch_1
    move-exception v2

    .line 228
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_2
    nop

    .line 229
    nop

    .line 230
    const-string v2, " props=\""

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "\""

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 231
    return-void

    .line 176
    .end local v0    # "nodeInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v1    # "props":Lorg/json/JSONObject;
    :cond_a
    return-void
.end method
