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
    .registers 3

    const/16 v0, 0x443

    const/16 v1, 0x444

    const/16 v2, 0x442

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->ALL_HOT_KEYCODE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

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
    .registers 11

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_110

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez v1, :cond_11

    goto/16 :goto_10c

    :cond_11
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

    if-ne v4, v5, :cond_49

    const-string v5, ", dispatching: "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    :cond_49
    iget v4, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_56

    const-string v5, ", userId: "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    :cond_56
    iget-wide v4, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeout:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_66

    const-string v8, ", longPressTimeout: "

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    :cond_66
    iget-wide v4, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeout:J

    cmp-long v8, v4, v6

    if-eqz v8, :cond_74

    const-string v8, ", multiPressTimeout: "

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    :cond_74
    iget-object v4, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v8, "        "

    if-nez v5, :cond_8c

    const-string v5, ", ownerPackage: "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_8c
    iget-object v4, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_ba

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_b1

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

    :cond_b1
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    goto :goto_bf

    :cond_ba
    const-string v2, ", intent is null."

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_bf
    iget v2, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->callingPid:I

    if-eqz v2, :cond_cd

    const-string v2, ", pid="

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->callingPid:I

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(I)V

    :cond_cd
    iget-object v2, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->callingPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_df

    const-string v2, ", callingPackageName="

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->callingPackageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_df
    iget-wide v2, v1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->timestamp:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_109

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

    :cond_109
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    :goto_10c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_110
    return-void
.end method

