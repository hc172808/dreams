.class public final Lcom/facebook/internal/Utility;
.super Ljava/lang/Object;
.source "Utility.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/Utility$Predicate;,
        Lcom/facebook/internal/Utility$Mapper;,
        Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;,
        Lcom/facebook/internal/Utility$PermissionsLists;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtility.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utility.kt\ncom/facebook/internal/Utility\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,1396:1\n37#2,2:1397\n37#2,2:1399\n37#2,2:1402\n37#2,2:1404\n1#3:1401\n45#4:1406\n17#4,22:1407\n*E\n*S KotlinDebug\n*F\n+ 1 Utility.kt\ncom/facebook/internal/Utility\n*L\n335#1,2:1397\n337#1,2:1399\n577#1,2:1402\n579#1,2:1404\n582#1:1406\n582#1,22:1407\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00ce\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0015\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0002\u0008\u0005\n\u0002\u0010\"\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0008\u00e6\u0001\u00e7\u0001\u00e8\u0001\u00e9\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\'\u0010\'\u001a\u00020\u001e\"\u0004\u0008\u0000\u0010(2\u0008\u0010)\u001a\u0004\u0018\u0001H(2\u0008\u0010*\u001a\u0004\u0018\u0001H(H\u0007\u00a2\u0006\u0002\u0010+J7\u0010,\u001a\u0012\u0012\u0004\u0012\u0002H(0-j\u0008\u0012\u0004\u0012\u0002H(`.\"\u0004\u0008\u0000\u0010(2\u0012\u0010/\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H(00\"\u0002H(H\u0007\u00a2\u0006\u0002\u00101J-\u00102\u001a\u0008\u0012\u0004\u0012\u0002H(03\"\u0004\u0008\u0000\u0010(2\u0012\u00104\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H(00\"\u0002H(H\u0007\u00a2\u0006\u0002\u00105J\u0012\u00106\u001a\u0004\u0018\u00010\u00182\u0006\u00107\u001a\u00020\u0004H\u0007J&\u00108\u001a\u0002092\u0008\u0010:\u001a\u0004\u0018\u00010\u00042\u0008\u0010;\u001a\u0004\u0018\u00010\u00042\u0008\u0010<\u001a\u0004\u0018\u00010=H\u0007J\u0008\u0010>\u001a\u00020?H\u0007J\u0018\u0010@\u001a\u00020?2\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020\u0004H\u0002J\u0010\u0010D\u001a\u00020?2\u0006\u0010A\u001a\u00020BH\u0007J\u0012\u0010E\u001a\u00020?2\u0008\u0010F\u001a\u0004\u0018\u00010GH\u0007J\u001e\u0010H\u001a\u0004\u0018\u00010\u00042\u0008\u0010I\u001a\u0004\u0018\u00010\u00042\u0008\u0010J\u001a\u0004\u0018\u00010\u0004H\u0007J\u0010\u0010K\u001a\u00020\u00112\u0006\u0010L\u001a\u00020MH\u0002J\u0016\u0010N\u001a\u0008\u0012\u0004\u0012\u00020\u0004032\u0006\u0010O\u001a\u00020PH\u0007J\u001c\u0010Q\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010R2\u0006\u0010S\u001a\u00020\u0018H\u0007J\u001c\u0010T\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040R2\u0006\u0010S\u001a\u00020\u0018H\u0007J\u001a\u0010U\u001a\u00020\u00062\u0008\u0010V\u001a\u0004\u0018\u00010W2\u0006\u0010X\u001a\u00020YH\u0007J\u0012\u0010Z\u001a\u00020?2\u0008\u0010[\u001a\u0004\u0018\u00010\\H\u0007J\u0012\u0010]\u001a\u00020?2\u0008\u0010^\u001a\u0004\u0018\u00010_H\u0007J\u0008\u0010`\u001a\u00020\u001eH\u0002J4\u0010a\u001a\n\u0012\u0004\u0012\u0002H(\u0018\u000103\"\u0004\u0008\u0000\u0010(2\u000e\u0010b\u001a\n\u0012\u0004\u0012\u0002H(\u0018\u0001032\u000c\u0010c\u001a\u0008\u0012\u0004\u0012\u0002H(0dH\u0007J\u0010\u0010e\u001a\u00020\u00042\u0006\u0010f\u001a\u00020\u0006H\u0007J\u0012\u0010g\u001a\u00020\u00042\u0008\u0010A\u001a\u0004\u0018\u00010BH\u0007J\u0010\u0010h\u001a\u00020\u00042\u0006\u0010A\u001a\u00020BH\u0007J\n\u0010i\u001a\u0004\u0018\u00010\u0004H\u0007J&\u0010j\u001a\u0004\u0018\u00010k2\u0008\u0010l\u001a\u0004\u0018\u00010=2\u0008\u0010m\u001a\u0004\u0018\u00010\u00042\u0006\u0010n\u001a\u00020kH\u0007J\u0010\u0010o\u001a\u00020\u00112\u0006\u0010p\u001a\u000209H\u0007J\u0010\u0010q\u001a\u00020r2\u0006\u00107\u001a\u00020\u0004H\u0002J\u0018\u0010s\u001a\u00020?2\u0006\u00107\u001a\u00020\u00042\u0006\u0010t\u001a\u00020uH\u0007J\u0012\u0010v\u001a\u00020\u00042\u0008\u0010A\u001a\u0004\u0018\u00010BH\u0007JC\u0010w\u001a\u0004\u0018\u00010x2\n\u0010y\u001a\u0006\u0012\u0002\u0008\u00030z2\u0006\u0010{\u001a\u00020\u00042\u001e\u0010|\u001a\u0010\u0012\u000c\u0008\u0001\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010z00\"\u0008\u0012\u0002\u0008\u0003\u0018\u00010zH\u0007\u00a2\u0006\u0002\u0010}J?\u0010w\u001a\u0004\u0018\u00010x2\u0006\u0010~\u001a\u00020\u00042\u0006\u0010{\u001a\u00020\u00042\u001e\u0010|\u001a\u0010\u0012\u000c\u0008\u0001\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010z00\"\u0008\u0012\u0002\u0008\u0003\u0018\u00010zH\u0007\u00a2\u0006\u0002\u0010\u007fJ(\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u00012\u0006\u0010S\u001a\u00020\u00182\u0008\u0010m\u001a\u0004\u0018\u00010\u00042\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J\u0016\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010\u0083\u0001\u001a\u0004\u0018\u000109H\u0007J\u0013\u0010\u0084\u0001\u001a\u00030\u0085\u00012\u0007\u0010\u0086\u0001\u001a\u00020\u0018H\u0007J\u001d\u0010\u0087\u0001\u001a\u00020\u001e2\u0008\u0010)\u001a\u0004\u0018\u00010\u00182\u0008\u0010*\u001a\u0004\u0018\u00010\u0018H\u0007J\u001c\u0010\u0088\u0001\u001a\u00020\u00042\u0008\u0010\u0089\u0001\u001a\u00030\u008a\u00012\u0007\u0010L\u001a\u00030\u008b\u0001H\u0002J;\u0010\u008c\u0001\u001a\u0014\u0012\u0004\u0012\u0002H(0\u008d\u0001j\t\u0012\u0004\u0012\u0002H(`\u008e\u0001\"\u0004\u0008\u0000\u0010(2\u0012\u0010/\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H(00\"\u0002H(H\u0007\u00a2\u0006\u0003\u0010\u008f\u0001J\u001d\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u00042\u0007\u0010\u0091\u0001\u001a\u00020\u00042\u0007\u0010L\u001a\u00030\u008b\u0001H\u0002J\u001c\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u00042\u0007\u0010\u0091\u0001\u001a\u00020\u00042\u0006\u0010m\u001a\u00020\u0004H\u0002J$\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0093\u00012\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0093\u00012\n\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0093\u0001H\u0007J>\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u00012\t\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u00012\u0007\u0010\u0098\u0001\u001a\u00020x2\u0017\u0010\u0099\u0001\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u000100\"\u0004\u0018\u00010\u0001H\u0007\u00a2\u0006\u0003\u0010\u009a\u0001J\u0011\u0010\u009b\u0001\u001a\u00020\u001e2\u0006\u0010A\u001a\u00020BH\u0007J\u0011\u0010\u009c\u0001\u001a\u00020\u001e2\u0006\u0010A\u001a\u00020BH\u0007J\u0014\u0010\u009d\u0001\u001a\u00020\u001e2\t\u0010\u0083\u0001\u001a\u0004\u0018\u000109H\u0007J\u0015\u0010\u009e\u0001\u001a\u00020\u001e2\n\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u00a0\u0001H\u0007J\u0014\u0010\u00a1\u0001\u001a\u00020\u001e2\t\u0010\u0083\u0001\u001a\u0004\u0018\u000109H\u0007J\u0013\u0010\u00a2\u0001\u001a\u00020\u001e2\u0008\u0010I\u001a\u0004\u0018\u00010\u0004H\u0007J!\u0010\u00a2\u0001\u001a\u00020\u001e\"\u0004\u0008\u0000\u0010(2\u0010\u0010\u00a3\u0001\u001a\u000b\u0012\u0004\u0012\u0002H(\u0018\u00010\u00a4\u0001H\u0007J3\u0010\u00a5\u0001\u001a\u00020\u001e\"\u0004\u0008\u0000\u0010(2\u0010\u0010\u00a6\u0001\u001a\u000b\u0012\u0004\u0012\u0002H(\u0018\u00010\u00a4\u00012\u0010\u0010\u00a7\u0001\u001a\u000b\u0012\u0004\u0012\u0002H(\u0018\u00010\u00a4\u0001H\u0007J\u0014\u0010\u00a8\u0001\u001a\u00020\u001e2\t\u0010\u0083\u0001\u001a\u0004\u0018\u000109H\u0007J\u0018\u0010\u00a9\u0001\u001a\t\u0012\u0004\u0012\u00020\u00040\u00aa\u00012\u0006\u0010O\u001a\u00020PH\u0007J\u0017\u0010\u00ab\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u0004032\u0006\u0010O\u001a\u00020PH\u0007J\u001e\u0010\u00ac\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040R2\u0007\u0010\u00ad\u0001\u001a\u00020\u0004H\u0007J\'\u0010\u00ae\u0001\u001a\u00020?2\t\u0010\u00af\u0001\u001a\u0004\u0018\u00010\u00042\u0011\u0010\u00b0\u0001\u001a\u000c\u0018\u00010\u00b1\u0001j\u0005\u0018\u0001`\u00b2\u0001H\u0007J\u001f\u0010\u00ae\u0001\u001a\u00020?2\t\u0010\u00af\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010\u00b3\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J+\u0010\u00ae\u0001\u001a\u00020?2\t\u0010\u00af\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010\u00b3\u0001\u001a\u0004\u0018\u00010\u00042\n\u0010\u00b4\u0001\u001a\u0005\u0018\u00010\u00b5\u0001H\u0007JF\u0010\u00b6\u0001\u001a\u000b\u0012\u0005\u0012\u0003H\u00b7\u0001\u0018\u000103\"\u0004\u0008\u0000\u0010(\"\u0005\u0008\u0001\u0010\u00b7\u00012\u000e\u0010b\u001a\n\u0012\u0004\u0012\u0002H(\u0018\u0001032\u0015\u0010\u00b8\u0001\u001a\u0010\u0012\u0004\u0012\u0002H(\u0012\u0005\u0012\u0003H\u00b7\u00010\u00b9\u0001H\u0007J\"\u0010\u00ba\u0001\u001a\u00020\u00042\u0017\u0010\u00b6\u0001\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040RH\u0007J\u0013\u0010\u00bb\u0001\u001a\u0004\u0018\u00010\u00042\u0006\u0010m\u001a\u00020\u0004H\u0007J\u0011\u0010\u00bc\u0001\u001a\u00020\u001e2\u0006\u0010A\u001a\u00020BH\u0007J\u0014\u0010\u00bd\u0001\u001a\u00020=2\t\u0010\u00be\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J.\u0010\u00bf\u0001\u001a\u00020?2\u0006\u0010*\u001a\u00020=2\u0008\u0010m\u001a\u0004\u0018\u00010\u00042\u0011\u0010\u00c0\u0001\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u000103H\u0007J&\u0010\u00c1\u0001\u001a\u00020\u001e2\u0006\u0010l\u001a\u00020=2\u0008\u0010m\u001a\u0004\u0018\u00010\u00042\t\u0010\u00c2\u0001\u001a\u0004\u0018\u00010\u0001H\u0007J&\u0010\u00c3\u0001\u001a\u00020?2\u0006\u0010*\u001a\u00020=2\u0008\u0010m\u001a\u0004\u0018\u00010\u00042\t\u0010\u00c2\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J&\u0010\u00c4\u0001\u001a\u00020?2\u0006\u0010*\u001a\u00020=2\u0008\u0010m\u001a\u0004\u0018\u00010\u00042\t\u0010\u0083\u0001\u001a\u0004\u0018\u000109H\u0007J\u0013\u0010\u00c5\u0001\u001a\u00020\u00042\u0008\u0010V\u001a\u0004\u0018\u00010WH\u0007J%\u0010\u00c6\u0001\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010R2\u0008\u0010\u00c7\u0001\u001a\u00030\u00c8\u0001H\u0007J\t\u0010\u00c9\u0001\u001a\u00020?H\u0002J\t\u0010\u00ca\u0001\u001a\u00020\u0006H\u0002J\u0012\u0010\u00cb\u0001\u001a\u00020?2\u0007\u0010\u00cc\u0001\u001a\u00020BH\u0002J\u0012\u0010\u00cd\u0001\u001a\u00020?2\u0007\u0010\u00cc\u0001\u001a\u00020BH\u0002J\t\u0010\u00ce\u0001\u001a\u00020?H\u0002J\t\u0010\u00cf\u0001\u001a\u00020?H\u0002J\u0015\u0010\u00d0\u0001\u001a\u00020?2\n\u0010\u00d1\u0001\u001a\u0005\u0018\u00010\u00d2\u0001H\u0007J\u001f\u0010\u00d3\u0001\u001a\u00020\u00042\t\u0010\u00d4\u0001\u001a\u0004\u0018\u00010\u00182\t\u0010\u00d5\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J2\u0010\u00d6\u0001\u001a\u00020?2\u0007\u0010\u00d7\u0001\u001a\u00020\u00182\n\u0010\u00d8\u0001\u001a\u0005\u0018\u00010\u00d9\u00012\t\u0010\u00da\u0001\u001a\u0004\u0018\u00010\u00042\u0007\u0010\u00db\u0001\u001a\u00020\u001eH\u0007J\u001b\u0010\u00dc\u0001\u001a\u00020?2\u0007\u0010\u00d7\u0001\u001a\u00020\u00182\u0007\u0010\u00cc\u0001\u001a\u00020BH\u0007J\u0014\u0010\u00dd\u0001\u001a\u0004\u0018\u00010\u00042\u0007\u0010L\u001a\u00030\u008b\u0001H\u0007J\u0013\u0010\u00dd\u0001\u001a\u0004\u0018\u00010\u00042\u0006\u0010m\u001a\u00020\u0004H\u0007J\u0016\u0010\u00de\u0001\u001a\u0004\u0018\u00010\u00042\t\u0010L\u001a\u0005\u0018\u00010\u008b\u0001H\u0007J\u0015\u0010\u00de\u0001\u001a\u0004\u0018\u00010\u00042\u0008\u0010m\u001a\u0004\u0018\u00010\u0004H\u0007J\u001d\u0010\u00df\u0001\u001a\u00020\u001e2\u0008\u0010)\u001a\u0004\u0018\u00010\u00042\u0008\u0010*\u001a\u0004\u0018\u00010\u0004H\u0007J!\u0010\u00e0\u0001\u001a\u0004\u0018\u00010P2\t\u0010\u00d4\u0001\u001a\u0004\u0018\u00010\u00182\t\u0010\u00e1\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J!\u0010\u00e2\u0001\u001a\u0004\u0018\u00010\u00182\t\u0010\u00d4\u0001\u001a\u0004\u0018\u00010\u00182\t\u0010\u00e1\u0001\u001a\u0004\u0018\u00010\u0004H\u0007J0\u0010\u00e3\u0001\u001a\t\u0012\u0004\u0012\u0002H(0\u00a4\u0001\"\u0004\u0008\u0000\u0010(2\u0012\u0010/\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H(00\"\u0002H(H\u0007\u00a2\u0006\u0003\u0010\u00e4\u0001J.\u0010\u00e5\u0001\u001a\u00020?2\u0008\u0010\u00c7\u0001\u001a\u00030\u00c8\u00012\u0019\u0010\u00b6\u0001\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010RH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0013\u001a\u00020\u00148G\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u00188G\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001d\u001a\u00020\u001e8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u001f\u0010\u0002\u001a\u0004\u0008\u001d\u0010 R\u0011\u0010!\u001a\u00020\u001e8G\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010 R\u000e\u0010\"\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010#\u001a\u0004\u0018\u00010\u00148G\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\u0016R\u000e\u0010%\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00ea\u0001"
    }
    d2 = {
        "Lcom/facebook/internal/Utility;",
        "",
        "()V",
        "ARC_DEVICE_PATTERN",
        "",
        "DEFAULT_STREAM_BUFFER_SIZE",
        "",
        "EXTRA_APP_EVENTS_INFO_FORMAT_VERSION",
        "HASH_ALGORITHM_MD5",
        "HASH_ALGORITHM_SHA1",
        "HASH_ALGORITHM_SHA256",
        "LOG_TAG",
        "NO_CARRIER",
        "REFRESH_TIME_FOR_EXTENDED_DEVICE_INFO_MILLIS",
        "URL_SCHEME",
        "UTF8",
        "availableExternalStorageGB",
        "",
        "carrierName",
        "currentLocale",
        "Ljava/util/Locale;",
        "getCurrentLocale",
        "()Ljava/util/Locale;",
        "dataProcessingOptions",
        "Lorg/json/JSONObject;",
        "getDataProcessingOptions",
        "()Lorg/json/JSONObject;",
        "deviceTimeZoneName",
        "deviceTimezoneAbbreviation",
        "isAutoAppLinkSetup",
        "",
        "isAutoAppLinkSetup$annotations",
        "()Z",
        "isDataProcessingRestricted",
        "numCPUCores",
        "resourceLocale",
        "getResourceLocale",
        "timestampOfLastCheck",
        "totalExternalStorageGB",
        "areObjectsEqual",
        "T",
        "a",
        "b",
        "(Ljava/lang/Object;Ljava/lang/Object;)Z",
        "arrayList",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "ts",
        "",
        "([Ljava/lang/Object;)Ljava/util/ArrayList;",
        "asListNoNulls",
        "",
        "array",
        "([Ljava/lang/Object;)Ljava/util/List;",
        "awaitGetGraphMeRequestWithCache",
        "accessToken",
        "buildUri",
        "Landroid/net/Uri;",
        "authority",
        "path",
        "parameters",
        "Landroid/os/Bundle;",
        "clearCaches",
        "",
        "clearCookiesForDomain",
        "context",
        "Landroid/content/Context;",
        "domain",
        "clearFacebookCookies",
        "closeQuietly",
        "closeable",
        "Ljava/io/Closeable;",
        "coerceValueIfNullOrEmpty",
        "s",
        "valueIfNullOrEmpty",
        "convertBytesToGB",
        "bytes",
        "",
        "convertJSONArrayToList",
        "jsonArray",
        "Lorg/json/JSONArray;",
        "convertJSONObjectToHashMap",
        "",
        "jsonObject",
        "convertJSONObjectToStringMap",
        "copyAndCloseInputStream",
        "inputStream",
        "Ljava/io/InputStream;",
        "outputStream",
        "Ljava/io/OutputStream;",
        "deleteDirectory",
        "directoryOrFile",
        "Ljava/io/File;",
        "disconnectQuietly",
        "connection",
        "Ljava/net/URLConnection;",
        "externalStorageExists",
        "filter",
        "target",
        "predicate",
        "Lcom/facebook/internal/Utility$Predicate;",
        "generateRandomString",
        "length",
        "getActivityName",
        "getAppName",
        "getAppVersion",
        "getBundleLongAsDate",
        "Ljava/util/Date;",
        "bundle",
        "key",
        "dateBase",
        "getContentSize",
        "contentUri",
        "getGraphMeRequestWithCache",
        "Lcom/facebook/GraphRequest;",
        "getGraphMeRequestWithCacheAsync",
        "callback",
        "Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;",
        "getMetadataApplicationId",
        "getMethodQuietly",
        "Ljava/lang/reflect/Method;",
        "clazz",
        "Ljava/lang/Class;",
        "methodName",
        "parameterTypes",
        "(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;",
        "className",
        "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;",
        "getStringPropertyAsJSON",
        "nonJSONPropertyKey",
        "getUriString",
        "uri",
        "handlePermissionResponse",
        "Lcom/facebook/internal/Utility$PermissionsLists;",
        "result",
        "hasSameId",
        "hashBytes",
        "hash",
        "Ljava/security/MessageDigest;",
        "",
        "hashSet",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "([Ljava/lang/Object;)Ljava/util/HashSet;",
        "hashWithAlgorithm",
        "algorithm",
        "intersectRanges",
        "",
        "range1",
        "range2",
        "invokeMethodQuietly",
        "receiver",
        "method",
        "args",
        "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;",
        "isAutofillAvailable",
        "isChromeOS",
        "isContentUri",
        "isCurrentAccessToken",
        "token",
        "Lcom/facebook/AccessToken;",
        "isFileUri",
        "isNullOrEmpty",
        "c",
        "",
        "isSubset",
        "subset",
        "superset",
        "isWebUri",
        "jsonArrayToSet",
        "",
        "jsonArrayToStringList",
        "jsonStrToMap",
        "str",
        "logd",
        "tag",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "msg",
        "t",
        "",
        "map",
        "K",
        "mapper",
        "Lcom/facebook/internal/Utility$Mapper;",
        "mapToJsonStr",
        "md5hash",
        "mustFixWindowParamsForAutofill",
        "parseUrlQueryString",
        "queryString",
        "putCommaSeparatedStringList",
        "list",
        "putJSONValueInBundle",
        "value",
        "putNonEmptyString",
        "putUri",
        "readStreamToString",
        "readStringMapFromParcel",
        "parcel",
        "Landroid/os/Parcel;",
        "refreshAvailableExternalStorage",
        "refreshBestGuessNumberOfCPUCores",
        "refreshCarrierName",
        "appContext",
        "refreshPeriodicExtendedDeviceInfo",
        "refreshTimezone",
        "refreshTotalExternalStorage",
        "runOnNonUiThread",
        "runnable",
        "Ljava/lang/Runnable;",
        "safeGetStringFromResponse",
        "response",
        "propertyName",
        "setAppEventAttributionParameters",
        "params",
        "attributionIdentifiers",
        "Lcom/facebook/internal/AttributionIdentifiers;",
        "anonymousAppDeviceGUID",
        "limitEventUsage",
        "setAppEventExtendedDeviceInfoParameters",
        "sha1hash",
        "sha256hash",
        "stringsEqualOrEmpty",
        "tryGetJSONArrayFromResponse",
        "propertyKey",
        "tryGetJSONObjectFromResponse",
        "unmodifiableCollection",
        "([Ljava/lang/Object;)Ljava/util/Collection;",
        "writeStringMapToParcel",
        "GraphMeRequestWithCacheCallback",
        "Mapper",
        "PermissionsLists",
        "Predicate",
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
.field private static final ARC_DEVICE_PATTERN:Ljava/lang/String; = ".+_cheets|cheets_.+"

.field public static final DEFAULT_STREAM_BUFFER_SIZE:I = 0x2000

.field private static final EXTRA_APP_EVENTS_INFO_FORMAT_VERSION:Ljava/lang/String; = "a2"

.field private static final HASH_ALGORITHM_MD5:Ljava/lang/String; = "MD5"

.field private static final HASH_ALGORITHM_SHA1:Ljava/lang/String; = "SHA-1"

.field private static final HASH_ALGORITHM_SHA256:Ljava/lang/String; = "SHA-256"

.field public static final INSTANCE:Lcom/facebook/internal/Utility;

.field public static final LOG_TAG:Ljava/lang/String; = "FacebookSDK"

.field private static final NO_CARRIER:Ljava/lang/String; = "NoCarrier"

.field private static final REFRESH_TIME_FOR_EXTENDED_DEVICE_INFO_MILLIS:I = 0x1b7740

.field private static final URL_SCHEME:Ljava/lang/String; = "https"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static availableExternalStorageGB:J

.field private static carrierName:Ljava/lang/String;

.field private static deviceTimeZoneName:Ljava/lang/String;

.field private static deviceTimezoneAbbreviation:Ljava/lang/String;

.field private static numCPUCores:I

.field private static timestampOfLastCheck:J

.field private static totalExternalStorageGB:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 86
    new-instance v0, Lcom/facebook/internal/Utility;

    invoke-direct {v0}, Lcom/facebook/internal/Utility;-><init>()V

    sput-object v0, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    .line 103
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/facebook/internal/Utility;->timestampOfLastCheck:J

    .line 104
    sput-wide v0, Lcom/facebook/internal/Utility;->totalExternalStorageGB:J

    .line 105
    sput-wide v0, Lcom/facebook/internal/Utility;->availableExternalStorageGB:J

    .line 106
    const-string v0, ""

    sput-object v0, Lcom/facebook/internal/Utility;->deviceTimezoneAbbreviation:Ljava/lang/String;

    .line 107
    sput-object v0, Lcom/facebook/internal/Utility;->deviceTimeZoneName:Ljava/lang/String;

    .line 108
    const-string v0, "NoCarrier"

    sput-object v0, Lcom/facebook/internal/Utility;->carrierName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 623
    if-nez p0, :cond_1

    .line 624
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 625
    :cond_1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 623
    :goto_0
    return v0
.end method

.method public static final varargs arrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "ts"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "ts"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    .local v0, "arrayList":Ljava/util/ArrayList;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 246
    .local v3, "t":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    nop

    .end local v3    # "t":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    :cond_0
    return-object v0
.end method

.method public static final varargs asListNoNulls([Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "array"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 682
    .local v0, "result":Ljava/util/ArrayList;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 683
    .local v3, "t":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 684
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    :cond_0
    nop

    .end local v3    # "t":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 687
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public static final awaitGetGraphMeRequestWithCache(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "accessToken"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "accessToken"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1081
    invoke-static {p0}, Lcom/facebook/internal/ProfileInformationCache;->getProfileInformation(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1082
    .local v0, "cachedValue":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 1083
    return-object v0

    .line 1085
    :cond_0
    sget-object v1, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-direct {v1, p0}, Lcom/facebook/internal/Utility;->getGraphMeRequestWithCache(Ljava/lang/String;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 1086
    .local v1, "graphRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v2

    .line 1087
    .local v2, "response":Lcom/facebook/GraphResponse;
    invoke-virtual {v2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1088
    const/4 v3, 0x0

    goto :goto_0

    .line 1089
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/GraphResponse;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v3

    .line 1087
    :goto_0
    return-object v3
.end method

.method public static final buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 5
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 316
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 317
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 318
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 319
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 320
    if-eqz p2, :cond_1

    .line 321
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 322
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 323
    .local v3, "parameter":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 324
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 321
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "parameter":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 328
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "builder.build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final clearCaches()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 660
    invoke-static {}, Lcom/facebook/internal/ImageDownloader;->clearCache()V

    .line 661
    return-void
.end method

.method private final clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "domain"    # Ljava/lang/String;

    .line 573
    move-object/from16 v0, p2

    invoke-static/range {p1 .. p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v1

    .line 574
    .local v1, "syncManager":Landroid/webkit/CookieSyncManager;
    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 575
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    .line 576
    .local v2, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v2, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 577
    .local v3, "cookies":Ljava/lang/String;
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, ";"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .local v4, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 1402
    .local v5, "$i$f$toTypedArray":I
    move-object v6, v4

    .line 1403
    .local v6, "thisCollection$iv":Ljava/util/Collection;
    new-array v8, v7, [Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type kotlin.Array<T>"

    if-eqz v8, :cond_9

    .line 577
    .end local v4    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$toTypedArray":I
    .end local v6    # "thisCollection$iv":Ljava/util/Collection;
    move-object v4, v8

    check-cast v4, [Ljava/lang/String;

    .line 578
    .local v4, "splitCookies":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_8

    aget-object v8, v4, v6

    .line 579
    .local v8, "cookie":Ljava/lang/String;
    move-object v10, v8

    check-cast v10, Ljava/lang/CharSequence;

    const-string v11, "="

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    .local v10, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v11, 0x0

    .line 1404
    .local v11, "$i$f$toTypedArray":I
    move-object v12, v10

    .line 1405
    .local v12, "thisCollection$iv":Ljava/util/Collection;
    new-array v13, v7, [Ljava/lang/String;

    invoke-interface {v12, v13}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 579
    .end local v10    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v11    # "$i$f$toTypedArray":I
    .end local v12    # "thisCollection$iv":Ljava/util/Collection;
    move-object v10, v13

    check-cast v10, [Ljava/lang/String;

    .line 580
    .local v10, "cookieParts":[Ljava/lang/String;
    array-length v11, v10

    if-lez v11, :cond_6

    .line 581
    nop

    .line 582
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v10, v7

    .local v12, "$this$trim$iv":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1406
    .local v13, "$i$f$trim":I
    move-object v14, v12

    check-cast v14, Ljava/lang/CharSequence;

    .local v14, "$this$trim$iv$iv":Ljava/lang/CharSequence;
    const/4 v15, 0x0

    .line 1407
    .local v15, "$i$f$trim":I
    const/16 v16, 0x0

    .line 1408
    .local v16, "startIndex$iv$iv":I
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v17

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    .line 1409
    .local v17, "endIndex$iv$iv":I
    const/16 v19, 0x0

    move/from16 v7, v16

    move-object/from16 v16, v1

    move/from16 v1, v17

    .line 1411
    .end local v17    # "endIndex$iv$iv":I
    .local v1, "endIndex$iv$iv":I
    .local v7, "startIndex$iv$iv":I
    .local v16, "syncManager":Landroid/webkit/CookieSyncManager;
    .local v19, "startFound$iv$iv":Z
    :goto_1
    if-gt v7, v1, :cond_5

    .line 1412
    if-nez v19, :cond_0

    move/from16 v17, v7

    goto :goto_2

    :cond_0
    move/from16 v17, v1

    :goto_2
    move/from16 v20, v17

    .line 1413
    .local v20, "index$iv$iv":I
    move-object/from16 v17, v3

    move/from16 v3, v20

    move-object/from16 v20, v4

    .end local v4    # "splitCookies":[Ljava/lang/String;
    .local v3, "index$iv$iv":I
    .local v17, "cookies":Ljava/lang/String;
    .local v20, "splitCookies":[Ljava/lang/String;
    invoke-interface {v14, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .local v4, "it":C
    const/16 v21, 0x0

    .line 582
    .local v21, "$i$a$-trim-Utility$clearCookiesForDomain$newCookie$1":I
    move/from16 v22, v3

    .end local v3    # "index$iv$iv":I
    .local v22, "index$iv$iv":I
    const/16 v3, 0x20

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v3

    if-gtz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_3

    :cond_1
    const/4 v3, 0x0

    .line 1415
    .end local v4    # "it":C
    .end local v21    # "$i$a$-trim-Utility$clearCookiesForDomain$newCookie$1":I
    .local v3, "match$iv$iv":Z
    :goto_3
    if-nez v19, :cond_3

    .line 1416
    if-nez v3, :cond_2

    .line 1417
    const/4 v4, 0x1

    move/from16 v19, v4

    .end local v19    # "startFound$iv$iv":Z
    .local v4, "startFound$iv$iv":Z
    goto :goto_4

    .line 1419
    .end local v4    # "startFound$iv$iv":Z
    .restart local v19    # "startFound$iv$iv":Z
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1421
    :cond_3
    if-nez v3, :cond_4

    .line 1422
    goto :goto_5

    .line 1424
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 1425
    .end local v3    # "match$iv$iv":Z
    .end local v22    # "index$iv$iv":I
    :goto_4
    nop

    .line 1411
    move-object/from16 v3, v17

    move-object/from16 v4, v20

    goto :goto_1

    .end local v17    # "cookies":Ljava/lang/String;
    .end local v20    # "splitCookies":[Ljava/lang/String;
    .local v3, "cookies":Ljava/lang/String;
    .local v4, "splitCookies":[Ljava/lang/String;
    :cond_5
    move-object/from16 v17, v3

    move-object/from16 v20, v4

    .line 1428
    .end local v3    # "cookies":Ljava/lang/String;
    .end local v4    # "splitCookies":[Ljava/lang/String;
    .restart local v17    # "cookies":Ljava/lang/String;
    .restart local v20    # "splitCookies":[Ljava/lang/String;
    :goto_5
    add-int/lit8 v3, v1, 0x1

    invoke-interface {v14, v7, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1406
    .end local v1    # "endIndex$iv$iv":I
    .end local v7    # "startIndex$iv$iv":I
    .end local v14    # "$this$trim$iv$iv":Ljava/lang/CharSequence;
    .end local v15    # "$i$f$trim":I
    .end local v19    # "startFound$iv$iv":Z
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v12    # "$this$trim$iv":Ljava/lang/String;
    .end local v13    # "$i$f$trim":I
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 581
    nop

    .line 583
    .local v1, "newCookie":Ljava/lang/String;
    invoke-virtual {v2, v0, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 580
    .end local v16    # "syncManager":Landroid/webkit/CookieSyncManager;
    .end local v17    # "cookies":Ljava/lang/String;
    .end local v20    # "splitCookies":[Ljava/lang/String;
    .local v1, "syncManager":Landroid/webkit/CookieSyncManager;
    .restart local v3    # "cookies":Ljava/lang/String;
    .restart local v4    # "splitCookies":[Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v20, v4

    .line 578
    .end local v1    # "syncManager":Landroid/webkit/CookieSyncManager;
    .end local v3    # "cookies":Ljava/lang/String;
    .end local v4    # "splitCookies":[Ljava/lang/String;
    .end local v10    # "cookieParts":[Ljava/lang/String;
    .restart local v16    # "syncManager":Landroid/webkit/CookieSyncManager;
    .restart local v17    # "cookies":Ljava/lang/String;
    .restart local v20    # "splitCookies":[Ljava/lang/String;
    :goto_6
    nop

    .end local v8    # "cookie":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v20

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1405
    .end local v16    # "syncManager":Landroid/webkit/CookieSyncManager;
    .end local v17    # "cookies":Ljava/lang/String;
    .end local v20    # "splitCookies":[Ljava/lang/String;
    .restart local v1    # "syncManager":Landroid/webkit/CookieSyncManager;
    .restart local v3    # "cookies":Ljava/lang/String;
    .restart local v4    # "splitCookies":[Ljava/lang/String;
    .restart local v8    # "cookie":Ljava/lang/String;
    .local v10, "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v11    # "$i$f$toTypedArray":I
    .local v12, "thisCollection$iv":Ljava/util/Collection;
    :cond_7
    move-object/from16 v16, v1

    .end local v1    # "syncManager":Landroid/webkit/CookieSyncManager;
    .restart local v16    # "syncManager":Landroid/webkit/CookieSyncManager;
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 586
    .end local v8    # "cookie":Ljava/lang/String;
    .end local v10    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v11    # "$i$f$toTypedArray":I
    .end local v12    # "thisCollection$iv":Ljava/util/Collection;
    .end local v16    # "syncManager":Landroid/webkit/CookieSyncManager;
    .restart local v1    # "syncManager":Landroid/webkit/CookieSyncManager;
    :cond_8
    invoke-virtual {v2}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 587
    return-void

    .line 1403
    .local v4, "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v5    # "$i$f$toTypedArray":I
    .restart local v6    # "thisCollection$iv":Ljava/util/Collection;
    :cond_9
    move-object/from16 v16, v1

    .end local v1    # "syncManager":Landroid/webkit/CookieSyncManager;
    .restart local v16    # "syncManager":Landroid/webkit/CookieSyncManager;
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 576
    .end local v3    # "cookies":Ljava/lang/String;
    .end local v4    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$toTypedArray":I
    .end local v6    # "thisCollection$iv":Ljava/util/Collection;
    .end local v16    # "syncManager":Landroid/webkit/CookieSyncManager;
    .restart local v1    # "syncManager":Landroid/webkit/CookieSyncManager;
    :cond_a
    return-void
.end method

.method public static final clearFacebookCookies(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    sget-object v0, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    const-string v1, "facebook.com"

    invoke-direct {v0, p0, v1}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 595
    const-string v1, ".facebook.com"

    invoke-direct {v0, p0, v1}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 596
    const-string v1, "https://facebook.com"

    invoke-direct {v0, p0, v1}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 597
    const-string v1, "https://.facebook.com"

    invoke-direct {v0, p0, v1}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method public static final closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 418
    nop

    .line 419
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 420
    :catch_0
    move-exception v0

    .line 422
    :cond_0
    :goto_0
    nop

    .line 423
    return-void
.end method

.method public static final coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "valueIfNullOrEmpty"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 232
    invoke-static {p0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    move-object v0, p1

    goto :goto_0

    .line 234
    :cond_0
    move-object v0, p0

    .line 232
    :goto_0
    return-object v0
.end method

.method private final convertBytesToGB(D)J
    .locals 2
    .param p1, "bytes"    # D

    .line 1198
    const-wide/high16 v0, 0x41d0000000000000L    # 1.073741824E9

    div-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final convertJSONArrayToList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "jsonArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    nop

    .line 473
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 474
    .local v0, "result":Ljava/util/List;
    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 475
    .local v1, "i":I
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "jsonArray.getString(i)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    nop

    .end local v1    # "i":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 477
    :cond_0
    nop

    .end local v0    # "result":Ljava/util/List;
    goto :goto_1

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "je":Lorg/json/JSONException;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    move-object v0, v1

    .line 472
    .end local v0    # "je":Lorg/json/JSONException;
    :goto_1
    return-object v0
.end method

.method public static final convertJSONObjectToHashMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 8
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "jsonObject"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 441
    .local v0, "map":Ljava/util/HashMap;
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v1

    .line 442
    .local v1, "keys":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 443
    .local v3, "i":I
    const/4 v4, 0x0

    .line 444
    .local v4, "key":Ljava/lang/String;
    nop

    .line 445
    :try_start_0
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "keys.getString(i)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v5

    .line 446
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 447
    .local v5, "value":Ljava/lang/Object;
    instance-of v6, v5, Lorg/json/JSONObject;

    if-eqz v6, :cond_0

    .line 448
    move-object v6, v5

    check-cast v6, Lorg/json/JSONObject;

    invoke-static {v6}, Lcom/facebook/internal/Utility;->convertJSONObjectToHashMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v6

    move-object v5, v6

    .line 450
    :cond_0
    move-object v6, v0

    check-cast v6, Ljava/util/Map;

    const-string/jumbo v7, "value"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 451
    .end local v5    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 442
    .end local v4    # "key":Ljava/lang/String;
    :goto_1
    nop

    .end local v3    # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 453
    :cond_1
    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    return-object v2
.end method

.method public static final convertJSONObjectToStringMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "jsonObject"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 459
    .local v0, "map":Ljava/util/HashMap;
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 460
    .local v1, "keys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 461
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 462
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 463
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 464
    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    const-string v5, "key"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 467
    :cond_1
    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    return-object v2
.end method

.method public static final copyAndCloseInputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 7
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "outputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    const/4 v0, 0x0

    check-cast v0, Ljava/io/BufferedInputStream;

    .line 539
    .local v0, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 540
    .local v1, "totalBytes":I
    nop

    .line 541
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    .line 542
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 543
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 544
    .local v3, "bytesRead":I
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    move v5, v4

    .line 1401
    .local v5, "it":I
    const/4 v6, 0x0

    .line 544
    .local v6, "$i$a$-also-Utility$copyAndCloseInputStream$1":I
    move v3, v5

    .end local v5    # "it":I
    .end local v6    # "$i$a$-also-Utility$copyAndCloseInputStream$1":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 545
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    add-int/2addr v1, v3

    .line 544
    goto :goto_0

    .line 549
    .end local v2    # "buffer":[B
    .end local v3    # "bytesRead":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 550
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 551
    :cond_1
    nop

    .line 552
    return v1

    .line 551
    :catchall_0
    move-exception v2

    .line 549
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 550
    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v2
.end method

.method public static final deleteDirectory(Ljava/io/File;)V
    .locals 4
    .param p0, "directoryOrFile"    # Ljava/io/File;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 665
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 668
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 670
    .local v0, "children":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 671
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 672
    .local v3, "child":Ljava/io/File;
    invoke-static {v3}, Lcom/facebook/internal/Utility;->deleteDirectory(Ljava/io/File;)V

    .line 671
    nop

    .end local v3    # "child":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 676
    .end local v0    # "children":[Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 677
    return-void

    .line 666
    :cond_2
    :goto_1
    return-void
.end method

.method public static final disconnectQuietly(Ljava/net/URLConnection;)V
    .locals 1
    .param p0, "connection"    # Ljava/net/URLConnection;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 427
    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 428
    move-object v0, p0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 430
    :cond_0
    return-void
.end method

.method private final externalStorageExists()Z
    .locals 2

    .line 1166
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final filter(Ljava/util/List;Lcom/facebook/internal/Utility$Predicate;)Ljava/util/List;
    .locals 5
    .param p0, "target"    # Ljava/util/List;
    .param p1, "predicate"    # Lcom/facebook/internal/Utility$Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lcom/facebook/internal/Utility$Predicate<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 929
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 930
    return-object v0

    .line 932
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 933
    .local v1, "list":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 934
    .local v3, "item":Ljava/lang/Object;
    invoke-interface {p1, v3}, Lcom/facebook/internal/Utility$Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 935
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    .end local v3    # "item":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 938
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public static final generateRandomString(I)Ljava/lang/String;
    .locals 3
    .param p0, "length"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1229
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 1230
    .local v0, "r":Ljava/util/Random;
    new-instance v1, Ljava/math/BigInteger;

    mul-int/lit8 v2, p0, 0x5

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BigInteger(length * 5, r).toString(32)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final getActivityName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 918
    if-nez p0, :cond_0

    .line 919
    const-string v0, "null"

    goto :goto_0

    .line 920
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 921
    const-string/jumbo v0, "unknown"

    goto :goto_0

    .line 923
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.javaClass.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 920
    :goto_0
    nop

    .line 918
    return-object v0
.end method

.method public static final getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1301
    nop

    .line 1302
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    .line 1303
    .local v0, "applicationName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1304
    return-object v0

    .line 1306
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1307
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 1308
    .local v2, "stringId":I
    if-nez v2, :cond_1

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1309
    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context.getString(stringId)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1308
    .end local v0    # "applicationName":Ljava/lang/String;
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "stringId":I
    :goto_0
    goto :goto_1

    .line 1310
    :catch_0
    move-exception v0

    .line 1311
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, ""

    .line 1301
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v3
.end method

.method public static final getAppVersion()Ljava/lang/String;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 788
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 789
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 790
    .local v2, "pkgName":Ljava/lang/String;
    nop

    .line 791
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 792
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 791
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    return-object v1

    .line 793
    :catch_0
    move-exception v3

    .line 795
    nop

    .line 796
    return-object v1

    .line 788
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static final getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 8
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dateBase"    # Ljava/util/Date;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "dateBase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1000
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1001
    return-object v0

    .line 1003
    :cond_0
    const-wide/16 v1, 0x0

    .line 1004
    .local v1, "secondsFromBase":J
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1005
    .local v3, "secondsObject":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_1

    .line 1006
    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .end local v1    # "secondsFromBase":J
    .local v0, "secondsFromBase":J
    goto :goto_0

    .line 1007
    .end local v0    # "secondsFromBase":J
    .restart local v1    # "secondsFromBase":J
    :cond_1
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1008
    nop

    .line 1009
    :try_start_0
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v4

    .line 1015
    .end local v1    # "secondsFromBase":J
    .restart local v0    # "secondsFromBase":J
    :goto_0
    nop

    .line 1016
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    .line 1017
    new-instance v2, Ljava/util/Date;

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    goto :goto_1

    .line 1019
    :cond_2
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v6, v6, v0

    add-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1016
    :goto_1
    return-object v2

    .line 1010
    .end local v0    # "secondsFromBase":J
    .restart local v1    # "secondsFromBase":J
    :catch_0
    move-exception v4

    .line 1011
    .local v4, "e":Ljava/lang/NumberFormatException;
    return-object v0

    .line 1014
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    return-object v0
.end method

.method public static final getContentSize(Landroid/net/Uri;)J
    .locals 9
    .param p0, "contentUri"    # Landroid/net/Uri;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "contentUri"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 981
    const/4 v0, 0x0

    check-cast v0, Landroid/database/Cursor;

    .line 982
    .local v0, "cursor":Landroid/database/Cursor;
    nop

    .line 983
    nop

    .line 984
    nop

    .line 986
    nop

    .line 984
    nop

    .line 985
    nop

    .line 984
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "FacebookSdk.getApplicationContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 986
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 987
    if-nez v0, :cond_0

    .line 988
    const-wide/16 v1, 0x0

    .line 994
    nop

    .line 988
    return-wide v1

    .line 990
    :cond_0
    const-string v1, "_size"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 991
    .local v1, "sizeIndex":I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 992
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    .end local v1    # "sizeIndex":I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 995
    nop

    .line 982
    return-wide v2

    .line 995
    :catchall_0
    move-exception v1

    .line 994
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1
.end method

.method public static final getCurrentLocale()Ljava/util/Locale;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1286
    invoke-static {}, Lcom/facebook/internal/Utility;->getResourceLocale()Ljava/util/Locale;

    move-result-object v0

    .line 1287
    .local v0, "locale":Ljava/util/Locale;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "Locale.getDefault()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public static final getDataProcessingOptions()Lorg/json/JSONObject;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/Utility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 1342
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1343
    .local v1, "context":Landroid/content/Context;
    nop

    .line 1344
    nop

    .line 1347
    nop

    .line 1344
    nop

    .line 1345
    nop

    .line 1344
    nop

    .line 1346
    const-string v3, "com.facebook.sdk.DataProcessingOptions"

    const/4 v4, 0x0

    .line 1345
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1347
    const-string v4, "data_processing_options"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1343
    nop

    .line 1348
    .local v3, "data":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1349
    nop

    .line 1350
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4

    .line 1351
    :catch_0
    move-exception v0

    .line 1353
    :cond_1
    return-object v2

    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "data":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private final getGraphMeRequestWithCache(Ljava/lang/String;)Lcom/facebook/GraphRequest;
    .locals 11
    .param p1, "accessToken"    # Ljava/lang/String;

    .line 1093
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1094
    .local v0, "parameters":Landroid/os/Bundle;
    const-string v1, "fields"

    const-string v2, "id,name,first_name,middle_name,last_name"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    new-instance v10, Lcom/facebook/GraphRequest;

    sget-object v5, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    const/4 v2, 0x0

    const-string v3, "me"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, v10

    move-object v4, v0

    invoke-direct/range {v1 .. v9}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10
.end method

.method public static final getGraphMeRequestWithCacheAsync(Ljava/lang/String;Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;)V
    .locals 3
    .param p0, "accessToken"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "accessToken"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1060
    invoke-static {p0}, Lcom/facebook/internal/ProfileInformationCache;->getProfileInformation(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1061
    .local v0, "cachedValue":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 1062
    invoke-interface {p1, v0}, Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;->onSuccess(Lorg/json/JSONObject;)V

    .line 1063
    return-void

    .line 1065
    :cond_0
    nop

    .line 1066
    new-instance v1, Lcom/facebook/internal/Utility$getGraphMeRequestWithCacheAsync$graphCallback$1;

    invoke-direct {v1, p1, p0}, Lcom/facebook/internal/Utility$getGraphMeRequestWithCacheAsync$graphCallback$1;-><init>(Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;Ljava/lang/String;)V

    .line 1065
    check-cast v1, Lcom/facebook/GraphRequest$Callback;

    .line 1074
    .local v1, "graphCallback":Lcom/facebook/GraphRequest$Callback;
    sget-object v2, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-direct {v2, p0}, Lcom/facebook/internal/Utility;->getGraphMeRequestWithCache(Ljava/lang/String;)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 1075
    .local v2, "graphRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v2, v1}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V

    .line 1076
    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 1077
    return-void
.end method

.method public static final getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 434
    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FacebookSdk.getApplicationId()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final varargs getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "clazz"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methodName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameterTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 880
    nop

    .line 881
    :try_start_0
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 880
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    :goto_0
    return-object v0
.end method

.method public static final varargs getMethodQuietly(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "className"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methodName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameterTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 893
    nop

    .line 894
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Class.forName(className)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 895
    .local v0, "clazz":Ljava/lang/Class;
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    invoke-static {v0, p1, v1}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "clazz":Ljava/lang/Class;
    goto :goto_0

    .line 896
    :catch_0
    move-exception v0

    .line 897
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    .line 893
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-object v1
.end method

.method public static final getResourceLocale()Ljava/util/Locale;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1278
    nop

    .line 1279
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FacebookSdk.getApplicationContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "FacebookSdk.getApplicationContext().resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1280
    :catch_0
    move-exception v0

    .line 1281
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    move-object v0, v1

    .line 1278
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 1282
    return-object v0
.end method

.method public static final getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "nonJSONPropertyKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "jsonObject"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    move-object v0, p0

    .line 493
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 494
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 495
    new-instance v2, Lorg/json/JSONTokener;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 496
    .local v2, "tokener":Lorg/json/JSONTokener;
    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 498
    .end local v2    # "tokener":Lorg/json/JSONTokener;
    :cond_0
    if-eqz v1, :cond_2

    instance-of v2, v1, Lorg/json/JSONObject;

    if-nez v2, :cond_2

    instance-of v2, v1, Lorg/json/JSONArray;

    if-nez v2, :cond_2

    .line 499
    if-eqz p2, :cond_1

    .line 504
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v2

    .line 505
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 506
    goto :goto_0

    .line 508
    :cond_1
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "Got an unexpected non-JSON object."

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 510
    :cond_2
    move-object v2, v1

    .line 498
    :goto_0
    return-object v2
.end method

.method public static final getUriString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 958
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final handlePermissionResponse(Lorg/json/JSONObject;)Lcom/facebook/internal/Utility$PermissionsLists;
    .locals 11
    .param p0, "result"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1204
    const-string v0, "permissions"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1205
    .local v0, "permissions":Lorg/json/JSONObject;
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1206
    .local v1, "data":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/List;

    .line 1207
    .local v2, "grantedPermissions":Ljava/util/List;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/List;

    .line 1208
    .local v3, "declinedPermissions":Ljava/util/List;
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/List;

    .line 1209
    .local v4, "expiredPermissions":Ljava/util/List;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_5

    .line 1210
    .local v6, "i":I
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 1211
    .local v7, "obj":Lorg/json/JSONObject;
    const-string v8, "permission"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1212
    .local v8, "permission":Ljava/lang/String;
    if-eqz v8, :cond_3

    const-string v9, "installed"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    .line 1215
    :cond_0
    const-string/jumbo v9, "status"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 1216
    .local v9, "status":Ljava/lang/String;
    const-string v10, "granted"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1217
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1218
    :cond_1
    const-string v10, "declined"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1219
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1220
    :cond_2
    const-string v10, "expired"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1221
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1213
    .end local v9    # "status":Ljava/lang/String;
    :cond_3
    :goto_1
    nop

    .line 1222
    .end local v7    # "obj":Lorg/json/JSONObject;
    .end local v8    # "permission":Ljava/lang/String;
    :cond_4
    :goto_2
    nop

    .line 1209
    nop

    .end local v6    # "i":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1224
    :cond_5
    new-instance v5, Lcom/facebook/internal/Utility$PermissionsLists;

    invoke-direct {v5, v2, v3, v4}, Lcom/facebook/internal/Utility$PermissionsLists;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v5
.end method

.method public static final hasSameId(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 3
    .param p0, "a"    # Lorg/json/JSONObject;
    .param p1, "b"    # Lorg/json/JSONObject;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 630
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 633
    :cond_0
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 634
    const/4 v0, 0x1

    return v0

    .line 636
    :cond_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 637
    .local v2, "idA":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 638
    .local v1, "idB":Ljava/lang/String;
    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    goto :goto_0

    .line 640
    :cond_2
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    .line 639
    :cond_3
    :goto_0
    nop

    .line 638
    :goto_1
    return v0

    .line 631
    .end local v1    # "idB":Ljava/lang/String;
    .end local v2    # "idA":Ljava/lang/String;
    :cond_4
    :goto_2
    return v0
.end method

.method private final hashBytes(Ljava/security/MessageDigest;[B)Ljava/lang/String;
    .locals 6
    .param p1, "hash"    # Ljava/security/MessageDigest;
    .param p2, "bytes"    # [B

    .line 304
    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 305
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 306
    .local v0, "digest":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .local v1, "builder":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v0, v3

    .line 308
    .local v4, "b":B
    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    shr-int/lit8 v5, v4, 0x0

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    nop

    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "builder.toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final varargs hashSet([Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 4
    .param p0, "ts"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/HashSet<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "ts"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 254
    .local v0, "hashSet":Ljava/util/HashSet;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 255
    .local v3, "t":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 254
    nop

    .end local v3    # "t":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    :cond_0
    return-object v0
.end method

.method private final hashWithAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 290
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/Utility;->hashWithAlgorithm(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final hashWithAlgorithm(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .line 294
    nop

    .line 295
    nop

    .line 296
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    nop

    .line 294
    nop

    .line 300
    .local v0, "hash":Ljava/security/MessageDigest;
    const-string v1, "hash"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/internal/Utility;->hashBytes(Ljava/security/MessageDigest;[B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 297
    .end local v0    # "hash":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static final intersectRanges([I[I)[I
    .locals 11
    .param p0, "range1"    # [I
    .param p1, "range2"    # [I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 129
    if-nez p0, :cond_0

    .line 130
    return-object p1

    .line 131
    :cond_0
    if-nez p1, :cond_1

    .line 132
    return-object p0

    .line 133
    :cond_1
    nop

    .line 134
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 135
    .local v0, "outputRange":[I
    const/4 v1, 0x0

    .line 136
    .local v1, "outputIndex":I
    const/4 v2, 0x0

    .line 137
    .local v2, "index1":I
    const/4 v3, 0x0

    .line 138
    .local v3, "lower1":I
    const/4 v4, 0x0

    .line 139
    .local v4, "upper1":I
    const/4 v5, 0x0

    .line 140
    .local v5, "index2":I
    const/4 v6, 0x0

    .line 141
    .local v6, "lower2":I
    const/4 v7, 0x0

    .line 142
    .local v7, "upper2":I
    :goto_0
    array-length v8, p0

    if-ge v2, v8, :cond_b

    array-length v8, p1

    if-ge v5, v8, :cond_b

    .line 143
    const/high16 v8, -0x80000000

    .line 144
    .local v8, "newRangeLower":I
    const v9, 0x7fffffff

    .line 145
    .local v9, "newRangeUpper":I
    aget v3, p0, v2

    .line 146
    const v4, 0x7fffffff

    .line 147
    aget v6, p1, v5

    .line 148
    const v7, 0x7fffffff

    .line 149
    array-length v10, p0

    add-int/lit8 v10, v10, -0x1

    if-ge v2, v10, :cond_2

    .line 150
    add-int/lit8 v10, v2, 0x1

    aget v4, p0, v10

    .line 152
    :cond_2
    array-length v10, p1

    add-int/lit8 v10, v10, -0x1

    if-ge v5, v10, :cond_3

    .line 153
    add-int/lit8 v10, v5, 0x1

    aget v7, p1, v10

    .line 155
    :cond_3
    if-ge v3, v6, :cond_6

    .line 156
    if-le v4, v6, :cond_5

    .line 157
    move v8, v6

    .line 158
    if-le v4, v7, :cond_4

    .line 159
    move v9, v7

    .line 160
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 162
    :cond_4
    move v9, v4

    .line 163
    add-int/lit8 v2, v2, 0x2

    .line 164
    goto :goto_1

    .line 166
    :cond_5
    add-int/lit8 v2, v2, 0x2

    .line 167
    goto :goto_1

    .line 169
    :cond_6
    if-le v7, v3, :cond_8

    .line 170
    move v8, v3

    .line 171
    if-le v7, v4, :cond_7

    .line 172
    move v9, v4

    .line 173
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 175
    :cond_7
    move v9, v7

    .line 176
    add-int/lit8 v5, v5, 0x2

    .line 177
    goto :goto_1

    .line 179
    :cond_8
    add-int/lit8 v5, v5, 0x2

    .line 180
    :goto_1
    nop

    .line 181
    nop

    .line 182
    const/high16 v10, -0x80000000

    if-eq v8, v10, :cond_a

    .line 183
    add-int/lit8 v10, v1, 0x1

    .end local v1    # "outputIndex":I
    .local v10, "outputIndex":I
    aput v8, v0, v1

    .line 184
    const v1, 0x7fffffff

    if-eq v9, v1, :cond_9

    .line 185
    add-int/lit8 v1, v10, 0x1

    .end local v10    # "outputIndex":I
    .restart local v1    # "outputIndex":I
    aput v9, v0, v10

    goto :goto_2

    .line 188
    .end local v1    # "outputIndex":I
    .restart local v10    # "outputIndex":I
    :cond_9
    move v1, v10

    goto :goto_3

    .line 189
    .end local v8    # "newRangeLower":I
    .end local v9    # "newRangeUpper":I
    .end local v10    # "outputIndex":I
    .restart local v1    # "outputIndex":I
    :cond_a
    :goto_2
    nop

    .line 142
    goto :goto_0

    .line 192
    :cond_b
    :goto_3
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    return-object v8
.end method

.method public static final varargs invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "receiver"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 903
    nop

    .line 904
    const/4 v0, 0x0

    :try_start_0
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 907
    :catch_0
    move-exception v1

    .line 908
    .local v1, "ex":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 905
    .end local v1    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 906
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    nop

    .line 903
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    :goto_0
    return-object v0
.end method

.method public static final isAutoAppLinkSetup()Z
    .locals 10

    .line 1319
    nop

    .line 1320
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1321
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v2, "fb%s://applinks"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1322
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1323
    .local v2, "ctx":Landroid/content/Context;
    const-string v4, "ctx"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1324
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1325
    .local v5, "packageName":Ljava/lang/String;
    nop

    .line 1326
    const/high16 v6, 0x10000

    invoke-virtual {v4, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 1325
    nop

    .line 1327
    .local v6, "activities":Ljava/util/List;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 1328
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_0

    .line 1329
    return v3

    .line 1328
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    goto :goto_0

    .line 1332
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "ctx":Landroid/content/Context;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "activities":Ljava/util/List;
    :catch_0
    move-exception v1

    .line 1334
    :cond_1
    nop

    .line 1335
    return v0
.end method

.method public static synthetic isAutoAppLinkSetup$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final isAutofillAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1247
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    .line 1249
    return v1

    .line 1251
    :cond_0
    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 1253
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isAutofillSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static final isChromeOS(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1265
    const/4 v0, 0x0

    .line 1266
    .local v0, "isChromeOS":Z
    nop

    .line 1267
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_0

    .line 1268
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.pc"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 1270
    :cond_0
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "Build.DEVICE"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lkotlin/text/Regex;

    const-string v3, ".+_cheets|cheets_.+"

    invoke-direct {v2, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1267
    :goto_0
    move v0, v1

    .line 1272
    return v0
.end method

.method public static final isContentUri(Landroid/net/Uri;)Z
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 971
    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-static {v2, v1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isCurrentAccessToken(Lcom/facebook/AccessToken;)Z
    .locals 1
    .param p0, "token"    # Lcom/facebook/AccessToken;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1052
    if-eqz p0, :cond_0

    sget-object v0, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v0}, Lcom/facebook/AccessToken$Companion;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isDataProcessingRestricted()Z
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/internal/Utility;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 1360
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/Utility;->getDataProcessingOptions()Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 1361
    .local v1, "dataProcessingOptions":Lorg/json/JSONObject;
    nop

    .line 1362
    :try_start_1
    const-string v3, "data_processing_options"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1363
    .local v3, "options":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    .line 1364
    .local v5, "i":I
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "options.getString(i)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "(this as java.lang.String).toLowerCase()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1365
    .local v6, "option":Ljava/lang/String;
    const-string v7, "ldu"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1366
    const/4 v0, 0x1

    return v0

    .line 1363
    .end local v6    # "option":Ljava/lang/String;
    :cond_1
    nop

    .end local v5    # "i":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1364
    .restart local v5    # "i":I
    :cond_2
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v6, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v4, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v1    # "dataProcessingOptions":Lorg/json/JSONObject;
    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1369
    .end local v3    # "options":Lorg/json/JSONArray;
    .end local v5    # "i":I
    .restart local v1    # "dataProcessingOptions":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1370
    :cond_3
    return v2

    .line 1360
    .end local v1    # "dataProcessingOptions":Lorg/json/JSONObject;
    :cond_4
    return v2

    .line 1370
    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method public static final isFileUri(Landroid/net/Uri;)Z
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 976
    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-static {v2, v1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isNullOrEmpty(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 219
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    move-object v2, p0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static final isNullOrEmpty(Ljava/util/Collection;)Z
    .locals 1
    .param p0, "c"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 214
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

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

.method public static final isSubset(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 6
    .param p0, "subset"    # Ljava/util/Collection;
    .param p1, "superset"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 200
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 203
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 204
    .local v2, "hash":Ljava/util/HashSet;
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 205
    .local v4, "t":Ljava/lang/Object;
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 206
    return v0

    .line 204
    .end local v4    # "t":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 209
    :cond_2
    return v1

    .line 204
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 201
    .end local v2    # "hash":Ljava/util/HashSet;
    :cond_4
    :goto_1
    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public static final isWebUri(Landroid/net/Uri;)Z
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 963
    nop

    .line 964
    nop

    .line 965
    nop

    .line 966
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 964
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-static {v2, v1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 965
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-static {v2, v1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 966
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fbstaging"

    invoke-static {v2, v1, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 963
    :goto_0
    return v0
.end method

.method public static final jsonArrayToSet(Lorg/json/JSONArray;)Ljava/util/Set;
    .locals 5
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "jsonArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    .line 704
    .local v0, "result":Ljava/util/Set;
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 705
    .local v2, "i":I
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "jsonArray.getString(i)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 704
    nop

    .end local v2    # "i":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 707
    :cond_0
    return-object v0
.end method

.method public static final jsonArrayToStringList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "jsonArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 693
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 694
    .local v0, "result":Ljava/util/ArrayList;
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 695
    .local v2, "i":I
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    nop

    .end local v2    # "i":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 697
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public static final jsonStrToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "str"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 730
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    goto :goto_3

    .line 732
    :cond_1
    nop

    .line 733
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 734
    .local v0, "map":Ljava/util/Map;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 735
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 736
    .local v2, "keys":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 737
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 738
    .local v3, "key":Ljava/lang/String;
    const-string v4, "key"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "jsonObject.getString(key)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    nop

    .end local v3    # "key":Ljava/lang/String;
    goto :goto_1

    .line 740
    :cond_2
    nop

    .end local v0    # "map":Ljava/util/Map;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "keys":Ljava/util/Iterator;
    goto :goto_2

    .line 741
    :catch_0
    move-exception v0

    .line 742
    .local v0, "_e":Lorg/json/JSONException;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    move-object v0, v1

    .line 732
    .end local v0    # "_e":Lorg/json/JSONException;
    :goto_2
    nop

    .line 729
    :goto_3
    return-object v0
.end method

.method public static final logd(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 602
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_0
    return-void
.end method

.method public static final logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 609
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 610
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_0
    return-void
.end method

.method public static final logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 616
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 619
    :cond_0
    return-void
.end method

.method public static final map(Ljava/util/List;Lcom/facebook/internal/Utility$Mapper;)Ljava/util/List;
    .locals 5
    .param p0, "target"    # Ljava/util/List;
    .param p1, "mapper"    # Lcom/facebook/internal/Utility$Mapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Lcom/facebook/internal/Utility$Mapper<",
            "TT;TK;>;)",
            "Ljava/util/List<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "mapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 943
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 944
    return-object v0

    .line 946
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 947
    .local v1, "list":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 948
    .local v3, "item":Ljava/lang/Object;
    invoke-interface {p1, v3}, Lcom/facebook/internal/Utility$Mapper;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 949
    .local v4, "mappedItem":Ljava/lang/Object;
    if-eqz v4, :cond_1

    .line 950
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 947
    .end local v3    # "item":Ljava/lang/Object;
    .end local v4    # "mappedItem":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 953
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public static final mapToJsonStr(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .param p0, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "map"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 713
    goto :goto_2

    .line 715
    :cond_0
    nop

    .line 716
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 717
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 718
    .local v3, "value":Ljava/lang/String;
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 717
    nop

    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_0

    .line 720
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_1

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, "_e":Lorg/json/JSONException;
    nop

    .line 715
    .end local v0    # "_e":Lorg/json/JSONException;
    :goto_1
    const-string/jumbo v0, "try {\n        val jsonOb\u2026ion) {\n        \"\"\n      }"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    :goto_2
    return-object v1
.end method

.method public static final md5hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    sget-object v0, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    const-string v1, "MD5"

    invoke-direct {v0, v1, p0}, Lcom/facebook/internal/Utility;->hashWithAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final mustFixWindowParamsForAutofill(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1242
    invoke-static {p0}, Lcom/facebook/internal/Utility;->isAutofillAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static final parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 13
    .param p0, "queryString"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 333
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 334
    .local v0, "params":Landroid/os/Bundle;
    invoke-static {p0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 335
    if-eqz p0, :cond_4

    move-object v2, p0

    check-cast v2, Ljava/lang/CharSequence;

    const-string v1, "&"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .local v1, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 1397
    .local v2, "$i$f$toTypedArray":I
    move-object v3, v1

    .line 1398
    .local v3, "thisCollection$iv":Ljava/util/Collection;
    new-array v5, v4, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type kotlin.Array<T>"

    if-eqz v5, :cond_3

    .line 335
    .end local v1    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v2    # "$i$f$toTypedArray":I
    .end local v3    # "thisCollection$iv":Ljava/util/Collection;
    move-object v1, v5

    check-cast v1, [Ljava/lang/String;

    .line 336
    .local v1, "array":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v5, v1, v3

    .line 337
    .local v5, "parameter":Ljava/lang/String;
    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    const-string v8, "="

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    .local v7, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v8, 0x0

    .line 1399
    .local v8, "$i$f$toTypedArray":I
    move-object v9, v7

    .line 1400
    .local v9, "thisCollection$iv":Ljava/util/Collection;
    new-array v10, v4, [Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 337
    .end local v7    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v8    # "$i$f$toTypedArray":I
    .end local v9    # "thisCollection$iv":Ljava/util/Collection;
    move-object v7, v10

    check-cast v7, [Ljava/lang/String;

    .line 338
    .local v7, "keyValuePair":[Ljava/lang/String;
    nop

    .line 339
    :try_start_0
    array-length v8, v7
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x2

    const-string v10, "UTF-8"

    const/4 v11, 0x1

    if-ne v8, v9, :cond_0

    .line 340
    nop

    .line 341
    :try_start_1
    aget-object v8, v7, v4

    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aget-object v9, v7, v11

    invoke-static {v9, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 340
    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 342
    :cond_0
    array-length v8, v7

    if-ne v8, v11, :cond_1

    .line 343
    aget-object v8, v7, v4

    invoke-static {v8, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 344
    :cond_1
    goto :goto_1

    .line 345
    :catch_0
    move-exception v8

    .line 347
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    move-object v9, v8

    check-cast v9, Ljava/lang/Exception;

    const-string v10, "FacebookSDK"

    invoke-static {v10, v9}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 348
    .end local v7    # "keyValuePair":[Ljava/lang/String;
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    nop

    .line 336
    nop

    .end local v5    # "parameter":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1400
    .restart local v5    # "parameter":Ljava/lang/String;
    .local v7, "$this$toTypedArray$iv":Ljava/util/Collection;
    .local v8, "$i$f$toTypedArray":I
    .restart local v9    # "thisCollection$iv":Ljava/util/Collection;
    :cond_2
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1398
    .end local v5    # "parameter":Ljava/lang/String;
    .end local v7    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v8    # "$i$f$toTypedArray":I
    .end local v9    # "thisCollection$iv":Ljava/util/Collection;
    .local v1, "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v2    # "$i$f$toTypedArray":I
    .restart local v3    # "thisCollection$iv":Ljava/util/Collection;
    :cond_3
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 335
    .end local v1    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v2    # "$i$f$toTypedArray":I
    .end local v3    # "thisCollection$iv":Ljava/util/Collection;
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Required value was null."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 351
    :cond_5
    return-object v0
.end method

.method public static final putCommaSeparatedStringList(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p0, "b"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "b"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    if-eqz p2, :cond_3

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 366
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .end local v2    # "string":Ljava/lang/String;
    goto :goto_0

    .line 369
    :cond_0
    const-string v1, ""

    .line 370
    .local v1, "commaSeparated":Ljava/lang/String;
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 371
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 373
    :cond_2
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "commaSeparated":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public static final putJSONValueInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bundle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    if-nez p2, :cond_0

    .line 387
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 388
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 389
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 390
    :cond_1
    instance-of v0, p2, [Z

    if-eqz v0, :cond_2

    .line 391
    move-object v0, p2

    check-cast v0, [Z

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto/16 :goto_0

    .line 392
    :cond_2
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 393
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 394
    :cond_3
    instance-of v0, p2, [D

    if-eqz v0, :cond_4

    .line 395
    move-object v0, p2

    check-cast v0, [D

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_0

    .line 396
    :cond_4
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 397
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 398
    :cond_5
    instance-of v0, p2, [I

    if-eqz v0, :cond_6

    .line 399
    move-object v0, p2

    check-cast v0, [I

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_0

    .line 400
    :cond_6
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 401
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 402
    :cond_7
    instance-of v0, p2, [J

    if-eqz v0, :cond_8

    .line 403
    move-object v0, p2

    check-cast v0, [J

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_0

    .line 404
    :cond_8
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 405
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :cond_9
    instance-of v0, p2, Lorg/json/JSONArray;

    if-eqz v0, :cond_a

    .line 407
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_a
    instance-of v0, p2, Lorg/json/JSONObject;

    if-eqz v0, :cond_b

    .line 409
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :goto_0
    nop

    .line 413
    const/4 v0, 0x1

    return v0

    .line 411
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static final putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "b"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "b"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_0
    return-void
.end method

.method public static final putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p0, "b"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "b"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    if-eqz p2, :cond_0

    .line 380
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_0
    return-void
.end method

.method public static final readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 516
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/io/BufferedInputStream;

    .line 517
    .local v1, "bufferedInputStream":Ljava/io/BufferedInputStream;
    check-cast v0, Ljava/io/InputStreamReader;

    .line 518
    .local v0, "reader":Ljava/io/InputStreamReader;
    nop

    .line 519
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 520
    new-instance v2, Ljava/io/InputStreamReader;

    move-object v3, v1

    check-cast v3, Ljava/io/InputStream;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    const/16 v3, 0x800

    .line 523
    .local v3, "bufferSize":I
    new-array v4, v3, [C

    .line 524
    .local v4, "buffer":[C
    const/4 v5, 0x0

    .line 525
    .local v5, "n":I
    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/InputStreamReader;->read([C)I

    move-result v6

    move v7, v6

    .line 1401
    .local v7, "it":I
    const/4 v8, 0x0

    .line 525
    .local v8, "$i$a$-also-Utility$readStreamToString$1":I
    move v5, v7

    .end local v7    # "it":I
    .end local v8    # "$i$a$-also-Utility$readStreamToString$1":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 526
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 525
    goto :goto_0

    .line 528
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "stringBuilder.toString()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    .end local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "bufferSize":I
    .end local v4    # "buffer":[C
    .end local v5    # "n":I
    move-object v2, v1

    check-cast v2, Ljava/io/Closeable;

    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 531
    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 532
    nop

    .line 518
    return-object v6

    .line 532
    :catchall_0
    move-exception v2

    .line 530
    move-object v3, v1

    check-cast v3, Ljava/io/Closeable;

    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 531
    move-object v3, v0

    check-cast v3, Ljava/io/Closeable;

    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

.method public static final readStringMapFromParcel(Landroid/os/Parcel;)Ljava/util/Map;
    .locals 5
    .param p0, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "parcel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1039
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1040
    .local v0, "size":I
    if-gez v0, :cond_0

    .line 1041
    const/4 v1, 0x0

    return-object v1

    .line 1043
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 1044
    .local v1, "map":Ljava/util/Map;
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1045
    .local v2, "i":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    nop

    .end local v2    # "i":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1047
    :cond_1
    return-object v1
.end method

.method private final refreshAvailableExternalStorage()V
    .locals 6

    .line 1171
    nop

    .line 1172
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/internal/Utility;->externalStorageExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1173
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1174
    .local v0, "path":Ljava/io/File;
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "path"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1175
    .local v1, "stat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long v2, v2, v4

    sput-wide v2, Lcom/facebook/internal/Utility;->availableExternalStorageGB:J

    .line 1177
    .end local v0    # "path":Ljava/io/File;
    .end local v1    # "stat":Landroid/os/StatFs;
    :cond_0
    sget-wide v0, Lcom/facebook/internal/Utility;->availableExternalStorageGB:J

    long-to-double v0, v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/internal/Utility;->convertBytesToGB(D)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/internal/Utility;->availableExternalStorageGB:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1178
    :catch_0
    move-exception v0

    .line 1180
    :goto_0
    nop

    .line 1181
    return-void
.end method

.method private final refreshBestGuessNumberOfCPUCores()I
    .locals 3

    .line 1106
    sget v0, Lcom/facebook/internal/Utility;->numCPUCores:I

    if-lez v0, :cond_0

    .line 1107
    return v0

    .line 1111
    :cond_0
    nop

    .line 1112
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1113
    .local v0, "cpuDir":Ljava/io/File;
    sget-object v1, Lcom/facebook/internal/Utility$refreshBestGuessNumberOfCPUCores$cpuFiles$1;->INSTANCE:Lcom/facebook/internal/Utility$refreshBestGuessNumberOfCPUCores$cpuFiles$1;

    check-cast v1, Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 1114
    .local v1, "cpuFiles":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 1115
    array-length v2, v1

    sput v2, Lcom/facebook/internal/Utility;->numCPUCores:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "cpuDir":Ljava/io/File;
    .end local v1    # "cpuFiles":[Ljava/io/File;
    goto :goto_0

    .line 1117
    :catch_0
    move-exception v0

    .line 1121
    :cond_1
    :goto_0
    sget v0, Lcom/facebook/internal/Utility;->numCPUCores:I

    if-gtz v0, :cond_2

    .line 1122
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/facebook/internal/Utility;->numCPUCores:I

    .line 1124
    :cond_2
    sget v0, Lcom/facebook/internal/Utility;->numCPUCores:I

    return v0
.end method

.method private final refreshCarrierName(Landroid/content/Context;)V
    .locals 3
    .param p1, "appContext"    # Landroid/content/Context;

    .line 1155
    sget-object v0, Lcom/facebook/internal/Utility;->carrierName:Ljava/lang/String;

    const-string v1, "NoCarrier"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1156
    nop

    .line 1157
    nop

    .line 1158
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1157
    nop

    .line 1159
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "telephonyManager.networkOperatorName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/facebook/internal/Utility;->carrierName:Ljava/lang/String;

    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    goto :goto_0

    .line 1158
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local p1    # "appContext":Landroid/content/Context;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    .restart local p1    # "appContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 1162
    :cond_1
    :goto_0
    return-void
.end method

.method private final refreshPeriodicExtendedDeviceInfo(Landroid/content/Context;)V
    .locals 5
    .param p1, "appContext"    # Landroid/content/Context;

    .line 1128
    nop

    .line 1129
    nop

    .line 1130
    sget-wide v0, Lcom/facebook/internal/Utility;->timestampOfLastCheck:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/facebook/internal/Utility;->timestampOfLastCheck:J

    sub-long/2addr v0, v2

    const v2, 0x1b7740

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 1131
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/internal/Utility;->timestampOfLastCheck:J

    .line 1132
    invoke-direct {p0}, Lcom/facebook/internal/Utility;->refreshTimezone()V

    .line 1133
    invoke-direct {p0, p1}, Lcom/facebook/internal/Utility;->refreshCarrierName(Landroid/content/Context;)V

    .line 1134
    invoke-direct {p0}, Lcom/facebook/internal/Utility;->refreshTotalExternalStorage()V

    .line 1135
    invoke-direct {p0}, Lcom/facebook/internal/Utility;->refreshAvailableExternalStorage()V

    .line 1137
    :cond_1
    return-void
.end method

.method private final refreshTimezone()V
    .locals 3

    .line 1140
    nop

    .line 1141
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 1142
    .local v0, "tz":Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tz.getDisplayName(tz.inD\u2026(Date()), TimeZone.SHORT)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/facebook/internal/Utility;->deviceTimezoneAbbreviation:Ljava/lang/String;

    .line 1143
    const-string/jumbo v1, "tz"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tz.id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/facebook/internal/Utility;->deviceTimeZoneName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "tz":Ljava/util/TimeZone;
    goto :goto_0

    .line 1146
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1144
    :catch_1
    move-exception v0

    .line 1147
    :goto_0
    return-void
.end method

.method private final refreshTotalExternalStorage()V
    .locals 6

    .line 1185
    nop

    .line 1186
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/internal/Utility;->externalStorageExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1187
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1188
    .local v0, "path":Ljava/io/File;
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "path"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1189
    .local v1, "stat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long v2, v2, v4

    sput-wide v2, Lcom/facebook/internal/Utility;->totalExternalStorageGB:J

    .line 1191
    .end local v0    # "path":Ljava/io/File;
    .end local v1    # "stat":Landroid/os/StatFs;
    :cond_0
    sget-wide v0, Lcom/facebook/internal/Utility;->totalExternalStorageGB:J

    long-to-double v0, v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/internal/Utility;->convertBytesToGB(D)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/internal/Utility;->totalExternalStorageGB:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1192
    :catch_0
    move-exception v0

    .line 1194
    :goto_0
    nop

    .line 1195
    return-void
.end method

.method public static final runOnNonUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1292
    nop

    .line 1293
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1294
    :catch_0
    move-exception v0

    .line 1296
    :goto_0
    nop

    .line 1297
    return-void
.end method

.method public static final safeGetStringFromResponse(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "response"    # Lorg/json/JSONObject;
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 645
    const-string v0, ""

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "response.optString(propertyName, \"\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final setAppEventAttributionParameters(Lorg/json/JSONObject;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "params"    # Lorg/json/JSONObject;
    .param p1, "attributionIdentifiers"    # Lcom/facebook/internal/AttributionIdentifiers;
    .param p2, "anonymousAppDeviceGUID"    # Ljava/lang/String;
    .param p3, "limitEventUsage"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "params"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 755
    const-string v0, "anon_id"

    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 756
    xor-int/lit8 v0, p3, 0x1

    const-string v1, "application_tracking_enabled"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 757
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAdvertiserIDCollectionEnabled()Z

    move-result v0

    const-string v1, "advertiser_id_collection_enabled"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 758
    if-eqz p1, :cond_4

    .line 759
    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "attribution"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 762
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 763
    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "advertiser_id"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 764
    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->isTrackingLimited()Z

    move-result v0

    xor-int/2addr v0, v1

    const-string v2, "advertiser_tracking_enabled"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 766
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->isTrackingLimited()Z

    move-result v0

    if-nez v0, :cond_3

    .line 767
    invoke-static {}, Lcom/facebook/appevents/UserDataStore;->getAllHashedUserData()Ljava/lang/String;

    move-result-object v0

    .line 768
    .local v0, "userData":Ljava/lang/String;
    const-string/jumbo v2, "userData"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 769
    const-string/jumbo v1, "ud"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 772
    .end local v0    # "userData":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidInstallerPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 773
    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidInstallerPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "installer_package"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 776
    :cond_4
    return-void
.end method

.method public static final setAppEventExtendedDeviceInfoParameters(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 13
    .param p0, "params"    # Lorg/json/JSONObject;
    .param p1, "appContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "params"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 802
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 803
    .local v0, "extraInfoArray":Lorg/json/JSONArray;
    const-string v1, "a2"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 804
    sget-object v1, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-direct {v1, p1}, Lcom/facebook/internal/Utility;->refreshPeriodicExtendedDeviceInfo(Landroid/content/Context;)V

    .line 807
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 808
    .local v1, "pkgName":Ljava/lang/String;
    const/4 v2, -0x1

    .line 809
    .local v2, "versionCode":I
    const-string v3, ""

    .line 810
    .local v3, "versionName":Ljava/lang/String;
    nop

    .line 811
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 812
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    move v2, v5

    .line 813
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 811
    :cond_0
    return-void

    .line 814
    :catch_0
    move-exception v4

    .line 816
    :goto_0
    nop

    .line 819
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 820
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 821
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 824
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 825
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 828
    nop

    .line 829
    nop

    .line 830
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "appContext.resources"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 831
    :catch_1
    move-exception v4

    .line 832
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    move-object v4, v5

    .line 829
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 828
    nop

    .line 834
    .local v4, "locale":Ljava/util/Locale;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "locale"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 837
    sget-object v5, Lcom/facebook/internal/Utility;->deviceTimezoneAbbreviation:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 840
    sget-object v5, Lcom/facebook/internal/Utility;->carrierName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 843
    const/4 v5, 0x0

    .line 844
    .local v5, "width":I
    const/4 v6, 0x0

    .line 845
    .local v6, "height":I
    const-wide/16 v7, 0x0

    .line 846
    .local v7, "density":D
    nop

    .line 847
    :try_start_2
    const-string/jumbo v9, "window"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    check-cast v9, Landroid/view/WindowManager;

    .line 848
    .local v9, "wm":Landroid/view/WindowManager;
    if-eqz v9, :cond_2

    .line 849
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 850
    .local v10, "display":Landroid/view/Display;
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 851
    .local v11, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v10, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 852
    iget v12, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move v5, v12

    .line 853
    iget v12, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    move v6, v12

    .line 854
    iget v12, v11, Landroid/util/DisplayMetrics;->density:F

    float-to-double v7, v12

    .end local v9    # "wm":Landroid/view/WindowManager;
    .end local v10    # "display":Landroid/view/Display;
    .end local v11    # "displayMetrics":Landroid/util/DisplayMetrics;
    goto :goto_2

    .line 847
    :cond_1
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "extraInfoArray":Lorg/json/JSONArray;
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "versionCode":I
    .end local v3    # "versionName":Ljava/lang/String;
    .end local v4    # "locale":Ljava/util/Locale;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "density":D
    .end local p0    # "params":Lorg/json/JSONObject;
    .end local p1    # "appContext":Landroid/content/Context;
    throw v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 856
    .restart local v0    # "extraInfoArray":Lorg/json/JSONArray;
    .restart local v1    # "pkgName":Ljava/lang/String;
    .restart local v2    # "versionCode":I
    .restart local v3    # "versionName":Ljava/lang/String;
    .restart local v4    # "locale":Ljava/util/Locale;
    .restart local v5    # "width":I
    .restart local v6    # "height":I
    .restart local v7    # "density":D
    .restart local p0    # "params":Lorg/json/JSONObject;
    .restart local p1    # "appContext":Landroid/content/Context;
    :catch_2
    move-exception v9

    .line 858
    :cond_2
    :goto_2
    nop

    .line 859
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 860
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 861
    new-instance v9, Ljava/text/DecimalFormat;

    const-string v10, "#.##"

    invoke-direct {v9, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 862
    .local v9, "df":Ljava/text/DecimalFormat;
    invoke-virtual {v9, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 865
    sget-object v10, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    invoke-direct {v10}, Lcom/facebook/internal/Utility;->refreshBestGuessNumberOfCPUCores()I

    move-result v10

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 868
    sget-wide v10, Lcom/facebook/internal/Utility;->totalExternalStorageGB:J

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 869
    sget-wide v10, Lcom/facebook/internal/Utility;->availableExternalStorageGB:J

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 870
    sget-object v10, Lcom/facebook/internal/Utility;->deviceTimeZoneName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 871
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "extinfo"

    invoke-virtual {p0, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 872
    return-void
.end method

.method public static final sha1hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    const-string v1, "SHA-1"

    invoke-direct {v0, v1, p0}, Lcom/facebook/internal/Utility;->hashWithAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final sha1hash([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bytes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    sget-object v0, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    const-string v1, "SHA-1"

    invoke-direct {v0, v1, p0}, Lcom/facebook/internal/Utility;->hashWithAlgorithm(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final sha256hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 277
    if-nez p0, :cond_0

    .line 278
    const/4 v0, 0x0

    goto :goto_0

    .line 279
    :cond_0
    sget-object v0, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    const-string v1, "SHA-256"

    invoke-direct {v0, v1, p0}, Lcom/facebook/internal/Utility;->hashWithAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    :goto_0
    return-object v0
.end method

.method public static final sha256hash([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 284
    if-nez p0, :cond_0

    .line 285
    const/4 v0, 0x0

    goto :goto_0

    .line 286
    :cond_0
    sget-object v0, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    const-string v1, "SHA-256"

    invoke-direct {v0, v1, p0}, Lcom/facebook/internal/Utility;->hashWithAlgorithm(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 284
    :goto_0
    return-object v0
.end method

.method public static final stringsEqualOrEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 557
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 558
    .local v0, "aEmpty":Z
    :goto_1
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    .line 559
    .local v3, "bEmpty":Z
    :goto_3
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 561
    return v2

    .line 563
    :cond_4
    if-nez v0, :cond_5

    if-nez v3, :cond_5

    .line 565
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4

    .line 566
    :cond_5
    nop

    .line 563
    :goto_4
    return v1
.end method

.method public static final tryGetJSONArrayFromResponse(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "response"    # Lorg/json/JSONObject;
    .param p1, "propertyKey"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 655
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final tryGetJSONObjectFromResponse(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "response"    # Lorg/json/JSONObject;
    .param p1, "propertyKey"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 650
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final varargs unmodifiableCollection([Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .param p0, "ts"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "ts"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    const-string v1, "Collections.unmodifiable\u2026ction(Arrays.asList(*ts))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final writeStringMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 3
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "parcel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1025
    if-nez p1, :cond_0

    .line 1027
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1029
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1030
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1031
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1030
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1034
    :cond_1
    :goto_1
    nop

    .line 1035
    return-void
.end method
