.class public final Lcom/android/server/policy/KeyCustomizationInfoManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final ALL_HOT_KEYCODE:[I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDoubleMap:Landroid/util/SparseArray;

.field public final mDownUpMap:Landroid/util/SparseArray;

.field public mGlobalSideKeyDoubleInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

.field public mGlobalSideKeyLongInfo:Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

.field public final mHotKeyMap:Landroid/util/SparseArray;

.field public final mLastDoubleInfo:Landroid/util/SparseArray;

.field public final mLastDownUpInfo:Landroid/util/SparseArray;

.field public final mLastLongInfo:Landroid/util/SparseArray;

.field public final mLastQuadrupleInfo:Landroid/util/SparseArray;

.field public final mLastQuintupleInfo:Landroid/util/SparseArray;

.field public final mLastTripleInfo:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public final mLongMap:Landroid/util/SparseArray;

.field public final mOwnerPackageList:Ljava/util/ArrayList;

.field public final mQuadrupleMap:Landroid/util/SparseArray;

.field public final mQuintupleMap:Landroid/util/SparseArray;

.field public final mTripleMap:Landroid/util/SparseArray;

.field public mUserId:I

.field public final mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x443

    const/16 v1, 0x444

    const/16 v2, 0x442

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->ALL_HOT_KEYCODE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mDownUpMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLongMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mDoubleMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mTripleMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mQuadrupleMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mQuintupleMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastDownUpInfo:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastLongInfo:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastDoubleInfo:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastTripleInfo:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastQuadrupleInfo:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastQuintupleInfo:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mHotKeyMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    new-instance p1, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    invoke-direct {p1, p0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;-><init>(Lcom/android/server/policy/KeyCustomizationInfoManager;)V

    iput-object p1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    return-void
.end method

.method public static dumpKeyCustomizationInfoKeyCodeMap(Ljava/io/PrintWriter;Landroid/util/SparseArray;)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v2, "    "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "      "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    invoke-static {v3}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ", keyCode: "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ", "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    invoke-static {v4}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    const-string v5, ", dispatching: "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    :cond_1
    iget v4, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_2

    const-string v5, ", userId: "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    :cond_2
    iget-wide v4, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeout:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    const-string v8, ", longPressTimeout: "

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    :cond_3
    iget-wide v4, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeout:J

    cmp-long v8, v4, v6

    if-eqz v8, :cond_4

    const-string v8, ", multiPressTimeout: "

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    :cond_4
    iget-object v4, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v8, "        "

    if-nez v5, :cond_5

    const-string v5, ", ownerPackage: "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    iget-object v4, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v4, ", showOnKeyguard: "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "show_on_keyguard"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    const-string v2, ", intent is null."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1
    iget v2, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->callingPid:I

    if-eqz v2, :cond_8

    const-string v2, ", pid="

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->callingPid:I

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(I)V

    :cond_8
    iget-object v2, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->callingPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, ", callingPackageName="

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->callingPackageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_9
    iget-wide v2, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->timestamp:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_a

    const-string v2, ", timestamp="

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->timestamp:J

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd_HH.mm.ss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v4, Ljava/sql/Timestamp;

    invoke-direct {v4, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public static getKodiakPttInfo(ILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .locals 9

    const/16 v0, 0x3f7

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    const/16 v0, 0x437

    if-eq p0, v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "com.mcx.intent.action.CRITICAL_COMMUNICATION_SOS_KEY"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "com.mcx.intent.action.CRITICAL_COMMUNICATION_CONTROL_KEY"

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v8, v1

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object v8, v2

    :goto_1
    if-nez v8, :cond_3

    return-object v1

    :cond_3
    new-instance v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/4 v7, 0x2

    const/4 v4, 0x3

    const/16 v5, 0x3b7

    move v6, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    return-object v3
.end method

.method public static getXCoverTopKeyCustomizationInfo(IILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .locals 7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string/jumbo v1, "torch/torch"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "home/home"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "back/back"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x1

    :goto_1
    move v5, p2

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p2, 0x0

    goto :goto_1

    :goto_3
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo p2, "android.intent.action.MAIN"

    invoke-direct {v6, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10200000

    invoke-virtual {v6, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/16 v3, 0x44f

    move v2, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    return-object v1
.end method


# virtual methods
.method public final addOwnerPackageList(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_1
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final checkHomeLongPressInfo()Z
    .locals 10

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "KeyCustomizationInfoManager"

    if-nez v0, :cond_0

    const-string/jumbo p0, "There is no home key long press info."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    iget v6, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    const/16 v7, 0xa

    if-eq v6, v7, :cond_2

    const/16 v7, 0x1e

    if-eq v6, v7, :cond_2

    const/16 v7, 0x32

    if-eq v6, v7, :cond_2

    const-string/jumbo v7, "checkHomeLongPressInfo, id="

    const-string v8, " added"

    invoke-static {v6, v7, v8, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo p0, "checkHomeLongPressInfo, toRemove size is zero"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_7

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "checkHomeLongPressInfo, remove "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v8, 0x7d3

    const-string/jumbo v9, "Remove home key long press info, ID("

    if-ne v1, v8, :cond_6

    iget-object v1, v7, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->removeOwnerPackageList(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "), ownerPackage="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v1, v2}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    return v1
.end method

.method public final get(IIILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    const/4 p2, 0x0

    if-nez p0, :cond_0

    move-object p0, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    :goto_0
    if-nez p0, :cond_1

    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/16 p3, 0x7d3

    if-ne p1, p3, :cond_3

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    monitor-exit v0

    return-object p2

    :cond_3
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getInfoMapLocked(I)Landroid/util/SparseArray;
    .locals 1

    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mDownUpMap:Landroid/util/SparseArray;

    return-object p0

    :cond_0
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLongMap:Landroid/util/SparseArray;

    return-object p0

    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mDoubleMap:Landroid/util/SparseArray;

    return-object p0

    :cond_2
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mTripleMap:Landroid/util/SparseArray;

    return-object p0

    :cond_3
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mQuadrupleMap:Landroid/util/SparseArray;

    return-object p0

    :cond_4
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mQuintupleMap:Landroid/util/SparseArray;

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not find infoMap. which="

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLastInfoLocked(I)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getLastInfoLocked(I)Landroid/util/SparseArray;
    .locals 1

    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastDownUpInfo:Landroid/util/SparseArray;

    return-object p0

    :cond_0
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastLongInfo:Landroid/util/SparseArray;

    return-object p0

    :cond_1
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastDoubleInfo:Landroid/util/SparseArray;

    return-object p0

    :cond_2
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastTripleInfo:Landroid/util/SparseArray;

    return-object p0

    :cond_3
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastQuadrupleInfo:Landroid/util/SparseArray;

    return-object p0

    :cond_4
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastQuintupleInfo:Landroid/util/SparseArray;

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not find lastInfo. which="

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getQuickLaunchCameraInfoFromSetting(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .locals 3

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "double_tab_launch"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string/jumbo v0, "getQuickLaunchCameraInfoFromSetting behavior="

    const-string v2, "KeyCustomizationInfoManager"

    invoke-static {p0, v0, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eq p0, v1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/16 v2, 0x7d1

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIII)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSideKeyDoubleInfoFromGlobalSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .locals 7

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "function_key_config_doublepress"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v0, 0x0

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const-string/jumbo v3, "function_key_config_doublepress_type"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "function_key_config_doublepress_value"

    invoke-static {p0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v3, "getSideKeyDoubleInfoFromGlobalSetting enabled="

    const-string v4, " type="

    const-string v5, " appInfo="

    invoke-static {v2, v3, v4, v5, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "KeyCustomizationInfoManager"

    invoke-static {v1, p0, v3}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    const/4 v1, 0x2

    if-eq v2, v1, :cond_4

    const/4 p0, 0x3

    if-eq v2, p0, :cond_3

    const/4 p0, 0x4

    if-eq v2, p0, :cond_2

    const-string/jumbo p0, "SideKeyDoublePress"

    const-string/jumbo v1, "type is not properly."

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v0

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "samsungpay://simplepay/sidekey"

    invoke-static {p0}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    move-result-object p0

    goto :goto_1

    :cond_3
    const-string/jumbo p0, "secureFolder/secureFolder"

    invoke-static {p0}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    move-result-object p0

    goto :goto_1

    :cond_5
    const-string/jumbo p0, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {p0}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    move-result-object p0

    :goto_1
    if-nez p0, :cond_6

    :goto_2
    return-object v0

    :cond_6
    new-instance v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    invoke-virtual {p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->getAction()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const/16 v3, 0x450

    const/16 v4, 0x1a

    const/16 v2, 0x8

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    return-object v1
.end method

.method public final getSideKeyLongInfoFromGlobalSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .locals 11

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DIGITAL_ASSISTANT:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const-string/jumbo v4, "function_key_config_longpress_type"

    invoke-static {p0, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string/jumbo v3, "getSideKeyLongInfoFromGlobalSetting sideKeyLongPressType="

    const-string v4, "KeyCustomizationInfoManager"

    invoke-static {p0, v3, v4}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    if-ne p0, v2, :cond_1

    const-string/jumbo p0, "aiAgentApp/aiAgentApp"

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    :goto_1
    move v9, v3

    goto :goto_2

    :cond_1
    if-nez p0, :cond_2

    const-string/jumbo p0, "wakeBixby/wakeBixby"

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    const-string/jumbo p0, "globalAction/globalAction"

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    move v9, v1

    goto :goto_2

    :cond_3
    move v9, v1

    move-object p0, v4

    :goto_2
    if-nez p0, :cond_4

    return-object v4

    :cond_4
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/16 v7, 0x450

    const/16 v8, 0x1a

    const/4 v6, 0x4

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    return-object v5
.end method

.method public final getXCoverKeyB2BDeltaInfoFromSetting(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 v2, 0x437

    const/4 v3, 0x0

    const/16 v4, 0x3f7

    if-ne p1, v4, :cond_0

    const-string/jumbo v5, "dedicated_app_xcover_switch"

    const-string/jumbo v6, "dedicated_app_xcover"

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_b

    const-string/jumbo v5, "dedicated_app_top_switch"

    const-string/jumbo v6, "dedicated_app_top"

    :goto_0
    const/4 v7, -0x2

    invoke-static {p0, v5, v1, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v0, :cond_b

    invoke-static {p0, v6, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_1
    move v0, v5

    goto :goto_2

    :sswitch_0
    const-string/jumbo v0, "com.verizon.pushtotalkplus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    goto :goto_2

    :sswitch_1
    const-string/jumbo v0, "com.att.eptt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    goto :goto_2

    :sswitch_2
    const-string/jumbo v0, "com.att.firstnet.grey"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    goto :goto_2

    :sswitch_3
    const-string/jumbo v1, "com.sprint.sdcplus"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :sswitch_4
    const-string/jumbo v0, "com.bell.ptt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :cond_6
    :goto_2
    packed-switch v0, :pswitch_data_0

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.knox.intent.action.HARD_KEY_REPORT"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.knox.intent.extra.KEY_CODE"

    invoke-virtual {v10, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v10, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    new-instance v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/4 v6, 0x3

    const/16 v7, 0x3b7

    const/4 v9, 0x2

    move v8, p1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    return-object v5

    :pswitch_0
    move v8, p1

    if-eq v8, v4, :cond_9

    if-eq v8, v2, :cond_8

    move-object p0, v3

    goto :goto_3

    :cond_8
    const-string/jumbo p0, "com.mcx.intent.action.CRITICAL_COMMUNICATION_SOS_KEY"

    goto :goto_3

    :cond_9
    const-string/jumbo p0, "com.mcx.intent.action.CRITICAL_COMMUNICATION_CONTROL_KEY"

    :goto_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "com.att.firstnet.grey/com.samsung.android.sptt.keyevent.KeyEventService"

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v11, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v6, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/4 v7, 0x3

    move v9, v8

    const/16 v8, 0x3b7

    const/4 v10, 0x3

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    return-object v6

    :pswitch_1
    move v8, p1

    invoke-static {v8, p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getKodiakPttInfo(ILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    return-object p0

    :cond_b
    :goto_4
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e35f6ae -> :sswitch_4
        -0x3dc882fb -> :sswitch_3
        -0x6041c7a -> :sswitch_2
        0x4dbc6965 -> :sswitch_1
        0x7903cfc3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final init(IZ)V
    .locals 12

    const/4 v0, 0x1

    const-string/jumbo v1, "Xml file error code was wrong. code="

    const-string/jumbo v2, "loadSettings duration="

    iget-object v3, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    invoke-virtual {v6, p1}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->loadSettingsLocked(I)V

    const-string v6, "KeyCustomizationInfoManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " version="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    iget v2, v2, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mXmlVersion:F

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " userSwitching="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    iget-object v2, v2, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->xmlFileErrorCode:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    sget-object v6, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->FILE_NOT_FOUND:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    const/high16 v7, 0x40a00000    # 5.0f

    if-ne v2, v6, :cond_5

    const/16 v1, 0x1a

    const/16 v2, 0x8

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    const/4 v6, 0x4

    invoke-virtual {p0, v6, v1, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    const/16 v8, 0x3b7

    const/4 v9, 0x0

    const/4 v10, 0x3

    if-eqz v1, :cond_1

    const/16 v1, 0x3f7

    invoke-virtual {p0, v10, v1, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    invoke-virtual {p0, v8, v10, v1, v9}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(IIILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v11

    if-eqz v11, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v6, v1, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x437

    invoke-virtual {p0, v10, v1, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    invoke-virtual {p0, v8, v10, v1, v9}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(IIILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v6, v1, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    :cond_3
    :goto_1
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY:Z

    if-nez v1, :cond_4

    invoke-virtual {p0, v2, v10, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    iput v7, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mXmlVersion:F

    if-nez p2, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->saveSettingsLocked(I)V

    goto/16 :goto_7

    :cond_5
    sget-object v6, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->SUCCESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    if-ne v2, v6, :cond_b

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->checkHomeLongPressInfo()Z

    move-result v1

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    iget v6, p2, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mXmlVersion:F

    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_7

    sget-object p2, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    move p2, v2

    goto :goto_4

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateXmlVersion old="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p2, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mXmlVersion:F

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " new=5.0"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "KeyCustomizationInfoXmlUtils"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, p2, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mXmlVersion:F

    move p2, v0

    :goto_4
    or-int/2addr v1, p2

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked(I)V

    :cond_9
    sget-object p1, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    array-length p2, p1

    move v1, v2

    :goto_5
    if-ge v1, p2, :cond_c

    aget v6, p1, v1

    invoke-virtual {p0, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v7

    move v8, v2

    :goto_6
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_a

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    const/4 v10, -0x1

    invoke-virtual {p0, v6, v9, v10}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(III)V

    add-int/2addr v8, v0

    goto :goto_6

    :cond_a
    add-int/2addr v1, v0

    goto :goto_5

    :cond_b
    const-string p1, "KeyCustomizationInfoManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->xmlFileErrorCode:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_7
    const-string p0, "KeyCustomizationInfoManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "initKeyCustomizationInfo duration="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return-void

    :goto_8
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final initKeyCustomizationInfoLocked(IIZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x4

    const/4 v5, 0x3

    sget-object v6, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x2

    const-string v10, "KeyCustomizationInfoManager"

    if-eq v2, v5, :cond_12

    const/16 v11, 0x1a

    if-eq v2, v11, :cond_a

    const/16 v6, 0x3f7

    if-eq v2, v6, :cond_4

    const/16 v6, 0x437

    if-eq v2, v6, :cond_0

    goto/16 :goto_8

    :cond_0
    and-int/lit8 v7, v1, 0x3

    if-eqz v7, :cond_3

    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_TOP_KEY_B2B_DELTA:Z

    if-eqz v4, :cond_2

    if-eqz v3, :cond_1

    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_KODIAK_DEDICATED_PTT_APP:Z

    if-eqz v4, :cond_2

    invoke-virtual {v0, v5, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v4

    invoke-virtual {v0, v4, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKodiakDedicatedPttApp(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_8

    :cond_1
    invoke-virtual {v0, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getXCoverKeyB2BDeltaInfoFromSetting(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    return-void

    :cond_2
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    if-eqz v4, :cond_19

    iget-object v4, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "xcover_top_short_press_app"

    invoke-static {v4, v7, v9}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "getTopKeyPressInfoFromSetting topKeyPressLaunchApp="

    invoke-static {v7, v4, v10}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v6, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getXCoverTopKeyCustomizationInfo(IILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    return-void

    :cond_3
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_19

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    return-void

    :cond_4
    and-int/lit8 v7, v1, 0x3

    if-eqz v7, :cond_9

    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_TOP_KEY_B2B_DELTA:Z

    if-eqz v4, :cond_6

    if-eqz v3, :cond_5

    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_KODIAK_DEDICATED_PTT_APP:Z

    if-eqz v4, :cond_6

    invoke-virtual {v0, v5, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v4

    invoke-virtual {v0, v4, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKodiakDedicatedPttApp(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;I)Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_8

    :cond_5
    invoke-virtual {v0, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getXCoverKeyB2BDeltaInfoFromSetting(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    return-void

    :cond_6
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v4, :cond_19

    sget-boolean v7, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    if-eqz v7, :cond_7

    goto :goto_0

    :cond_7
    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "short_press_app"

    invoke-static {v4, v7, v9}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "getXCoverKeyPressInfoFromSetting xcoverKeyPressApp="

    invoke-static {v7, v4, v10}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v6, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getXCoverTopKeyCustomizationInfo(IILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v8

    :cond_8
    :goto_0
    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    return-void

    :cond_9
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_19

    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v5, :cond_19

    iget-object v5, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "long_press_app"

    invoke-static {v5, v7, v9}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "getXCoverKeyLongInfoFromSetting xcoverKeyLongPressLaunchApp="

    invoke-static {v7, v5, v10}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v6, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getXCoverTopKeyCustomizationInfo(IILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    return-void

    :cond_a
    and-int/2addr v4, v1

    const-string/jumbo v5, "android.intent.action.MAIN"

    if-eqz v4, :cond_d

    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_WAKE_UP_BIXBY:Z

    if-nez v4, :cond_c

    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DIGITAL_ASSISTANT:Z

    if-eqz v4, :cond_b

    goto :goto_1

    :cond_b
    const-string/jumbo v4, "getPowerKeyLongDefaultInfo"

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "globalAction/globalAction"

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v11, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/4 v12, 0x4

    const/16 v13, 0x3e8

    const/16 v14, 0x1a

    const/4 v15, 0x0

    move-object/from16 v16, v4

    invoke-direct/range {v11 .. v16}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    invoke-virtual {v0, v11, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    return-void

    :cond_c
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getSideKeyLongInfoFromGlobalSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    return-void

    :cond_d
    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_19

    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_POWER_KEY_DOUBLE_PRESS_ATT_TV_MODE:Z

    if-eqz v4, :cond_10

    iget-object v4, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "tvmode_state"

    invoke-static {v4, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_e

    move v8, v6

    goto :goto_2

    :cond_e
    move v8, v7

    :goto_2
    const-string/jumbo v9, "pwrkey_owner_status"

    invoke-static {v4, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_f

    goto :goto_3

    :cond_f
    move v6, v7

    :goto_3
    if-eqz v8, :cond_10

    if-eqz v6, :cond_10

    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-static {v5, v4}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    const-string/jumbo v4, "com.samsung.tvmode/com.samsung.tvmode.activity.MainActivity"

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v6, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/16 v7, 0x8

    const/16 v8, 0x7d2

    const/16 v9, 0x1a

    const/4 v10, 0x1

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    return-void

    :cond_10
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DOUBLE_PRESS:Z

    if-eqz v4, :cond_11

    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getSideKeyDoubleInfoFromGlobalSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    return-void

    :cond_11
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_QUICK_LAUNCH_CAMERA:Z

    if-eqz v4, :cond_19

    invoke-virtual {v0, v11}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getQuickLaunchCameraInfoFromSetting(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    return-void

    :cond_12
    iget-object v4, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v11, "double_tab_launch"

    const/4 v12, 0x2

    invoke-static {v4, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v6, :cond_18

    if-nez v4, :cond_13

    goto :goto_7

    :cond_13
    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_19

    if-nez v3, :cond_19

    iget-object v4, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "any_screen_enabled"

    invoke-static {v4, v5, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v6, :cond_14

    move v5, v6

    goto :goto_4

    :cond_14
    move v5, v7

    :goto_4
    const-string/jumbo v11, "one_handed_op_wakeup_type"

    invoke-static {v4, v11, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v6, :cond_15

    goto :goto_5

    :cond_15
    move v6, v7

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getOneHandModeInfoFromGlobalSetting isOneHandOpEnabled="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isTriggeredButtonType="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " press=8"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_17

    if-nez v6, :cond_16

    goto :goto_6

    :cond_16
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "onehand/onehand"

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v11, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/16 v12, 0x8

    const/16 v13, 0x452

    const/4 v14, 0x3

    const/4 v15, 0x0

    move-object/from16 v16, v4

    invoke-direct/range {v11 .. v16}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    move-object v8, v11

    :cond_17
    :goto_6
    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    return-void

    :cond_18
    :goto_7
    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_19

    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_QUICK_LAUNCH_CAMERA:Z

    if-eqz v4, :cond_19

    invoke-virtual {v0, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getQuickLaunchCameraInfoFromSetting(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    :cond_19
    :goto_8
    return-void
.end method

.method public final initKodiakDedicatedPttApp(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;I)Z
    .locals 12

    const/4 v0, 0x1

    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRELOAD_KODIAK_PTT:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_8

    aget-object v5, v1, v4

    iget-object v6, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x80

    :try_start_0
    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v6, ""

    :try_start_1
    const-string/jumbo v7, "persist.omc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "ril.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v8, "com.verizon.pushtotalkplus"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v8, "com.att.eptt"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v8, "com.sprint.sdcplus"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    move v7, v0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v8, "com.bell.ptt"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    move v7, v3

    :goto_1
    packed-switch v7, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string/jumbo v7, "VZW"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string/jumbo v7, "VPP"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    :pswitch_1
    const-string v7, "ATT"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "AIO"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    :pswitch_2
    const-string/jumbo v7, "TMB"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string/jumbo v7, "TMK"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "ASR"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    :pswitch_3
    const-string v7, "BMC"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_5
    :goto_2
    if-nez p1, :cond_6

    invoke-static {p2, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getKodiakPttInfo(ILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Z)V

    return v0

    :cond_6
    move-object v6, p0

    move v10, p2

    goto :goto_4

    :catch_1
    sget-object v6, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    :cond_7
    :goto_3
    if-eqz p1, :cond_6

    iget v6, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    const/16 v7, 0x3b7

    if-ne v6, v7, :cond_6

    iget-object v6, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v7, 0x3b7

    const/4 v8, 0x3

    move-object v6, p0

    move v10, p2

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/policy/KeyCustomizationInfoManager;->remove(IILjava/lang/String;IZ)Z

    :goto_4
    add-int/2addr v4, v0

    move-object p0, v6

    move p2, v10

    goto/16 :goto_0

    :cond_8
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e35f6ae -> :sswitch_3
        -0x3dc882fb -> :sswitch_2
        0x4dbc6965 -> :sswitch_1
        0x7903cfc3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Z)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    iget v2, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    iget v3, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    iget-object v4, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->timestamp:J

    invoke-virtual {p0, v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    const/16 v7, 0x7d3

    if-nez v6, :cond_1

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    const/16 v5, 0x3e8

    if-lt v2, v5, :cond_7

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-lez v8, :cond_7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v8, :cond_4

    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez v12, :cond_2

    goto :goto_1

    :cond_2
    iget v12, v12, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    if-lt v12, v5, :cond_3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    :cond_5
    :goto_2
    if-ge v10, v5, :cond_7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v10, v10, 0x1

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez v11, :cond_6

    goto :goto_2

    :cond_6
    iget-object v11, v11, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v7, :cond_5

    invoke-virtual {p0, v11}, Lcom/android/server/policy/KeyCustomizationInfoManager;->removeOwnerPackageList(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    :goto_3
    invoke-virtual {v6, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, -0x1

    invoke-virtual {p0, v1, v3, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(III)V

    if-nez p2, :cond_8

    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked()V

    :cond_8
    if-ne v2, v7, :cond_9

    invoke-virtual {p0, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->addOwnerPackageList(Ljava/lang/String;)V

    :cond_9
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final remove(IILjava/lang/String;IZ)Z
    .locals 7

    const-string v0, "Can not remove data, There is no matched with ownerPackage="

    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit v1

    return v3

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez v4, :cond_1

    monitor-exit v1

    return v3

    :cond_1
    const/16 v5, 0x7d3

    if-ne p1, v5, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v4, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string p0, "KeyCustomizationInfoManager"

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v3

    :cond_2
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    if-ne p1, v5, :cond_3

    invoke-virtual {p0, p2, p4, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    invoke-virtual {p0, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->removeOwnerPackageList(Ljava/lang/String;)V

    :cond_3
    const/4 p1, -0x1

    invoke-virtual {p0, p2, p4, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(III)V

    if-nez p5, :cond_4

    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked()V

    :cond_4
    const/4 p0, 0x1

    monitor-exit v1

    return p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeOwnerPackageList(Ljava/lang/String;)V
    .locals 11

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_BASIC:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v4

    move v5, v2

    :goto_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    if-nez v6, :cond_1

    goto :goto_4

    :cond_1
    move v7, v2

    :goto_2
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-eqz v8, :cond_2

    iget v9, v8, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    const/16 v10, 0x7d3

    if-ne v9, v10, :cond_2

    iget-object v8, v8, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :goto_3
    return-void

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final saveSettingsLocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    iget p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->saveSettingsLocked(I)V

    return-void
.end method

.method public final saveSettingsLocked(I)V
    .locals 6

    const-string/jumbo v0, "saveSettingsLocked, userId("

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    iget v4, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    if-eq v4, v3, :cond_0

    const-string v4, "KeyCustomizationInfoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") is no matched with newId("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->saveSettingsLocked(I)V

    return-void

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_1

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    iget v1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p4, :cond_2

    invoke-virtual {p0, p2, p3, v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(III)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateHigherPriorityInfoLocked(III)V
    .locals 5

    const/4 v0, -0x1

    if-ne p3, v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseArray;

    if-nez p3, :cond_1

    :cond_0
    move p3, v0

    goto :goto_2

    :cond_1
    const/16 v1, 0x7d4

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget v4, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    if-le v3, v4, :cond_3

    move v3, v4

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eq v3, v1, :cond_0

    move p3, v3

    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLastInfoLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    if-ne p3, v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_7

    const/4 p3, 0x0

    goto :goto_3

    :cond_7
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    :goto_3
    if-nez p3, :cond_8

    :goto_4
    return-void

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLastInfoLocked(I)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