.method public static getKodiakPttInfo(ILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 11

    const/16 v0, 0x3f7

    const/4 v1, 0x0

    if-eq p0, v0, :cond_f

    const/16 v0, 0x437

    if-eq p0, v0, :cond_b

    move-object v0, v1

    goto :goto_12

    :cond_b
    const-string/jumbo v0, "com.mcx.intent.action.CRITICAL_COMMUNICATION_SOS_KEY"

    goto :goto_12

    :cond_f
    const-string/jumbo v0, "com.mcx.intent.action.CRITICAL_COMMUNICATION_CONTROL_KEY"

    :goto_12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object v8, v1

    goto :goto_28

    :cond_1a
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object v8, v2

    :goto_28
    if-nez v8, :cond_2b

    return-object v1

    :cond_2b
    new-instance v3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/4 v7, 0x2

    const/4 v4, 0x3

    const/16 v5, 0x3b7

    move v6, p0

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    return-object v3
.end method

.method public static getXCoverTopKeyCustomizationInfo(IILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 10

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_d

    :cond_7
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_f

    :goto_d
    const/4 p0, 0x0

    return-object p0

    :cond_f
    const-string/jumbo v1, "torch/torch"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string/jumbo v1, "home/home"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string/jumbo v1, "back/back"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2b

    goto :goto_2e

    :cond_2b
    const/4 p2, 0x1

    :goto_2c
    move v5, p2

    goto :goto_30

    :cond_2e
    :goto_2e
    const/4 p2, 0x0

    goto :goto_2c

    :goto_30
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
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1e

    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_e
    if-ge v2, v1, :cond_1f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :goto_1e
    return-void

    :cond_1f
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final checkHomeLongPressInfo()Z
    .registers 11

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "KeyCustomizationInfoManager"

    if-nez v0, :cond_18

    const-string/jumbo p0, "There is no home key long press info."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_18
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    :goto_1e
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_4f

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez v5, :cond_2d

    goto :goto_4c

    :cond_2d
    iget v6, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    const/16 v7, 0xa

    if-eq v6, v7, :cond_4c

    const/16 v7, 0x1e

    if-eq v6, v7, :cond_4c

    const/16 v7, 0x32

    if-eq v6, v7, :cond_4c

    const-string/jumbo v7, "checkHomeLongPressInfo, id="

    const-string v8, " added"

    invoke-static {v6, v7, v8, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4c
    :goto_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_4f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_5c

    const-string/jumbo p0, "checkHomeLongPressInfo, toRemove size is zero"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :goto_61
    if-ge v5, v4, :cond_c8

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

    if-nez v7, :cond_8a

    goto :goto_61

    :cond_8a
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v8, 0x7d3

    const-string/jumbo v9, "Remove home key long press info, ID("

    if-ne v1, v8, :cond_b2

    iget-object v1, v7, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->removeOwnerPackageList(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "), ownerPackage="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v1, v2}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c6

    :cond_b2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c6
    const/4 v1, 0x1

    goto :goto_61

    :cond_c8
    return v1
.end method

.method public final get(IIILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    const/4 p2, 0x0

    if-nez p0, :cond_12

    move-object p0, p2

    goto :goto_18

    :cond_12
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    :goto_18
    if-nez p0, :cond_1e

    monitor-exit v0

    return-object p2

    :catchall_1c
    move-exception p0

    goto :goto_34

    :cond_1e
    const/16 p3, 0x7d3

    if-ne p1, p3, :cond_32

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_30

    iget-object p1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    :cond_30
    monitor-exit v0

    return-object p2

    :cond_32
    monitor-exit v0

    return-object p0

    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_1c

    throw p0
.end method

.method public final getInfoMapLocked(I)Landroid/util/SparseArray;
    .registers 3

    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mDownUpMap:Landroid/util/SparseArray;

    return-object p0

    :cond_7
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLongMap:Landroid/util/SparseArray;

    return-object p0

    :cond_e
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mDoubleMap:Landroid/util/SparseArray;

    return-object p0

    :cond_15
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mTripleMap:Landroid/util/SparseArray;

    return-object p0

    :cond_1c
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_23

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mQuadrupleMap:Landroid/util/SparseArray;

    return-object p0

    :cond_23
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_2a

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mQuintupleMap:Landroid/util/SparseArray;

    return-object p0

    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not find infoMap. which="

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLastInfoLocked(I)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final getLastInfoLocked(I)Landroid/util/SparseArray;
    .registers 3

    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastDownUpInfo:Landroid/util/SparseArray;

    return-object p0

    :cond_7
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastLongInfo:Landroid/util/SparseArray;

    return-object p0

    :cond_e
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastDoubleInfo:Landroid/util/SparseArray;

    return-object p0

    :cond_15
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastTripleInfo:Landroid/util/SparseArray;

    return-object p0

    :cond_1c
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_23

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastQuadrupleInfo:Landroid/util/SparseArray;

    return-object p0

    :cond_23
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_2a

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLastQuintupleInfo:Landroid/util/SparseArray;

    return-object p0

    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not find lastInfo. which="

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getQuickLaunchCameraInfoFromSetting(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 5

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

    if-eq p0, v1, :cond_26

    if-nez p0, :cond_1b

    goto :goto_26

    :cond_1b
    new-instance p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/16 v2, 0x7d1

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIII)V

    return-object p0

    :cond_26
    :goto_26
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSideKeyDoubleInfoFromGlobalSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 8

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "function_key_config_doublepress"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    const/4 v0, 0x0

    if-nez v1, :cond_17

    goto :goto_69

    :cond_17
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

    if-eqz v2, :cond_60

    const/4 v1, 0x2

    if-eq v2, v1, :cond_5b

    const/4 p0, 0x3

    if-eq v2, p0, :cond_53

    const/4 p0, 0x4

    if-eq v2, p0, :cond_4b

    const-string/jumbo p0, "SideKeyDoublePress"

    const-string/jumbo v1, "type is not properly."

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v0

    goto :goto_67

    :cond_4b
    const-string/jumbo p0, "samsungpay://simplepay/sidekey"

    invoke-static {p0}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    move-result-object p0

    goto :goto_67

    :cond_53
    const-string/jumbo p0, "secureFolder/secureFolder"

    invoke-static {p0}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    move-result-object p0

    goto :goto_67

    :cond_5b
    invoke-static {p0}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    move-result-object p0

    goto :goto_67

    :cond_60
    const-string/jumbo p0, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {p0}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    move-result-object p0

    :goto_67
    if-nez p0, :cond_6a

    :goto_69
    return-object v0

    :cond_6a
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
    .registers 12

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DIGITAL_ASSISTANT:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_e

    move v3, v2

    goto :goto_f

    :cond_e
    move v3, v1

    :goto_f
    const-string/jumbo v4, "function_key_config_longpress_type"

    invoke-static {p0, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string/jumbo v3, "getSideKeyLongInfoFromGlobalSetting sideKeyLongPressType="

    const-string v4, "KeyCustomizationInfoManager"

    invoke-static {p0, v3, v4}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v0, :cond_2d

    if-ne p0, v2, :cond_2d

    const-string/jumbo p0, "aiAgentApp/aiAgentApp"

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    :goto_2b
    move v9, v3

    goto :goto_45

    :cond_2d
    if-nez p0, :cond_37

    const-string/jumbo p0, "wakeBixby/wakeBixby"

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    goto :goto_2b

    :cond_37
    const/4 v0, 0x1

    if-ne p0, v0, :cond_43

    const-string/jumbo p0, "globalAction/globalAction"

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    move v9, v1

    goto :goto_45

    :cond_43
    move v9, v1

    move-object p0, v4

    :goto_45
    if-nez p0, :cond_48

    return-object v4

    :cond_48
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
    .registers 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/16 v2, 0x437

    const/4 v3, 0x0

    const/16 v4, 0x3f7

    if-ne p1, v4, :cond_16

    const-string/jumbo v5, "dedicated_app_xcover_switch"

    const-string/jumbo v6, "dedicated_app_xcover"

    goto :goto_1e

    :cond_16
    if-ne p1, v2, :cond_d6

    const-string/jumbo v5, "dedicated_app_top_switch"

    const-string/jumbo v6, "dedicated_app_top"

    :goto_1e
    const/4 v7, -0x2

    invoke-static {p0, v5, v1, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v0, :cond_d6

    invoke-static {p0, v6, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_31

    goto/16 :goto_d6

    :cond_31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_d8

    :goto_3c
    move v0, v5

    goto :goto_77

    :sswitch_3e
    const-string/jumbo v0, "com.verizon.pushtotalkplus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto :goto_3c

    :cond_48
    const/4 v0, 0x4

    goto :goto_77

    :sswitch_4a
    const-string/jumbo v0, "com.att.eptt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto :goto_3c

    :cond_54
    const/4 v0, 0x3

    goto :goto_77

    :sswitch_56
    const-string/jumbo v0, "com.att.firstnet.grey"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto :goto_3c

    :cond_60
    const/4 v0, 0x2

    goto :goto_77

    :sswitch_62
    const-string/jumbo v1, "com.sprint.sdcplus"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_77

    goto :goto_3c

    :sswitch_6c
    const-string/jumbo v0, "com.bell.ptt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    goto :goto_3c

    :cond_76
    move v0, v1

    :cond_77
    :goto_77
    packed-switch v0, :pswitch_data_ee

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.knox.intent.action.HARD_KEY_REPORT"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.knox.intent.extra.KEY_CODE"

    invoke-virtual {v10, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_96

    invoke-virtual {v10, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_96
    new-instance v5, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/4 v6, 0x3

    const/16 v7, 0x3b7

    const/4 v9, 0x2

    move v8, p1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(IIIILandroid/content/Intent;)V

    return-object v5

    :pswitch_a1  #0x2
    move v8, p1

    if-eq v8, v4, :cond_ac

    if-eq v8, v2, :cond_a8

    move-object p0, v3

    goto :goto_af

    :cond_a8
    const-string/jumbo p0, "com.mcx.intent.action.CRITICAL_COMMUNICATION_SOS_KEY"

    goto :goto_af

    :cond_ac
    const-string/jumbo p0, "com.mcx.intent.action.CRITICAL_COMMUNICATION_CONTROL_KEY"

    :goto_af
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b6

    goto :goto_d6

    :cond_b6
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

    :pswitch_d0  #0x0, 0x1, 0x3, 0x4
    move v8, p1

    invoke-static {v8, p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getKodiakPttInfo(ILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    return-object p0

    :cond_d6
    :goto_d6
    return-object v3

    nop

    :sswitch_data_d8
    .sparse-switch
        -0x6e35f6ae -> :sswitch_6c
        -0x3dc882fb -> :sswitch_62
        -0x6041c7a -> :sswitch_56
        0x4dbc6965 -> :sswitch_4a
        0x7903cfc3 -> :sswitch_3e
    .end sparse-switch

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_d0  #00000000
        :pswitch_d0  #00000001
        :pswitch_a1  #00000002
        :pswitch_d0  #00000003
        :pswitch_d0  #00000004
    .end packed-switch
.end method

.method public final init(IZ)V
    .registers 15

    const/4 v0, 0x1

    const-string/jumbo v1, "Xml file error code was wrong. code="

    const-string/jumbo v2, "loadSettings duration="

    iget-object v3, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_a
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

    const/high16 v7, 0x40a00000  # 5.0f

    if-ne v2, v6, :cond_9e

    const/16 v1, 0x1a

    const/16 v2, 0x8

    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    const/4 v6, 0x4

    invoke-virtual {p0, v6, v1, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    const/16 v8, 0x3b7

    const/4 v9, 0x0

    const/4 v10, 0x3

    if-eqz v1, :cond_75

    const/16 v1, 0x3f7

    invoke-virtual {p0, v10, v1, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    invoke-virtual {p0, v8, v10, v1, v9}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(IIILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v11

    if-eqz v11, :cond_72

    goto :goto_75

    :cond_72
    invoke-virtual {p0, v6, v1, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    :cond_75
    :goto_75
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    if-eqz v1, :cond_88

    const/16 v1, 0x437

    invoke-virtual {p0, v10, v1, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    invoke-virtual {p0, v8, v10, v1, v9}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(IIILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v8

    if-eqz v8, :cond_85

    goto :goto_88

    :cond_85
    invoke-virtual {p0, v6, v1, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    :cond_88
    :goto_88
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY:Z

    if-nez v1, :cond_93

    invoke-virtual {p0, v2, v10, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    goto :goto_93

    :catchall_90
    move-exception p0

    goto/16 :goto_133

    :cond_93
    :goto_93
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    iput v7, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mXmlVersion:F

    if-nez p2, :cond_115

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->saveSettingsLocked(I)V

    goto/16 :goto_115

    :cond_9e
    sget-object v6, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;->SUCCESS:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    if-ne v2, v6, :cond_100

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_HOME_KEY_LONG_PRESS_SEARCLE:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_ac

    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->checkHomeLongPressInfo()Z

    move-result v1

    goto :goto_ad

    :cond_ac
    move v1, v2

    :goto_ad
    if-nez p2, :cond_dc

    iget-object p2, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    iget v6, p2, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->mXmlVersion:F

    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_bd

    sget-object p2, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    move p2, v2

    goto :goto_db

    :cond_bd
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

    :goto_db
    or-int/2addr v1, p2

    :cond_dc
    if-eqz v1, :cond_e1

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked(I)V

    :cond_e1
    sget-object p1, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    array-length p2, p1

    move v1, v2

    :goto_e5
    if-ge v1, p2, :cond_115

    aget v6, p1, v1

    invoke-virtual {p0, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v7

    move v8, v2

    :goto_ee
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_fe

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    const/4 v10, -0x1

    invoke-virtual {p0, v6, v9, v10}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(III)V

    add-int/2addr v8, v0

    goto :goto_ee

    :cond_fe
    add-int/2addr v1, v0

    goto :goto_e5

    :cond_100
    const-string p1, "KeyCustomizationInfoManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->xmlFileErrorCode:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils$ErrorCode;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_115
    :goto_115
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

    :goto_133
    monitor-exit v3
    :try_end_134
    .catchall {:try_start_a .. :try_end_134} :catchall_90

    throw p0
.end method

.method public final initKeyCustomizationInfoLocked(IIZ)V
    .registers 21

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

    if-eq v2, v5, :cond_178

    const/16 v11, 0x1a

    if-eq v2, v11, :cond_d9

    const/16 v6, 0x3f7

    if-eq v2, v6, :cond_6c

    const/16 v6, 0x437

    if-eq v2, v6, :cond_22

    goto/16 :goto_202

    :cond_22
    and-int/lit8 v7, v1, 0x3

    if-eqz v7, :cond_65

    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_TOP_KEY_B2B_DELTA:Z

    if-eqz v4, :cond_46

    if-eqz v3, :cond_3c

    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_KODIAK_DEDICATED_PTT_APP:Z

    if-eqz v4, :cond_46

    invoke-virtual {v0, v5, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v4

    invoke-virtual {v0, v4, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKodiakDedicatedPttApp(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;I)Z

    move-result v4

    if-eqz v4, :cond_46

    goto/16 :goto_202

    :cond_3c
    invoke-virtual {v0, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getXCoverKeyB2BDeltaInfoFromSetting(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v4

    if-eqz v4, :cond_46

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    return-void

    :cond_46
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    if-eqz v4, :cond_202

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

    :cond_65
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_202

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    return-void

    :cond_6c
    and-int/lit8 v7, v1, 0x3

    if-eqz v7, :cond_b6

    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_TOP_KEY_B2B_DELTA:Z

    if-eqz v4, :cond_90

    if-eqz v3, :cond_86

    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_KODIAK_DEDICATED_PTT_APP:Z

    if-eqz v4, :cond_90

    invoke-virtual {v0, v5, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v4

    invoke-virtual {v0, v4, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKodiakDedicatedPttApp(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;I)Z

    move-result v4

    if-eqz v4, :cond_90

    goto/16 :goto_202

    :cond_86
    invoke-virtual {v0, v6}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getXCoverKeyB2BDeltaInfoFromSetting(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v4

    if-eqz v4, :cond_90

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    return-void

    :cond_90
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v4, :cond_202

    sget-boolean v7, Lcom/samsung/android/rune/InputRune;->PWM_XCOVER_AND_TOP_KEY:Z

    if-eqz v7, :cond_99

    goto :goto_b2

    :cond_99
    if-eqz v4, :cond_b2

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

    :cond_b2
    :goto_b2
    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    return-void

    :cond_b6
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_202

    sget-boolean v5, Lcom/samsung/android/rune/InputRune;->PWM_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v5, :cond_202

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

    :cond_d9
    and-int/2addr v4, v1

    const-string/jumbo v5, "android.intent.action.MAIN"

    if-eqz v4, :cond_116

    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_WAKE_UP_BIXBY:Z

    if-nez v4, :cond_10e

    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DIGITAL_ASSISTANT:Z

    if-eqz v4, :cond_e8

    goto :goto_10e

    :cond_e8
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

    :cond_10e
    :goto_10e
    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getSideKeyLongInfoFromGlobalSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    return-void

    :cond_116
    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_202

    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_POWER_KEY_DOUBLE_PRESS_ATT_TV_MODE:Z

    if-eqz v4, :cond_160

    iget-object v4, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "tvmode_state"

    invoke-static {v4, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_12f

    move v8, v6

    goto :goto_130

    :cond_12f
    move v8, v7

    :goto_130
    const-string/jumbo v9, "pwrkey_owner_status"

    invoke-static {v4, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_13a

    goto :goto_13b

    :cond_13a
    move v6, v7

    :goto_13b
    if-eqz v8, :cond_160

    if-eqz v6, :cond_160

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

    :cond_160
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DOUBLE_PRESS:Z

    if-eqz v4, :cond_16c

    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getSideKeyDoubleInfoFromGlobalSetting()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    return-void

    :cond_16c
    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_QUICK_LAUNCH_CAMERA:Z

    if-eqz v4, :cond_202

    invoke-virtual {v0, v11}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getQuickLaunchCameraInfoFromSetting(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    return-void

    :cond_178
    iget-object v4, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v11, "double_tab_launch"

    const/4 v12, 0x2

    invoke-static {v4, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v6, :cond_1f3

    if-nez v4, :cond_18b

    goto :goto_1f3

    :cond_18b
    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_202

    if-nez v3, :cond_202

    iget-object v4, v0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "any_screen_enabled"

    invoke-static {v4, v5, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v6, :cond_1a2

    move v5, v6

    goto :goto_1a3

    :cond_1a2
    move v5, v7

    :goto_1a3
    const-string/jumbo v11, "one_handed_op_wakeup_type"

    invoke-static {v4, v11, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v6, :cond_1ad

    goto :goto_1ae

    :cond_1ad
    move v6, v7

    :goto_1ae
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

    if-eqz v5, :cond_1ef

    if-nez v6, :cond_1d2

    goto :goto_1ef

    :cond_1d2
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

    :cond_1ef
    :goto_1ef
    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    return-void

    :cond_1f3
    :goto_1f3
    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_202

    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_QUICK_LAUNCH_CAMERA:Z

    if-eqz v4, :cond_202

    invoke-virtual {v0, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getQuickLaunchCameraInfoFromSetting(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V

    :cond_202
    :goto_202
    return-void
.end method

.method public final initKodiakDedicatedPttApp(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;I)Z
    .registers 15

    const/4 v0, 0x1

    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRELOAD_KODIAK_PTT:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_6
    if-ge v4, v2, :cond_f2

    aget-object v5, v1, v4

    iget-object v6, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x80

    :try_start_12
    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_15} :catch_cb

    const-string v6, ""

    :try_start_17
    const-string/jumbo v7, "persist.omc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_38

    const-string/jumbo v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_38

    const-string/jumbo v7, "ril.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_38} :catch_38

    :catch_38
    :cond_38
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_f4

    goto :goto_73

    :sswitch_44
    const-string/jumbo v8, "com.verizon.pushtotalkplus"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4e

    goto :goto_73

    :cond_4e
    const/4 v7, 0x3

    goto :goto_73

    :sswitch_50
    const-string/jumbo v8, "com.att.eptt"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5a

    goto :goto_73

    :cond_5a
    const/4 v7, 0x2

    goto :goto_73

    :sswitch_5c
    const-string/jumbo v8, "com.sprint.sdcplus"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_66

    goto :goto_73

    :cond_66
    move v7, v0

    goto :goto_73

    :sswitch_68
    const-string/jumbo v8, "com.bell.ptt"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_72

    goto :goto_73

    :cond_72
    move v7, v3

    :goto_73
    packed-switch v7, :pswitch_data_106

    goto :goto_cd

    :pswitch_77  #0x3
    const-string/jumbo v7, "VZW"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_be

    const-string/jumbo v7, "VPP"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cd

    goto :goto_be

    :pswitch_8a  #0x2
    const-string v7, "ATT"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_be

    const-string v7, "AIO"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cd

    goto :goto_be

    :pswitch_9b  #0x1
    const-string/jumbo v7, "TMB"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_be

    const-string/jumbo v7, "TMK"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_be

    const-string v7, "ASR"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cd

    goto :goto_be

    :pswitch_b6  #0x0
    const-string v7, "BMC"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cd

    :cond_be
    :goto_be
    if-nez p1, :cond_c8

    invoke-static {p2, v5}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getKodiakPttInfo(ILjava/lang/String;)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Z)V

    return v0

    :cond_c8
    move-object v6, p0

    move v10, p2

    goto :goto_ed

    :catch_cb
    sget-object v6, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    :cond_cd
    :goto_cd
    if-eqz p1, :cond_c8

    iget v6, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    const/16 v7, 0x3b7

    if-ne v6, v7, :cond_c8

    iget-object v6, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_c8

    invoke-virtual {v6}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c8

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v7, 0x3b7

    const/4 v8, 0x3

    move-object v6, p0

    move v10, p2

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/policy/KeyCustomizationInfoManager;->remove(IILjava/lang/String;IZ)Z

    :goto_ed
    add-int/2addr v4, v0

    move-object p0, v6

    move p2, v10

    goto/16 :goto_6

    :cond_f2
    return v3

    nop

    :sswitch_data_f4
    .sparse-switch
        -0x6e35f6ae -> :sswitch_68
        -0x3dc882fb -> :sswitch_5c
        0x4dbc6965 -> :sswitch_50
        0x7903cfc3 -> :sswitch_44
    .end sparse-switch

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_b6  #00000000
        :pswitch_9b  #00000001
        :pswitch_8a  #00000002
        :pswitch_77  #00000003
    .end packed-switch
.end method

.method public final put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Z)V
    .registers 16

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
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

    if-nez v6, :cond_2e

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_86

    :catchall_2b
    move-exception p0

    goto/16 :goto_99

    :cond_2e
    const/16 v5, 0x3e8

    if-lt v2, v5, :cond_86

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-lez v8, :cond_86

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    move v11, v10

    :goto_3f
    if-ge v11, v8, :cond_58

    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez v12, :cond_4a

    goto :goto_55

    :cond_4a
    iget v12, v12, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    if-lt v12, v5, :cond_55

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_55
    :goto_55
    add-int/lit8 v11, v11, 0x1

    goto :goto_3f

    :cond_58
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    :cond_5c
    :goto_5c
    if-ge v10, v5, :cond_86

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v10, v10, 0x1

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez v11, :cond_73

    goto :goto_5c

    :cond_73
    iget-object v11, v11, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v7, :cond_5c

    invoke-virtual {p0, v11}, Lcom/android/server/policy/KeyCustomizationInfoManager;->removeOwnerPackageList(Ljava/lang/String;)V

    goto :goto_5c

    :cond_86
    :goto_86
    invoke-virtual {v6, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, -0x1

    invoke-virtual {p0, v1, v3, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(III)V

    if-nez p2, :cond_92

    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked()V

    :cond_92
    if-ne v2, v7, :cond_97

    invoke-virtual {p0, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->addOwnerPackageList(Ljava/lang/String;)V

    :cond_97
    monitor-exit v0

    return-void

    :goto_99
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_6 .. :try_end_9a} :catchall_2b

    throw p0
.end method

.method public final remove(IILjava/lang/String;IZ)Z
    .registers 13

    const-string v0, "Can not remove data, There is no matched with ownerPackage="

    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    const/4 v3, 0x0

    if-nez v2, :cond_16

    monitor-exit v1

    return v3

    :catchall_14
    move-exception p0

    goto :goto_54

    :cond_16
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez v4, :cond_20

    monitor-exit v1

    return v3

    :cond_20
    const/16 v5, 0x7d3

    if-ne p1, v5, :cond_3d

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3d

    iget-object v4, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    const-string p0, "KeyCustomizationInfoManager"

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v3

    :cond_3d
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    if-ne p1, v5, :cond_48

    invoke-virtual {p0, p2, p4, v3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->initKeyCustomizationInfoLocked(IIZ)V

    invoke-virtual {p0, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->removeOwnerPackageList(Ljava/lang/String;)V

    :cond_48
    const/4 p1, -0x1

    invoke-virtual {p0, p2, p4, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(III)V

    if-nez p5, :cond_51

    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->saveSettingsLocked()V

    :cond_51
    const/4 p0, 0x1

    monitor-exit v1

    return p0

    :goto_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_5 .. :try_end_55} :catchall_14

    throw p0
.end method

.method public final removeOwnerPackageList(Ljava/lang/String;)V
    .registers 13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_41

    :cond_7
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_BASIC:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_4b

    aget v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v4

    move v5, v2

    :goto_15
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_48

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    if-nez v6, :cond_24

    goto :goto_45

    :cond_24
    move v7, v2

    :goto_25
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_45

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-eqz v8, :cond_42

    iget v9, v8, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    const/16 v10, 0x7d3

    if-ne v9, v10, :cond_42

    iget-object v8, v8, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_42

    :goto_41
    return-void

    :cond_42
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    :cond_45
    :goto_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_4b
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mOwnerPackageList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final saveSettingsLocked()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    iget p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->saveSettingsLocked(I)V

    return-void
.end method

.method public final saveSettingsLocked(I)V
    .registers 8

    const-string/jumbo v0, "saveSettingsLocked, userId("

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_7
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    iget v4, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mUserId:I

    if-eq v4, v3, :cond_34

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
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_32

    goto :goto_34

    :catchall_32
    move-exception p0

    goto :goto_3d

    :cond_34
    :goto_34
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationInfoManager;->mXmlUtils:Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoXmlUtils;->saveSettingsLocked(I)V

    return-void

    :goto_3d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setKeyCustomizationInfoLocked(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IIZ)V
    .registers 7

    if-nez p1, :cond_3

    goto :goto_27

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_17

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_17
    iget v1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p4, :cond_27

    invoke-virtual {p0, p2, p3, v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->updateHigherPriorityInfoLocked(III)V

    :cond_27
    :goto_27
    return-void
.end method

.method public final updateHigherPriorityInfoLocked(III)V
    .registers 9

    const/4 v0, -0x1

    if-ne p3, v0, :cond_2f

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseArray;

    if-nez p3, :cond_11

    :cond_f
    move p3, v0

    goto :goto_2f

    :cond_11
    const/16 v1, 0x7d4

    const/4 v2, 0x0

    move v3, v1

    :goto_15
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_2c

    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    if-nez v4, :cond_24

    goto :goto_29

    :cond_24
    iget v4, v4, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    if-le v3, v4, :cond_29

    move v3, v4

    :cond_29
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_2c
    if-eq v3, v1, :cond_f

    move p3, v3

    :cond_2f
    :goto_2f
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLastInfoLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    if-ne p3, v0, :cond_39

    goto :goto_4f

    :cond_39
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getInfoMapLocked(I)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_47

    const/4 p3, 0x0

    goto :goto_4d

    :cond_47
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    :goto_4d
    if-nez p3, :cond_50

    :goto_4f
    return-void

    :cond_50
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLastInfoLocked(I)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
