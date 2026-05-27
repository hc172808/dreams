.class public final Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;
.super Ljava/lang/Object;
.source "EndToEndDumpsysHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Api21Utils;,
        Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Api24Utils;,
        Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u001d2\u00020\u0001:\u0003\u001b\u001c\u001dB\u0005\u00a2\u0006\u0002\u0010\u0002JB\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J+\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0018H\u0002\u00a2\u0006\u0002\u0010\u0019J(\u0010\u001a\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;",
        "",
        "()V",
        "lithoViewToStringMethod",
        "Ljava/lang/reflect/Method;",
        "rootResolver",
        "Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver;",
        "webViewDumpHelper",
        "Lcom/facebook/internal/logging/dumpsys/WebViewDumpHelper;",
        "dumpViewHierarchy",
        "",
        "prefix",
        "",
        "writer",
        "Ljava/io/PrintWriter;",
        "view",
        "Landroid/view/View;",
        "leftOffset",
        "",
        "topOffset",
        "withWebView",
        "",
        "withProps",
        "args",
        "",
        "(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V",
        "writeLithoViewSubHierarchy",
        "Api21Utils",
        "Api24Utils",
        "Companion",
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
.field private static final ALL_ROOTS_ARGUMENT:Ljava/lang/String; = "all-roots"

.field public static final Companion:Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;

.field private static final E2E_ARGUMENT:Ljava/lang/String; = "e2e"

.field private static final LITHO_VIEW_CLASS:Ljava/lang/String; = "com.facebook.litho.LithoView"

.field private static final LITHO_VIEW_TEST_HELPER_CLASS:Ljava/lang/String; = "com.facebook.litho.LithoViewTestHelper"

.field private static final LITHO_VIEW_TO_STRING_METHOD:Ljava/lang/String; = "viewToStringForE2E"

.field private static final RC_TEXT_VIEW_SIMPLE_CLASS_NAME:Ljava/lang/String; = "RCTextView"

.field private static final TOP_ROOT_ARGUMENT:Ljava/lang/String; = "top-root"

.field private static final WITH_PROPS_ARGUMENT:Ljava/lang/String; = "props"

.field private static final WITH_WEBVIEW_ARGUMENT:Ljava/lang/String; = "webview"

.field private static instance:Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;

.field private static rcTextViewGetTextMethod:Ljava/lang/reflect/Method;


# instance fields
.field private lithoViewToStringMethod:Ljava/lang/reflect/Method;

.field private final rootResolver:Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver;

.field private final webViewDumpHelper:Lcom/facebook/internal/logging/dumpsys/WebViewDumpHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->Companion:Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver;

    invoke-direct {v0}, Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->rootResolver:Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver;

    .line 45
    new-instance v0, Lcom/facebook/internal/logging/dumpsys/WebViewDumpHelper;

    invoke-direct {v0}, Lcom/facebook/internal/logging/dumpsys/WebViewDumpHelper;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->webViewDumpHelper:Lcom/facebook/internal/logging/dumpsys/WebViewDumpHelper;

    return-void
.end method

.method public static final synthetic access$dumpViewHierarchy(Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;
    .locals 1

    .line 43
    sget-object v0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->instance:Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;

    return-object v0
.end method

.method public static final synthetic access$getRcTextViewGetTextMethod$cp()Ljava/lang/reflect/Method;
    .locals 1

    .line 43
    sget-object v0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->rcTextViewGetTextMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;

    .line 43
    sput-object p0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->instance:Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;

    return-void
.end method

.method public static final synthetic access$setRcTextViewGetTextMethod$cp(Ljava/lang/reflect/Method;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/lang/reflect/Method;

    .line 43
    sput-object p0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->rcTextViewGetTextMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private final dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;IIZZ)V
    .locals 20
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "leftOffset"    # I
    .param p5, "topOffset"    # I
    .param p6, "withWebView"    # Z
    .param p7, "withProps"    # Z

    .line 99
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p7

    move-object/from16 v0, p1

    .line 100
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    if-nez v10, :cond_0

    .line 102
    const-string v1, "null"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    return-void

    .line 105
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    const-string/jumbo v1, "{"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    sget-object v1, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->Companion:Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;

    invoke-static {v1, v9, v10}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;->access$writeViewFlags(Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 109
    move/from16 v12, p4

    move/from16 v13, p5

    invoke-static {v1, v9, v10, v12, v13}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;->access$writeViewBounds(Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;Ljava/io/PrintWriter;Landroid/view/View;II)V

    .line 110
    invoke-static {v1, v9, v10}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;->access$writeViewTestId(Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 111
    invoke-static {v1, v9, v10}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;->access$writeViewText(Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 112
    if-eqz v11, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 113
    sget-object v2, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Api21Utils;->INSTANCE:Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Api21Utils;

    invoke-virtual {v2, v9, v10}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Api21Utils;->writeExtraProps(Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 115
    :cond_1
    const-string/jumbo v2, "}"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    invoke-static {v1, v10}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;->access$isExtendsLithoView(Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    invoke-direct {v8, v9, v10, v0, v11}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->writeLithoViewSubHierarchy(Ljava/io/PrintWriter;Landroid/view/View;Ljava/lang/String;Z)V

    .line 119
    :cond_2
    if-eqz p6, :cond_3

    instance-of v1, v10, Landroid/webkit/WebView;

    if-eqz v1, :cond_3

    .line 120
    iget-object v1, v8, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->webViewDumpHelper:Lcom/facebook/internal/logging/dumpsys/WebViewDumpHelper;

    move-object v2, v10

    check-cast v2, Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lcom/facebook/internal/logging/dumpsys/WebViewDumpHelper;->handle(Landroid/webkit/WebView;)V

    .line 122
    :cond_3
    instance-of v1, v10, Landroid/view/ViewGroup;

    if-nez v1, :cond_4

    .line 123
    return-void

    .line 125
    :cond_4
    move-object v1, v10

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    .line 126
    .local v14, "n":I
    if-gtz v14, :cond_5

    .line 127
    return-void

    .line 129
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 130
    .end local v0    # "prefix":Ljava/lang/String;
    .local v15, "prefix":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 131
    .local v7, "location":[I
    invoke-virtual {v10, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 132
    const/16 v16, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v14, :cond_6

    move v6, v0

    .line 133
    .local v6, "i":I
    nop

    .line 134
    move-object v0, v10

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aget v4, v7, v16

    const/16 v17, 0x1

    aget v5, v7, v17

    .line 133
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p2

    move/from16 v18, v6

    .end local v6    # "i":I
    .local v18, "i":I
    move/from16 v6, p6

    move-object/from16 v19, v7

    .end local v7    # "location":[I
    .local v19, "location":[I
    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;IIZZ)V

    .line 132
    nop

    .end local v18    # "i":I
    add-int/lit8 v0, v18, 0x1

    move-object/from16 v7, v19

    goto :goto_0

    .line 136
    .end local v19    # "location":[I
    .restart local v7    # "location":[I
    :cond_6
    return-void
.end method

.method private final dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 20
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 48
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual {v11, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 49
    const-string v0, "Top Level Window View Hierarchy:"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->Companion:Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;

    const-string v1, "all-roots"

    invoke-static {v0, v12, v1}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;->access$hasArgument(Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 51
    .local v13, "dumpAllRoots":Z
    const-string/jumbo v1, "top-root"

    invoke-static {v0, v12, v1}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;->access$hasArgument(Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 52
    .local v14, "dumpTopRootOnly":Z
    const-string/jumbo v1, "webview"

    invoke-static {v0, v12, v1}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;->access$hasArgument(Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 53
    .local v15, "withWebView":Z
    const-string v1, "props"

    invoke-static {v0, v12, v1}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;->access$hasArgument(Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    .line 54
    .local v16, "withProps":Z
    nop

    .line 55
    :try_start_0
    iget-object v0, v9, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->rootResolver:Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver;

    invoke-virtual {v0}, Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver;->listActiveRoots()Ljava/util/List;

    move-result-object v0

    .line 56
    .local v0, "roots":Ljava/util/List;
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 60
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 64
    const/4 v1, 0x0

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 65
    .local v1, "prevRootParam":Landroid/view/WindowManager$LayoutParams;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object v8, v1

    .end local v1    # "prevRootParam":Landroid/view/WindowManager$LayoutParams;
    .local v8, "prevRootParam":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver$Root;

    move-object/from16 v18, v1

    .line 66
    .local v18, "root":Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver$Root;
    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver$Root;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v19, v8

    goto :goto_1

    .line 70
    :cond_1
    nop

    .line 71
    nop

    .line 72
    if-nez v13, :cond_2

    if-eqz v8, :cond_2

    invoke-virtual/range {v18 .. v18}, Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver$Root;->getParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 74
    move-object/from16 v19, v8

    goto :goto_2

    .line 76
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver$Root;->getView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move v7, v15

    move-object/from16 v19, v8

    .end local v8    # "prevRootParam":Landroid/view/WindowManager$LayoutParams;
    .local v19, "prevRootParam":Landroid/view/WindowManager$LayoutParams;
    move/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;IIZZ)V

    .line 77
    invoke-virtual/range {v18 .. v18}, Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver$Root;->getParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    move-object v8, v1

    .line 78
    .end local v19    # "prevRootParam":Landroid/view/WindowManager$LayoutParams;
    .restart local v8    # "prevRootParam":Landroid/view/WindowManager$LayoutParams;
    if-eqz v14, :cond_4

    .line 79
    goto :goto_3

    .line 66
    :cond_3
    move-object/from16 v19, v8

    .line 67
    .end local v8    # "prevRootParam":Landroid/view/WindowManager$LayoutParams;
    .restart local v19    # "prevRootParam":Landroid/view/WindowManager$LayoutParams;
    :goto_1
    move-object/from16 v8, v19

    .line 65
    .end local v18    # "root":Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver$Root;
    .end local v19    # "prevRootParam":Landroid/view/WindowManager$LayoutParams;
    .restart local v8    # "prevRootParam":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    goto :goto_0

    :cond_5
    move-object/from16 v19, v8

    .line 84
    .end local v8    # "prevRootParam":Landroid/view/WindowManager$LayoutParams;
    .restart local v19    # "prevRootParam":Landroid/view/WindowManager$LayoutParams;
    :goto_2
    move-object/from16 v8, v19

    .end local v19    # "prevRootParam":Landroid/view/WindowManager$LayoutParams;
    .restart local v8    # "prevRootParam":Landroid/view/WindowManager$LayoutParams;
    :goto_3
    iget-object v1, v9, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->webViewDumpHelper:Lcom/facebook/internal/logging/dumpsys/WebViewDumpHelper;

    invoke-virtual {v1, v11}, Lcom/facebook/internal/logging/dumpsys/WebViewDumpHelper;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "roots":Ljava/util/List;
    .end local v8    # "prevRootParam":Landroid/view/WindowManager$LayoutParams;
    goto :goto_5

    .line 58
    .restart local v0    # "roots":Ljava/util/List;
    :cond_6
    :goto_4
    return-void

    .line 85
    .end local v0    # "roots":Ljava/util/List;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure in view hierarchy dump: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    nop

    .line 88
    return-void
.end method

.method public static final maybeDump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->Companion:Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;->maybeDump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private final writeLithoViewSubHierarchy(Ljava/io/PrintWriter;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "withProps"    # Z

    .line 144
    nop

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->lithoViewToStringMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 146
    const-string v0, "com.facebook.litho.LithoViewTestHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v5, "Class.forName(LITHO_VIEW_TEST_HELPER_CLASS)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .local v0, "helperClass":Ljava/lang/Class;
    nop

    .line 148
    nop

    .line 149
    const-string/jumbo v5, "viewToStringForE2E"

    new-array v6, v2, [Ljava/lang/Class;

    .line 150
    const-class v7, Landroid/view/View;

    aput-object v7, v6, v1

    .line 151
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    .line 152
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    .line 148
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->lithoViewToStringMethod:Ljava/lang/reflect/Method;

    .line 157
    .end local v0    # "helperClass":Ljava/lang/Class;
    :cond_0
    nop

    .line 158
    iget-object v0, p0, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->lithoViewToStringMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    div-int/2addr v1, v3

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :cond_1
    if-eqz v5, :cond_2

    check-cast v5, Ljava/lang/String;

    .line 157
    move-object v0, v5

    .line 159
    .local v0, "lithoViewDump":Ljava/lang/String;
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "writer.append(lithoViewDump)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    .end local v0    # "lithoViewDump":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local p1    # "writer":Ljava/io/PrintWriter;
    .end local p2    # "view":Landroid/view/View;
    .end local p3    # "prefix":Ljava/lang/String;
    .end local p4    # "withProps":Z
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .restart local p1    # "writer":Ljava/io/PrintWriter;
    .restart local p2    # "view":Landroid/view/View;
    .restart local p3    # "prefix":Ljava/lang/String;
    .restart local p4    # "withProps":Z
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    nop

    .line 165
    nop

    .line 161
    nop

    .line 164
    nop

    .line 161
    nop

    .line 163
    nop

    .line 161
    nop

    .line 162
    nop

    .line 161
    nop

    .line 162
    move-object v1, p3

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 163
    const-string v2, "Failed litho view sub hierarch dump: "

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 164
    sget-object v2, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper;->Companion:Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;->access$fixString(Lcom/facebook/internal/logging/dumpsys/EndToEndDumpsysHelper$Companion;Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 167
    return-void
.end method
