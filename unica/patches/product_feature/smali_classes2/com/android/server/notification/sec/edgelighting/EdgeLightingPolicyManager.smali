.class public final Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DESKTOP_SETTINGS_URI:Landroid/net/Uri;

.field public static final EMERGENCY_MODE_ENABLED:Z


# instance fields
.field public final mBlackPolicy:Lcom/android/server/notification/sec/edgelighting/policy/EdgeLightingPolicyRepository;

.field public final mContext:Landroid/content/Context;

.field public mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public final mDesktopSettingsObserver:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$1;

.field public mDisableNotificationAlerts:Z

.field public final mDisableRecords:Ljava/util/ArrayList;

.field public final mDisabledPackages:Landroid/util/SparseArray;

.field public final mHeadsUpObserver:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$1;

.field public mIsTouchpadEnabled:Z

.field public mNm:Landroid/app/INotificationManager;

.field public final mNotificationGroup:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

.field public final mNotificationMap:Ljava/util/HashMap;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public mPolicyType:I

.field public mPolicyVersion:J

.field public final mPriorityPolicy:Ljava/util/ArrayList;

.field public mResumedComponent:Landroid/content/ComponentName;

.field public mResumedComponentTime:J

.field public mStatusBarDisabled1:I

.field public mSuppressed:I

.field public mUseHeadsUp:Z

.field public mUserId:I

.field public mVrMode:Z

.field public final mVrStateCallbacks:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$3;

