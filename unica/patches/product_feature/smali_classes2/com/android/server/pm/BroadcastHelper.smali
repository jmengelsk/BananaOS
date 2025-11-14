.class public final Lcom/android/server/pm/BroadcastHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final vzwCarrierId:Ljava/lang/String;

.field public static final vzwSalesCode:Ljava/lang/String;


# instance fields
.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

.field public final mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

.field public final mUmInternal:Lcom/android/server/pm/UserManagerService$LocalService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ro.boot.carrierid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/BroadcastHelper;->vzwSalesCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    const-class v0, Landroid/app/ActivityManagerInternal;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda19;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v0, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v2, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageMonitorCallbackHelper;

    iput-object v1, p0, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mAppsFilterProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v2, p1, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/AppsFilterImpl;

    iput-object p1, p0, Lcom/android/server/pm/BroadcastHelper;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    sget-boolean p1, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/BroadcastHelper;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    :cond_0
    return-void
.end method

.method public static filterExtrasChangedPackageList(Ljava/util/function/Supplier;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 13

    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    const-string/jumbo v0, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p2

    :cond_1
    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "android.intent.extra.changed_uid_list"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/Computer;

    array-length v5, v1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_2

    array-length v6, v4

    goto :goto_0

    :cond_2
    move v6, v7

    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    if-lez v6, :cond_3

    new-instance v10, Landroid/util/IntArray;

    invoke-direct {v10, v6}, Landroid/util/IntArray;-><init>(I)V

    goto :goto_1

    :cond_3
    move-object v10, v9

    :goto_1
    if-ge v7, v5, :cond_6

    aget-object v11, v1, v7

    invoke-interface {p0, v11}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v12

    invoke-interface {p0, v12, p1, v2}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v10, :cond_5

    if-ge v7, v6, :cond_5

    aget v11, v4, v7

    invoke-virtual {v10, v11}, Landroid/util/IntArray;->add(I)V

    :cond_5
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    new-instance p0, Landroid/util/Pair;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_7

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_3

    :cond_7
    move-object p1, v9

    :goto_3
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Landroid/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {v10}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    goto :goto_4

    :cond_8
    move-object v1, v9

    :goto_4
    invoke-direct {p0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-object v9

    :cond_9
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object p2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, [I

    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object p1
.end method

.method public static isPrivacySafetyLabelChangeNotificationsEnabled(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string/jumbo v0, "privacy"

    const-string/jumbo v1, "safety_label_change_notifications_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.hardware.type.automotive"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "android.software.leanback"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "android.hardware.type.watch"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static tracePackageChangedBroadcastEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "broadcastPackageChanged; af=true,rft="

    const-string v3, ",pn="

    const-string v4, ",tpn="

    invoke-static {v2, p0, v3, p1, v4}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ",tc="

    const-string v2, ",cs="

    invoke-static {p0, p2, p1, p3, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",cpnft="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[IZLandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p9

    const/4 v8, -0x1

    const-string/jumbo v9, "android.intent.action.PACKAGE_ADDED"

    const-string/jumbo v10, "android.intent.action.PACKAGE_REMOVED"

    array-length v12, v6

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v12, :cond_1b

    aget v15, v6, v14

    const/16 v24, 0x1

    new-instance v11, Landroid/content/Intent;

    const/4 v13, 0x0

    if-eqz v3, :cond_0

    const-string/jumbo v0, "package"

    invoke-static {v0, v3, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_0
    move-object v0, v13

    :goto_1
    invoke-direct {v11, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v4, :cond_1

    invoke-virtual {v11, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v11, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string/jumbo v0, "android.intent.extra.UID"

    invoke-virtual {v11, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    if-ltz v16, :cond_3

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    if-eq v8, v15, :cond_3

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    invoke-static {v15, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    invoke-virtual {v11, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    if-eqz v7, :cond_4

    const-string/jumbo v0, "android"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v7, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const-string/jumbo v8, "android.intent.extra.VISIBILITY_ALLOW_LIST"

    invoke-virtual {v11, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    :cond_4
    const-string/jumbo v0, "android.intent.extra.user_handle"

    invoke-virtual {v11, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    or-int v0, p4, v0

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p8, :cond_5

    const-class v0, Ljava/lang/String;

    const-string/jumbo v8, "android.permission.ACCESS_INSTANT_APPS"

    invoke-static {v0, v13, v8}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    goto :goto_2

    :cond_5
    move-object/from16 v18, v13

    :goto_2
    iget-object v0, v1, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    if-nez v7, :cond_6

    move-object/from16 v20, v13

    :goto_3
    move-object/from16 v17, p6

    move-object/from16 v21, p10

    move-object/from16 v22, p11

    move-object/from16 v16, v11

    move/from16 v19, v15

    move-object v15, v0

    goto :goto_4

    :cond_6
    invoke-virtual {v7, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    move-object/from16 v20, v8

    goto :goto_3

    :goto_4
    invoke-virtual/range {v15 .. v22}, Landroid/app/ActivityManagerInternal;->broadcastIntentWithCallback(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;I[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    move-object/from16 v11, v16

    move/from16 v8, v19

    const-string/jumbo v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const-string/jumbo v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " : user "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    invoke-static {v15, v13}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    if-eqz v0, :cond_8

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "pkgs: "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x4

    invoke-static {v13, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :cond_8
    if-nez v5, :cond_e

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_6

    :cond_9
    invoke-virtual {v11}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iget-object v13, v1, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    sget-object v15, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    const-string/jumbo v15, "com.samsung.android.da.daagent.PACKAGE_REMOVED"

    const/16 v16, 0x0

    goto :goto_5

    :cond_a
    const-string/jumbo v15, "com.samsung.android.da.daagent.PACKAGE_ADDED"

    move/from16 v16, v24

    :goto_5
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, "DualAppManagerService"

    const-string v13, " can not sendBroadcast intent, becuase pkgName is null"

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_b
    if-nez v8, :cond_c

    invoke-static {v13}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/app/SemDualAppManager;->isWhitelistedPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    invoke-virtual {v4, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v15, "com.samsung.android.da.daagent"

    invoke-virtual {v4, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v15, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v13, v4, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_c
    if-eqz v16, :cond_e

    const-string/jumbo v4, "com.samsung.android.app.smartscan"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_6

    :cond_d
    :try_start_0
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v13, 0x80

    invoke-virtual {v4, v0, v13, v8}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_e

    const-string/jumbo v4, "com.samsung.android.bbcagent.notify_install"

    const/4 v13, 0x0

    invoke-virtual {v0, v4, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "sys.datawedge.prop"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_6
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/android/server/pm/BroadcastHelper;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    iget-object v4, v0, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreBadgeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    if-nez v8, :cond_f

    const-string/jumbo v4, "com.sec.android.app.samsungapps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    if-eqz v3, :cond_f

    move/from16 v4, v24

    const/4 v13, 0x0

    invoke-virtual {v0, v3, v4, v13, v13}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->updateSettingsForMonetization(Ljava/lang/String;ZZZ)V

    goto :goto_7

    :cond_f
    const/4 v13, 0x0

    :goto_7
    const-wide/16 v25, 0x0

    if-nez v5, :cond_13

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_SECURITY_CONFIG_DEVICEMONITOR_PACKAGE_NAME"

    const-string/jumbo v15, "com.samsung.android.sm.devicesecurity"

    invoke-virtual {v0, v4, v15}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    iget-object v4, v1, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static/range {v25 .. v26}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v15

    invoke-virtual {v4, v0, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit16 v4, v4, 0x81

    if-eqz v4, :cond_10

    goto :goto_8

    :catch_1
    :cond_10
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_13

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const/4 v4, 0x0

    goto :goto_9

    :cond_11
    const-string/jumbo v4, "com.samsung.android.sm.devicesecurity.PACKAGE_ADDED"

    goto :goto_9

    :cond_12
    const-string/jumbo v4, "com.samsung.android.sm.devicesecurity.PACKAGE_REMOVED"

    :goto_9
    if-eqz v4, :cond_13

    invoke-virtual {v11}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/Intent;

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v15, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v16, v15

    iget-object v15, v1, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v20, v8

    invoke-virtual/range {v15 .. v23}, Landroid/app/ActivityManagerInternal;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;ZI[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    goto :goto_a

    :cond_13
    move/from16 v20, v8

    :goto_a
    if-nez v5, :cond_14

    const-string/jumbo v0, "VZW"

    sget-object v4, Lcom/android/server/pm/BroadcastHelper;->vzwSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "VPP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_c

    :cond_14
    :goto_b
    const/16 v24, 0x1

    goto/16 :goto_12

    :cond_15
    :goto_c
    const-string/jumbo v0, "com.verizon.mips.services"

    invoke-static {v0}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v0, v13

    :goto_d
    if-ge v0, v8, :cond_17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    const/16 v24, 0x1

    add-int/lit8 v16, v0, 0x1

    check-cast v15, Ljava/lang/String;

    :try_start_2
    iget-object v0, v1, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static/range {v25 .. v26}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v13

    invoke-virtual {v0, v15, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    and-int/lit16 v0, v0, 0x81

    if-eqz v0, :cond_16

    move-object v0, v15

    goto :goto_e

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_16
    move/from16 v0, v16

    const/4 v13, 0x0

    goto :goto_d

    :cond_17
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_f
    const/4 v13, -0x1

    goto :goto_10

    :sswitch_0
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    goto :goto_f

    :cond_18
    const/4 v13, 0x2

    goto :goto_10

    :sswitch_1
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_f

    :cond_19
    const/4 v13, 0x1

    goto :goto_10

    :sswitch_2
    const-string/jumbo v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_f

    :cond_1a
    const/4 v13, 0x0

    :goto_10
    packed-switch v13, :pswitch_data_0

    const/4 v13, 0x0

    goto :goto_11

    :pswitch_0
    const-string/jumbo v13, "com.verizon.provider.PACKAGE_ADDED"

    goto :goto_11

    :pswitch_1
    const-string/jumbo v13, "com.verizon.provider.PACKAGE_REMOVED"

    goto :goto_11

    :pswitch_2
    const-string/jumbo v13, "com.verizon.provider.PACKAGE_REPLACED"

    :goto_11
    if-eqz v13, :cond_14

    invoke-virtual {v11}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    invoke-virtual {v4, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v15, v1, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v4

    invoke-virtual/range {v15 .. v23}, Landroid/app/ActivityManagerInternal;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;ZI[ILjava/util/function/BiFunction;Landroid/os/Bundle;)I

    const-string/jumbo v4, "vzwCustomAction: "

    invoke-virtual {v4, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v4, "Target Package for explicit intent: "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_b

    :goto_12
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, p3

    const/4 v8, -0x1

    goto/16 :goto_0

    :cond_1b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x304ed112 -> :sswitch_2
        0x1f50b9c2 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final notifyResourcesChanged(ZZ[Ljava/lang/String;[I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "android.intent.extra.changed_package_list"

    invoke-virtual {v3, v1, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo p3, "android.intent.extra.changed_uid_list"

    invoke-virtual {v3, p3, p4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    if-eqz p2, :cond_0

    const-string/jumbo p3, "android.intent.extra.REPLACING"

    invoke-virtual {v3, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo p1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_1
    const-string/jumbo p1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    goto :goto_0

    :goto_1
    iget-object v7, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;)V

    return-void
.end method

.method public final sendApplicationHiddenForUser(Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;ILcom/android/server/pm/PackageSender;)V
    .locals 6

    new-instance v1, Lcom/android/server/pm/PackageRemovedInfo;

    invoke-direct {v1}, Lcom/android/server/pm/PackageRemovedInfo;-><init>()V

    iput-object p1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iput-object p1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    filled-new-array {p3}, [I

    move-result-object p1

    iput-object p1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedUsers:[I

    filled-new-array {p3}, [I

    move-result-object p1

    iput-object p1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p1

    invoke-static {p3, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    iput p1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getVersionCode()J

    move-result-wide p1

    iput-wide p1, v1, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackageVersionCode:J

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/BroadcastHelper;->sendPackageRemovedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSender;ZZZ)V

    return-void
.end method

.method public final sendDistractingPackagesChanged(Ljava/util/function/Supplier;[Ljava/lang/String;[III)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "android.intent.extra.changed_package_list"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo p2, "android.intent.extra.changed_uid_list"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string/jumbo p2, "android.intent.extra.distraction_restrictions"

    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p2, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, v0, p4, p1}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/BroadcastHelper;Landroid/os/Bundle;ILjava/util/function/Supplier;)V

    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendFirstLaunchBroadcast(Ljava/lang/String;Ljava/lang/String;[I[I)V
    .locals 14

    move-object/from16 v5, p2

    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "MONETIZED_APP_OPENED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v12, p0, Lcom/android/server/pm/BroadcastHelper;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v12, p1, v13, v13, v13}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->updateSettingsForMonetization(Ljava/lang/String;ZZZ)V

    return-void

    :cond_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string/jumbo v1, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V

    iget-object p0, v12, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->mGalaxyStoreBadgeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "com.sec.android.app.samsungapps"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    aget v0, p3, p0

    if-nez v0, :cond_1

    invoke-virtual {v12, p1, v13, p0, p0}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->updateSettingsForMonetization(Ljava/lang/String;ZZZ)V

    :cond_1
    return-void

    :cond_2
    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string/jumbo v1, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V

    return-void
.end method

.method public final sendPackageAddedForNewUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;ZZI[I[IZI)V
    .locals 10

    move-object/from16 v4, p6

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static/range {p7 .. p7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0x3e8

    invoke-interface {p1, v0, p2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(ILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/BroadcastHelper;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    invoke-virtual {v2, p1, v0, v4, v1}, Lcom/android/server/pm/AppsFilterBase;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object v6

    new-instance v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v2, p2

    move v3, p5

    move-object/from16 v5, p7

    move/from16 v7, p9

    move-object v8, v6

    move/from16 v6, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;I[I[IZILandroid/util/SparseArray;)V

    move-object v6, v8

    iget-object v9, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    invoke-static/range {p6 .. p6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    aget v2, p7, v4

    goto :goto_0

    :cond_1
    aget v2, p6, v4

    :goto_0
    invoke-static {v2, p5}, Landroid/os/UserHandle;->getUid(II)I

    move-result p5

    const-string/jumbo v2, "android.intent.extra.UID"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p8, :cond_2

    const-string/jumbo p5, "android.intent.extra.ARCHIVAL"

    const/4 v2, 0x1

    invoke-virtual {v1, p5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    const-string/jumbo p5, "android.content.pm.extra.DATA_LOADER_TYPE"

    move/from16 v7, p9

    invoke-virtual {v1, p5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    move-object v3, v1

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    move-object v2, p2

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;)V

    if-eqz p3, :cond_3

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result p3

    if-nez p3, :cond_3

    new-instance p3, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, v4, p2, p4}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/BroadcastHelper;[ILjava/lang/String;Z)V

    invoke-virtual {v9, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final sendPackageAddedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;IZLjava/lang/String;)V
    .locals 12

    move/from16 v0, p4

    invoke-interface/range {p3 .. p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v5

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    sget-object v6, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    :goto_0
    move-object v8, v6

    goto :goto_1

    :cond_0
    new-array v6, v4, [I

    aput v0, v6, v3

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_1

    new-array v2, v4, [I

    aput v0, v2, v3

    :goto_2
    move-object v9, v2

    goto :goto_3

    :cond_1
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    goto :goto_2

    :goto_3
    const/4 v6, 0x0

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v10, p5

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageAddedForNewUsers(Lcom/android/server/pm/Computer;Ljava/lang/String;ZZI[I[IZI)V

    new-instance p3, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-direct {p3}, Landroid/content/pm/PackageInstaller$SessionInfo;-><init>()V

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result v1

    iput v1, p3, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    iput-object p2, p3, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    move-object/from16 p2, p6

    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/android/server/pm/BroadcastHelper;->sendSessionCommitBroadcast(Lcom/android/server/pm/Computer;Landroid/content/pm/PackageInstaller$SessionInfo;ILjava/lang/String;)V

    return-void
.end method

.method public final sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V
    .locals 22

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p7, :cond_1

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    :cond_1
    move-object/from16 v8, p7

    :goto_0
    invoke-static/range {p8 .. p8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/pm/BroadcastHelper;->doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[IZLandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V

    return-void

    :cond_2
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v18, 0x1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p8

    move-object/from16 v21, p11

    invoke-virtual/range {v10 .. v21}, Lcom/android/server/pm/BroadcastHelper;->doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[IZLandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method public final sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V
    .locals 11

    new-instance v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    iget-object p4, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-nez p5, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    iget-object v7, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;)V

    :cond_0
    return-void
.end method

.method public final sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/16 v1, 0x3e8

    invoke-interface {v0, v1, v2}, Lcom/android/server/pm/Computer;->getPackageStateInternal(ILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-interface {v0, v3, v1, v2}, Lcom/android/server/pm/Computer;->isInstantAppInternal(IILjava/lang/String;)Z

    move-result v1

    const/4 v4, 0x1

    const/4 v14, 0x0

    if-eqz v1, :cond_1

    sget-object v5, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    :goto_0
    move-object v7, v5

    goto :goto_1

    :cond_1
    new-array v5, v4, [I

    aput v3, v5, v14

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_2

    new-array v4, v4, [I

    aput v3, v4, v14

    :goto_2
    move-object v8, v4

    goto :goto_3

    :cond_2
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    goto :goto_2

    :goto_3
    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_4
    move-object v9, v1

    goto :goto_5

    :cond_3
    invoke-interface {v0, v2, v7}, Lcom/android/server/pm/Computer;->getVisibilityAllowLists(Ljava/lang/String;[I)Landroid/util/SparseArray;

    move-result-object v1

    goto :goto_4

    :goto_5
    invoke-interface {v0, v3, v2}, Lcom/android/server/pm/Computer;->getSharedUserPackagesForPackage(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;

    move-object v1, p0

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    invoke-direct/range {v0 .. v13}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/os/Bundle;

    const/4 v2, 0x4

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v5, "android.intent.extra.changed_component_name"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string/jumbo v4, "android.intent.extra.changed_component_name_list"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.extra.DONT_KILL_APP"

    move/from16 v4, p3

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "android.intent.extra.UID"

    move/from16 v5, p5

    invoke-virtual {v3, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v6, :cond_4

    const-string/jumbo v2, "android.intent.extra.REASON"

    invoke-virtual {v3, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v5, v8

    const/4 v8, 0x0

    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v2, p2

    move-object v4, v7

    move-object v6, v9

    move-object v7, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;)V

    :cond_5
    :goto_6
    return-void
.end method

.method public final sendPackageChangedBroadcastWithPermissions(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;Ljava/lang/String;)V
    .locals 12

    move-object/from16 v0, p5

    new-instance v3, Landroid/os/Bundle;

    const/4 v1, 0x4

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, "android.intent.extra.changed_component_name"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string/jumbo v4, "android.intent.extra.changed_component_name_list"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.extra.DONT_KILL_APP"

    invoke-virtual {v3, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p2, "android.intent.extra.UID"

    move/from16 v2, p4

    invoke-virtual {v3, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v0, :cond_0

    const-string/jumbo p2, "android.intent.extra.REASON"

    invoke-virtual {v3, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    :cond_1
    move v4, v1

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v5, p9

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V

    return-void
.end method

.method public final sendPackageRemovedBroadcasts(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSender;ZZZ)V
    .locals 17

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/pm/PackageRemovedInfo;->mInstallerPackageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastUsers:[I

    iget-object v8, v0, Lcom/android/server/pm/PackageRemovedInfo;->mInstantUserIds:[I

    iget-object v15, v0, Lcom/android/server/pm/PackageRemovedInfo;->mBroadcastAllowList:Landroid/util/SparseArray;

    iget-boolean v11, v0, Lcom/android/server/pm/PackageRemovedInfo;->mDataRemoved:Z

    iget-boolean v1, v0, Lcom/android/server/pm/PackageRemovedInfo;->mIsUpdate:Z

    iget-boolean v12, v0, Lcom/android/server/pm/PackageRemovedInfo;->mIsRemovedPackageSystemUpdate:Z

    iget-boolean v2, v0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedForAllUsers:Z

    iget-boolean v13, v0, Lcom/android/server/pm/PackageRemovedInfo;->mIsStaticSharedLib:Z

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "android.intent.extra.UID"

    iget v9, v0, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    invoke-virtual {v4, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "android.intent.extra.DATA_REMOVED"

    invoke-virtual {v4, v5, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v5, "android.intent.extra.SYSTEM_UPDATE_UNINSTALL"

    invoke-virtual {v4, v5, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v5, "android.intent.extra.DONT_KILL_APP"

    const/4 v9, 0x1

    xor-int/lit8 v10, p3, 0x1

    invoke-virtual {v4, v5, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v5, "android.intent.extra.USER_INITIATED"

    xor-int/lit8 v10, p4, 0x1

    invoke-virtual {v4, v5, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v14, 0x0

    if-nez v1, :cond_1

    if-eqz v12, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v16, v14

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v16, v9

    :goto_1
    if-nez v16, :cond_2

    if-eqz p5, :cond_3

    :cond_2
    const-string/jumbo v1, "android.intent.extra.REPLACING"

    invoke-virtual {v4, v1, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    if-eqz p5, :cond_4

    const-string/jumbo v1, "android.intent.extra.ARCHIVAL"

    invoke-virtual {v4, v1, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    const-string/jumbo v1, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v3, :cond_5

    if-eqz v6, :cond_5

    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    :cond_5
    if-eqz v13, :cond_6

    goto/16 :goto_7

    :cond_6
    if-eqz v3, :cond_8

    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object v9, v15

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED_INTERNAL"

    const-string/jumbo v6, "android"

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    if-eqz v11, :cond_9

    if-nez v12, :cond_9

    const-string/jumbo v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    const/high16 v5, 0x1000000

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    iget v1, v0, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    move-object/from16 v2, p2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackageObserverHelper:Lcom/android/server/pm/PackageObserverHelper;

    iget-object v5, v2, Lcom/android/server/pm/PackageObserverHelper;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v2, v2, Lcom/android/server/pm/PackageObserverHelper;->mActiveSnapshot:Landroid/util/ArraySet;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    :goto_2
    if-ge v14, v5, :cond_7

    invoke-virtual {v2, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    invoke-interface {v6, v3, v1}, Landroid/content/pm/PackageManagerInternal$PackageListObserver;->onPackageRemoved(Ljava/lang/String;I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_7
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v1, v3}, Landroid/content/pm/UserPackage;->removeFromCache(ILjava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_8
    move-object v9, v15

    :cond_9
    :goto_3
    iget-boolean v0, v0, Lcom/android/server/pm/PackageRemovedInfo;->mIsAppIdRemoved:Z

    if-eqz v0, :cond_c

    if-nez v16, :cond_b

    if-eqz p5, :cond_a

    goto :goto_5

    :cond_a
    :goto_4
    move-object v14, v8

    goto :goto_6

    :cond_b
    :goto_5
    const-string/jumbo v0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :goto_6
    const-string/jumbo v8, "android.intent.action.UID_REMOVED"

    const/high16 v11, 0x1000000

    const/4 v12, 0x0

    move-object v15, v9

    const/4 v9, 0x0

    const/16 v16, 0x0

    move-object v10, v4

    move-object v13, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v16}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcastAndNotify(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    :cond_c
    :goto_7
    return-void
.end method

.method public final sendPackagesSuspendedOrUnsuspendedForUser(Ljava/util/function/Supplier;Ljava/lang/String;[Ljava/lang/String;[II)V
    .locals 9

    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo p3, "android.intent.extra.changed_uid_list"

    invoke-virtual {v3, p3, p4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    new-instance p3, Landroid/app/BroadcastOptions;

    invoke-direct {p3}, Landroid/app/BroadcastOptions;-><init>()V

    const/4 p4, 0x2

    invoke-virtual {p3, p4}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    new-instance v5, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;

    const/4 p3, 0x0

    invoke-direct {v5, p1, p3}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Supplier;I)V

    new-instance v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;

    move-object v1, p0

    move-object v2, p2

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/BroadcastHelper;Ljava/lang/String;Landroid/os/Bundle;ILcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;Landroid/os/Bundle;)V

    iget-object p0, v1, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    filled-new-array {v4}, [I

    move-result-object v4

    iget-object v0, v1, Lcom/android/server/pm/BroadcastHelper;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageMonitorCallbackHelper;

    iget-object v7, v1, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    move-object v1, v2

    const/4 v2, 0x0

    move-object v8, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;)V

    return-void
.end method

.method public final sendPreferredActivityChangedBroadcast(I)V
    .locals 1

    new-instance v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda3;-><init>(I)V

    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendResourcesChangedBroadcast(Ljava/util/function/Supplier;ZZ[Ljava/lang/String;[ILcom/android/server/pm/AsecInstallHelper$3;)V
    .locals 14

    move/from16 v0, p3

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "android.intent.extra.changed_package_list"

    move-object/from16 v2, p4

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.extra.changed_uid_list"

    move-object/from16 v2, p5

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    if-eqz v0, :cond_1

    const-string/jumbo v1, "android.intent.extra.REPLACING"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    if-eqz p2, :cond_2

    const-string/jumbo v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    goto :goto_0

    :goto_1
    new-instance v12, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;

    const/4 v0, 0x2

    invoke-direct {v12, p1, v0}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Supplier;I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object v2, p0

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Lcom/android/server/pm/AsecInstallHelper$3;[I[ILandroid/util/SparseArray;Ljava/util/function/BiFunction;Landroid/os/Bundle;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final sendResourcesChangedBroadcastAndNotify(Ljava/util/function/Supplier;ZZLjava/util/ArrayList;Lcom/android/server/pm/AsecInstallHelper$3;)V
    .locals 8

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    new-array v6, v0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v2

    aput v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcast(Ljava/util/function/Supplier;ZZ[Ljava/lang/String;[ILcom/android/server/pm/AsecInstallHelper$3;)V

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/server/pm/BroadcastHelper;->notifyResourcesChanged(ZZ[Ljava/lang/String;[I)V

    return-void
.end method

.method public final sendSessionCommitBroadcast(Lcom/android/server/pm/Computer;Landroid/content/pm/PackageInstaller$SessionInfo;ILjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_1
    move v0, p3

    :goto_0
    invoke-interface {p1, v0}, Lcom/android/server/pm/Computer;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object p1

    const-string/jumbo v1, "android.intent.extra.USER"

    const-string/jumbo v2, "android.content.pm.extra.SESSION"

    const-string/jumbo v3, "android.content.pm.action.SESSION_COMMITTED"

    if-eqz p1, :cond_4

    iget-object v4, p0, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v4, p3}, Lcom/android/server/pm/UserManagerService$LocalService;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserProperties;->getProfileApiVisibility()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "android.permission.ACCESS_HIDDEN_PROFILES_FULL"

    invoke-virtual {v4, v6, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.permission.ACCESS_HIDDEN_PROFILES"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    :goto_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_4
    if-eqz p4, :cond_5

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_5
    :goto_2
    return-void
.end method
