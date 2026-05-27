.class public final Lcom/facebook/GraphRequest$Companion;
.super Ljava/lang/Object;
.source "GraphRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGraphRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GraphRequest.kt\ncom/facebook/GraphRequest$Companion\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,1940:1\n37#2,2:1941\n181#3,2:1943\n*E\n*S KotlinDebug\n*F\n+ 1 GraphRequest.kt\ncom/facebook/GraphRequest$Companion\n*L\n1095#1,2:1941\n1316#1,2:1943\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00ee\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u001b\n\u0002\u0010\u0008\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0008\u000b\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<H\u0002J\u0010\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020@H\u0007J\u0016\u0010A\u001a\u0008\u0012\u0004\u0012\u00020>0B2\u0006\u0010C\u001a\u00020DH\u0007J\'\u0010A\u001a\u0008\u0012\u0004\u0012\u00020>0B2\u0012\u0010C\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020@0E\"\u00020@H\u0007\u00a2\u0006\u0002\u0010FJ\u001c\u0010A\u001a\u0008\u0012\u0004\u0012\u00020>0B2\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020@0GH\u0007J\u0010\u0010H\u001a\u00020I2\u0006\u0010C\u001a\u00020DH\u0007J!\u0010H\u001a\u00020I2\u0012\u0010C\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020@0E\"\u00020@H\u0007\u00a2\u0006\u0002\u0010JJ\u0016\u0010H\u001a\u00020I2\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020@0GH\u0007J\u001e\u0010K\u001a\u0008\u0012\u0004\u0012\u00020>0B2\u0006\u0010L\u001a\u00020:2\u0006\u0010C\u001a\u00020DH\u0007J$\u0010K\u001a\u0008\u0012\u0004\u0012\u00020>0B2\u0006\u0010L\u001a\u00020:2\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020@0GH\u0007J\"\u0010M\u001a\u00020I2\u0008\u0010N\u001a\u0004\u0018\u00010O2\u0006\u0010L\u001a\u00020:2\u0006\u0010C\u001a\u00020DH\u0007J\u0018\u0010M\u001a\u00020I2\u0006\u0010L\u001a\u00020:2\u0006\u0010C\u001a\u00020DH\u0007J\u0010\u0010P\u001a\u00020\u00042\u0006\u0010Q\u001a\u00020DH\u0002J\n\u0010R\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010S\u001a\u00020\u00042\u0008\u0010T\u001a\u0004\u0018\u00010\u0004H\u0002J\u0010\u0010U\u001a\u00020V2\u0006\u0010C\u001a\u00020DH\u0002J\u0010\u0010W\u001a\u00020V2\u0006\u0010C\u001a\u00020DH\u0002J\u0010\u0010X\u001a\u00020V2\u0006\u0010Y\u001a\u00020\u0004H\u0002J\u0012\u0010Z\u001a\u00020V2\u0008\u0010[\u001a\u0004\u0018\u00010\u0001H\u0002J\u0012\u0010\\\u001a\u00020V2\u0008\u0010[\u001a\u0004\u0018\u00010\u0001H\u0002J$\u0010]\u001a\u00020@2\u0008\u0010^\u001a\u0004\u0018\u00010_2\u0006\u0010`\u001a\u00020a2\u0008\u0010b\u001a\u0004\u0018\u00010cH\u0007J.\u0010]\u001a\u00020@2\u0008\u0010^\u001a\u0004\u0018\u00010_2\u0006\u0010`\u001a\u00020a2\u0008\u0010d\u001a\u0004\u0018\u00010\u00042\u0008\u0010b\u001a\u0004\u0018\u00010cH\u0007J&\u0010e\u001a\u00020@2\u0008\u0010^\u001a\u0004\u0018\u00010_2\u0008\u0010f\u001a\u0004\u0018\u00010\u00042\u0008\u0010b\u001a\u0004\u0018\u00010cH\u0007J&\u0010g\u001a\u00020@2\u0008\u0010^\u001a\u0004\u0018\u00010_2\u0008\u0010T\u001a\u0004\u0018\u00010\u00042\u0008\u0010b\u001a\u0004\u0018\u00010cH\u0007J\u001c\u0010h\u001a\u00020@2\u0008\u0010^\u001a\u0004\u0018\u00010_2\u0008\u0010b\u001a\u0004\u0018\u00010iH\u0007J\u001c\u0010j\u001a\u00020@2\u0008\u0010^\u001a\u0004\u0018\u00010_2\u0008\u0010b\u001a\u0004\u0018\u00010kH\u0007J@\u0010l\u001a\u00020@2\u0008\u0010^\u001a\u0004\u0018\u00010_2\u0008\u0010m\u001a\u0004\u0018\u00010n2\u0006\u0010o\u001a\u00020 2\u0006\u0010p\u001a\u00020 2\u0008\u0010q\u001a\u0004\u0018\u00010\u00042\u0008\u0010b\u001a\u0004\u0018\u00010kH\u0007J0\u0010r\u001a\u00020@2\u0008\u0010^\u001a\u0004\u0018\u00010_2\u0008\u0010T\u001a\u0004\u0018\u00010\u00042\u0008\u0010s\u001a\u0004\u0018\u00010t2\u0008\u0010b\u001a\u0004\u0018\u00010cH\u0007JD\u0010u\u001a\u00020@2\u0008\u0010^\u001a\u0004\u0018\u00010_2\u0008\u0010T\u001a\u0004\u0018\u00010\u00042\u0008\u0010v\u001a\u0004\u0018\u00010w2\u0008\u0010x\u001a\u0004\u0018\u00010\u00042\u0008\u0010y\u001a\u0004\u0018\u00010z2\u0008\u0010b\u001a\u0004\u0018\u00010cH\u0007JB\u0010u\u001a\u00020@2\u0008\u0010^\u001a\u0004\u0018\u00010_2\u0008\u0010T\u001a\u0004\u0018\u00010\u00042\u0006\u0010{\u001a\u00020|2\u0008\u0010x\u001a\u0004\u0018\u00010\u00042\u0008\u0010y\u001a\u0004\u0018\u00010z2\u0008\u0010b\u001a\u0004\u0018\u00010cH\u0007JD\u0010u\u001a\u00020@2\u0008\u0010^\u001a\u0004\u0018\u00010_2\u0008\u0010T\u001a\u0004\u0018\u00010\u00042\u0008\u0010}\u001a\u0004\u0018\u00010~2\u0008\u0010x\u001a\u0004\u0018\u00010\u00042\u0008\u0010y\u001a\u0004\u0018\u00010z2\u0008\u0010b\u001a\u0004\u0018\u00010cH\u0007J\u0012\u0010\u007f\u001a\u00020\u00042\u0008\u0010[\u001a\u0004\u0018\u00010\u0001H\u0002J$\u0010\u0080\u0001\u001a\u00030\u0081\u00012\u0006\u0010s\u001a\u00020t2\u0006\u0010Y\u001a\u00020\u00042\u0008\u0010\u0082\u0001\u001a\u00030\u0083\u0001H\u0002J.\u0010\u0084\u0001\u001a\u00030\u0081\u00012\u0007\u0010\u0085\u0001\u001a\u00020\u00042\u0006\u0010[\u001a\u00020\u00012\u0008\u0010\u0082\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u0086\u0001\u001a\u00020VH\u0002JB\u0010\u0087\u0001\u001a\u00030\u0081\u00012\u0006\u0010C\u001a\u00020D2\n\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0089\u00012\u0007\u0010\u008a\u0001\u001a\u00020 2\u0006\u0010;\u001a\u00020<2\u0008\u0010\u008b\u0001\u001a\u00030\u008c\u00012\u0007\u0010\u008d\u0001\u001a\u00020VH\u0002J\'\u0010\u008e\u0001\u001a\u00030\u0081\u00012\u0006\u0010C\u001a\u00020D2\r\u0010\u008f\u0001\u001a\u0008\u0012\u0004\u0012\u00020>0BH\u0001\u00a2\u0006\u0003\u0008\u0090\u0001J+\u0010\u0091\u0001\u001a\u00030\u0081\u00012\u0015\u0010\u0092\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0005\u0012\u00030\u0094\u00010\u0093\u00012\u0008\u0010\u0082\u0001\u001a\u00030\u0095\u0001H\u0002J%\u0010\u0096\u0001\u001a\u00030\u0081\u00012\u0007\u0010\u0097\u0001\u001a\u00020z2\u0008\u0010\u0082\u0001\u001a\u00030\u0095\u00012\u0006\u0010?\u001a\u00020@H\u0002J9\u0010\u0098\u0001\u001a\u00030\u0081\u00012\u0008\u0010\u0082\u0001\u001a\u00030\u0095\u00012\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020@0G2\u0015\u0010\u0092\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0005\u0012\u00030\u0094\u00010\u0099\u0001H\u0002J \u0010\u009a\u0001\u001a\u00030\u0081\u00012\u0006\u0010C\u001a\u00020D2\u0006\u0010L\u001a\u00020:H\u0001\u00a2\u0006\u0003\u0008\u009b\u0001J\u001b\u0010\u009c\u0001\u001a\u00030\u0081\u00012\u0006\u0010L\u001a\u00020:2\u0007\u0010\u008d\u0001\u001a\u00020VH\u0002J\u0014\u0010\u009d\u0001\u001a\u00030\u0081\u00012\u0008\u0010d\u001a\u0004\u0018\u00010\u0004H\u0007J\u0017\u0010\u009e\u0001\u001a\u00020V2\u0006\u0010?\u001a\u00020@H\u0001\u00a2\u0006\u0003\u0008\u009f\u0001J\u0011\u0010\u00a0\u0001\u001a\u00020:2\u0006\u0010C\u001a\u00020DH\u0007J#\u0010\u00a0\u0001\u001a\u00020:2\u0012\u0010C\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020@0E\"\u00020@H\u0007\u00a2\u0006\u0003\u0010\u00a1\u0001J\u0017\u0010\u00a0\u0001\u001a\u00020:2\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020@0GH\u0007J\u0018\u0010\u00a2\u0001\u001a\u00030\u0081\u00012\u0006\u0010C\u001a\u00020DH\u0001\u00a2\u0006\u0003\u0008\u00a3\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0011\u0010)\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R\u000e\u0010,\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010/\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00100\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u0010+R\u001e\u00102\u001a\u0004\u0018\u00010\u00048BX\u0082\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010+\"\u0004\u00084\u00105R\u0016\u00106\u001a\n 8*\u0004\u0018\u00010707X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00a4\u0001"
    }
    d2 = {
        "Lcom/facebook/GraphRequest$Companion;",
        "",
        "()V",
        "ACCEPT_LANGUAGE_HEADER",
        "",
        "ACCESS_TOKEN_PARAM",
        "ATTACHED_FILES_PARAM",
        "ATTACHMENT_FILENAME_PREFIX",
        "BATCH_APP_ID_PARAM",
        "BATCH_BODY_PARAM",
        "BATCH_ENTRY_DEPENDS_ON_PARAM",
        "BATCH_ENTRY_NAME_PARAM",
        "BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM",
        "BATCH_METHOD_PARAM",
        "BATCH_PARAM",
        "BATCH_RELATIVE_URL_PARAM",
        "CAPTION_PARAM",
        "CONTENT_ENCODING_HEADER",
        "CONTENT_TYPE_HEADER",
        "DEBUG_KEY",
        "DEBUG_MESSAGES_KEY",
        "DEBUG_MESSAGE_KEY",
        "DEBUG_MESSAGE_LINK_KEY",
        "DEBUG_MESSAGE_TYPE_KEY",
        "DEBUG_PARAM",
        "DEBUG_SEVERITY_INFO",
        "DEBUG_SEVERITY_WARNING",
        "FIELDS_PARAM",
        "FORMAT_JSON",
        "FORMAT_PARAM",
        "ISO_8601_FORMAT_STRING",
        "MAXIMUM_BATCH_SIZE",
        "",
        "ME",
        "MIME_BOUNDARY",
        "MY_FRIENDS",
        "MY_PHOTOS",
        "PICTURE_PARAM",
        "SDK_ANDROID",
        "SDK_PARAM",
        "SEARCH",
        "TAG",
        "getTAG",
        "()Ljava/lang/String;",
        "USER_AGENT_BASE",
        "USER_AGENT_HEADER",
        "VIDEOS_SUFFIX",
        "defaultBatchApplicationId",
        "mimeContentType",
        "getMimeContentType",
        "userAgent",
        "getUserAgent",
        "setUserAgent",
        "(Ljava/lang/String;)V",
        "versionPattern",
        "Ljava/util/regex/Pattern;",
        "kotlin.jvm.PlatformType",
        "createConnection",
        "Ljava/net/HttpURLConnection;",
        "url",
        "Ljava/net/URL;",
        "executeAndWait",
        "Lcom/facebook/GraphResponse;",
        "request",
        "Lcom/facebook/GraphRequest;",
        "executeBatchAndWait",
        "",
        "requests",
        "Lcom/facebook/GraphRequestBatch;",
        "",
        "([Lcom/facebook/GraphRequest;)Ljava/util/List;",
        "",
        "executeBatchAsync",
        "Lcom/facebook/GraphRequestAsyncTask;",
        "([Lcom/facebook/GraphRequest;)Lcom/facebook/GraphRequestAsyncTask;",
        "executeConnectionAndWait",
        "connection",
        "executeConnectionAsync",
        "callbackHandler",
        "Landroid/os/Handler;",
        "getBatchAppId",
        "batch",
        "getDefaultBatchApplicationId",
        "getDefaultPhotoPathIfNull",
        "graphPath",
        "hasOnProgressCallbacks",
        "",
        "isGzipCompressible",
        "isMeRequest",
        "path",
        "isSupportedAttachmentType",
        "value",
        "isSupportedParameterType",
        "newCustomAudienceThirdPartyIdRequest",
        "accessToken",
        "Lcom/facebook/AccessToken;",
        "context",
        "Landroid/content/Context;",
        "callback",
        "Lcom/facebook/GraphRequest$Callback;",
        "applicationId",
        "newDeleteObjectRequest",
        "id",
        "newGraphPathRequest",
        "newMeRequest",
        "Lcom/facebook/GraphRequest$GraphJSONObjectCallback;",
        "newMyFriendsRequest",
        "Lcom/facebook/GraphRequest$GraphJSONArrayCallback;",
        "newPlacesSearchRequest",
        "location",
        "Landroid/location/Location;",
        "radiusInMeters",
        "resultsLimit",
        "searchText",
        "newPostRequest",
        "graphObject",
        "Lorg/json/JSONObject;",
        "newUploadPhotoRequest",
        "image",
        "Landroid/graphics/Bitmap;",
        "caption",
        "params",
        "Landroid/os/Bundle;",
        "photoUri",
        "Landroid/net/Uri;",
        "file",
        "Ljava/io/File;",
        "parameterToString",
        "processGraphObject",
        "",
        "serializer",
        "Lcom/facebook/GraphRequest$KeyValueSerializer;",
        "processGraphObjectProperty",
        "key",
        "passByValue",
        "processRequest",
        "logger",
        "Lcom/facebook/internal/Logger;",
        "numRequests",
        "outputStream",
        "Ljava/io/OutputStream;",
        "shouldUseGzip",
        "runCallbacks",
        "responses",
        "runCallbacks$facebook_core_release",
        "serializeAttachments",
        "attachments",
        "",
        "Lcom/facebook/GraphRequest$Attachment;",
        "Lcom/facebook/GraphRequest$Serializer;",
        "serializeParameters",
        "bundle",
        "serializeRequestsAsJSON",
        "",
        "serializeToUrlConnection",
        "serializeToUrlConnection$facebook_core_release",
        "setConnectionContentType",
        "setDefaultBatchApplicationId",
        "shouldWarnOnMissingFieldsParam",
        "shouldWarnOnMissingFieldsParam$facebook_core_release",
        "toHttpConnection",
        "([Lcom/facebook/GraphRequest;)Ljava/net/HttpURLConnection;",
        "validateFieldsParamForGetRequests",
        "validateFieldsParamForGetRequests$facebook_core_release",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 204
    invoke-direct {p0}, Lcom/facebook/GraphRequest$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$isSupportedAttachmentType(Lcom/facebook/GraphRequest$Companion;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "$this"    # Lcom/facebook/GraphRequest$Companion;
    .param p1, "value"    # Ljava/lang/Object;

    .line 204
    invoke-direct {p0, p1}, Lcom/facebook/GraphRequest$Companion;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$isSupportedParameterType(Lcom/facebook/GraphRequest$Companion;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "$this"    # Lcom/facebook/GraphRequest$Companion;
    .param p1, "value"    # Ljava/lang/Object;

    .line 204
    invoke-direct {p0, p1}, Lcom/facebook/GraphRequest$Companion;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$parameterToString(Lcom/facebook/GraphRequest$Companion;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/facebook/GraphRequest$Companion;
    .param p1, "value"    # Ljava/lang/Object;

    .line 204
    invoke-direct {p0, p1}, Lcom/facebook/GraphRequest$Companion;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$processGraphObject(Lcom/facebook/GraphRequest$Companion;Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$KeyValueSerializer;)V
    .locals 0
    .param p0, "$this"    # Lcom/facebook/GraphRequest$Companion;
    .param p1, "graphObject"    # Lorg/json/JSONObject;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "serializer"    # Lcom/facebook/GraphRequest$KeyValueSerializer;

    .line 204
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/GraphRequest$Companion;->processGraphObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$KeyValueSerializer;)V

    return-void
.end method

.method private final createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1043
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1044
    .local v0, "connection":Ljava/net/HttpURLConnection;
    move-object v1, p0

    check-cast v1, Lcom/facebook/GraphRequest$Companion;

    invoke-direct {v1}, Lcom/facebook/GraphRequest$Companion;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Language"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1047
    return-object v0

    .line 1043
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getBatchAppId(Lcom/facebook/GraphRequestBatch;)Ljava/lang/String;
    .locals 5
    .param p1, "batch"    # Lcom/facebook/GraphRequestBatch;

    .line 1355
    invoke-virtual {p1}, Lcom/facebook/GraphRequestBatch;->getBatchApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 1356
    .local v0, "batchApplicationId":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_0

    .line 1357
    return-object v0

    .line 1359
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/GraphRequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/GraphRequest;

    .line 1360
    .local v3, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v3}, Lcom/facebook/GraphRequest;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v4

    .line 1361
    .local v4, "accessToken":Lcom/facebook/AccessToken;
    if-eqz v4, :cond_1

    .line 1362
    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1359
    .end local v3    # "request":Lcom/facebook/GraphRequest;
    .end local v4    # "accessToken":Lcom/facebook/AccessToken;
    :cond_1
    goto :goto_0

    .line 1365
    :cond_2
    invoke-static {}, Lcom/facebook/GraphRequest;->access$getDefaultBatchApplicationId$cp()Ljava/lang/String;

    move-result-object v2

    .line 1366
    .local v2, "defaultBatchApplicationId":Ljava/lang/String;
    if-eqz v2, :cond_4

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 1367
    move-object v1, v2

    goto :goto_2

    .line 1368
    :cond_4
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FacebookSdk.getApplicationId()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1366
    :goto_2
    return-object v1
.end method

.method private final getDefaultPhotoPathIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "graphPath"    # Ljava/lang/String;

    .line 1038
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, "me/photos"

    :goto_0
    return-object v0
.end method

.method private final getMimeContentType()Ljava/lang/String;
    .locals 4

    .line 1336
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/facebook/GraphRequest;->access$getMIME_BOUNDARY$cp()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "multipart/form-data; boundary=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getUserAgent()Ljava/lang/String;
    .locals 7

    .line 1342
    invoke-static {}, Lcom/facebook/GraphRequest;->access$getUserAgent$cp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1343
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "FBAndroidSDK"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "11.1.0"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s.%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/facebook/GraphRequest;->access$setUserAgent$cp(Ljava/lang/String;)V

    .line 1346
    invoke-static {}, Lcom/facebook/internal/InternalSettings;->getCustomUserAgent()Ljava/lang/String;

    move-result-object v1

    .line 1347
    .local v1, "customUserAgent":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1348
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/facebook/GraphRequest;->access$getUserAgent$cp()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object v1, v5, v4

    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v3, "%s/%s"

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "java.lang.String.format(locale, format, *args)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/GraphRequest;->access$setUserAgent$cp(Ljava/lang/String;)V

    .line 1351
    .end local v1    # "customUserAgent":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/facebook/GraphRequest;->access$getUserAgent$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final hasOnProgressCallbacks(Lcom/facebook/GraphRequestBatch;)Z
    .locals 4
    .param p1, "requests"    # Lcom/facebook/GraphRequestBatch;

    .line 1051
    invoke-virtual {p1}, Lcom/facebook/GraphRequestBatch;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphRequestBatch$Callback;

    .line 1052
    .local v1, "callback":Lcom/facebook/GraphRequestBatch$Callback;
    instance-of v3, v1, Lcom/facebook/GraphRequestBatch$OnProgressCallback;

    if-eqz v3, :cond_0

    .line 1053
    return v2

    .line 1051
    .end local v1    # "callback":Lcom/facebook/GraphRequestBatch$Callback;
    :cond_0
    goto :goto_0

    .line 1056
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/GraphRequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphRequest;

    .line 1057
    .local v1, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->getCallback()Lcom/facebook/GraphRequest$Callback;

    move-result-object v3

    instance-of v3, v3, Lcom/facebook/GraphRequest$OnProgressCallback;

    if-eqz v3, :cond_2

    .line 1058
    return v2

    .line 1056
    .end local v1    # "request":Lcom/facebook/GraphRequest;
    :cond_2
    goto :goto_1

    .line 1061
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private final isGzipCompressible(Lcom/facebook/GraphRequestBatch;)Z
    .locals 6
    .param p1, "requests"    # Lcom/facebook/GraphRequestBatch;

    .line 1074
    invoke-virtual {p1}, Lcom/facebook/GraphRequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphRequest;

    .line 1075
    .local v1, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1076
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1077
    .local v4, "value":Ljava/lang/Object;
    move-object v5, p0

    check-cast v5, Lcom/facebook/GraphRequest$Companion;

    invoke-direct {v5, v4}, Lcom/facebook/GraphRequest$Companion;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1078
    const/4 v0, 0x0

    return v0

    .line 1075
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_0
    goto :goto_1

    .line 1074
    .end local v1    # "request":Lcom/facebook/GraphRequest;
    :cond_1
    goto :goto_0

    .line 1082
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private final isMeRequest(Ljava/lang/String;)Z
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .line 1215
    move-object v0, p1

    .line 1216
    .local v0, "path":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/GraphRequest;->access$getVersionPattern$cp()Ljava/util/regex/Pattern;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1217
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1219
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "matcher.group(1)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    .line 1221
    :cond_0
    const-string v2, "me/"

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v2, v4, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "/me/"

    invoke-static {v0, v2, v4, v5, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    return v3
.end method

.method private final isSupportedAttachmentType(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 1372
    nop

    .line 1373
    nop

    .line 1374
    nop

    .line 1375
    nop

    .line 1376
    nop

    .line 1372
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 1373
    instance-of v0, p1, [B

    if-nez v0, :cond_1

    .line 1374
    instance-of v0, p1, Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 1375
    instance-of v0, p1, Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_1

    .line 1376
    instance-of v0, p1, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1372
    :goto_1
    return v0
.end method

.method private final isSupportedParameterType(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 1380
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final parameterToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 1384
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1385
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1386
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1388
    :cond_1
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 1389
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1390
    .local v0, "iso8601DateFormat":Ljava/text/SimpleDateFormat;
    move-object v1, p1

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "iso8601DateFormat.format(value)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 1391
    .end local v0    # "iso8601DateFormat":Ljava/text/SimpleDateFormat;
    :cond_2
    nop

    .line 1392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported parameter type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1387
    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final processGraphObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$KeyValueSerializer;)V
    .locals 10
    .param p1, "graphObject"    # Lorg/json/JSONObject;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "serializer"    # Lcom/facebook/GraphRequest$KeyValueSerializer;

    .line 1235
    const/4 v0, 0x0

    .line 1236
    .local v0, "isOGAction":Z
    move-object v1, p0

    check-cast v1, Lcom/facebook/GraphRequest$Companion;

    invoke-direct {v1, p2}, Lcom/facebook/GraphRequest$Companion;->isMeRequest(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 1237
    move-object v4, p2

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    const-string v5, ":"

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    .line 1238
    .local v1, "colonLocation":I
    move-object v4, p2

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "?"

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v4

    .line 1239
    .local v4, "questionMarkLocation":I
    nop

    .line 1240
    nop

    .line 1241
    const/4 v5, 0x3

    if-le v1, v5, :cond_1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    if-ge v1, v4, :cond_1

    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    move v0, v5

    .line 1243
    .end local v1    # "colonLocation":I
    .end local v4    # "questionMarkLocation":I
    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1244
    .local v1, "keyIterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1245
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1246
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1247
    .local v5, "value":Ljava/lang/Object;
    if-eqz v0, :cond_3

    const-string v6, "image"

    invoke-static {v4, v6, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .line 1248
    .local v6, "passByValue":Z
    :goto_2
    move-object v7, p0

    check-cast v7, Lcom/facebook/GraphRequest$Companion;

    const-string v8, "key"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v8, "value"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v4, v5, p3, v6}, Lcom/facebook/GraphRequest$Companion;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    .line 1244
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "passByValue":Z
    goto :goto_1

    .line 1250
    :cond_4
    return-void
.end method

.method private final processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "serializer"    # Lcom/facebook/GraphRequest$KeyValueSerializer;
    .param p4, "passByValue"    # Z

    .line 1258
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1259
    .local v0, "valueClass":Ljava/lang/Class;
    const-class v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 1260
    if-eqz p2, :cond_4

    move-object v1, p2

    check-cast v1, Lorg/json/JSONObject;

    .line 1261
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz p4, :cond_0

    .line 1263
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 1264
    .local v5, "keys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1265
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1266
    .local v6, "propertyName":Ljava/lang/String;
    sget-object v7, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v7, v2, [Ljava/lang/Object;

    aput-object p1, v7, v4

    aput-object v6, v7, v3

    invoke-static {v7, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%s[%s]"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "java.lang.String.format(format, *args)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1267
    .local v7, "subKey":Ljava/lang/String;
    move-object v8, p0

    check-cast v8, Lcom/facebook/GraphRequest$Companion;

    .line 1268
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "jsonObject.opt(propertyName)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1267
    invoke-direct {v8, v7, v9, p3, p4}, Lcom/facebook/GraphRequest$Companion;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    .line 1264
    .end local v6    # "propertyName":Ljava/lang/String;
    .end local v7    # "subKey":Ljava/lang/String;
    goto :goto_0

    .line 1273
    .end local v5    # "keys":Ljava/util/Iterator;
    :cond_0
    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1274
    move-object v3, p0

    check-cast v3, Lcom/facebook/GraphRequest$Companion;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "jsonObject.optString(\"id\")"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p1, v2, p3, p4}, Lcom/facebook/GraphRequest$Companion;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    goto :goto_1

    .line 1275
    :cond_1
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1276
    move-object v3, p0

    check-cast v3, Lcom/facebook/GraphRequest$Companion;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "jsonObject.optString(\"url\")"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p1, v2, p3, p4}, Lcom/facebook/GraphRequest$Companion;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    goto :goto_1

    .line 1277
    :cond_2
    const-string v2, "fbsdk:create_object"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1278
    move-object v2, p0

    check-cast v2, Lcom/facebook/GraphRequest$Companion;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "jsonObject.toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p1, v3, p3, p4}, Lcom/facebook/GraphRequest$Companion;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V

    .line 1279
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    :goto_1
    nop

    .line 1280
    goto/16 :goto_4

    .line 1260
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1281
    :cond_5
    const-class v1, Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1282
    if-eqz p2, :cond_6

    move-object v1, p2

    check-cast v1, Lorg/json/JSONArray;

    .line 1283
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 1284
    .local v5, "length":I
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_b

    .line 1285
    .local v6, "i":I
    sget-object v7, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v8, v2, [Ljava/lang/Object;

    aput-object p1, v8, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v8, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    const-string v9, "%s[%d]"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "java.lang.String.format(locale, format, *args)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1286
    .restart local v7    # "subKey":Ljava/lang/String;
    move-object v8, p0

    check-cast v8, Lcom/facebook/GraphRequest$Companion;

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "jsonArray.opt(i)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {v8, v7, v9, p3, p4}, Lcom/facebook/GraphRequest$Companion;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$KeyValueSerializer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1284
    .end local v7    # "subKey":Ljava/lang/String;
    nop

    .end local v6    # "i":I
    add-int/2addr v6, v3

    goto :goto_2

    .line 1282
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "length":I
    .end local p0    # "this":Lcom/facebook/GraphRequest$Companion;
    :cond_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type org.json.JSONArray"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1288
    :cond_7
    nop

    .line 1289
    nop

    .line 1290
    nop

    .line 1288
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1289
    const-class v1, Ljava/lang/Number;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1290
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    .line 1292
    :cond_8
    const-class v1, Ljava/util/Date;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1293
    if-eqz p2, :cond_9

    move-object v1, p2

    check-cast v1, Ljava/util/Date;

    .line 1300
    .local v1, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1301
    .local v2, "iso8601DateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "iso8601DateFormat.format(date)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p1, v3}, Lcom/facebook/GraphRequest$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1293
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "iso8601DateFormat":Ljava/text/SimpleDateFormat;
    :cond_9
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type java.util.Date"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1291
    :cond_a
    :goto_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, p1, v1}, Lcom/facebook/GraphRequest$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    :cond_b
    :goto_4
    nop

    .line 1303
    return-void

    .line 1286
    .end local v0    # "valueClass":Ljava/lang/Class;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/Object;
    .end local p3    # "serializer":Lcom/facebook/GraphRequest$KeyValueSerializer;
    .end local p4    # "passByValue":Z
    :catchall_0
    move-exception p1

    throw p1
.end method

.method private final processRequest(Lcom/facebook/GraphRequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    .locals 8
    .param p1, "requests"    # Lcom/facebook/GraphRequestBatch;
    .param p2, "logger"    # Lcom/facebook/internal/Logger;
    .param p3, "numRequests"    # I
    .param p4, "url"    # Ljava/net/URL;
    .param p5, "outputStream"    # Ljava/io/OutputStream;
    .param p6, "shouldUseGzip"    # Z

    .line 1180
    new-instance v0, Lcom/facebook/GraphRequest$Serializer;

    invoke-direct {v0, p5, p2, p6}, Lcom/facebook/GraphRequest$Serializer;-><init>(Ljava/io/OutputStream;Lcom/facebook/internal/Logger;Z)V

    .line 1181
    .local v0, "serializer":Lcom/facebook/GraphRequest$Serializer;
    const-string v1, "  Attachments:\n"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p3, v3, :cond_4

    .line 1182
    invoke-virtual {p1, v2}, Lcom/facebook/GraphRequestBatch;->get(I)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 1183
    .local v2, "request":Lcom/facebook/GraphRequest;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    .line 1184
    .local v3, "attachments":Ljava/util/Map;
    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1185
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1186
    .local v6, "value":Ljava/lang/Object;
    move-object v7, p0

    check-cast v7, Lcom/facebook/GraphRequest$Companion;

    invoke-direct {v7, v6}, Lcom/facebook/GraphRequest$Companion;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1187
    const-string v7, "key"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/facebook/GraphRequest$Attachment;

    invoke-direct {v7, v2, v6}, Lcom/facebook/GraphRequest$Attachment;-><init>(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V

    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 1190
    :cond_1
    if-eqz p2, :cond_2

    const-string v4, "  Parameters:\n"

    invoke-virtual {p2, v4}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1191
    :cond_2
    move-object v4, p0

    check-cast v4, Lcom/facebook/GraphRequest$Companion;

    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v4, v5, v0, v2}, Lcom/facebook/GraphRequest$Companion;->serializeParameters(Landroid/os/Bundle;Lcom/facebook/GraphRequest$Serializer;Lcom/facebook/GraphRequest;)V

    .line 1192
    if-eqz p2, :cond_3

    invoke-virtual {p2, v1}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1193
    :cond_3
    move-object v1, p0

    check-cast v1, Lcom/facebook/GraphRequest$Companion;

    invoke-direct {v1, v3, v0}, Lcom/facebook/GraphRequest$Companion;->serializeAttachments(Ljava/util/Map;Lcom/facebook/GraphRequest$Serializer;)V

    .line 1194
    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->getGraphObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 1195
    .local v1, "graphObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_7

    .line 1196
    move-object v4, p0

    check-cast v4, Lcom/facebook/GraphRequest$Companion;

    invoke-virtual {p4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "url.path"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v0

    check-cast v6, Lcom/facebook/GraphRequest$KeyValueSerializer;

    invoke-direct {v4, v1, v5, v6}, Lcom/facebook/GraphRequest$Companion;->processGraphObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$KeyValueSerializer;)V

    .end local v1    # "graphObject":Lorg/json/JSONObject;
    .end local v2    # "request":Lcom/facebook/GraphRequest;
    .end local v3    # "attachments":Ljava/util/Map;
    goto :goto_1

    .line 1199
    :cond_4
    move-object v4, p0

    check-cast v4, Lcom/facebook/GraphRequest$Companion;

    invoke-direct {v4, p1}, Lcom/facebook/GraphRequest$Companion;->getBatchAppId(Lcom/facebook/GraphRequestBatch;)Ljava/lang/String;

    move-result-object v4

    .line 1200
    .local v4, "batchAppID":Ljava/lang/String;
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_5

    const/4 v2, 0x1

    :cond_5
    if-nez v2, :cond_8

    .line 1203
    const-string v2, "batch_app_id"

    invoke-virtual {v0, v2, v4}, Lcom/facebook/GraphRequest$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 1208
    .local v2, "attachments":Ljava/util/Map;
    move-object v3, p0

    check-cast v3, Lcom/facebook/GraphRequest$Companion;

    move-object v5, p1

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v3, v0, v5, v2}, Lcom/facebook/GraphRequest$Companion;->serializeRequestsAsJSON(Lcom/facebook/GraphRequest$Serializer;Ljava/util/Collection;Ljava/util/Map;)V

    .line 1209
    if-eqz p2, :cond_6

    invoke-virtual {p2, v1}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1210
    :cond_6
    move-object v1, p0

    check-cast v1, Lcom/facebook/GraphRequest$Companion;

    invoke-direct {v1, v2, v0}, Lcom/facebook/GraphRequest$Companion;->serializeAttachments(Ljava/util/Map;Lcom/facebook/GraphRequest$Serializer;)V

    .line 1211
    .end local v2    # "attachments":Ljava/util/Map;
    .end local v4    # "batchAppID":Ljava/lang/String;
    :cond_7
    :goto_1
    nop

    .line 1212
    return-void

    .line 1201
    .restart local v4    # "batchAppID":Ljava/lang/String;
    :cond_8
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "App ID was not specified at the request or Settings."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method private final serializeAttachments(Ljava/util/Map;Lcom/facebook/GraphRequest$Serializer;)V
    .locals 9
    .param p1, "attachments"    # Ljava/util/Map;
    .param p2, "serializer"    # Lcom/facebook/GraphRequest$Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphRequest$Attachment;",
            ">;",
            "Lcom/facebook/GraphRequest$Serializer;",
            ")V"
        }
    .end annotation

    .line 1316
    move-object v0, p1

    .local v0, "$this$forEach$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 1943
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .local v3, "element$iv":Ljava/util/Map$Entry;
    move-object v4, v3

    .local v4, "it":Ljava/util/Map$Entry;
    const/4 v5, 0x0

    .line 1317
    .local v5, "$i$a$-forEach-GraphRequest$Companion$serializeAttachments$1":I
    sget-object v6, Lcom/facebook/GraphRequest;->Companion:Lcom/facebook/GraphRequest$Companion;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/facebook/GraphRequest$Companion;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1318
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/GraphRequest$Attachment;

    invoke-virtual {v7}, Lcom/facebook/GraphRequest$Attachment;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/GraphRequest$Attachment;

    invoke-virtual {v8}, Lcom/facebook/GraphRequest$Attachment;->getRequest()Lcom/facebook/GraphRequest;

    move-result-object v8

    invoke-virtual {p2, v6, v7, v8}, Lcom/facebook/GraphRequest$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V

    .line 1320
    .end local v4    # "it":Ljava/util/Map$Entry;
    .end local v5    # "$i$a$-forEach-GraphRequest$Companion$serializeAttachments$1":I
    :cond_0
    nop

    .end local v3    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 1944
    :cond_1
    nop

    .line 1321
    .end local v0    # "$this$forEach$iv":Ljava/util/Map;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method private final serializeParameters(Landroid/os/Bundle;Lcom/facebook/GraphRequest$Serializer;Lcom/facebook/GraphRequest;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "serializer"    # Lcom/facebook/GraphRequest$Serializer;
    .param p3, "request"    # Lcom/facebook/GraphRequest;

    .line 1306
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1307
    .local v0, "keys":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1308
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1309
    .local v3, "value":Ljava/lang/Object;
    move-object v4, p0

    check-cast v4, Lcom/facebook/GraphRequest$Companion;

    invoke-direct {v4, v3}, Lcom/facebook/GraphRequest$Companion;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1310
    const-string v4, "key"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2, v3, p3}, Lcom/facebook/GraphRequest$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V

    .line 1307
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 1313
    :cond_1
    return-void
.end method

.method private final serializeRequestsAsJSON(Lcom/facebook/GraphRequest$Serializer;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 3
    .param p1, "serializer"    # Lcom/facebook/GraphRequest$Serializer;
    .param p2, "requests"    # Ljava/util/Collection;
    .param p3, "attachments"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphRequest$Serializer;",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphRequest$Attachment;",
            ">;)V"
        }
    .end annotation

    .line 1328
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1329
    .local v0, "batch":Lorg/json/JSONArray;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/GraphRequest;

    .line 1330
    .local v2, "request":Lcom/facebook/GraphRequest;
    invoke-static {v2, v0, p3}, Lcom/facebook/GraphRequest;->access$serializeToBatch(Lcom/facebook/GraphRequest;Lorg/json/JSONArray;Ljava/util/Map;)V

    .line 1329
    .end local v2    # "request":Lcom/facebook/GraphRequest;
    goto :goto_0

    .line 1332
    :cond_0
    const-string v1, "batch"

    invoke-virtual {p1, v1, v0, p2}, Lcom/facebook/GraphRequest$Serializer;->writeRequestsAsJson(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V

    .line 1333
    return-void
.end method

.method private final setConnectionContentType(Ljava/net/HttpURLConnection;Z)V
    .locals 2
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "shouldUseGzip"    # Z

    .line 1065
    const-string v0, "Content-Type"

    if-eqz p2, :cond_0

    .line 1066
    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    const-string v0, "Content-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1069
    :cond_0
    move-object v1, p0

    check-cast v1, Lcom/facebook/GraphRequest$Companion;

    invoke-direct {v1}, Lcom/facebook/GraphRequest$Companion;->getMimeContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    :goto_0
    nop

    .line 1071
    return-void
.end method

.method private final setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 1340
    invoke-static {p1}, Lcom/facebook/GraphRequest;->access$setUserAgent$cp(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final executeAndWait(Lcom/facebook/GraphRequest;)Lcom/facebook/GraphResponse;
    .locals 4
    .param p1, "request"    # Lcom/facebook/GraphRequest;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 761
    move-object v0, p0

    check-cast v0, Lcom/facebook/GraphRequest$Companion;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/facebook/GraphRequest;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lcom/facebook/GraphRequest$Companion;->executeBatchAndWait([Lcom/facebook/GraphRequest;)Ljava/util/List;

    move-result-object v0

    .line 762
    .local v0, "responses":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 765
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphResponse;

    return-object v1

    .line 763
    :cond_0
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "invalid state: expected a single response"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public final executeBatchAndWait(Lcom/facebook/GraphRequestBatch;)Ljava/util/List;
    .locals 7
    .param p1, "requests"    # Lcom/facebook/GraphRequestBatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphRequestBatch;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 819
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1, v0}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 820
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 821
    .local v1, "connection":Ljava/net/HttpURLConnection;
    nop

    .line 822
    :try_start_0
    move-object v2, v0

    check-cast v2, Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    .local v2, "exception":Ljava/lang/Exception;
    nop

    .line 824
    nop

    .line 825
    :try_start_1
    move-object v3, p0

    check-cast v3, Lcom/facebook/GraphRequest$Companion;

    invoke-virtual {v3, p1}, Lcom/facebook/GraphRequest$Companion;->toHttpConnection(Lcom/facebook/GraphRequestBatch;)Ljava/net/HttpURLConnection;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 826
    :catch_0
    move-exception v3

    .line 827
    .local v3, "ex":Ljava/lang/Exception;
    move-object v2, v3

    .line 828
    move-object v3, v0

    .line 824
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    move-object v1, v3

    .line 830
    if-eqz v1, :cond_0

    .line 831
    :try_start_2
    move-object v0, p0

    check-cast v0, Lcom/facebook/GraphRequest$Companion;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/GraphRequest$Companion;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 833
    :cond_0
    nop

    .line 834
    sget-object v3, Lcom/facebook/GraphResponse;->Companion:Lcom/facebook/GraphResponse$Companion;

    invoke-virtual {p1}, Lcom/facebook/GraphRequestBatch;->getRequests()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/facebook/FacebookException;

    move-object v6, v2

    check-cast v6, Ljava/lang/Throwable;

    invoke-direct {v5, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4, v0, v5}, Lcom/facebook/GraphResponse$Companion;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;

    move-result-object v0

    .line 833
    nop

    .line 835
    .local v0, "responses":Ljava/util/List;
    move-object v3, p0

    check-cast v3, Lcom/facebook/GraphRequest$Companion;

    invoke-virtual {v3, p1, v0}, Lcom/facebook/GraphRequest$Companion;->runCallbacks$facebook_core_release(Lcom/facebook/GraphRequestBatch;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 836
    nop

    .line 830
    .end local v0    # "responses":Ljava/util/List;
    .end local v2    # "exception":Ljava/lang/Exception;
    :goto_1
    nop

    .line 839
    move-object v2, v1

    check-cast v2, Ljava/net/URLConnection;

    invoke-static {v2}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 840
    nop

    .line 821
    return-object v0

    .line 840
    :catchall_0
    move-exception v0

    .line 839
    move-object v2, v1

    check-cast v2, Ljava/net/URLConnection;

    invoke-static {v2}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    throw v0
.end method

.method public final executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .param p1, "requests"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 800
    move-object v0, p0

    check-cast v0, Lcom/facebook/GraphRequest$Companion;

    new-instance v1, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v1, p1}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/facebook/GraphRequest$Companion;->executeBatchAndWait(Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeBatchAndWait([Lcom/facebook/GraphRequest;)Ljava/util/List;
    .locals 2
    .param p1, "requests"    # [Lcom/facebook/GraphRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/GraphRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 783
    move-object v0, p0

    check-cast v0, Lcom/facebook/GraphRequest$Companion;

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/facebook/GraphRequest$Companion;->executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final executeBatchAsync(Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;
    .locals 3
    .param p1, "requests"    # Lcom/facebook/GraphRequestBatch;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 893
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1, v0}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 894
    new-instance v0, Lcom/facebook/GraphRequestAsyncTask;

    invoke-direct {v0, p1}, Lcom/facebook/GraphRequestAsyncTask;-><init>(Lcom/facebook/GraphRequestBatch;)V

    .line 895
    .local v0, "asyncTask":Lcom/facebook/GraphRequestAsyncTask;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/GraphRequestAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 896
    return-object v0
.end method

.method public final executeBatchAsync(Ljava/util/Collection;)Lcom/facebook/GraphRequestAsyncTask;
    .locals 2
    .param p1, "requests"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Lcom/facebook/GraphRequestAsyncTask;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 875
    move-object v0, p0

    check-cast v0, Lcom/facebook/GraphRequest$Companion;

    new-instance v1, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v1, p1}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/facebook/GraphRequest$Companion;->executeBatchAsync(Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeBatchAsync([Lcom/facebook/GraphRequest;)Lcom/facebook/GraphRequestAsyncTask;
    .locals 2
    .param p1, "requests"    # [Lcom/facebook/GraphRequest;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 857
    move-object v0, p0

    check-cast v0, Lcom/facebook/GraphRequest$Companion;

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/facebook/GraphRequest$Companion;->executeBatchAsync(Ljava/util/Collection;)Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;
    .locals 8
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "requests"    # Lcom/facebook/GraphRequestBatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/GraphRequestBatch;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requests"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 940
    sget-object v0, Lcom/facebook/GraphResponse;->Companion:Lcom/facebook/GraphResponse$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/GraphResponse$Companion;->fromHttpConnection(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v0

    .line 941
    .local v0, "responses":Ljava/util/List;
    move-object v1, p1

    check-cast v1, Ljava/net/URLConnection;

    invoke-static {v1}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 942
    invoke-virtual {p2}, Lcom/facebook/GraphRequestBatch;->size()I

    move-result v1

    .line 943
    .local v1, "numRequests":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 948
    move-object v2, p0

    check-cast v2, Lcom/facebook/GraphRequest$Companion;

    invoke-virtual {v2, p2, v0}, Lcom/facebook/GraphRequest$Companion;->runCallbacks$facebook_core_release(Lcom/facebook/GraphRequestBatch;Ljava/util/List;)V

    .line 951
    sget-object v2, Lcom/facebook/AccessTokenManager;->Companion:Lcom/facebook/AccessTokenManager$Companion;

    invoke-virtual {v2}, Lcom/facebook/AccessTokenManager$Companion;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/AccessTokenManager;->extendAccessTokenIfNeeded()V

    .line 952
    return-object v0

    .line 944
    :cond_0
    new-instance v2, Lcom/facebook/FacebookException;

    .line 945
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 946
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 945
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Received %d responses while expecting %d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "java.lang.String.format(locale, format, *args)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 944
    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public final executeConnectionAndWait(Ljava/net/HttpURLConnection;Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "requests"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requests"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 918
    move-object v0, p0

    check-cast v0, Lcom/facebook/GraphRequest$Companion;

    new-instance v1, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v1, p2}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/facebook/GraphRequest$Companion;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final executeConnectionAsync(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;
    .locals 3
    .param p1, "callbackHandler"    # Landroid/os/Handler;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;
    .param p3, "requests"    # Lcom/facebook/GraphRequestBatch;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requests"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1001
    new-instance v0, Lcom/facebook/GraphRequestAsyncTask;

    invoke-direct {v0, p2, p3}, Lcom/facebook/GraphRequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)V

    .line 1002
    .local v0, "asyncTask":Lcom/facebook/GraphRequestAsyncTask;
    invoke-virtual {p3, p1}, Lcom/facebook/GraphRequestBatch;->setCallbackHandler(Landroid/os/Handler;)V

    .line 1003
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/GraphRequestAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1004
    return-object v0
.end method

.method public final executeConnectionAsync(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;
    .locals 2
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "requests"    # Lcom/facebook/GraphRequestBatch;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requests"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 975
    move-object v0, p0

    check-cast v0, Lcom/facebook/GraphRequest$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/GraphRequest$Companion;->executeConnectionAsync(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultBatchApplicationId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 272
    invoke-static {}, Lcom/facebook/GraphRequest;->access$getDefaultBatchApplicationId$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 210
    invoke-static {}, Lcom/facebook/GraphRequest;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final newCustomAudienceThirdPartyIdRequest(Lcom/facebook/AccessToken;Landroid/content/Context;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 2
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/facebook/GraphRequest$Callback;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 669
    move-object v0, p0

    check-cast v0, Lcom/facebook/GraphRequest$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/facebook/GraphRequest$Companion;->newCustomAudienceThirdPartyIdRequest(Lcom/facebook/AccessToken;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v0

    return-object v0
.end method

.method public final newCustomAudienceThirdPartyIdRequest(Lcom/facebook/AccessToken;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 15
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "applicationId"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/facebook/GraphRequest$Callback;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v9, p2

    const-string v0, "context"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    move-object/from16 v0, p3

    .line 596
    .local v0, "applicationId":Ljava/lang/String;
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 597
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 599
    :cond_0
    if-nez v0, :cond_1

    .line 600
    invoke-static/range {p2 .. p2}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    .line 599
    :cond_1
    move-object v10, v0

    .line 602
    .end local v0    # "applicationId":Ljava/lang/String;
    .local v10, "applicationId":Ljava/lang/String;
    :goto_0
    if-eqz v10, :cond_7

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/custom_audience_third_party_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 606
    .local v11, "endpoint":Ljava/lang/String;
    sget-object v0, Lcom/facebook/internal/AttributionIdentifiers;->Companion:Lcom/facebook/internal/AttributionIdentifiers$Companion;

    invoke-virtual {v0, v9}, Lcom/facebook/internal/AttributionIdentifiers$Companion;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v12

    .line 607
    .local v12, "attributionIdentifiers":Lcom/facebook/internal/AttributionIdentifiers;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v13, v0

    .line 608
    .local v13, "parameters":Landroid/os/Bundle;
    if-nez p1, :cond_4

    .line 609
    if-eqz v12, :cond_3

    .line 616
    nop

    .line 617
    invoke-virtual {v12}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v12}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 618
    :cond_2
    invoke-virtual {v12}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v0

    .line 617
    :goto_1
    nop

    .line 616
    nop

    .line 619
    .local v0, "udid":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 620
    const-string/jumbo v1, "udid"

    invoke-virtual {v13, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 610
    .end local v0    # "udid":Ljava/lang/String;
    :cond_3
    new-instance v0, Lcom/facebook/FacebookException;

    .line 611
    nop

    .line 610
    const-string v1, "There is no access token and attribution identifiers could not be retrieved"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 626
    :cond_4
    :goto_2
    nop

    .line 627
    nop

    .line 626
    invoke-static/range {p2 .. p2}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/facebook/internal/AttributionIdentifiers;->isTrackingLimited()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 628
    :cond_5
    const-string v0, "limit_event_usage"

    const-string v1, "1"

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_6
    new-instance v14, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, v11

    move-object v3, v13

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v14

    .line 603
    .end local v11    # "endpoint":Ljava/lang/String;
    .end local v12    # "attributionIdentifiers":Lcom/facebook/internal/AttributionIdentifiers;
    .end local v13    # "parameters":Landroid/os/Bundle;
    :cond_7
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Facebook App ID cannot be determined"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final newDeleteObjectRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 10
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/facebook/GraphRequest$Callback;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 306
    new-instance v9, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9
.end method

.method public final newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 10
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "graphPath"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/facebook/GraphRequest$Callback;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 389
    new-instance v9, Lcom/facebook/GraphRequest;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9
.end method

.method public final newMeRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;
    .locals 11
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "callback"    # Lcom/facebook/GraphRequest$GraphJSONObjectCallback;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 319
    new-instance v0, Lcom/facebook/GraphRequest$Companion$newMeRequest$wrapper$1;

    invoke-direct {v0, p2}, Lcom/facebook/GraphRequest$Companion$newMeRequest$wrapper$1;-><init>(Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)V

    check-cast v0, Lcom/facebook/GraphRequest$Callback;

    .line 322
    .local v0, "wrapper":Lcom/facebook/GraphRequest$Callback;
    new-instance v10, Lcom/facebook/GraphRequest;

    const-string v3, "me"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, v10

    move-object v2, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v9}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10
.end method

.method public final newMyFriendsRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)Lcom/facebook/GraphRequest;
    .locals 11
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "callback"    # Lcom/facebook/GraphRequest$GraphJSONArrayCallback;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 361
    nop

    .line 362
    new-instance v0, Lcom/facebook/GraphRequest$Companion$newMyFriendsRequest$wrapper$1;

    invoke-direct {v0, p2}, Lcom/facebook/GraphRequest$Companion$newMyFriendsRequest$wrapper$1;-><init>(Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)V

    .line 361
    check-cast v0, Lcom/facebook/GraphRequest$Callback;

    .line 371
    .local v0, "wrapper":Lcom/facebook/GraphRequest$Callback;
    new-instance v10, Lcom/facebook/GraphRequest;

    const-string v3, "me/friends"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, v10

    move-object v2, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v9}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10
.end method

.method public final newPlacesSearchRequest(Lcom/facebook/AccessToken;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)Lcom/facebook/GraphRequest;
    .locals 16
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "radiusInMeters"    # I
    .param p4, "resultsLimit"    # I
    .param p5, "searchText"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/facebook/GraphRequest$GraphJSONArrayCallback;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 417
    if-nez p2, :cond_1

    invoke-static/range {p5 .. p5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Either location or searchText must be specified."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 420
    :cond_1
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 421
    .local v0, "parameters":Landroid/os/Bundle;
    const-string/jumbo v1, "type"

    const-string v2, "place"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v1, "limit"

    move/from16 v11, p4

    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 423
    if-eqz p2, :cond_2

    .line 424
    nop

    .line 425
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%f,%f"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(locale, format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    const-string v2, "center"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v1, "distance"

    move/from16 v12, p3

    invoke-virtual {v0, v1, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 423
    :cond_2
    move/from16 v12, p3

    .line 428
    :goto_1
    invoke-static/range {p5 .. p5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 429
    const-string v1, "q"

    move-object/from16 v13, p5

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 428
    :cond_3
    move-object/from16 v13, p5

    .line 431
    :goto_2
    new-instance v1, Lcom/facebook/GraphRequest$Companion$newPlacesSearchRequest$wrapper$1;

    move-object/from16 v14, p6

    invoke-direct {v1, v14}, Lcom/facebook/GraphRequest$Companion$newPlacesSearchRequest$wrapper$1;-><init>(Lcom/facebook/GraphRequest$GraphJSONArrayCallback;)V

    check-cast v1, Lcom/facebook/GraphRequest$Callback;

    .line 438
    .local v1, "wrapper":Lcom/facebook/GraphRequest$Callback;
    new-instance v15, Lcom/facebook/GraphRequest;

    sget-object v6, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    const/4 v8, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    const-string v4, "search"

    move-object v2, v15

    move-object/from16 v3, p1

    move-object v5, v0

    move-object v7, v1

    invoke-direct/range {v2 .. v10}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15
.end method

.method public final newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 10
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "graphPath"    # Ljava/lang/String;
    .param p3, "graphObject"    # Lorg/json/JSONObject;
    .param p4, "callback"    # Lcom/facebook/GraphRequest$Callback;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 343
    new-instance v9, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 344
    .local v0, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v0, p3}, Lcom/facebook/GraphRequest;->setGraphObject(Lorg/json/JSONObject;)V

    .line 345
    return-object v0
.end method

.method public final newUploadPhotoRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 14
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "graphPath"    # Ljava/lang/String;
    .param p3, "image"    # Landroid/graphics/Bitmap;
    .param p4, "caption"    # Ljava/lang/String;
    .param p5, "params"    # Landroid/os/Bundle;
    .param p6, "callback"    # Lcom/facebook/GraphRequest$Callback;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 462
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p2

    .line 463
    .local v2, "graphPath":Ljava/lang/String;
    move-object v3, p0

    check-cast v3, Lcom/facebook/GraphRequest$Companion;

    invoke-direct {v3, v2}, Lcom/facebook/GraphRequest$Companion;->getDefaultPhotoPathIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 464
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 465
    .local v3, "parameters":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 466
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 468
    :cond_0
    move-object/from16 v4, p3

    check-cast v4, Landroid/os/Parcelable;

    const-string v5, "picture"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 469
    if-eqz v0, :cond_2

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 470
    const-string v4, "caption"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_2
    new-instance v13, Lcom/facebook/GraphRequest;

    sget-object v8, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    const/4 v10, 0x0

    const/16 v11, 0x20

    const/4 v12, 0x0

    move-object v4, v13

    move-object v5, p1

    move-object v6, v2

    move-object v7, v3

    move-object/from16 v9, p6

    invoke-direct/range {v4 .. v12}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v13
.end method

.method public final newUploadPhotoRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 20
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "graphPath"    # Ljava/lang/String;
    .param p3, "photoUri"    # Landroid/net/Uri;
    .param p4, "caption"    # Ljava/lang/String;
    .param p5, "params"    # Landroid/os/Bundle;
    .param p6, "callback"    # Lcom/facebook/GraphRequest$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    const-string v1, "photoUri"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    move-object/from16 v1, p2

    .line 538
    .local v1, "graphPath":Ljava/lang/String;
    move-object/from16 v2, p0

    check-cast v2, Lcom/facebook/GraphRequest$Companion;

    invoke-direct {v2, v1}, Lcom/facebook/GraphRequest$Companion;->getDefaultPhotoPathIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 539
    .end local v1    # "graphPath":Ljava/lang/String;
    .local v19, "graphPath":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/facebook/internal/Utility;->isFileUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    move-object/from16 v1, p0

    check-cast v1, Lcom/facebook/GraphRequest$Companion;

    .line 541
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 540
    move-object/from16 v2, p1

    move-object/from16 v3, v19

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/GraphRequest$Companion;->newUploadPhotoRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v1

    return-object v1

    .line 542
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/facebook/internal/Utility;->isContentUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 544
    nop

    .line 545
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 546
    .local v1, "parameters":Landroid/os/Bundle;
    if-eqz v9, :cond_1

    .line 547
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 549
    :cond_1
    move-object v2, v0

    check-cast v2, Landroid/os/Parcelable;

    const-string v3, "picture"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 550
    if-eqz v8, :cond_3

    move-object v2, v8

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 551
    const-string v2, "caption"

    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_3
    new-instance v2, Lcom/facebook/GraphRequest;

    sget-object v14, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    const/16 v16, 0x0

    const/16 v17, 0x20

    const/16 v18, 0x0

    move-object v10, v2

    move-object/from16 v11, p1

    move-object/from16 v12, v19

    move-object v13, v1

    move-object/from16 v15, p6

    invoke-direct/range {v10 .. v18}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 543
    .end local v1    # "parameters":Landroid/os/Bundle;
    :cond_4
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "The photo Uri must be either a file:// or content:// Uri"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public final newUploadPhotoRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 16
    .param p1, "accessToken"    # Lcom/facebook/AccessToken;
    .param p2, "graphPath"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/io/File;
    .param p4, "caption"    # Ljava/lang/String;
    .param p5, "params"    # Landroid/os/Bundle;
    .param p6, "callback"    # Lcom/facebook/GraphRequest$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 499
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p2

    .line 500
    .local v2, "graphPath":Ljava/lang/String;
    move-object/from16 v3, p0

    check-cast v3, Lcom/facebook/GraphRequest$Companion;

    invoke-direct {v3, v2}, Lcom/facebook/GraphRequest$Companion;->getDefaultPhotoPathIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 501
    const/high16 v3, 0x10000000

    move-object/from16 v13, p3

    invoke-static {v13, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 502
    .local v3, "descriptor":Landroid/os/ParcelFileDescriptor;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v14, v4

    .line 503
    .local v14, "parameters":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 504
    invoke-virtual {v14, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 506
    :cond_0
    move-object v4, v3

    check-cast v4, Landroid/os/Parcelable;

    const-string v5, "picture"

    invoke-virtual {v14, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 507
    if-eqz v0, :cond_2

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 508
    const-string v4, "caption"

    invoke-virtual {v14, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_2
    new-instance v15, Lcom/facebook/GraphRequest;

    sget-object v8, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    const/4 v10, 0x0

    const/16 v11, 0x20

    const/4 v12, 0x0

    move-object v4, v15

    move-object/from16 v5, p1

    move-object v6, v2

    move-object v7, v14

    move-object/from16 v9, p6

    invoke-direct/range {v4 .. v12}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15
.end method

.method public final runCallbacks$facebook_core_release(Lcom/facebook/GraphRequestBatch;Ljava/util/List;)V
    .locals 7
    .param p1, "requests"    # Lcom/facebook/GraphRequestBatch;
    .param p2, "responses"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphRequestBatch;",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1009
    invoke-virtual {p1}, Lcom/facebook/GraphRequestBatch;->size()I

    move-result v0

    .line 1013
    .local v0, "numRequests":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1014
    .local v1, "callbacks":Ljava/util/ArrayList;
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1015
    .local v2, "i":I
    invoke-virtual {p1, v2}, Lcom/facebook/GraphRequestBatch;->get(I)Lcom/facebook/GraphRequest;

    move-result-object v3

    .line 1016
    .local v3, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v3}, Lcom/facebook/GraphRequest;->getCallback()Lcom/facebook/GraphRequest$Callback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1017
    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v3}, Lcom/facebook/GraphRequest;->getCallback()Lcom/facebook/GraphRequest$Callback;

    move-result-object v5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1014
    .end local v3    # "request":Lcom/facebook/GraphRequest;
    :cond_0
    nop

    .end local v2    # "i":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1020
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1021
    new-instance v2, Lcom/facebook/GraphRequest$Companion$runCallbacks$runnable$1;

    invoke-direct {v2, v1, p1}, Lcom/facebook/GraphRequest$Companion$runCallbacks$runnable$1;-><init>(Ljava/util/ArrayList;Lcom/facebook/GraphRequestBatch;)V

    check-cast v2, Ljava/lang/Runnable;

    .line 1030
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p1}, Lcom/facebook/GraphRequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v3

    .line 1032
    .local v3, "callbackHandler":Landroid/os/Handler;
    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1033
    :cond_2
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1035
    .end local v2    # "runnable":Ljava/lang/Runnable;
    .end local v3    # "callbackHandler":Landroid/os/Handler;
    :cond_3
    :goto_1
    return-void
.end method

.method public final serializeToUrlConnection$facebook_core_release(Lcom/facebook/GraphRequestBatch;Ljava/net/HttpURLConnection;)V
    .locals 18
    .param p1, "requests"    # Lcom/facebook/GraphRequestBatch;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const-string v0, "requests"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1126
    new-instance v0, Lcom/facebook/internal/Logger;

    sget-object v1, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v2, "Request"

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/Logger;-><init>(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V

    move-object v10, v0

    .line 1127
    .local v10, "logger":Lcom/facebook/internal/Logger;
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/GraphRequestBatch;->size()I

    move-result v11

    .line 1128
    .local v11, "numRequests":I
    move-object/from16 v0, p0

    check-cast v0, Lcom/facebook/GraphRequest$Companion;

    invoke-direct {v0, v8}, Lcom/facebook/GraphRequest$Companion;->isGzipCompressible(Lcom/facebook/GraphRequestBatch;)Z

    move-result v12

    .line 1129
    .local v12, "shouldUseGzip":Z
    nop

    .line 1130
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v11, v2, :cond_0

    invoke-virtual {v8, v0}, Lcom/facebook/GraphRequestBatch;->get(I)Lcom/facebook/GraphRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/GraphRequest;->getHttpMethod()Lcom/facebook/HttpMethod;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    .line 1129
    :goto_1
    move-object v13, v3

    .line 1131
    .local v13, "connectionHttpMethod":Lcom/facebook/HttpMethod;
    invoke-virtual {v13}, Lcom/facebook/HttpMethod;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1132
    move-object/from16 v3, p0

    check-cast v3, Lcom/facebook/GraphRequest$Companion;

    invoke-direct {v3, v9, v12}, Lcom/facebook/GraphRequest$Companion;->setConnectionContentType(Ljava/net/HttpURLConnection;Z)V

    .line 1133
    invoke-virtual/range {p2 .. p2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v14

    .line 1134
    .local v14, "url":Ljava/net/URL;
    const-string v3, "Request:\n"

    invoke-virtual {v10, v3}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1135
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/GraphRequestBatch;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Id"

    invoke-virtual {v10, v4, v3}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1136
    const-string/jumbo v3, "url"

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "URL"

    invoke-virtual {v10, v3, v14}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1137
    invoke-virtual/range {p2 .. p2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "connection.requestMethod"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "Method"

    invoke-virtual {v10, v4, v3}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1138
    const-string v3, "User-Agent"

    invoke-virtual {v9, v3}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "connection.getRequestProperty(\"User-Agent\")"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v3, v4}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1139
    const-string v3, "Content-Type"

    invoke-virtual {v9, v3}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "connection.getRequestProperty(\"Content-Type\")"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v3, v4}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1140
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/GraphRequestBatch;->getTimeout()I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1141
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/GraphRequestBatch;->getTimeout()I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1145
    sget-object v3, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    if-ne v13, v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    move v15, v0

    .line 1146
    .local v15, "isPost":Z
    if-nez v15, :cond_3

    .line 1147
    invoke-virtual {v10}, Lcom/facebook/internal/Logger;->log()V

    .line 1148
    return-void

    .line 1150
    :cond_3
    invoke-virtual {v9, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1151
    move-object v2, v1

    check-cast v2, Ljava/io/OutputStream;

    .line 1152
    .local v2, "outputStream":Ljava/io/OutputStream;
    nop

    .line 1153
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual/range {p2 .. p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    check-cast v0, Ljava/io/OutputStream;

    move-object v2, v0

    .line 1154
    if-eqz v12, :cond_4

    .line 1155
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    check-cast v0, Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v0

    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .local v0, "outputStream":Ljava/io/OutputStream;
    goto :goto_2

    .line 1154
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :cond_4
    move-object/from16 v16, v2

    .line 1157
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .local v16, "outputStream":Ljava/io/OutputStream;
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    check-cast v0, Lcom/facebook/GraphRequest$Companion;

    invoke-direct {v0, v8}, Lcom/facebook/GraphRequest$Companion;->hasOnProgressCallbacks(Lcom/facebook/GraphRequestBatch;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1158
    check-cast v1, Lcom/facebook/ProgressNoopOutputStream;

    move-object v0, v1

    .line 1159
    .local v0, "countingStream":Lcom/facebook/ProgressNoopOutputStream;
    new-instance v1, Lcom/facebook/ProgressNoopOutputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/GraphRequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/ProgressNoopOutputStream;-><init>(Landroid/os/Handler;)V

    move-object v0, v1

    .line 1160
    move-object/from16 v1, p0

    check-cast v1, Lcom/facebook/GraphRequest$Companion;

    const/4 v3, 0x0

    move-object v6, v0

    check-cast v6, Ljava/io/OutputStream;

    move-object/from16 v2, p1

    move v4, v11

    move-object v5, v14

    move v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/facebook/GraphRequest$Companion;->processRequest(Lcom/facebook/GraphRequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;Z)V

    .line 1161
    invoke-virtual {v0}, Lcom/facebook/ProgressNoopOutputStream;->getMaxProgress()I

    move-result v1

    move v7, v1

    .line 1162
    .local v7, "max":I
    invoke-virtual {v0}, Lcom/facebook/ProgressNoopOutputStream;->getProgressMap()Ljava/util/Map;

    move-result-object v4

    .line 1163
    .local v4, "progressMap":Ljava/util/Map;
    new-instance v17, Lcom/facebook/ProgressOutputStream;

    int-to-long v5, v7

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ProgressOutputStream;-><init>(Ljava/io/OutputStream;Lcom/facebook/GraphRequestBatch;Ljava/util/Map;J)V

    check-cast v17, Ljava/io/OutputStream;

    move-object/from16 v1, v17

    move-object/from16 v16, v1

    .line 1165
    .end local v0    # "countingStream":Lcom/facebook/ProgressNoopOutputStream;
    .end local v4    # "progressMap":Ljava/util/Map;
    .end local v7    # "max":I
    :cond_5
    move-object/from16 v1, p0

    check-cast v1, Lcom/facebook/GraphRequest$Companion;

    move-object/from16 v2, p1

    move-object v3, v10

    move v4, v11

    move-object v5, v14

    move-object/from16 v6, v16

    move v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/facebook/GraphRequest$Companion;->processRequest(Lcom/facebook/GraphRequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1167
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 1168
    nop

    .line 1169
    invoke-virtual {v10}, Lcom/facebook/internal/Logger;->log()V

    .line 1170
    return-void

    .line 1168
    :catchall_0
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_3

    .end local v16    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v0

    .line 1167
    :goto_3
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_6
    throw v0
.end method

.method public final setDefaultBatchApplicationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationId"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 285
    invoke-static {p1}, Lcom/facebook/GraphRequest;->access$setDefaultBatchApplicationId$cp(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public final shouldWarnOnMissingFieldsParam$facebook_core_release(Lcom/facebook/GraphRequest;)Z
    .locals 8
    .param p1, "request"    # Lcom/facebook/GraphRequest;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1088
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->getVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1089
    .local v0, "version":Ljava/lang/String;
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 1090
    return v1

    .line 1092
    :cond_1
    const/4 v2, 0x0

    const-string/jumbo v4, "v"

    const/4 v5, 0x2

    invoke-static {v0, v4, v3, v5, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1093
    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1095
    :cond_3
    :goto_1
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v4, Lkotlin/text/Regex;

    const-string v6, "\\."

    invoke-direct {v4, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .local v2, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    .line 1941
    .local v4, "$i$f$toTypedArray":I
    move-object v6, v2

    .line 1942
    .local v6, "thisCollection$iv":Ljava/util/Collection;
    new-array v7, v3, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 1095
    .end local v2    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$toTypedArray":I
    .end local v6    # "thisCollection$iv":Ljava/util/Collection;
    move-object v2, v7

    check-cast v2, [Ljava/lang/String;

    .line 1097
    .local v2, "versionParts":[Ljava/lang/String;
    nop

    .line 1098
    array-length v4, v2

    if-lt v4, v5, :cond_4

    .line 1097
    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-gt v4, v5, :cond_5

    .line 1098
    :cond_4
    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lt v4, v5, :cond_6

    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_6

    :cond_5
    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    .line 1097
    :goto_2
    return v1

    .line 1942
    .local v2, "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v4    # "$i$f$toTypedArray":I
    .restart local v6    # "thisCollection$iv":Ljava/util/Collection;
    :cond_7
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1088
    .end local v0    # "version":Ljava/lang/String;
    .end local v2    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$toTypedArray":I
    .end local v6    # "thisCollection$iv":Ljava/util/Collection;
    :cond_8
    return v1
.end method

.method public final toHttpConnection(Lcom/facebook/GraphRequestBatch;)Ljava/net/HttpURLConnection;
    .locals 6
    .param p1, "requests"    # Lcom/facebook/GraphRequestBatch;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "could not construct request body"

    const-string v1, "requests"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 717
    move-object v1, p0

    check-cast v1, Lcom/facebook/GraphRequest$Companion;

    invoke-virtual {v1, p1}, Lcom/facebook/GraphRequest$Companion;->validateFieldsParamForGetRequests$facebook_core_release(Lcom/facebook/GraphRequestBatch;)V

    .line 718
    const/4 v1, 0x0

    .line 719
    .local v1, "url":Ljava/net/URL;
    nop

    .line 720
    nop

    .line 721
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/GraphRequestBatch;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 723
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/facebook/GraphRequestBatch;->get(I)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 726
    .local v2, "request":Lcom/facebook/GraphRequest;
    new-instance v3, Ljava/net/URL;

    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->getUrlForSingleRequest()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .end local v2    # "request":Lcom/facebook/GraphRequest;
    goto :goto_0

    .line 730
    :cond_0
    new-instance v3, Ljava/net/URL;

    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 721
    :goto_0
    nop

    .line 720
    move-object v1, v3

    .line 735
    const/4 v2, 0x0

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 736
    .local v2, "connection":Ljava/net/HttpURLConnection;
    nop

    .line 737
    :try_start_1
    move-object v3, p0

    check-cast v3, Lcom/facebook/GraphRequest$Companion;

    invoke-direct {v3, v1}, Lcom/facebook/GraphRequest$Companion;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3

    move-object v2, v3

    .line 738
    move-object v3, p0

    check-cast v3, Lcom/facebook/GraphRequest$Companion;

    invoke-virtual {v3, p1, v2}, Lcom/facebook/GraphRequest$Companion;->serializeToUrlConnection$facebook_core_release(Lcom/facebook/GraphRequestBatch;Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 745
    nop

    .line 746
    return-object v2

    .line 742
    :catch_0
    move-exception v3

    .line 743
    .local v3, "e":Lorg/json/JSONException;
    move-object v4, v2

    check-cast v4, Ljava/net/URLConnection;

    invoke-static {v4}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 744
    new-instance v4, Lcom/facebook/FacebookException;

    move-object v5, v3

    check-cast v5, Ljava/lang/Throwable;

    invoke-direct {v4, v0, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 739
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v3

    .line 740
    .local v3, "e":Ljava/io/IOException;
    move-object v4, v2

    check-cast v4, Ljava/net/URLConnection;

    invoke-static {v4}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 741
    new-instance v4, Lcom/facebook/FacebookException;

    move-object v5, v3

    check-cast v5, Ljava/lang/Throwable;

    invoke-direct {v4, v0, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 732
    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 733
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v2, Lcom/facebook/FacebookException;

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "could not construct URL for request"

    invoke-direct {v2, v4, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public final toHttpConnection(Ljava/util/Collection;)Ljava/net/HttpURLConnection;
    .locals 2
    .param p1, "requests"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 701
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    .line 702
    move-object v0, p0

    check-cast v0, Lcom/facebook/GraphRequest$Companion;

    new-instance v1, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v1, p1}, Lcom/facebook/GraphRequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/facebook/GraphRequest$Companion;->toHttpConnection(Lcom/facebook/GraphRequestBatch;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public final varargs toHttpConnection([Lcom/facebook/GraphRequest;)Ljava/net/HttpURLConnection;
    .locals 2
    .param p1, "requests"    # [Lcom/facebook/GraphRequest;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    move-object v0, p0

    check-cast v0, Lcom/facebook/GraphRequest$Companion;

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/facebook/GraphRequest$Companion;->toHttpConnection(Ljava/util/Collection;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public final validateFieldsParamForGetRequests$facebook_core_release(Lcom/facebook/GraphRequestBatch;)V
    .locals 9
    .param p1, "requests"    # Lcom/facebook/GraphRequestBatch;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1104
    invoke-virtual {p1}, Lcom/facebook/GraphRequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphRequest;

    .line 1105
    .local v1, "request":Lcom/facebook/GraphRequest;
    sget-object v2, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->getHttpMethod()Lcom/facebook/HttpMethod;

    move-result-object v3

    if-ne v2, v3, :cond_2

    move-object v2, p0

    check-cast v2, Lcom/facebook/GraphRequest$Companion;

    const-string v3, "request"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/facebook/GraphRequest$Companion;->shouldWarnOnMissingFieldsParam$facebook_core_release(Lcom/facebook/GraphRequest;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1106
    nop

    .line 1107
    nop

    .line 1106
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "fields"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1107
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1108
    :cond_0
    sget-object v3, Lcom/facebook/internal/Logger;->Companion:Lcom/facebook/internal/Logger$Companion;

    .line 1109
    sget-object v4, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    .line 1110
    const/4 v5, 0x5

    .line 1111
    nop

    .line 1112
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/Object;

    .line 1114
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->getGraphPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, ""

    :goto_1
    aput-object v6, v8, v2

    .line 1108
    const-string v6, "Request"

    const-string/jumbo v7, "starting with Graph API v2.4, GET requests for /%s should contain an explicit \"fields\" parameter."

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/internal/Logger$Companion;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1104
    .end local v1    # "request":Lcom/facebook/GraphRequest;
    :cond_2
    goto :goto_0

    .line 1118
    :cond_3
    return-void
.end method