.field public final mWhitePolicy:Lcom/android/server/notification/sec/edgelighting/policy/EdgeLightingPolicyRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

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
    sput-boolean v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->EMERGENCY_MODE_ENABLED:Z

    const-string/jumbo v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mPolicyVersion:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mPriorityPolicy:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    invoke-direct {v1}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationGroup;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mUseHeadsUp:Z

    iput v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mStatusBarDisabled1:I

    iput v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    iput v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mUserId:I

    iput-boolean v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mDisableNotificationAlerts:Z

    new-instance v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$1;-><init>(Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mHeadsUpObserver:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$1;

    new-instance v2, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$1;-><init>(Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;Landroid/os/Handler;I)V

    iput-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mDesktopSettingsObserver:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$1;

    new-instance v1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$3;-><init>(Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;)V

    iput-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mVrStateCallbacks:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$3;

    iput-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v3, "desktopmode"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    new-instance v3, Lcom/android/server/notification/sec/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-direct {v3}, Lcom/android/server/notification/sec/edgelighting/policy/EdgeLightingPolicyRepository;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/sec/edgelighting/policy/EdgeLightingPolicyRepository;

    new-instance v3, Lcom/android/server/notification/sec/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-direct {v3}, Lcom/android/server/notification/sec/edgelighting/policy/EdgeLightingPolicyRepository;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/sec/edgelighting/policy/EdgeLightingPolicyRepository;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$1;->onChange(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "heads_up_notifications_enabled"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {v2, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo p1, "notification"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    const-string/jumbo p0, "vrmanager"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, v1}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Failed to register VR mode state listener: "

    const-string v0, "EdgeLightingPolicyManager"

    invoke-static {p1, p0, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static isEmptyText(Landroid/os/Bundle;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string/jumbo v1, "tickerText"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    return v3

    :cond_1
    const-string/jumbo v1, "titleText"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    :cond_2
    const-string/jumbo v1, "text"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    const-string/jumbo v1, "subText"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    return v3

    :cond_4
    return v0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-EdgeLightingPolicy start : type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mPolicyVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_1
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$DisableRecord;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  [DisableRecord] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$DisableRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$DisableRecord;->what:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto/16 :goto_6

    :cond_2
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_3
    if-ge v3, v1, :cond_3

    iget-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  [DisabledPackages] : type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catchall_2
    move-exception p0

    goto :goto_5

    :cond_3
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    sget-boolean v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/sec/edgelighting/policy/EdgeLightingPolicyRepository;

    const-string/jumbo v1, "white"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/sec/edgelighting/policy/EdgeLightingPolicyRepository;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/sec/edgelighting/policy/EdgeLightingPolicyRepository;

    const-string/jumbo v1, "black"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/sec/edgelighting/policy/EdgeLightingPolicyRepository;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mSuppressed="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :goto_5
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :goto_6
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :goto_7
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final isAcceptableApplication(IILjava/lang/String;Z)Z
    .locals 10

    const-string/jumbo v0, "isAcceptableApplication - accept rechecked by isEdgeLightingAllowed = "

    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mWhitePolicy:Lcom/android/server/notification/sec/edgelighting/policy/EdgeLightingPolicyRepository;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/notification/sec/edgelighting/policy/EdgeLightingPolicyRepository;->size()I

    move-result v4

    if-ge v4, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p3}, Lcom/android/server/notification/sec/edgelighting/policy/EdgeLightingPolicyRepository;->getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v4

    goto :goto_1

    :cond_1
    :goto_0
    move-object v4, v3

    :goto_1
    sget-boolean v5, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    const-string v6, "EdgeLightingPolicyManager"

    const/4 v7, 0x0

    if-nez v5, :cond_2

    goto :goto_4

    :cond_2
    new-instance v8, Ljava/lang/StringBuffer;

    const-string/jumbo v9, "isAcceptableApplication:  pkg="

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, " , range="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v9, " , includeAllApp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, p4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v9, " , userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v9, " , infoRange="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v4, :cond_3

    iget v9, v4, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    goto :goto_2

    :cond_3
    move v9, v7

    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v9, " , infoCategory="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v4, :cond_4

    iget v9, v4, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->category:I

    goto :goto_3

    :cond_4
    move v9, v7

    :goto_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const v8, 0xff00

    and-int/2addr v8, p1

    if-eqz v8, :cond_6

    if-eqz v4, :cond_5

    iget p0, v4, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v7

    :cond_6
    if-nez p4, :cond_d

    iget p4, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    and-int/2addr p4, v2

    if-eqz p4, :cond_7

    goto :goto_8

    :cond_7
    invoke-virtual {v1}, Lcom/android/server/notification/sec/edgelighting/policy/EdgeLightingPolicyRepository;->size()I

    move-result p4

    if-ge p4, v2, :cond_9

    :cond_8
    :goto_5
    move-object p4, v3

    goto :goto_6

    :cond_9
    invoke-virtual {v1, p3}, Lcom/android/server/notification/sec/edgelighting/policy/EdgeLightingPolicyRepository;->getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object p4

    if-nez p4, :cond_a

    goto :goto_5

    :cond_a
    iget v1, p4, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_8

    :goto_6
    if-eqz p4, :cond_b

    move p4, v2

    goto :goto_7

    :cond_b
    move p4, v7

    :goto_7
    if-nez v5, :cond_c

    goto :goto_a

    :cond_c
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "isAcceptableApplication: getAcceptablePolicy "

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_d
    :goto_8
    new-instance p4, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {p4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p4, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p4, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p4, v7, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_e

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_e

    move p4, v2

    goto :goto_9

    :cond_e
    move p4, v7

    :goto_9
    if-eqz p4, :cond_f

    if-eqz v4, :cond_f

    iget v1, v4, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr v1, p1

    if-nez v1, :cond_f

    move p4, v7

    :cond_f
    :goto_a
    if-eqz p4, :cond_12

    iget v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_12

    :try_start_0
    iget-object p4, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p4, p3, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    const-string/jumbo p4, "getApplicationInfo : packageName = "

    invoke-static {p4, p3, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p4, v3

    :goto_b
    if-eqz p4, :cond_11

    invoke-virtual {p4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p4}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result p4

    if-eqz p4, :cond_10

    goto :goto_c

    :cond_10
    move p4, v2

    goto :goto_d

    :cond_11
    :goto_c
    move p4, v7

    :cond_12
    :goto_d
    if-gez p2, :cond_13

    :try_start_1
    iget-object p2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mUserId:I

    invoke-virtual {p2, p3, v7, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p2

    goto :goto_f

    :catch_1
    move-exception p2

    goto :goto_e

    :cond_13
    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p3, v7, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_f

    :goto_e
    const-string/jumbo v1, "getPackageUidAsUser failed - "

    invoke-static {p2, v1, v6}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    move p2, v7

    :goto_f
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_17

    :try_start_2
    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    if-nez v1, :cond_14

    const-string/jumbo v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    goto :goto_10

    :catch_2
    move-exception v0

    goto :goto_11

    :cond_14
    :goto_10
    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    if-eqz v1, :cond_15

    invoke-interface {v1, p3, p2}, Landroid/app/INotificationManager;->isEdgeLightingAllowed(Ljava/lang/String;I)Z

    move-result p4

    :cond_15
    sget-boolean v1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_16

    goto :goto_12

    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " uid = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_12

    :goto_11
    const-string/jumbo v1, "isEdgeLightingAllowed failed - "

    invoke-static {v0, v1, v6}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_12
    if-eqz p4, :cond_20

    iget v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mPolicyType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mBlackPolicy:Lcom/android/server/notification/sec/edgelighting/policy/EdgeLightingPolicyRepository;

    invoke-virtual {v0}, Lcom/android/server/notification/sec/edgelighting/policy/EdgeLightingPolicyRepository;->size()I

    move-result v1

    if-ge v1, v2, :cond_18

    goto :goto_13

    :cond_18
    invoke-virtual {v0, p3}, Lcom/android/server/notification/sec/edgelighting/policy/EdgeLightingPolicyRepository;->getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_13

    :cond_19
    iget v1, v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->range:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_1a

    move-object v3, v0

    :cond_1a
    :goto_13
    if-nez v3, :cond_1b

    goto :goto_14

    :cond_1b
    move v2, v7

    :goto_14
    if-eqz p4, :cond_1e

    if-nez v2, :cond_1e

    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    if-eqz p0, :cond_1c

    invoke-interface {p0, p3, p2, v7}, Landroid/app/INotificationManager;->setAllowEdgeLighting(Ljava/lang/String;IZ)V

    goto :goto_15

    :catch_3
    move-exception p0

    goto :goto_16

    :cond_1c
    :goto_15
    sget-boolean p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_1d

    goto :goto_17

    :cond_1d
    const-string p0, "Block list app so setAllowEdgeLighting to false"

    invoke-static {v6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_17

    :goto_16
    const-string/jumbo p1, "setAllowEdgeLighting failed - "

    invoke-static {p0, p1, v6}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    :goto_17
    sget-boolean p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez p0, :cond_1f

    goto :goto_18

    :cond_1f
    new-instance p0, Ljava/lang/StringBuffer;

    const-string/jumbo p1, "isAcceptableApplication: getRejectablePolicy "

    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    move p4, v2

    :cond_20
    return p4
.end method

.method public final isAllowEdgelighting()Z
    .locals 0

    iget p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mSuppressed:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 p0, p0, 0x10

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isEdgeLightingDisabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const-string p0, "EdgeLightingPolicyManager"

    const-string v1, "EdgeLighting is disabled"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isEdgeLightingDisabledByPackage(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mDisabledPackages:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    monitor-exit v1

    return v2

    :cond_3
    monitor-exit v1

    return v0

    :cond_4
    :goto_0
    monitor-exit v1

    return v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isEdgeLightingRestricted(I)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "EdgeLightingPolicyManager"

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v4, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    goto :goto_0

    :cond_1
    move v5, v2

    move v0, v4

    :goto_0
    if-nez v5, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getEdgeLightingRestrictState coverOpen="

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", type="

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-boolean v0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->EMERGENCY_MODE_ENABLED:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v4, 0xa

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v0, v2, :cond_4

    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "desktop_mode"

    const/4 v4, -0x2

    invoke-static {p0, v0, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eq p0, v2, :cond_4

    const-string p0, "Desktop mode enabled and it is not new dex mode"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xb

    goto :goto_1

    :cond_4
    move v4, v1

    :goto_1
    if-eqz v4, :cond_5

    const-string p0, "EdgeLighting is Restricted("

    const-string v0, "), range = "

    invoke-static {v4, p1, p0, v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5
    return v1
.end method

.method public final isHUNPeeked()Z
    .locals 3

    iget-boolean p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mVrMode:Z

    const/4 v0, 0x0

    const-string v1, "EdgeLightingPolicyManager"

    if-eqz p0, :cond_0

    const-string/jumbo p0, "isHUNPeeked : Vr mode"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string/jumbo p0, "net.mirrorlink.on"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "1"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "isHUNPeeked : mirror link on"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final manageDisableRecoredLocked(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$DisableRecord;

    iget-object v4, v3, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v4, p2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz p1, :cond_4

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    if-nez v3, :cond_3

    new-instance v3, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$DisableRecord;

    invoke-direct {v3, p0}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$DisableRecord;-><init>(Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;)V

    :try_start_0
    invoke-interface {p2, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "manageDisableRecoredLocked : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EdgeLightingPolicyManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_2
    iput p1, v3, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$DisableRecord;->what:I

    iput-object p2, v3, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    iput-object p3, v3, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$DisableRecord;->packageName:Ljava/lang/String;

    return-void

    :cond_4
    :goto_3
    if-eqz v3, :cond_5

    iget-object p0, p0, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p0, v3, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {p0, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_5
    return-void
.end method

.method public final putNotification(Landroid/service/notification/StatusBarNotification;ZZIZZ)Landroid/os/Bundle;
    .locals 19

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const-string/jumbo v6, "android.title"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    const-string/jumbo v7, "android.text"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    const-string/jumbo v8, "android.subText"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    const-string/jumbo v9, "android.showSmallIcon"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object v9, v8

    move-object v8, v7

    move-object v7, v0

    goto :goto_1

    :cond_2
    move-object v8, v2

    move-object v9, v8

    move-object v7, v6

    move-object v6, v9

    :goto_1
    const-string v0, "EdgeLightingPolicyManager"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "putNotification tickerText:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    if-eqz v3, :cond_3

    const/4 v13, 0x1

    goto :goto_2

    :cond_3
    move v13, v12

    :goto_2
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ",titleText:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_4

    const/4 v13, 0x1

    goto :goto_3

    :cond_4
    move v13, v12

    :goto_3
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ",text:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_5

    const/4 v13, 0x1

    goto :goto_4

    :cond_5
    move v13, v12

    :goto_4
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ",sub:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_6

    const/4 v13, 0x1

    goto :goto_5

    :cond_6
    move v13, v12

    :goto_5
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "cn= + "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v10

    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v13, 0xa

    if-ge v0, v13, :cond_7

    monitor-exit v10

    move-object/from16 v16, v3

    goto :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_11

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-object v0, v1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-object/from16 v16, v3

    iget-wide v2, v15, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    const-wide/16 v17, 0x2710

    add-long v2, v2, v17

    cmp-long v2, v2, v13

    if-gez v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_8
    move-object/from16 v3, v16

    const/4 v2, 0x0

    goto :goto_6

    :cond_9
    move-object/from16 v16, v3

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_7
    iget-object v2, v1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->ledARGB:I

    if-nez v0, :cond_a

    iget-object v3, v1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;

    if-eqz v3, :cond_a

    iget-object v0, v3, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v3, "color"

    invoke-virtual {v0, v3, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_a
    move v3, v0

    goto :goto_8

    :catchall_1
    move-exception v0

    goto/16 :goto_10

    :goto_8
    const/16 v10, -0x3e8

    :try_start_2
    iget-object v0, v1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    if-nez v0, :cond_b

    const-string v0, "EdgeLightingPolicyManager"

    const-string v13, "INotificationManager is null in putNotification, try reload"

    invoke-static {v0, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mNm:Landroid/app/INotificationManager;

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_9

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v14

    invoke-interface {v0, v13, v14}, Landroid/app/INotificationManager;->getLockScreenNotificationVisibilityForPackage(Ljava/lang/String;I)I

    move-result v10
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_a

    :goto_9
    :try_start_3
    const-string v13, "EdgeLightingPolicyManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getLockScreenNotificationVisibilityForPackage failed - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v15, "isHeadup"

    move/from16 v11, p2

    invoke-virtual {v0, v15, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v11, "isUpdate"

    move/from16 v15, p3

    invoke-virtual {v0, v11, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v11, "tickerText"

    move-object/from16 v15, v16

    invoke-virtual {v0, v11, v15}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v11, "titleText"

    invoke-virtual {v0, v11, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v6, "text"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v6, "subText"

    invoke-virtual {v0, v6, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v6, "smallIcon"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v4, "flag"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->flags:I

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "color"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "notification_color"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->color:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "priority"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->priority:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "component"

    iget-object v4, v1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mResumedComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_c
    const/4 v4, 0x0

    :goto_b
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "component_time"

    iget-wide v8, v1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mResumedComponentTime:J

    invoke-virtual {v0, v3, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v3, "group_key"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "content_intent"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v3, "user_id"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "noti_key"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "noti_id"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "noti_tag"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "noti_visiblity"

    move/from16 v4, p4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "package_visiblity"

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "alert_group"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v11, 0x1

    goto :goto_c

    :cond_d
    move v11, v12

    :goto_c
    invoke-virtual {v0, v3, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "category"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v3, "audible_alert"

    move/from16 v4, p5

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "channel_id"

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v3, "bubble"

    move/from16 v4, p6

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "show_small_icon"

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v3, :cond_f

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v6, v4

    :goto_d
    if-ge v12, v6, :cond_e

    aget-object v7, v4, v12

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    :cond_e
    const-string/jumbo v4, "noti_actions"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_f
    new-instance v3, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-wide v13, v3, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;->mTime:J

    iput-object v0, v3, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    if-eqz v5, :cond_10

    iget-object v4, v1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5, v3}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->updateNotificationData(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;)V

    goto :goto_e

    :cond_10
    move-object/from16 v5, p1

    :goto_e
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, v1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mNotificationGroup:Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationGroup;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v4, v4, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationGroup;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v4, :cond_11

    :try_start_5
    invoke-virtual {v4}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v6

    if-eqz v6, :cond_11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tickerText"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v8, "tickerText"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "tickerText"

    invoke-virtual {v4}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v9, "tickerText"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v7, "titleText"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v8, "titleText"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "titleText"

    invoke-virtual {v4}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v9, "titleText"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v7, "text"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v8, "text"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "text"

    invoke-virtual {v4}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v9, "text"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v7, "subText"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v8, "subText"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "subText"

    invoke-virtual {v4}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v8, "subText"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v6, "noti_key"

    invoke-virtual {v4}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v8, "noti_key"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "content_intent"

    invoke-virtual {v4}, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$GroupNotificationData;->getLastChild()Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager$NotificationData;->mNotificationInfo:Landroid/os/Bundle;

    const-string/jumbo v7, "content_intent"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_f

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    :cond_11
    :goto_f
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v1, v1, Lcom/android/server/notification/sec/edgelighting/EdgeLightingPolicyManager;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    monitor-exit v2

    return-object v0

    :goto_10
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :goto_11
    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method
