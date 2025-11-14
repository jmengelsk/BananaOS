.class public final Lcom/android/server/policy/AppOpsPolicy;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field public static final SYSPROP_HOTWORD_DETECTION_SERVICE_REQUIRED:Z


# instance fields
.field public final mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mContext:Landroid/content/Context;

.field public final mIsHotwordDetectionServiceRequired:Z

.field public final mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mLock:Ljava/lang/Object;

.field public final mPerUidLocationTags:Landroid/util/SparseArray;

.field public final mRoleManager:Landroid/app/role/RoleManager;

.field public final mToken:Landroid/os/IBinder;

.field public final mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/android/server/policy/AppOpsPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/AppOpsPolicy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "ro.hotword.detection_service_required"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/AppOpsPolicy;->SYSPROP_HOTWORD_DETECTION_SERVICE_REQUIRED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLock:Ljava/lang/Object;

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    iput-object v4, p0, Lcom/android/server/policy/AppOpsPolicy;->mToken:Landroid/os/IBinder;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mPerUidLocationTags:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/android/server/policy/AppOpsPolicy;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    iput-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mRoleManager:Landroid/app/role/RoleManager;

    const-class v1, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/voice/VoiceInteractionManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/policy/AppOpsPolicy;->isHotwordDetectionServiceRequired(Landroid/content/pm/PackageManager;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mIsHotwordDetectionServiceRequired:Z

    const-class v1, Landroid/location/LocationManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManagerInternal;

    if-eqz v1, :cond_58

    new-instance v2, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/AppOpsPolicy;)V

    invoke-virtual {v1, v2}, Landroid/location/LocationManagerInternal;->setLocationPackageTagsListener(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;)V

    :cond_58
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v6, Lcom/android/server/policy/AppOpsPolicy$1;

    invoke-direct {v6, p0}, Lcom/android/server/policy/AppOpsPolicy$1;-><init>(Lcom/android/server/policy/AppOpsPolicy;)V

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v1, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/AppOpsPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/AppOpsPolicy;)V

    invoke-virtual {v0, p1, v1, v7}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Lcom/android/server/policy/AppOpsPolicy;->initializeActivityRecognizersTags()V

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string/jumbo p1, "android.hardware.telephony"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c0

    const-string/jumbo p1, "android.hardware.microphone"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c0

    const-string/jumbo p1, "android.software.telecom"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_c0

    const-class p0, Landroid/app/AppOpsManager;

    invoke-virtual {v5, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/app/AppOpsManager;

    const/16 v2, 0x64

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    const/16 v2, 0x65

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    :cond_c0
    return-void
.end method

.method public static isHotwordDetectionServiceRequired(Landroid/content/pm/PackageManager;)Z
    .registers 2

    const-string/jumbo v0, "android.hardware.type.automotive"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo v0, "android.software.leanback"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_16

    :cond_13
    sget-boolean p0, Lcom/android/server/policy/AppOpsPolicy;->SYSPROP_HOTWORD_DETECTION_SERVICE_REQUIRED:Z

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return p0
.end method

.method public static writeTags(Ljava/util/Map;Ljava/io/PrintWriter;)V
    .registers 5

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v2, "    #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PackageTagsList;

    invoke-virtual {v0, p1}, Landroid/os/PackageTagsList;->dump(Ljava/io/PrintWriter;)V

    move v0, v2

    goto :goto_b

    :cond_43
    return-void
.end method


# virtual methods
.method public final checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I
    .registers 6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p5, p0, p1, p2, p4}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final checkOperation(IILjava/lang/String;Ljava/lang/String;IZLcom/android/internal/util/function/HexFunction;)I
    .registers 9

    move v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p2}, Lcom/android/server/policy/AppOpsPolicy;->resolveUid(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    move-object p0, p7

    invoke-interface/range {p0 .. p6}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final dumpTags(Ljava/io/PrintWriter;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "  AppOps policy location tags:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, p1}, Lcom/android/server/policy/AppOpsPolicy;->writeTags(Ljava/util/Map;Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_15
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "  AppOps policy activity recognition tags:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Lcom/android/server/policy/AppOpsPolicy;->writeTags(Ljava/util/Map;Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_2a
    return-void
.end method

.method public final finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ILcom/android/internal/util/function/HexConsumer;)V
    .registers 9

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/AppOpsPolicy;->resolveUid(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    move-object p0, p7

    move-object p2, v0

    invoke-interface/range {p0 .. p6}, Lcom/android/internal/util/function/HexConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLcom/android/internal/util/function/QuadFunction;)V
    .registers 9

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p5, p1, p0, p3, p2}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final initializeActivityRecognizersTags()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mRoleManager:Landroid/app/role/RoleManager;

    const-string/jumbo v1, "android.app.role.SYSTEM_ACTIVITY_RECOGNIZER"

    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1f

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1e

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/policy/AppOpsPolicy;->updateActivityRecognizerTags(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_22
    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public final noteOperation(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZILcom/android/internal/util/function/NonaFunction;)Landroid/app/SyncNotedAppOp;
    .registers 12

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/AppOpsPolicy;->resolveUid(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p8

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p9

    move-object p0, p10

    move-object p1, v0

    invoke-interface/range {p0 .. p9}, Lcom/android/internal/util/function/NonaFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SyncNotedAppOp;

    return-object p0
.end method

.method public final noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZLcom/android/internal/util/function/HexFunction;)Landroid/app/SyncNotedAppOp;
    .registers 11

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    move-object p6, p4

    move-object p4, p1

    move-object p1, p7

    move-object p7, p5

    move-object p5, p6

    move-object p6, p3

    move-object p3, p2

    move-object p2, p0

    invoke-interface/range {p1 .. p7}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SyncNotedAppOp;

    return-object p0
.end method

.method public final resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I
    .registers 8

    const/16 v0, 0x66

    const/16 v1, 0x1b

    if-ne p1, v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mIsHotwordDetectionServiceRequired:Z

    if-nez v0, :cond_b

    goto :goto_1b

    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionManagerInternal;->getHotwordDetectionServiceIdentity()Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    move-result v0

    if-ne p2, v0, :cond_1a

    goto :goto_1b

    :cond_1a
    move p1, v1

    :cond_1b
    :goto_1b
    invoke-static {p2}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_40

    const/16 v0, 0x1a

    if-eq p1, v1, :cond_28

    if-eq p1, v0, :cond_28

    goto :goto_40

    :cond_28
    iget-object v2, p0, Lcom/android/server/policy/AppOpsPolicy;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionManagerInternal;->getHotwordDetectionServiceIdentity()Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    move-result-object v2

    if-eqz v2, :cond_40

    invoke-virtual {v2}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    move-result v2

    if-ne p2, v2, :cond_40

    if-eq p1, v0, :cond_3e

    if-eq p1, v1, :cond_3b

    goto :goto_40

    :cond_3b
    const/16 p1, 0x87

    goto :goto_40

    :cond_3e
    const/16 p1, 0x86

    :cond_40
    :goto_40
    if-nez p4, :cond_43

    goto :goto_8e

    :cond_43
    if-eqz p1, :cond_4d

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4a

    move v0, p1

    goto :goto_4f

    :cond_4a
    const/16 v0, 0x6c

    goto :goto_4f

    :cond_4d
    const/16 v0, 0x6d

    :goto_4f
    if-eq v0, p1, :cond_6b

    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mLocationTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PackageTagsList;

    if-eqz p0, :cond_6a

    invoke-virtual {p0, p3, p4}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6a

    return v0

    :cond_6a
    return p1

    :cond_6b
    const/16 v0, 0x4f

    if-ne p1, v0, :cond_72

    const/16 v0, 0x71

    goto :goto_73

    :cond_72
    move v0, p1

    :goto_73
    if-eq v0, p1, :cond_8e

    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PackageTagsList;

    if-eqz p0, :cond_8e

    invoke-virtual {p0, p3, p4}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8e

    return v0

    :cond_8e
    :goto_8e
    return p1
.end method

.method public final resolveUid(II)I
    .registers 4

    invoke-static {p2}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_12

    const/16 v0, 0x66

    if-eq p1, v0, :cond_12

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_25

    :cond_12
    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mVoiceInteractionManagerInternal:Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionManagerInternal;->getHotwordDetectionServiceIdentity()Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    move-result-object p0

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getIsolatedUid()I

    move-result p1

    if-ne p2, p1, :cond_25

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;->getOwnerUid()I

    move-result p0

    return p0

    :cond_25
    return p2
.end method

.method public final startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZIILcom/android/internal/util/function/DodecFunction;)Landroid/app/SyncNotedAppOp;
    .registers 15

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/AppOpsPolicy;->resolveUid(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p7

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p8

    invoke-static {p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p10

    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p11

    invoke-static {p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p12

    move-object p0, p13

    move-object p2, v0

    invoke-interface/range {p0 .. p12}, Lcom/android/internal/util/function/DodecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SyncNotedAppOp;

    return-object p0
.end method

.method public final startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;
    .registers 16

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/server/policy/AppOpsPolicy;->resolveDatasourceOp(IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p7

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p8

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p9

    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p10

    move-object p11, p2

    move-object p2, p1

    move-object p1, p12

    move-object p12, p10

    move-object p10, p8

    move-object p8, p5

    move-object p5, p11

    move-object p11, p9

    move-object p9, p7

    move-object p7, p6

    move-object p6, p4

    move-object p4, p3

    move-object p3, p0

    invoke-interface/range {p1 .. p12}, Lcom/android/internal/util/function/UndecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SyncNotedAppOp;

    return-object p0
.end method

.method public final updateActivityRecognizerTags(Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "android.intent.action.ACTIVITY_RECOGNIZER"

    invoke-static {v0, p1}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/policy/AppOpsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0xc8084

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_66

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_1c

    goto :goto_66

    :cond_1c
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_21

    goto :goto_65

    :cond_21
    const-string/jumbo v1, "android:activity_recognition_allow_listed_tags"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    new-instance v1, Landroid/os/PackageTagsList$Builder;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/PackageTagsList$Builder;-><init>(I)V

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/PackageTagsList$Builder;->add(Ljava/lang/String;Ljava/util/Collection;)Landroid/os/PackageTagsList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PackageTagsList$Builder;->build()Landroid/os/PackageTagsList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/AppOpsPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4d
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/policy/AppOpsPolicy;->mActivityRecognitionTags:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_62
    move-exception p0

    monitor-exit v1
    :try_end_64
    .catchall {:try_start_4d .. :try_end_64} :catchall_62

    throw p0

    :cond_65
    :goto_65
    return-void

    :cond_66
    :goto_66
    sget-object p0, Lcom/android/server/policy/AppOpsPolicy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "Service recognizer doesn\'t handle android.intent.action.ACTIVITY_RECOGNIZER, ignoring!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
