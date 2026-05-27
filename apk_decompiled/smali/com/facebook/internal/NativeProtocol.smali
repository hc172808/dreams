.class public final Lcom/facebook/internal/NativeProtocol;
.super Ljava/lang/Object;
.source "NativeProtocol.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/NativeProtocol$NativeAppInfo;,
        Lcom/facebook/internal/NativeProtocol$KatanaAppInfo;,
        Lcom/facebook/internal/NativeProtocol$MessengerAppInfo;,
        Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;,
        Lcom/facebook/internal/NativeProtocol$FBLiteAppInfo;,
        Lcom/facebook/internal/NativeProtocol$EffectTestAppInfo;,
        Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNativeProtocol.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeProtocol.kt\ncom/facebook/internal/NativeProtocol\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,857:1\n1551#2,9:858\n1799#2:867\n1800#2:869\n1560#2:870\n1#3:868\n*E\n*S KotlinDebug\n*F\n+ 1 NativeProtocol.kt\ncom/facebook/internal/NativeProtocol\n*L\n364#1,9:858\n364#1:867\n364#1:869\n364#1:870\n364#1:868\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u00089\n\u0002\u0010\u0011\n\u0002\u0010\u0008\n\u0002\u00084\n\u0002\u0010$\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u000e\u00c9\u0001\u00ca\u0001\u00cb\u0001\u00cc\u0001\u00cd\u0001\u00ce\u0001\u00cf\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u007f\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020v0u0tH\u0002J\u000f\u0010\u0080\u0001\u001a\u0008\u0012\u0004\u0012\u00020v0uH\u0002J\u000f\u0010\u0081\u0001\u001a\u0008\u0012\u0004\u0012\u00020v0uH\u0002J\u0013\u0010\u0082\u0001\u001a\u00030\u0083\u00012\u0007\u0010\u0084\u0001\u001a\u00020vH\u0002J.\u0010\u0085\u0001\u001a\u00020?2\u0010\u0010\u0086\u0001\u001a\u000b\u0012\u0004\u0012\u00020?\u0018\u00010\u0087\u00012\u0007\u0010\u0088\u0001\u001a\u00020?2\u0008\u0010\u0089\u0001\u001a\u00030\u008a\u0001H\u0007J\u0018\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u008c\u00012\n\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008e\u0001H\u0007J\u007f\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u0090\u00012\u0008\u0010\u0091\u0001\u001a\u00030\u0092\u00012\u0007\u0010\u0093\u0001\u001a\u00020\u00042\u0010\u0010\u0094\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0095\u00012\u0007\u0010\u0096\u0001\u001a\u00020\u00042\u0008\u0010\u0097\u0001\u001a\u00030\u0098\u00012\u0008\u0010\u0099\u0001\u001a\u00030\u0098\u00012\u0008\u0010\u009a\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u009c\u0001\u001a\u00020\u00042\u0007\u0010\u009d\u0001\u001a\u00020\u00042\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u009f\u0001\u001a\u00030\u0098\u0001H\u0007J~\u0010\u00a0\u0001\u001a\u0005\u0018\u00010\u0090\u00012\u0007\u0010\u0084\u0001\u001a\u00020v2\u0007\u0010\u0093\u0001\u001a\u00020\u00042\u0010\u0010\u0094\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0095\u00012\u0007\u0010\u0096\u0001\u001a\u00020\u00042\u0008\u0010\u0099\u0001\u001a\u00030\u0098\u00012\u0008\u0010\u009a\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u009c\u0001\u001a\u00020\u00042\u0007\u0010\u009d\u0001\u001a\u00020\u00042\u0008\u0010\u00a1\u0001\u001a\u00030\u0098\u00012\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u009f\u0001\u001a\u00030\u0098\u0001H\u0002JD\u0010\u00a2\u0001\u001a\u0005\u0018\u00010\u0090\u00012\u0008\u0010\u0091\u0001\u001a\u00030\u0092\u00012\t\u0010\u00a3\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010\u00a4\u0001\u001a\u0004\u0018\u00010\u00042\n\u0010\u00a5\u0001\u001a\u0005\u0018\u00010\u00a6\u00012\n\u0010\u00a7\u0001\u001a\u0005\u0018\u00010\u008c\u0001H\u0007J\u0016\u0010\u00a8\u0001\u001a\u0005\u0018\u00010\u0090\u00012\u0008\u0010\u0091\u0001\u001a\u00030\u0092\u0001H\u0007J.\u0010\u00a9\u0001\u001a\u0005\u0018\u00010\u0090\u00012\u0008\u0010\u00aa\u0001\u001a\u00030\u0090\u00012\n\u0010\u00ab\u0001\u001a\u0005\u0018\u00010\u008c\u00012\n\u0010\u00ac\u0001\u001a\u0005\u0018\u00010\u008e\u0001H\u0007J\u008f\u0001\u0010\u00ad\u0001\u001a\t\u0012\u0005\u0012\u00030\u0090\u00010u2\n\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u0092\u00012\u0007\u0010\u0093\u0001\u001a\u00020\u00042\u0010\u0010\u0094\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0095\u00012\u0007\u0010\u0096\u0001\u001a\u00020\u00042\u0008\u0010\u0097\u0001\u001a\u00030\u0098\u00012\u0008\u0010\u0099\u0001\u001a\u00030\u0098\u00012\u0008\u0010\u009a\u0001\u001a\u00030\u009b\u00012\u0007\u0010\u009c\u0001\u001a\u00020\u00042\u0007\u0010\u009d\u0001\u001a\u00020\u00042\u0008\u0010\u00a1\u0001\u001a\u00030\u0098\u00012\t\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u009f\u0001\u001a\u00030\u0098\u0001H\u0007J\u0016\u0010\u00ae\u0001\u001a\u0005\u0018\u00010\u0090\u00012\u0008\u0010\u0091\u0001\u001a\u00030\u0092\u0001H\u0007J\u0019\u0010\u00af\u0001\u001a\t\u0012\u0004\u0012\u00020?0\u0087\u00012\u0007\u0010\u0084\u0001\u001a\u00020vH\u0002J\u0016\u0010\u00b0\u0001\u001a\u0005\u0018\u00010\u008c\u00012\u0008\u0010\u00b1\u0001\u001a\u00030\u0090\u0001H\u0007J\u0018\u0010\u00b2\u0001\u001a\u0005\u0018\u00010\u00b3\u00012\n\u0010\u00b1\u0001\u001a\u0005\u0018\u00010\u0090\u0001H\u0007J\u0016\u0010\u00b4\u0001\u001a\u0005\u0018\u00010\u008c\u00012\u0008\u0010\u00b5\u0001\u001a\u00030\u0090\u0001H\u0007J\u0018\u0010\u00b6\u0001\u001a\u0005\u0018\u00010\u008e\u00012\n\u0010\u00b7\u0001\u001a\u0005\u0018\u00010\u008c\u0001H\u0007J\u001d\u0010\u00b8\u0001\u001a\u00030\u00a6\u00012\u0007\u0010\u00a4\u0001\u001a\u00020\u00042\u0008\u0010\u0089\u0001\u001a\u00030\u008a\u0001H\u0007J%\u0010\u00b9\u0001\u001a\u00030\u00a6\u00012\u000f\u0010\u00ba\u0001\u001a\n\u0012\u0004\u0012\u00020v\u0018\u00010u2\u0008\u0010\u0089\u0001\u001a\u00030\u008a\u0001H\u0002J\u0012\u0010\u00bb\u0001\u001a\u00020?2\u0007\u0010\u00bc\u0001\u001a\u00020?H\u0007J\u0016\u0010\u00bd\u0001\u001a\u0005\u0018\u00010\u008c\u00012\u0008\u0010\u00b1\u0001\u001a\u00030\u0090\u0001H\u0007J\u0013\u0010\u00be\u0001\u001a\u00020?2\u0008\u0010\u00b1\u0001\u001a\u00030\u0090\u0001H\u0007J\u0016\u0010\u00bf\u0001\u001a\u0005\u0018\u00010\u008c\u00012\u0008\u0010\u00b5\u0001\u001a\u00030\u0090\u0001H\u0007J\u0014\u0010\u00c0\u0001\u001a\u00030\u0098\u00012\u0008\u0010\u00b5\u0001\u001a\u00030\u0090\u0001H\u0007J\u0013\u0010\u00c1\u0001\u001a\u00030\u0098\u00012\u0007\u0010\u00c2\u0001\u001a\u00020?H\u0007J?\u0010\u00c3\u0001\u001a\u00030\u00c4\u00012\u0008\u0010\u00b1\u0001\u001a\u00030\u0090\u00012\t\u0010\u00a3\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010\u00a4\u0001\u001a\u0004\u0018\u00010\u00042\u0007\u0010\u00c2\u0001\u001a\u00020?2\n\u0010\u00c5\u0001\u001a\u0005\u0018\u00010\u008c\u0001H\u0007J\n\u0010\u00c6\u0001\u001a\u00030\u00c4\u0001H\u0007J-\u0010\u00c7\u0001\u001a\u0005\u0018\u00010\u0090\u00012\u0008\u0010\u0091\u0001\u001a\u00030\u0092\u00012\n\u0010\u00b1\u0001\u001a\u0005\u0018\u00010\u0090\u00012\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010vH\u0007J-\u0010\u00c8\u0001\u001a\u0005\u0018\u00010\u0090\u00012\u0008\u0010\u0091\u0001\u001a\u00030\u0092\u00012\n\u0010\u00b1\u0001\u001a\u0005\u0018\u00010\u0090\u00012\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010vH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0016\u0010=\u001a\u0008\u0012\u0004\u0012\u00020?0>X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010@R\u000e\u0010A\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010C\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010D\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010E\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010F\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010G\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010H\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010I\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010J\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010K\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010L\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010M\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010N\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010O\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010P\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010Q\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010R\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010S\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010T\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010U\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010V\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010W\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010X\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010Y\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010Z\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010[\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\\\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010]\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010^\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010_\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010`\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010a\u001a\u00020?X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010d\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010g\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010h\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010i\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010j\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010k\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010l\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010m\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010n\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010o\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010p\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010q\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R \u0010s\u001a\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020v0u0tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010w\u001a\u0008\u0012\u0004\u0012\u00020v0uX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010x\u001a\u0008\u0012\u0004\u0012\u00020v0uX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010y\u001a\u00020?8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008z\u0010\u0002\u001a\u0004\u0008{\u0010|R\u000e\u0010}\u001a\u00020~X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00d0\u0001"
    }
    d2 = {
        "Lcom/facebook/internal/NativeProtocol;",
        "",
        "()V",
        "ACTION_APPINVITE_DIALOG",
        "",
        "ACTION_CAMERA_EFFECT",
        "ACTION_FEED_DIALOG",
        "ACTION_LIKE_DIALOG",
        "ACTION_MESSAGE_DIALOG",
        "ACTION_OGACTIONPUBLISH_DIALOG",
        "ACTION_OGMESSAGEPUBLISH_DIALOG",
        "ACTION_SHARE_STORY",
        "AUDIENCE_EVERYONE",
        "AUDIENCE_FRIENDS",
        "AUDIENCE_ME",
        "BRIDGE_ARG_ACTION_ID_STRING",
        "BRIDGE_ARG_APP_NAME_STRING",
        "BRIDGE_ARG_ERROR_BUNDLE",
        "BRIDGE_ARG_ERROR_CODE",
        "BRIDGE_ARG_ERROR_DESCRIPTION",
        "BRIDGE_ARG_ERROR_JSON",
        "BRIDGE_ARG_ERROR_SUBCODE",
        "BRIDGE_ARG_ERROR_TYPE",
        "CONTENT_SCHEME",
        "ERROR_APPLICATION_ERROR",
        "ERROR_NETWORK_ERROR",
        "ERROR_PERMISSION_DENIED",
        "ERROR_PROTOCOL_ERROR",
        "ERROR_SERVICE_DISABLED",
        "ERROR_UNKNOWN_ERROR",
        "ERROR_USER_CANCELED",
        "EXTRA_ACCESS_TOKEN",
        "EXTRA_APPLICATION_ID",
        "EXTRA_APPLICATION_NAME",
        "EXTRA_DATA_ACCESS_EXPIRATION_TIME",
        "EXTRA_DIALOG_COMPLETE_KEY",
        "EXTRA_DIALOG_COMPLETION_GESTURE_KEY",
        "EXTRA_EXPIRES_SECONDS_SINCE_EPOCH",
        "EXTRA_GET_INSTALL_DATA_PACKAGE",
        "EXTRA_GRAPH_API_VERSION",
        "EXTRA_LOGGER_REF",
        "EXTRA_PERMISSIONS",
        "EXTRA_PROTOCOL_ACTION",
        "EXTRA_PROTOCOL_BRIDGE_ARGS",
        "EXTRA_PROTOCOL_CALL_ID",
        "EXTRA_PROTOCOL_METHOD_ARGS",
        "EXTRA_PROTOCOL_METHOD_RESULTS",
        "EXTRA_PROTOCOL_VERSION",
        "EXTRA_PROTOCOL_VERSIONS",
        "EXTRA_TOAST_DURATION_MS",
        "EXTRA_USER_ID",
        "FACEBOOK_PROXY_AUTH_ACTIVITY",
        "FACEBOOK_PROXY_AUTH_APP_ID_KEY",
        "FACEBOOK_PROXY_AUTH_E2E_KEY",
        "FACEBOOK_PROXY_AUTH_PERMISSIONS_KEY",
        "FACEBOOK_SDK_VERSION_KEY",
        "FACEBOOK_TOKEN_REFRESH_ACTIVITY",
        "IMAGE_URL_KEY",
        "IMAGE_USER_GENERATED_KEY",
        "INTENT_ACTION_PLATFORM_ACTIVITY",
        "INTENT_ACTION_PLATFORM_SERVICE",
        "KNOWN_PROTOCOL_VERSIONS",
        "",
        "",
        "[Ljava/lang/Integer;",
        "MESSAGE_GET_ACCESS_TOKEN_REPLY",
        "MESSAGE_GET_ACCESS_TOKEN_REQUEST",
        "MESSAGE_GET_AK_SEAMLESS_TOKEN_REPLY",
        "MESSAGE_GET_AK_SEAMLESS_TOKEN_REQUEST",
        "MESSAGE_GET_INSTALL_DATA_REPLY",
        "MESSAGE_GET_INSTALL_DATA_REQUEST",
        "MESSAGE_GET_LIKE_STATUS_REPLY",
        "MESSAGE_GET_LIKE_STATUS_REQUEST",
        "MESSAGE_GET_LOGIN_STATUS_REPLY",
        "MESSAGE_GET_LOGIN_STATUS_REQUEST",
        "MESSAGE_GET_PROTOCOL_VERSIONS_REPLY",
        "MESSAGE_GET_PROTOCOL_VERSIONS_REQUEST",
        "NO_PROTOCOL_AVAILABLE",
        "OPEN_GRAPH_CREATE_OBJECT_KEY",
        "PLATFORM_PROVIDER",
        "PLATFORM_PROVIDER_VERSIONS",
        "PLATFORM_PROVIDER_VERSION_COLUMN",
        "PROTOCOL_VERSION_20121101",
        "PROTOCOL_VERSION_20130502",
        "PROTOCOL_VERSION_20130618",
        "PROTOCOL_VERSION_20131107",
        "PROTOCOL_VERSION_20140204",
        "PROTOCOL_VERSION_20140324",
        "PROTOCOL_VERSION_20140701",
        "PROTOCOL_VERSION_20141001",
        "PROTOCOL_VERSION_20141028",
        "PROTOCOL_VERSION_20141107",
        "PROTOCOL_VERSION_20141218",
        "PROTOCOL_VERSION_20160327",
        "PROTOCOL_VERSION_20170213",
        "PROTOCOL_VERSION_20170411",
        "PROTOCOL_VERSION_20170417",
        "PROTOCOL_VERSION_20171115",
        "RESULT_ARGS_ACCESS_TOKEN",
        "RESULT_ARGS_DIALOG_COMPLETE_KEY",
        "RESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY",
        "RESULT_ARGS_EXPIRES_SECONDS_SINCE_EPOCH",
        "RESULT_ARGS_GRAPH_DOMAIN",
        "RESULT_ARGS_PERMISSIONS",
        "RESULT_ARGS_SIGNED_REQUEST",
        "STATUS_ERROR_CODE",
        "STATUS_ERROR_DESCRIPTION",
        "STATUS_ERROR_JSON",
        "STATUS_ERROR_SUBCODE",
        "STATUS_ERROR_TYPE",
        "TAG",
        "WEB_DIALOG_ACTION",
        "WEB_DIALOG_IS_FALLBACK",
        "WEB_DIALOG_PARAMS",
        "WEB_DIALOG_URL",
        "actionToAppInfoMap",
        "",
        "",
        "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
        "effectCameraAppInfoList",
        "facebookAppInfoList",
        "latestKnownVersion",
        "getLatestKnownVersion$annotations",
        "getLatestKnownVersion",
        "()I",
        "protocolVersionsAsyncUpdating",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "buildActionToAppInfoMap",
        "buildEffectCameraAppInfoList",
        "buildFacebookAppList",
        "buildPlatformProviderVersionURI",
        "Landroid/net/Uri;",
        "appInfo",
        "computeLatestAvailableVersionFromVersionSpec",
        "allAvailableFacebookAppVersions",
        "Ljava/util/TreeSet;",
        "latestSdkVersion",
        "versionSpec",
        "",
        "createBundleForException",
        "Landroid/os/Bundle;",
        "e",
        "Lcom/facebook/FacebookException;",
        "createFacebookLiteIntent",
        "Landroid/content/Intent;",
        "context",
        "Landroid/content/Context;",
        "applicationId",
        "permissions",
        "",
        "e2e",
        "isRerequest",
        "",
        "isForPublish",
        "defaultAudience",
        "Lcom/facebook/login/DefaultAudience;",
        "clientState",
        "authType",
        "messengerPageId",
        "resetMessengerState",
        "createNativeAppIntent",
        "ignoreAppSwitchToLoggedOut",
        "createPlatformActivityIntent",
        "callId",
        "action",
        "versionResult",
        "Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;",
        "extras",
        "createPlatformServiceIntent",
        "createProtocolResultIntent",
        "requestIntent",
        "results",
        "error",
        "createProxyAuthIntents",
        "createTokenRefreshIntent",
        "fetchAllAvailableProtocolVersionsForAppInfo",
        "getBridgeArgumentsFromIntent",
        "intent",
        "getCallIdFromIntent",
        "Ljava/util/UUID;",
        "getErrorDataFromResultIntent",
        "resultIntent",
        "getExceptionFromErrorData",
        "errorData",
        "getLatestAvailableProtocolVersionForAction",
        "getLatestAvailableProtocolVersionForAppInfoList",
        "appInfoList",
        "getLatestAvailableProtocolVersionForService",
        "minimumVersion",
        "getMethodArgumentsFromIntent",
        "getProtocolVersionFromIntent",
        "getSuccessResultsFromIntent",
        "isErrorResult",
        "isVersionCompatibleWithBucketedIntent",
        "version",
        "setupProtocolRequestIntent",
        "",
        "params",
        "updateAllAvailableProtocolVersionsAsync",
        "validateActivityIntent",
        "validateServiceIntent",
        "EffectTestAppInfo",
        "FBLiteAppInfo",
        "KatanaAppInfo",
        "MessengerAppInfo",
        "NativeAppInfo",
        "ProtocolVersionQueryResult",
        "WakizashiAppInfo",
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
.field public static final ACTION_APPINVITE_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.APPINVITES_DIALOG"

.field public static final ACTION_CAMERA_EFFECT:Ljava/lang/String; = "com.facebook.platform.action.request.CAMERA_EFFECT"

.field public static final ACTION_FEED_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.FEED_DIALOG"

.field public static final ACTION_LIKE_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.LIKE_DIALOG"

.field public static final ACTION_MESSAGE_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.MESSAGE_DIALOG"

.field public static final ACTION_OGACTIONPUBLISH_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG"

.field public static final ACTION_OGMESSAGEPUBLISH_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG"

.field public static final ACTION_SHARE_STORY:Ljava/lang/String; = "com.facebook.platform.action.request.SHARE_STORY"

.field public static final AUDIENCE_EVERYONE:Ljava/lang/String; = "everyone"

.field public static final AUDIENCE_FRIENDS:Ljava/lang/String; = "friends"

.field public static final AUDIENCE_ME:Ljava/lang/String; = "only_me"

.field public static final BRIDGE_ARG_ACTION_ID_STRING:Ljava/lang/String; = "action_id"

.field public static final BRIDGE_ARG_APP_NAME_STRING:Ljava/lang/String; = "app_name"

.field public static final BRIDGE_ARG_ERROR_BUNDLE:Ljava/lang/String; = "error"

.field public static final BRIDGE_ARG_ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final BRIDGE_ARG_ERROR_DESCRIPTION:Ljava/lang/String; = "error_description"

.field public static final BRIDGE_ARG_ERROR_JSON:Ljava/lang/String; = "error_json"

.field public static final BRIDGE_ARG_ERROR_SUBCODE:Ljava/lang/String; = "error_subcode"

.field public static final BRIDGE_ARG_ERROR_TYPE:Ljava/lang/String; = "error_type"

.field private static final CONTENT_SCHEME:Ljava/lang/String; = "content://"

.field public static final ERROR_APPLICATION_ERROR:Ljava/lang/String; = "ApplicationError"

.field public static final ERROR_NETWORK_ERROR:Ljava/lang/String; = "NetworkError"

.field public static final ERROR_PERMISSION_DENIED:Ljava/lang/String; = "PermissionDenied"

.field public static final ERROR_PROTOCOL_ERROR:Ljava/lang/String; = "ProtocolError"

.field public static final ERROR_SERVICE_DISABLED:Ljava/lang/String; = "ServiceDisabled"

.field public static final ERROR_UNKNOWN_ERROR:Ljava/lang/String; = "UnknownError"

.field public static final ERROR_USER_CANCELED:Ljava/lang/String; = "UserCanceled"

.field public static final EXTRA_ACCESS_TOKEN:Ljava/lang/String; = "com.facebook.platform.extra.ACCESS_TOKEN"

.field public static final EXTRA_APPLICATION_ID:Ljava/lang/String; = "com.facebook.platform.extra.APPLICATION_ID"

.field public static final EXTRA_APPLICATION_NAME:Ljava/lang/String; = "com.facebook.platform.extra.APPLICATION_NAME"

.field public static final EXTRA_DATA_ACCESS_EXPIRATION_TIME:Ljava/lang/String; = "com.facebook.platform.extra.EXTRA_DATA_ACCESS_EXPIRATION_TIME"

.field public static final EXTRA_DIALOG_COMPLETE_KEY:Ljava/lang/String; = "com.facebook.platform.extra.DID_COMPLETE"

.field public static final EXTRA_DIALOG_COMPLETION_GESTURE_KEY:Ljava/lang/String; = "com.facebook.platform.extra.COMPLETION_GESTURE"

.field public static final EXTRA_EXPIRES_SECONDS_SINCE_EPOCH:Ljava/lang/String; = "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH"

.field public static final EXTRA_GET_INSTALL_DATA_PACKAGE:Ljava/lang/String; = "com.facebook.platform.extra.INSTALLDATA_PACKAGE"

.field public static final EXTRA_GRAPH_API_VERSION:Ljava/lang/String; = "com.facebook.platform.extra.GRAPH_API_VERSION"

.field public static final EXTRA_LOGGER_REF:Ljava/lang/String; = "com.facebook.platform.extra.LOGGER_REF"

.field public static final EXTRA_PERMISSIONS:Ljava/lang/String; = "com.facebook.platform.extra.PERMISSIONS"

.field public static final EXTRA_PROTOCOL_ACTION:Ljava/lang/String; = "com.facebook.platform.protocol.PROTOCOL_ACTION"

.field public static final EXTRA_PROTOCOL_BRIDGE_ARGS:Ljava/lang/String; = "com.facebook.platform.protocol.BRIDGE_ARGS"

.field public static final EXTRA_PROTOCOL_CALL_ID:Ljava/lang/String; = "com.facebook.platform.protocol.CALL_ID"

.field public static final EXTRA_PROTOCOL_METHOD_ARGS:Ljava/lang/String; = "com.facebook.platform.protocol.METHOD_ARGS"

.field public static final EXTRA_PROTOCOL_METHOD_RESULTS:Ljava/lang/String; = "com.facebook.platform.protocol.RESULT_ARGS"

.field public static final EXTRA_PROTOCOL_VERSION:Ljava/lang/String; = "com.facebook.platform.protocol.PROTOCOL_VERSION"

.field public static final EXTRA_PROTOCOL_VERSIONS:Ljava/lang/String; = "com.facebook.platform.extra.PROTOCOL_VERSIONS"

.field public static final EXTRA_TOAST_DURATION_MS:Ljava/lang/String; = "com.facebook.platform.extra.EXTRA_TOAST_DURATION_MS"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "com.facebook.platform.extra.USER_ID"

.field private static final FACEBOOK_PROXY_AUTH_ACTIVITY:Ljava/lang/String; = "com.facebook.katana.ProxyAuth"

.field public static final FACEBOOK_PROXY_AUTH_APP_ID_KEY:Ljava/lang/String; = "client_id"

.field public static final FACEBOOK_PROXY_AUTH_E2E_KEY:Ljava/lang/String; = "e2e"

.field public static final FACEBOOK_PROXY_AUTH_PERMISSIONS_KEY:Ljava/lang/String; = "scope"

.field public static final FACEBOOK_SDK_VERSION_KEY:Ljava/lang/String; = "facebook_sdk_version"

.field private static final FACEBOOK_TOKEN_REFRESH_ACTIVITY:Ljava/lang/String; = "com.facebook.katana.platform.TokenRefreshService"

.field public static final IMAGE_URL_KEY:Ljava/lang/String; = "url"

.field public static final IMAGE_USER_GENERATED_KEY:Ljava/lang/String; = "user_generated"

.field public static final INSTANCE:Lcom/facebook/internal/NativeProtocol;

.field public static final INTENT_ACTION_PLATFORM_ACTIVITY:Ljava/lang/String; = "com.facebook.platform.PLATFORM_ACTIVITY"

.field public static final INTENT_ACTION_PLATFORM_SERVICE:Ljava/lang/String; = "com.facebook.platform.PLATFORM_SERVICE"

.field private static final KNOWN_PROTOCOL_VERSIONS:[Ljava/lang/Integer;

.field public static final MESSAGE_GET_ACCESS_TOKEN_REPLY:I = 0x10001

.field public static final MESSAGE_GET_ACCESS_TOKEN_REQUEST:I = 0x10000

.field public static final MESSAGE_GET_AK_SEAMLESS_TOKEN_REPLY:I = 0x10009

.field public static final MESSAGE_GET_AK_SEAMLESS_TOKEN_REQUEST:I = 0x10008

.field public static final MESSAGE_GET_INSTALL_DATA_REPLY:I = 0x10005

.field public static final MESSAGE_GET_INSTALL_DATA_REQUEST:I = 0x10004

.field public static final MESSAGE_GET_LIKE_STATUS_REPLY:I = 0x10007

.field public static final MESSAGE_GET_LIKE_STATUS_REQUEST:I = 0x10006

.field public static final MESSAGE_GET_LOGIN_STATUS_REPLY:I = 0x1000b

.field public static final MESSAGE_GET_LOGIN_STATUS_REQUEST:I = 0x1000a

.field public static final MESSAGE_GET_PROTOCOL_VERSIONS_REPLY:I = 0x10003

.field public static final MESSAGE_GET_PROTOCOL_VERSIONS_REQUEST:I = 0x10002

.field public static final NO_PROTOCOL_AVAILABLE:I = -0x1

.field public static final OPEN_GRAPH_CREATE_OBJECT_KEY:Ljava/lang/String; = "fbsdk:create_object"

.field private static final PLATFORM_PROVIDER:Ljava/lang/String; = ".provider.PlatformProvider"

.field private static final PLATFORM_PROVIDER_VERSIONS:Ljava/lang/String; = ".provider.PlatformProvider/versions"

.field private static final PLATFORM_PROVIDER_VERSION_COLUMN:Ljava/lang/String; = "version"

.field public static final PROTOCOL_VERSION_20121101:I = 0x133060d

.field public static final PROTOCOL_VERSION_20130502:I = 0x1332ac6

.field public static final PROTOCOL_VERSION_20130618:I = 0x1332b3a

.field public static final PROTOCOL_VERSION_20131107:I = 0x1332d23

.field public static final PROTOCOL_VERSION_20140204:I = 0x13350ac

.field public static final PROTOCOL_VERSION_20140324:I = 0x1335124

.field public static final PROTOCOL_VERSION_20140701:I = 0x133529d

.field public static final PROTOCOL_VERSION_20141001:I = 0x13353c9

.field public static final PROTOCOL_VERSION_20141028:I = 0x13353e4

.field public static final PROTOCOL_VERSION_20141107:I = 0x1335433

.field public static final PROTOCOL_VERSION_20141218:I = 0x13354a2

.field public static final PROTOCOL_VERSION_20160327:I = 0x1339f47

.field public static final PROTOCOL_VERSION_20170213:I = 0x133c5e5

.field public static final PROTOCOL_VERSION_20170411:I = 0x133c6ab

.field public static final PROTOCOL_VERSION_20170417:I = 0x133c6b1

.field public static final PROTOCOL_VERSION_20171115:I = 0x133c96b

.field public static final RESULT_ARGS_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final RESULT_ARGS_DIALOG_COMPLETE_KEY:Ljava/lang/String; = "didComplete"

.field public static final RESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY:Ljava/lang/String; = "completionGesture"

.field public static final RESULT_ARGS_EXPIRES_SECONDS_SINCE_EPOCH:Ljava/lang/String; = "expires_seconds_since_epoch"

.field public static final RESULT_ARGS_GRAPH_DOMAIN:Ljava/lang/String; = "graph_domain"

.field public static final RESULT_ARGS_PERMISSIONS:Ljava/lang/String; = "permissions"

.field public static final RESULT_ARGS_SIGNED_REQUEST:Ljava/lang/String; = "signed request"

.field public static final STATUS_ERROR_CODE:Ljava/lang/String; = "com.facebook.platform.status.ERROR_CODE"

.field public static final STATUS_ERROR_DESCRIPTION:Ljava/lang/String; = "com.facebook.platform.status.ERROR_DESCRIPTION"

.field public static final STATUS_ERROR_JSON:Ljava/lang/String; = "com.facebook.platform.status.ERROR_JSON"

.field public static final STATUS_ERROR_SUBCODE:Ljava/lang/String; = "com.facebook.platform.status.ERROR_SUBCODE"

.field public static final STATUS_ERROR_TYPE:Ljava/lang/String; = "com.facebook.platform.status.ERROR_TYPE"

.field private static final TAG:Ljava/lang/String;

.field public static final WEB_DIALOG_ACTION:Ljava/lang/String; = "action"

.field public static final WEB_DIALOG_IS_FALLBACK:Ljava/lang/String; = "is_fallback"

.field public static final WEB_DIALOG_PARAMS:Ljava/lang/String; = "params"

.field public static final WEB_DIALOG_URL:Ljava/lang/String; = "url"

.field private static final actionToAppInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final effectCameraAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final facebookAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final protocolVersionsAsyncUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Lcom/facebook/internal/NativeProtocol;

    invoke-direct {v0}, Lcom/facebook/internal/NativeProtocol;-><init>()V

    sput-object v0, Lcom/facebook/internal/NativeProtocol;->INSTANCE:Lcom/facebook/internal/NativeProtocol;

    .line 52
    const-class v1, Lcom/facebook/internal/NativeProtocol;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativeProtocol::class.java.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/facebook/internal/NativeProtocol;->TAG:Ljava/lang/String;

    .line 213
    invoke-direct {v0}, Lcom/facebook/internal/NativeProtocol;->buildFacebookAppList()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    .line 214
    invoke-direct {v0}, Lcom/facebook/internal/NativeProtocol;->buildEffectCameraAppInfoList()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/facebook/internal/NativeProtocol;->effectCameraAppInfoList:Ljava/util/List;

    .line 215
    invoke-direct {v0}, Lcom/facebook/internal/NativeProtocol;->buildActionToAppInfoMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/NativeProtocol;->actionToAppInfoMap:Ljava/util/Map;

    .line 216
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/internal/NativeProtocol;->protocolVersionsAsyncUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 399
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Integer;

    .line 400
    const v2, 0x133c6b1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 401
    const v1, 0x1339f47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 402
    const v1, 0x13354a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 403
    const v1, 0x1335433

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 404
    const v1, 0x13353e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 405
    const v1, 0x13353c9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 406
    const v1, 0x133529d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 407
    const v1, 0x1335124

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 408
    const v1, 0x13350ac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 409
    const v1, 0x1332d23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 410
    const v1, 0x1332b3a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 411
    const v1, 0x1332ac6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 412
    const v1, 0x133060d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 399
    sput-object v0, Lcom/facebook/internal/NativeProtocol;->KNOWN_PROTOCOL_VERSIONS:[Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$fetchAllAvailableProtocolVersionsForAppInfo(Lcom/facebook/internal/NativeProtocol;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Ljava/util/TreeSet;
    .locals 3

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 50
    .local p0, "$this":Lcom/facebook/internal/NativeProtocol;
    .local p1, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/internal/NativeProtocol;->fetchAllAvailableProtocolVersionsForAppInfo(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Ljava/util/TreeSet;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local p0    # "$this":Lcom/facebook/internal/NativeProtocol;
    .end local p1    # "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final synthetic access$getFacebookAppInfoList$p(Lcom/facebook/internal/NativeProtocol;)Ljava/util/List;
    .locals 3

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 50
    .local p0, "$this":Lcom/facebook/internal/NativeProtocol;
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local p0    # "$this":Lcom/facebook/internal/NativeProtocol;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final synthetic access$getProtocolVersionsAsyncUpdating$p(Lcom/facebook/internal/NativeProtocol;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 3

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 50
    .local p0, "$this":Lcom/facebook/internal/NativeProtocol;
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/internal/NativeProtocol;->protocolVersionsAsyncUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local p0    # "$this":Lcom/facebook/internal/NativeProtocol;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private final buildActionToAppInfoMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    move-object v0, p0

    .line 231
    .local v0, "this":Lcom/facebook/internal/NativeProtocol;
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    .line 232
    .local v2, "map":Ljava/util/Map;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v3, "messengerAppInfoList":Ljava/util/ArrayList;
    new-instance v4, Lcom/facebook/internal/NativeProtocol$MessengerAppInfo;

    invoke-direct {v4}, Lcom/facebook/internal/NativeProtocol$MessengerAppInfo;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    const-string v4, "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG"

    sget-object v5, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v4, "com.facebook.platform.action.request.FEED_DIALOG"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v4, "com.facebook.platform.action.request.LIKE_DIALOG"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v4, "com.facebook.platform.action.request.APPINVITES_DIALOG"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v4, "com.facebook.platform.action.request.MESSAGE_DIALOG"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v4, "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v4, "com.facebook.platform.action.request.CAMERA_EFFECT"

    sget-object v6, Lcom/facebook/internal/NativeProtocol;->effectCameraAppInfoList:Ljava/util/List;

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v4, "com.facebook.platform.action.request.SHARE_STORY"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    return-object v2

    .end local v0    # "this":Lcom/facebook/internal/NativeProtocol;
    .end local v2    # "map":Ljava/util/Map;
    .end local v3    # "messengerAppInfoList":Ljava/util/ArrayList;
    :catchall_0
    move-exception v2

    invoke-static {v2, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private final buildEffectCameraAppInfoList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    move-object v0, p0

    .line 225
    .local v0, "this":Lcom/facebook/internal/NativeProtocol;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    const/4 v3, 0x0

    new-instance v4, Lcom/facebook/internal/NativeProtocol$EffectTestAppInfo;

    invoke-direct {v4}, Lcom/facebook/internal/NativeProtocol$EffectTestAppInfo;-><init>()V

    check-cast v4, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    aput-object v4, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    .line 226
    .local v2, "list":Ljava/util/ArrayList;
    invoke-direct {v0}, Lcom/facebook/internal/NativeProtocol;->buildFacebookAppList()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 227
    move-object v3, v2

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .end local v0    # "this":Lcom/facebook/internal/NativeProtocol;
    .end local v2    # "list":Ljava/util/ArrayList;
    :catchall_0
    move-exception v2

    invoke-static {v2, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private final buildFacebookAppList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    move-object v0, p0

    .line 220
    .local v0, "this":Lcom/facebook/internal/NativeProtocol;
    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    const/4 v3, 0x0

    new-instance v4, Lcom/facebook/internal/NativeProtocol$KatanaAppInfo;

    invoke-direct {v4}, Lcom/facebook/internal/NativeProtocol$KatanaAppInfo;-><init>()V

    check-cast v4, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;

    invoke-direct {v4}, Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;-><init>()V

    check-cast v4, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    aput-object v4, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .end local v0    # "this":Lcom/facebook/internal/NativeProtocol;
    :catchall_0
    move-exception v2

    invoke-static {v2, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private final buildPlatformProviderVersionURI(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/net/Uri;
    .locals 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    move-object v0, p0

    .line 783
    .local v0, "this":Lcom/facebook/internal/NativeProtocol;
    .local p1, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".provider.PlatformProvider/versions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "Uri.parse(CONTENT_SCHEME\u2026ATFORM_PROVIDER_VERSIONS)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .end local v0    # "this":Lcom/facebook/internal/NativeProtocol;
    .end local p1    # "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static final computeLatestAvailableVersionFromVersionSpec(Ljava/util/TreeSet;I[I)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;I[I)I"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .local p0, "allAvailableFacebookAppVersions":Ljava/util/TreeSet;
    .local p1, "latestSdkVersion":I
    .local p2, "versionSpec":[I
    :cond_0
    :try_start_0
    const-string/jumbo v1, "versionSpec"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 746
    const/4 v1, -0x1

    if-nez p0, :cond_1

    .line 747
    return v1

    .line 752
    :cond_1
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    .line 753
    .local v3, "versionSpecIndex":I
    invoke-virtual {p0}, Ljava/util/TreeSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v4

    .line 754
    .local v4, "fbAppVersionsIterator":Ljava/util/Iterator;
    const/4 v5, -0x1

    .line 755
    .local v5, "latestFacebookAppVersion":I
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 756
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 759
    .local v6, "fbAppVersion":Ljava/lang/Integer;
    const-string v7, "fbAppVersion"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v5, v7

    .line 762
    :goto_1
    if-ltz v3, :cond_2

    aget v7, p2, v3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v7, v8, :cond_2

    .line 763
    add-int/lit8 v3, v3, -0x1

    .line 762
    goto :goto_1

    .line 765
    :cond_2
    if-gez v3, :cond_3

    .line 768
    return v1

    .line 773
    :cond_3
    aget v7, p2, v3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 775
    rem-int/lit8 v7, v3, 0x2

    if-nez v7, :cond_4

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 776
    :cond_4
    nop

    .line 775
    :goto_2
    return v1

    .line 755
    .end local v6    # "fbAppVersion":Ljava/lang/Integer;
    :cond_5
    goto :goto_0

    .line 779
    :cond_6
    return v1

    .end local v3    # "versionSpecIndex":I
    .end local v4    # "fbAppVersionsIterator":Ljava/util/Iterator;
    .end local v5    # "latestFacebookAppVersion":I
    .end local p0    # "allAvailableFacebookAppVersions":Ljava/util/TreeSet;
    .end local p1    # "latestSdkVersion":I
    .end local p2    # "versionSpec":[I
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static final createBundleForException(Lcom/facebook/FacebookException;)Landroid/os/Bundle;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 617
    .local p0, "e":Lcom/facebook/FacebookException;
    :cond_0
    if-nez p0, :cond_1

    .line 618
    return-object v2

    .line 620
    :cond_1
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 621
    .local v1, "errorBundle":Landroid/os/Bundle;
    const-string v3, "error_description"

    invoke-virtual {p0}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    instance-of v3, p0, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v3, :cond_2

    .line 623
    const-string v3, "error_type"

    const-string v4, "UserCanceled"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    :cond_2
    return-object v1

    .end local v1    # "errorBundle":Landroid/os/Bundle;
    .end local p0    # "e":Lcom/facebook/FacebookException;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final createFacebookLiteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZZLcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/facebook/login/DefaultAudience;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v1, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object/from16 v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object/from16 v15, p2

    .local v15, "permissions":Ljava/util/Collection;
    move-object/from16 v12, p6

    .local v12, "defaultAudience":Lcom/facebook/login/DefaultAudience;
    move/from16 v16, p4

    .local v16, "isRerequest":Z
    move-object/from16 v11, p8

    .local v11, "authType":Ljava/lang/String;
    move-object/from16 v13, p9

    .local v13, "messengerPageId":Ljava/lang/String;
    move/from16 v14, p10

    .local v14, "resetMessengerState":Z
    move-object/from16 v10, p1

    .local v10, "applicationId":Ljava/lang/String;
    move-object/from16 v9, p3

    .local v9, "e2e":Ljava/lang/String;
    move-object/from16 v7, p7

    .local v7, "clientState":Ljava/lang/String;
    move/from16 v8, p5

    .local v8, "isForPublish":Z
    :try_start_0
    const-string v3, "context"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "applicationId"

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "permissions"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "e2e"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "defaultAudience"

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "clientState"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "authType"

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    new-instance v3, Lcom/facebook/internal/NativeProtocol$FBLiteAppInfo;

    invoke-direct {v3}, Lcom/facebook/internal/NativeProtocol$FBLiteAppInfo;-><init>()V

    check-cast v3, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    move-object v6, v3

    .line 284
    .local v6, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    nop

    .line 285
    sget-object v3, Lcom/facebook/internal/NativeProtocol;->INSTANCE:Lcom/facebook/internal/NativeProtocol;

    .line 286
    nop

    .line 287
    nop

    .line 288
    nop

    .line 289
    nop

    .line 290
    nop

    .line 291
    nop

    .line 292
    nop

    .line 293
    nop

    .line 294
    const/16 v17, 0x0

    .line 295
    nop

    .line 296
    nop

    .line 285
    move-object v4, v6

    move-object v5, v10

    move-object v2, v6

    .end local v6    # "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .local v2, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    move-object v6, v15

    move-object/from16 v18, v7

    .end local v7    # "clientState":Ljava/lang/String;
    .local v18, "clientState":Ljava/lang/String;
    move-object v7, v9

    move-object/from16 v19, v9

    .end local v9    # "e2e":Ljava/lang/String;
    .local v19, "e2e":Ljava/lang/String;
    move-object v9, v12

    move-object/from16 v20, v10

    .end local v10    # "applicationId":Ljava/lang/String;
    .local v20, "applicationId":Ljava/lang/String;
    move-object/from16 v10, v18

    move-object/from16 v21, v11

    .end local v11    # "authType":Ljava/lang/String;
    .local v21, "authType":Ljava/lang/String;
    move-object/from16 v22, v12

    .end local v12    # "defaultAudience":Lcom/facebook/login/DefaultAudience;
    .local v22, "defaultAudience":Lcom/facebook/login/DefaultAudience;
    move/from16 v12, v17

    invoke-direct/range {v3 .. v14}, Lcom/facebook/internal/NativeProtocol;->createNativeAppIntent(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZLcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    .line 284
    nop

    .line 297
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v0, v3, v2}, Lcom/facebook/internal/NativeProtocol;->validateActivityIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    .end local v3    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    return-object v1

    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .end local v8    # "isForPublish":Z
    .end local v13    # "messengerPageId":Ljava/lang/String;
    .end local v14    # "resetMessengerState":Z
    .end local v15    # "permissions":Ljava/util/Collection;
    .end local v16    # "isRerequest":Z
    .end local v18    # "clientState":Ljava/lang/String;
    .end local v19    # "e2e":Ljava/lang/String;
    .end local v20    # "applicationId":Ljava/lang/String;
    .end local v21    # "authType":Ljava/lang/String;
    .end local v22    # "defaultAudience":Lcom/facebook/login/DefaultAudience;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private final createNativeAppIntent(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZLcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/content/Intent;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/facebook/login/DefaultAudience;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    invoke-static/range {p0 .. p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    move-object/from16 v2, p0

    .local v2, "this":Lcom/facebook/internal/NativeProtocol;
    move-object/from16 v0, p2

    .local v0, "applicationId":Ljava/lang/String;
    move-object/from16 v3, p6

    .local v3, "defaultAudience":Lcom/facebook/login/DefaultAudience;
    move-object/from16 v4, p4

    .local v4, "e2e":Ljava/lang/String;
    move-object/from16 v5, p8

    .local v5, "authType":Ljava/lang/String;
    move/from16 v6, p9

    .local v6, "ignoreAppSwitchToLoggedOut":Z
    move/from16 v7, p11

    .local v7, "resetMessengerState":Z
    move-object/from16 v8, p10

    .local v8, "messengerPageId":Ljava/lang/String;
    move-object/from16 v9, p1

    .local v9, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    move-object/from16 v10, p3

    .local v10, "permissions":Ljava/util/Collection;
    move-object/from16 v11, p7

    .local v11, "clientState":Ljava/lang/String;
    move/from16 v12, p5

    .line 314
    .local v12, "isForPublish":Z
    :try_start_0
    invoke-virtual {v9}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getLoginActivity()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 316
    .local v13, "activityName":Ljava/lang/String;
    nop

    .line 317
    nop

    .line 319
    nop

    .line 317
    nop

    .line 318
    nop

    .line 317
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 318
    invoke-virtual {v9}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 319
    const-string v15, "client_id"

    invoke-virtual {v14, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    const-string v15, "Intent()\n            .se\u2026PP_ID_KEY, applicationId)"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    nop

    .line 320
    .local v14, "intent":Landroid/content/Intent;
    const-string v15, "facebook_sdk_version"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/facebook/FacebookSdk;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v15, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    invoke-static {v10}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 322
    const-string v1, "scope"

    const-string v15, ","

    check-cast v15, Ljava/lang/CharSequence;

    move-object/from16 p2, v0

    .end local v0    # "applicationId":Ljava/lang/String;
    .local p2, "applicationId":Ljava/lang/String;
    move-object v0, v10

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v15, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 321
    .end local v2    # "this":Lcom/facebook/internal/NativeProtocol;
    .end local p2    # "applicationId":Ljava/lang/String;
    .restart local v0    # "applicationId":Ljava/lang/String;
    :cond_1
    move-object/from16 p2, v0

    .line 324
    .end local v0    # "applicationId":Ljava/lang/String;
    .restart local p2    # "applicationId":Ljava/lang/String;
    :goto_0
    invoke-static {v4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 325
    const-string v0, "e2e"

    invoke-virtual {v14, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    :cond_2
    const-string/jumbo v0, "state"

    invoke-virtual {v14, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    nop

    .line 329
    const-string v0, "response_type"

    .line 330
    const-string/jumbo v1, "token,signed_request,graph_domain"

    .line 328
    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    nop

    .line 332
    const-string v0, "return_scopes"

    const-string/jumbo v1, "true"

    .line 331
    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    if-eqz v12, :cond_3

    .line 334
    nop

    .line 335
    const-string v0, "default_audience"

    invoke-virtual {v3}, Lcom/facebook/login/DefaultAudience;->getNativeProtocolAudience()Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    :cond_3
    const-string v0, "legacy_override"

    invoke-static {}, Lcom/facebook/FacebookSdk;->getGraphApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v0, "auth_type"

    invoke-virtual {v14, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    if-eqz v6, :cond_4

    .line 342
    const-string v0, "fail_on_logged_out"

    const/4 v1, 0x1

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 344
    :cond_4
    const-string v0, "messenger_page_id"

    invoke-virtual {v14, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string v0, "reset_messenger_state"

    invoke-virtual {v14, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    return-object v14

    .end local v3    # "defaultAudience":Lcom/facebook/login/DefaultAudience;
    .end local v4    # "e2e":Ljava/lang/String;
    .end local v5    # "authType":Ljava/lang/String;
    .end local v6    # "ignoreAppSwitchToLoggedOut":Z
    .end local v7    # "resetMessengerState":Z
    .end local v8    # "messengerPageId":Ljava/lang/String;
    .end local v9    # "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .end local v10    # "permissions":Ljava/util/Collection;
    .end local v11    # "clientState":Ljava/lang/String;
    .end local v12    # "isForPublish":Z
    .end local v13    # "activityName":Ljava/lang/String;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local p2    # "applicationId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_1

    .line 314
    .restart local v0    # "applicationId":Ljava/lang/String;
    .restart local v3    # "defaultAudience":Lcom/facebook/login/DefaultAudience;
    .restart local v4    # "e2e":Ljava/lang/String;
    .restart local v5    # "authType":Ljava/lang/String;
    .restart local v6    # "ignoreAppSwitchToLoggedOut":Z
    .restart local v7    # "resetMessengerState":Z
    .restart local v8    # "messengerPageId":Ljava/lang/String;
    .restart local v9    # "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .restart local v10    # "permissions":Ljava/util/Collection;
    .restart local v11    # "clientState":Ljava/lang/String;
    .restart local v12    # "isForPublish":Z
    :cond_5
    const/4 v1, 0x0

    return-object v1

    .line 346
    .end local v0    # "applicationId":Ljava/lang/String;
    .end local v3    # "defaultAudience":Lcom/facebook/login/DefaultAudience;
    .end local v4    # "e2e":Ljava/lang/String;
    .end local v5    # "authType":Ljava/lang/String;
    .end local v6    # "ignoreAppSwitchToLoggedOut":Z
    .end local v7    # "resetMessengerState":Z
    .end local v8    # "messengerPageId":Ljava/lang/String;
    .end local v9    # "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .end local v10    # "permissions":Ljava/util/Collection;
    .end local v11    # "clientState":Ljava/lang/String;
    .end local v12    # "isForPublish":Z
    :catchall_1
    move-exception v0

    :goto_1
    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static final createPlatformActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .local p0, "context":Landroid/content/Context;
    .local p1, "callId":Ljava/lang/String;
    .local p2, "action":Ljava/lang/String;
    .local p3, "versionResult":Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;
    .local p4, "extras":Landroid/os/Bundle;
    :cond_0
    :try_start_0
    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    if-nez p3, :cond_1

    .line 432
    return-object v2

    .line 434
    :cond_1
    invoke-virtual {p3}, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->getAppInfo()Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 435
    .local v1, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    nop

    .line 436
    nop

    .line 439
    nop

    .line 436
    nop

    .line 438
    nop

    .line 436
    nop

    .line 437
    nop

    .line 436
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 437
    const-string v4, "com.facebook.platform.PLATFORM_ACTIVITY"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 438
    invoke-virtual {v1}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 439
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 435
    nop

    .line 440
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {p0, v3, v1}, Lcom/facebook/internal/NativeProtocol;->validateActivityIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;

    move-result-object v4

    move-object v3, v4

    .line 441
    if-nez v3, :cond_2

    .line 442
    return-object v2

    .line 444
    :cond_2
    invoke-virtual {p3}, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->getProtocolVersion()I

    move-result v4

    invoke-static {v3, p1, p2, v4, p4}, Lcom/facebook/internal/NativeProtocol;->setupProtocolRequestIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    return-object v3

    .line 434
    .end local v1    # "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    return-object v2

    .line 445
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "callId":Ljava/lang/String;
    .end local p2    # "action":Ljava/lang/String;
    .end local p3    # "versionResult":Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;
    .end local p4    # "extras":Landroid/os/Bundle;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final createPlatformServiceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .local p0, "context":Landroid/content/Context;
    :cond_0
    :try_start_0
    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    sget-object v1, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 511
    .local v3, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    nop

    .line 512
    nop

    .line 514
    nop

    .line 512
    nop

    .line 513
    nop

    .line 512
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.facebook.platform.PLATFORM_SERVICE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v3}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 514
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 511
    nop

    .line 515
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {p0, v4, v3}, Lcom/facebook/internal/NativeProtocol;->validateServiceIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v5

    .line 516
    if-eqz v4, :cond_1

    .line 517
    return-object v4

    .line 516
    .end local v3    # "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    goto :goto_0

    .line 520
    :cond_2
    return-object v2

    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final createProtocolResultIntent(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/FacebookException;)Landroid/content/Intent;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .local p0, "requestIntent":Landroid/content/Intent;
    .local p1, "results":Landroid/os/Bundle;
    .local p2, "error":Lcom/facebook/FacebookException;
    :cond_0
    :try_start_0
    const-string v1, "requestIntent"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getCallIdFromIntent(Landroid/content/Intent;)Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 494
    .local v1, "callId":Ljava/util/UUID;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 495
    .local v3, "resultIntent":Landroid/content/Intent;
    const-string v4, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getProtocolVersionFromIntent(Landroid/content/Intent;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 496
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 497
    .local v4, "bridgeArguments":Landroid/os/Bundle;
    const-string v5, "action_id"

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    if-eqz p2, :cond_1

    .line 499
    const-string v5, "error"

    invoke-static {p2}, Lcom/facebook/internal/NativeProtocol;->createBundleForException(Lcom/facebook/FacebookException;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 501
    :cond_1
    const-string v5, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 502
    if-eqz p1, :cond_2

    .line 503
    const-string v5, "com.facebook.platform.protocol.RESULT_ARGS"

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    :cond_2
    return-object v3

    .line 493
    .end local v1    # "callId":Ljava/util/UUID;
    .end local v3    # "resultIntent":Landroid/content/Intent;
    .end local v4    # "bridgeArguments":Landroid/os/Bundle;
    :cond_3
    return-object v2

    .line 505
    .end local p0    # "requestIntent":Landroid/content/Intent;
    .end local p1    # "results":Landroid/os/Bundle;
    .end local p2    # "error":Lcom/facebook/FacebookException;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final createProxyAuthIntents(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZZLcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Ljava/util/List;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/facebook/login/DefaultAudience;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v1, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object/from16 v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object/from16 v15, p2

    .local v15, "permissions":Ljava/util/Collection;
    move-object/from16 v11, p6

    .local v11, "defaultAudience":Lcom/facebook/login/DefaultAudience;
    move/from16 v16, p4

    .local v16, "isRerequest":Z
    move-object/from16 v10, p8

    .local v10, "authType":Ljava/lang/String;
    move/from16 v12, p9

    .local v12, "ignoreAppSwitchToLoggedOut":Z
    move/from16 v14, p11

    .local v14, "resetMessengerState":Z
    move-object/from16 v13, p10

    .local v13, "messengerPageId":Ljava/lang/String;
    move-object/from16 v9, p1

    .local v9, "applicationId":Ljava/lang/String;
    move-object/from16 v7, p3

    .local v7, "e2e":Ljava/lang/String;
    move-object/from16 v6, p7

    .local v6, "clientState":Ljava/lang/String;
    move/from16 v8, p5

    .local v8, "isForPublish":Z
    :try_start_0
    const-string v3, "applicationId"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "permissions"

    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "e2e"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "defaultAudience"

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "clientState"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "authType"

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    sget-object v3, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    move-object/from16 v17, v3

    .local v17, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/16 v18, 0x0

    .line 858
    .local v18, "$i$f$mapNotNull":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    move-object v5, v3

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object/from16 v19, v17

    .local v19, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/16 v20, 0x0

    .line 866
    .local v20, "$i$f$mapNotNullTo":I
    move-object/from16 v21, v19

    .local v21, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/16 v22, 0x0

    .line 867
    .local v22, "$i$f$forEach":I
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v24, v3

    .local v24, "element$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v25, v24

    .local v25, "element$iv$iv":Ljava/lang/Object;
    const/16 v26, 0x0

    .line 866
    .local v26, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object/from16 v4, v25

    check-cast v4, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .local v4, "it":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    const/16 v27, 0x0

    .line 365
    .local v27, "$i$a$-mapNotNull-NativeProtocol$createProxyAuthIntents$1":I
    sget-object v3, Lcom/facebook/internal/NativeProtocol;->INSTANCE:Lcom/facebook/internal/NativeProtocol;

    .line 366
    nop

    .line 367
    nop

    .line 368
    nop

    .line 369
    nop

    .line 370
    nop

    .line 371
    nop

    .line 372
    nop

    .line 373
    nop

    .line 374
    nop

    .line 375
    nop

    .line 376
    nop

    .line 365
    move-object v2, v5

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v9

    move-object/from16 v28, v6

    .end local v6    # "clientState":Ljava/lang/String;
    .local v28, "clientState":Ljava/lang/String;
    move-object v6, v15

    move-object/from16 v29, v7

    .end local v7    # "e2e":Ljava/lang/String;
    .local v29, "e2e":Ljava/lang/String;
    move-object/from16 v30, v9

    .end local v9    # "applicationId":Ljava/lang/String;
    .local v30, "applicationId":Ljava/lang/String;
    move-object v9, v11

    move-object/from16 v31, v10

    .end local v10    # "authType":Ljava/lang/String;
    .local v31, "authType":Ljava/lang/String;
    move-object/from16 v10, v28

    move-object/from16 v32, v11

    .end local v11    # "defaultAudience":Lcom/facebook/login/DefaultAudience;
    .local v32, "defaultAudience":Lcom/facebook/login/DefaultAudience;
    move-object/from16 v11, v31

    invoke-direct/range {v3 .. v14}, Lcom/facebook/internal/NativeProtocol;->createNativeAppIntent(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZLcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    .end local v4    # "it":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .end local v27    # "$i$a$-mapNotNull-NativeProtocol$createProxyAuthIntents$1":I
    if-eqz v3, :cond_1

    .line 868
    .local v3, "it$iv$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 866
    .local v4, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v3    # "it$iv$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    goto :goto_1

    :cond_1
    nop

    .end local v25    # "element$iv$iv":Ljava/lang/Object;
    .end local v26    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    :goto_1
    move-object v5, v2

    move-object/from16 v6, v28

    move-object/from16 v7, v29

    move-object/from16 v9, v30

    move-object/from16 v10, v31

    move-object/from16 v11, v32

    const/4 v2, 0x0

    .end local v24    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 869
    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v28    # "clientState":Ljava/lang/String;
    .end local v29    # "e2e":Ljava/lang/String;
    .end local v30    # "applicationId":Ljava/lang/String;
    .end local v31    # "authType":Ljava/lang/String;
    .end local v32    # "defaultAudience":Lcom/facebook/login/DefaultAudience;
    .restart local v5    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v6    # "clientState":Ljava/lang/String;
    .restart local v7    # "e2e":Ljava/lang/String;
    .restart local v9    # "applicationId":Ljava/lang/String;
    .restart local v10    # "authType":Ljava/lang/String;
    .restart local v11    # "defaultAudience":Lcom/facebook/login/DefaultAudience;
    :cond_2
    move-object v2, v5

    move-object/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v9

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    .line 870
    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "clientState":Ljava/lang/String;
    .end local v7    # "e2e":Ljava/lang/String;
    .end local v9    # "applicationId":Ljava/lang/String;
    .end local v10    # "authType":Ljava/lang/String;
    .end local v11    # "defaultAudience":Lcom/facebook/login/DefaultAudience;
    .end local v21    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v22    # "$i$f$forEach":I
    .restart local v2    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v28    # "clientState":Ljava/lang/String;
    .restart local v29    # "e2e":Ljava/lang/String;
    .restart local v30    # "applicationId":Ljava/lang/String;
    .restart local v31    # "authType":Ljava/lang/String;
    .restart local v32    # "defaultAudience":Lcom/facebook/login/DefaultAudience;
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v19    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v20    # "$i$f$mapNotNullTo":I
    check-cast v2, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    nop

    .line 364
    .end local v17    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v18    # "$i$f$mapNotNull":I
    return-object v2

    .end local v0    # "context":Landroid/content/Context;
    .end local v8    # "isForPublish":Z
    .end local v12    # "ignoreAppSwitchToLoggedOut":Z
    .end local v13    # "messengerPageId":Ljava/lang/String;
    .end local v14    # "resetMessengerState":Z
    .end local v15    # "permissions":Ljava/util/Collection;
    .end local v16    # "isRerequest":Z
    .end local v28    # "clientState":Ljava/lang/String;
    .end local v29    # "e2e":Ljava/lang/String;
    .end local v30    # "applicationId":Ljava/lang/String;
    .end local v31    # "authType":Ljava/lang/String;
    .end local v32    # "defaultAudience":Lcom/facebook/login/DefaultAudience;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static final createTokenRefreshIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .local p0, "context":Landroid/content/Context;
    :cond_0
    :try_start_0
    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    sget-object v1, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 383
    .local v3, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    nop

    .line 384
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.facebook.katana.platform.TokenRefreshService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 383
    nop

    .line 385
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {p0, v4, v3}, Lcom/facebook/internal/NativeProtocol;->validateServiceIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v5

    .line 386
    if-eqz v4, :cond_1

    .line 387
    return-object v4

    .line 386
    .end local v3    # "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    goto :goto_0

    .line 390
    :cond_2
    return-object v2

    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private final fetchAllAvailableProtocolVersionsForAppInfo(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Ljava/util/TreeSet;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ")",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string/jumbo v1, "version"

    const-string v2, "Failed to query content resolver."

    invoke-static/range {p0 .. p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    return-object v3

    :cond_0
    move-object/from16 v4, p0

    .local v4, "this":Lcom/facebook/internal/NativeProtocol;
    move-object/from16 v5, p1

    .line 684
    .local v5, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    :try_start_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    move-object v6, v0

    .line 685
    .local v6, "allAvailableVersions":Ljava/util/TreeSet;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    move-object v7, v0

    .line 686
    .local v7, "appContext":Landroid/content/Context;
    const-string v0, "appContext"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 687
    .local v8, "contentResolver":Landroid/content/ContentResolver;
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v10

    .line 688
    .local v10, "projection":[Ljava/lang/String;
    invoke-direct {v4, v5}, Lcom/facebook/internal/NativeProtocol;->buildPlatformProviderVersionURI(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/net/Uri;

    move-result-object v9

    .line 689
    .local v9, "uri":Landroid/net/Uri;
    move-object v0, v3

    check-cast v0, Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v14, v0

    .line 690
    .local v14, "c":Landroid/database/Cursor;
    nop

    .line 694
    :try_start_1
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v11, "FacebookSdk.getApplicationContext()"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v15, v0

    .line 695
    .local v15, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".provider.PlatformProvider"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 696
    .local v13, "contentProviderName":Ljava/lang/String;
    move-object v0, v3

    check-cast v0, Landroid/content/pm/ProviderInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v0

    .line 697
    .local v11, "providerInfo":Landroid/content/pm/ProviderInfo;
    nop

    .line 698
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v15, v13, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v11, v0

    move-object v3, v11

    goto :goto_0

    .line 699
    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 704
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    sget-object v12, Lcom/facebook/internal/NativeProtocol;->TAG:Ljava/lang/String;

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v12, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, v11

    .line 705
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v11    # "providerInfo":Landroid/content/pm/ProviderInfo;
    .local v3, "providerInfo":Landroid/content/pm/ProviderInfo;
    :goto_0
    nop

    .line 706
    if-eqz v3, :cond_1

    .line 707
    nop

    .line 708
    nop

    .line 709
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v0, 0x0

    move-object/from16 v16, v13

    .end local v13    # "contentProviderName":Ljava/lang/String;
    .local v16, "contentProviderName":Ljava/lang/String;
    move-object v13, v0

    :try_start_4
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 723
    :catch_1
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 724
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_5
    sget-object v11, Lcom/facebook/internal/NativeProtocol;->TAG:Ljava/lang/String;

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const/4 v0, 0x0

    goto :goto_1

    .line 720
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 721
    .local v0, "ex":Ljava/lang/SecurityException;
    sget-object v11, Lcom/facebook/internal/NativeProtocol;->TAG:Ljava/lang/String;

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/4 v0, 0x0

    .end local v0    # "ex":Ljava/lang/SecurityException;
    goto :goto_1

    .line 710
    :catch_3
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 711
    .local v0, "ex":Ljava/lang/NullPointerException;
    sget-object v11, Lcom/facebook/internal/NativeProtocol;->TAG:Ljava/lang/String;

    invoke-static {v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/4 v0, 0x0

    .line 708
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :goto_1
    move-object v14, v0

    .line 727
    if-eqz v14, :cond_2

    .line 728
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 729
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 730
    .local v0, "version":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 728
    nop

    .end local v0    # "version":I
    goto :goto_2

    .line 706
    .end local v16    # "contentProviderName":Ljava/lang/String;
    .restart local v13    # "contentProviderName":Ljava/lang/String;
    :cond_1
    move-object/from16 v16, v13

    .line 735
    .end local v3    # "providerInfo":Landroid/content/pm/ProviderInfo;
    .end local v13    # "contentProviderName":Ljava/lang/String;
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    if-eqz v14, :cond_3

    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 736
    .end local v4    # "this":Lcom/facebook/internal/NativeProtocol;
    :cond_3
    nop

    .line 737
    return-object v6

    .line 736
    .restart local v4    # "this":Lcom/facebook/internal/NativeProtocol;
    :catchall_0
    move-exception v0

    .line 735
    if-eqz v14, :cond_4

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .end local v4    # "this":Lcom/facebook/internal/NativeProtocol;
    :cond_4
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 737
    .end local v5    # "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .end local v6    # "allAvailableVersions":Ljava/util/TreeSet;
    .end local v7    # "appContext":Landroid/content/Context;
    .end local v8    # "contentResolver":Landroid/content/ContentResolver;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "projection":[Ljava/lang/String;
    .end local v14    # "c":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static final getBridgeArgumentsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .local p0, "intent":Landroid/content/Intent;
    :cond_0
    :try_start_0
    const-string v1, "intent"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getProtocolVersionFromIntent(Landroid/content/Intent;)I

    move-result v1

    .line 555
    .local v1, "version":I
    invoke-static {v1}, Lcom/facebook/internal/NativeProtocol;->isVersionCompatibleWithBucketedIntent(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 556
    goto :goto_0

    .line 557
    :cond_1
    const-string v3, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    :goto_0
    return-object v2

    .end local v1    # "version":I
    .end local p0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final getCallIdFromIntent(Landroid/content/Intent;)Ljava/util/UUID;
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 530
    .local p0, "intent":Landroid/content/Intent;
    :cond_0
    if-nez p0, :cond_1

    .line 531
    return-object v2

    .line 533
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getProtocolVersionFromIntent(Landroid/content/Intent;)I

    move-result v1

    .line 534
    .local v1, "version":I
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 535
    .local v3, "callIdString":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/internal/NativeProtocol;->isVersionCompatibleWithBucketedIntent(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 536
    const-string v4, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 537
    .local v4, "bridgeArgs":Landroid/os/Bundle;
    if-eqz v4, :cond_3

    .line 538
    const-string v5, "action_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .end local v4    # "bridgeArgs":Landroid/os/Bundle;
    goto :goto_0

    .line 541
    :cond_2
    const-string v4, "com.facebook.platform.protocol.CALL_ID"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 542
    :cond_3
    :goto_0
    nop

    .line 543
    move-object v4, v2

    check-cast v4, Ljava/util/UUID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    .local v4, "callId":Ljava/util/UUID;
    if-eqz v3, :cond_4

    .line 545
    nop

    .line 546
    :try_start_1
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v0

    goto :goto_1

    .line 547
    :catch_0
    move-exception v0

    .line 549
    :cond_4
    :goto_1
    return-object v4

    .end local v1    # "version":I
    .end local v3    # "callIdString":Ljava/lang/String;
    .end local v4    # "callId":Ljava/util/UUID;
    .end local p0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final getErrorDataFromResultIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .local p0, "resultIntent":Landroid/content/Intent;
    :cond_0
    :try_start_0
    const-string v1, "resultIntent"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 586
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->isErrorResult(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 587
    return-object v2

    .line 589
    :cond_1
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getBridgeArgumentsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    .line 590
    .local v1, "bridgeArgs":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 591
    const-string v3, "error"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 592
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    :goto_0
    return-object v0

    .end local v1    # "bridgeArgs":Landroid/os/Bundle;
    .end local p0    # "resultIntent":Landroid/content/Intent;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final getExceptionFromErrorData(Landroid/os/Bundle;)Lcom/facebook/FacebookException;
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 597
    .local p0, "errorData":Landroid/os/Bundle;
    :cond_0
    if-nez p0, :cond_1

    .line 598
    return-object v2

    .line 600
    :cond_1
    :try_start_0
    const-string v1, "error_type"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 601
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 602
    const-string v3, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 604
    :cond_2
    const-string v3, "error_description"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 605
    .local v3, "description":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 606
    const-string v4, "com.facebook.platform.status.ERROR_DESCRIPTION"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 608
    :cond_3
    if-eqz v1, :cond_4

    const-string v4, "UserCanceled"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 609
    new-instance v4, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v4, v3}, Lcom/facebook/FacebookOperationCanceledException;-><init>(Ljava/lang/String;)V

    check-cast v4, Lcom/facebook/FacebookException;

    goto :goto_0

    .line 610
    :cond_4
    new-instance v4, Lcom/facebook/FacebookException;

    invoke-direct {v4, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    :goto_0
    return-object v4

    .end local v1    # "type":Ljava/lang/String;
    .end local v3    # "description":Ljava/lang/String;
    .end local p0    # "errorData":Landroid/os/Bundle;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final getLatestAvailableProtocolVersionForAction(Ljava/lang/String;[I)Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .local p0, "action":Ljava/lang/String;
    .local p1, "versionSpec":[I
    :cond_0
    :try_start_0
    const-string v1, "action"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "versionSpec"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 641
    sget-object v1, Lcom/facebook/internal/NativeProtocol;->actionToAppInfoMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 642
    .local v1, "appInfoList":Ljava/util/List;
    :goto_0
    sget-object v3, Lcom/facebook/internal/NativeProtocol;->INSTANCE:Lcom/facebook/internal/NativeProtocol;

    invoke-direct {v3, v1, p1}, Lcom/facebook/internal/NativeProtocol;->getLatestAvailableProtocolVersionForAppInfoList(Ljava/util/List;[I)Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .end local v1    # "appInfoList":Ljava/util/List;
    .end local p0    # "action":Ljava/lang/String;
    .end local p1    # "versionSpec":[I
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private final getLatestAvailableProtocolVersionForAppInfoList(Ljava/util/List;[I)Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;[I)",
            "Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    move-object v0, p0

    .line 650
    .local v0, "this":Lcom/facebook/internal/NativeProtocol;
    .local p1, "appInfoList":Ljava/util/List;
    .local p2, "versionSpec":[I
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->updateAllAvailableProtocolVersionsAsync()V

    .line 651
    if-nez p1, :cond_1

    .line 652
    sget-object v2, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->Companion:Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult$Companion;

    invoke-virtual {v2}, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult$Companion;->createEmpty()Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;

    move-result-object v1

    return-object v1

    .line 656
    .end local v0    # "this":Lcom/facebook/internal/NativeProtocol;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 657
    .local v3, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    nop

    .line 658
    nop

    .line 659
    invoke-virtual {v3}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getAvailableVersions()Ljava/util/TreeSet;

    move-result-object v4

    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->getLatestKnownVersion()I

    move-result v5

    .line 658
    invoke-static {v4, v5, p2}, Lcom/facebook/internal/NativeProtocol;->computeLatestAvailableVersionFromVersionSpec(Ljava/util/TreeSet;I[I)I

    move-result v4

    .line 657
    nop

    .line 660
    .local v4, "protocolVersion":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 661
    sget-object v2, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->Companion:Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult$Companion;

    invoke-virtual {v2, v3, v4}, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult$Companion;->create(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;I)Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;

    move-result-object v1

    return-object v1

    .line 660
    .end local v3    # "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .end local v4    # "protocolVersion":I
    :cond_2
    goto :goto_0

    .line 664
    :cond_3
    sget-object v2, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->Companion:Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult$Companion;

    invoke-virtual {v2}, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult$Companion;->createEmpty()Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .end local p1    # "appInfoList":Ljava/util/List;
    .end local p2    # "versionSpec":[I
    :catchall_0
    move-exception p1

    invoke-static {p1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static final getLatestAvailableProtocolVersionForService(I)I
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 631
    .local p0, "minimumVersion":I
    :cond_0
    nop

    .line 633
    nop

    .line 631
    :try_start_0
    sget-object v1, Lcom/facebook/internal/NativeProtocol;->INSTANCE:Lcom/facebook/internal/NativeProtocol;

    .line 632
    sget-object v3, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    const/4 v4, 0x1

    new-array v4, v4, [I

    aput p0, v4, v2

    .line 631
    invoke-direct {v1, v3, v4}, Lcom/facebook/internal/NativeProtocol;->getLatestAvailableProtocolVersionForAppInfoList(Ljava/util/List;[I)Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->getProtocolVersion()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .end local p0    # "minimumVersion":I
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static final getLatestKnownVersion()I
    .locals 3

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 395
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/internal/NativeProtocol;->KNOWN_PROTOCOL_VERSIONS:[Ljava/lang/Integer;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static synthetic getLatestKnownVersion$annotations()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    return-void
.end method

.method public static final getMethodArgumentsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .local p0, "intent":Landroid/content/Intent;
    :cond_0
    :try_start_0
    const-string v1, "intent"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getProtocolVersionFromIntent(Landroid/content/Intent;)I

    move-result v1

    .line 563
    .local v1, "version":I
    invoke-static {v1}, Lcom/facebook/internal/NativeProtocol;->isVersionCompatibleWithBucketedIntent(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 564
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 565
    :cond_1
    const-string v3, "com.facebook.platform.protocol.METHOD_ARGS"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    :goto_0
    return-object v0

    .end local v1    # "version":I
    .end local p0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final getProtocolVersionFromIntent(Landroid/content/Intent;)I
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .local p0, "intent":Landroid/content/Intent;
    :cond_0
    :try_start_0
    const-string v1, "intent"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    const-string v1, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .end local p0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static final getSuccessResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .local p0, "resultIntent":Landroid/content/Intent;
    :cond_0
    :try_start_0
    const-string v1, "resultIntent"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getProtocolVersionFromIntent(Landroid/content/Intent;)I

    move-result v1

    .line 571
    .local v1, "version":I
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 572
    .local v3, "extras":Landroid/os/Bundle;
    invoke-static {v1}, Lcom/facebook/internal/NativeProtocol;->isVersionCompatibleWithBucketedIntent(I)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    .line 574
    :cond_1
    const-string v4, "com.facebook.platform.protocol.RESULT_ARGS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 573
    :cond_2
    :goto_0
    move-object v0, v3

    .line 572
    :goto_1
    return-object v0

    .end local v1    # "version":I
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local p0    # "resultIntent":Landroid/content/Intent;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final isErrorResult(Landroid/content/Intent;)Z
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .local p0, "resultIntent":Landroid/content/Intent;
    :cond_0
    :try_start_0
    const-string v1, "resultIntent"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getBridgeArgumentsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    .line 580
    .local v1, "bridgeArgs":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    const-string v3, "error"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 581
    :cond_1
    const-string v3, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    :goto_0
    return v0

    .end local v1    # "bridgeArgs":Landroid/os/Bundle;
    .end local p0    # "resultIntent":Landroid/content/Intent;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static final isVersionCompatibleWithBucketedIntent(I)Z
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 416
    .local p0, "version":I
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/internal/NativeProtocol;->KNOWN_PROTOCOL_VERSIONS:[Ljava/lang/Integer;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const v0, 0x133529d

    if-lt p0, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .end local p0    # "version":I
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static final setupProtocolRequestIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .local p0, "intent":Landroid/content/Intent;
    .local p1, "callId":Ljava/lang/String;
    .local p2, "action":Ljava/lang/String;
    .local p3, "version":I
    .local p4, "params":Landroid/os/Bundle;
    :cond_0
    :try_start_0
    const-string v1, "intent"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, "applicationId":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, "applicationName":Ljava/lang/String;
    nop

    .line 462
    nop

    .line 459
    nop

    .line 461
    nop

    .line 459
    nop

    .line 460
    nop

    .line 459
    nop

    .line 460
    const-string v3, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    invoke-virtual {p0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 461
    const-string v4, "com.facebook.platform.protocol.PROTOCOL_ACTION"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 462
    const-string v4, "com.facebook.platform.extra.APPLICATION_ID"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    invoke-static {p3}, Lcom/facebook/internal/NativeProtocol;->isVersionCompatibleWithBucketedIntent(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 465
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 466
    .local v3, "bridgeArguments":Landroid/os/Bundle;
    const-string v4, "action_id"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v4, "app_name"

    invoke-static {v3, v4, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v4, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {p0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 469
    if-eqz p4, :cond_1

    move-object v4, p4

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 470
    .local v4, "methodArguments":Landroid/os/Bundle;
    :goto_0
    const-string v5, "com.facebook.platform.protocol.METHOD_ARGS"

    invoke-virtual {p0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "intent.putExtra(EXTRA_PR\u2026OD_ARGS, methodArguments)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 473
    .end local v3    # "bridgeArguments":Landroid/os/Bundle;
    .end local v4    # "methodArguments":Landroid/os/Bundle;
    :cond_2
    const-string v3, "com.facebook.platform.protocol.CALL_ID"

    invoke-virtual {p0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 475
    const-string v3, "com.facebook.platform.extra.APPLICATION_NAME"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    :cond_3
    if-eqz p4, :cond_4

    .line 478
    invoke-virtual {p0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    :cond_4
    :goto_1
    nop

    .line 481
    return-void

    .end local v1    # "applicationId":Ljava/lang/String;
    .end local v2    # "applicationName":Ljava/lang/String;
    .end local p0    # "intent":Landroid/content/Intent;
    .end local p1    # "callId":Ljava/lang/String;
    .end local p2    # "action":Ljava/lang/String;
    .end local p3    # "version":I
    .end local p4    # "params":Landroid/os/Bundle;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final updateAllAvailableProtocolVersionsAsync()V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 669
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/internal/NativeProtocol;->protocolVersionsAsyncUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 670
    return-void

    .line 672
    :cond_1
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    sget-object v2, Lcom/facebook/internal/NativeProtocol$updateAllAvailableProtocolVersionsAsync$1;->INSTANCE:Lcom/facebook/internal/NativeProtocol$updateAllAvailableProtocolVersionsAsync$1;

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    return-void

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final validateActivityIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .local p0, "context":Landroid/content/Context;
    .local p1, "intent":Landroid/content/Intent;
    .local p2, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    :cond_0
    :try_start_0
    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    if-nez p1, :cond_1

    .line 250
    return-object v2

    .line 252
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 253
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "resolveInfo.activityInfo.packageName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/facebook/internal/FacebookSignatureValidator;->validateSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 254
    goto :goto_0

    .line 255
    :cond_2
    move-object v2, p1

    .line 253
    :goto_0
    return-object v2

    .line 252
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    return-object v2

    .line 253
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final validateServiceIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .local p0, "context":Landroid/content/Context;
    .local p1, "intent":Landroid/content/Intent;
    .local p2, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    :cond_0
    :try_start_0
    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    if-nez p1, :cond_1

    .line 261
    return-object v2

    .line 263
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 264
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v4, "resolveInfo.serviceInfo.packageName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/facebook/internal/FacebookSignatureValidator;->validateSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 265
    goto :goto_0

    .line 266
    :cond_2
    move-object v2, p1

    .line 264
    :goto_0
    return-object v2

    .line 263
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    return-object v2

    .line 264
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method
