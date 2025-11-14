.class public final Lcom/android/server/notification/ZenModeHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG:Z

.field public static final DELETED_RULE_KEPT_FOR:Ljava/time/Duration;


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field protected mAudioManager:Landroid/media/AudioManagerInternal;

.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mClock:Ljava/time/Clock;

.field protected final mConditions:Lcom/android/server/notification/ZenModeConditions;

.field protected mConfig:Landroid/service/notification/ZenModeConfig;

.field public final mConfigLock:Ljava/lang/Object;

.field final mConfigs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/service/notification/ZenModeConfig;",
            ">;"
        }
    .end annotation
.end field

.field public mConsolidatedDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

.field protected mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultConfig:Landroid/service/notification/ZenModeConfig;

.field public final mFiltering:Lcom/android/server/notification/ZenModeFiltering;

.field public final mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

.field public final mHandler:Lcom/android/server/notification/ZenModeHelper$H;

.field protected mIsSystemServicesReady:Z

.field public final mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

.field public mPm:Landroid/content/pm/PackageManager;

.field public mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

.field protected final mRulesUidCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

.field public mSuppressedEffects:J

.field public mUser:I

.field protected mZenMode:I

.field public final mZenModeEventLogger:Lcom/android/server/notification/ZenModeEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "ZenModeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v2

    sput-object v2, Lcom/android/server/notification/ZenModeHelper;->DELETED_RULE_KEPT_FOR:Ljava/time/Duration;

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/time/Clock;Lcom/android/server/notification/ConditionProviders;Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;Lcom/android/server/notification/ZenModeEventLogger;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/notification/ZenModeHelper$Metrics;

    invoke-direct {v1, p0}, Lcom/android/server/notification/ZenModeHelper$Metrics;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mMetrics:Lcom/android/server/notification/ZenModeHelper$Metrics;

    new-instance v2, Landroid/service/notification/ZenDeviceEffects$Builder;

    invoke-direct {v2}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {v3, p0, p2}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    iput-object p3, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x117000c

    const/4 p3, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p2

    invoke-static {p2, p3}, Landroid/service/notification/ZenModeConfig;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/app/backup/BackupRestoreEventLogger;)Landroid/service/notification/ZenModeConfig;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object p3, p1

    goto/16 :goto_5

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto/16 :goto_5

    :catch_1
    move-exception p2

    move-object p1, p3

    :goto_1
    :try_start_2
    const-string/jumbo v0, "ZenModeHelper"

    const-string v1, "Error reading default zen mode config from resource"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    new-instance p2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {p2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    :goto_3
    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    iget-object v1, p2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getDefaultRuleIds()Ljava/util/List;

    move-result-object v4

    iget-object v5, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object v4

    iput-object v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    goto :goto_4

    :cond_3
    invoke-static {p1, p2}, Lcom/android/server/notification/ZenModeHelper;->updateRuleStringsForCurrentLocale(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V

    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_3
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    new-instance p1, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-direct {p1, p0, p2}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V

    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p1, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    invoke-virtual {p2, v0, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1, p3}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->update(Landroid/net/Uri;)V

    new-instance p1, Lcom/android/server/notification/ZenModeFiltering;

    iget-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/server/notification/ZenModeFiltering;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    new-instance p1, Lcom/android/server/notification/ZenModeConditions;

    invoke-direct {p1, p0, p4}, Lcom/android/server/notification/ZenModeConditions;-><init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    invoke-virtual {p4}, Lcom/android/server/notification/ConditionProviders;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mServiceConfig:Lcom/android/server/notification/ManagedServices$Config;

    iput-object p5, p0, Lcom/android/server/notification/ZenModeHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    iput-object p6, p0, Lcom/android/server/notification/ZenModeHelper;->mZenModeEventLogger:Lcom/android/server/notification/ZenModeEventLogger;

    return-void

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :goto_5
    invoke-static {p3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method public static applyCustomPolicy(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V
    .locals 3

    iget v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    new-instance p0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {p0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy$Builder;->disallowAllSounds()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowPriorityChannels(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    return-void

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    new-instance p0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {p0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy$Builder;->disallowAllSounds()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/service/notification/ZenPolicy$Builder;->allowPriorityChannels(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    return-void

    :cond_1
    iget-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    return-void

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    return-void

    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "active automatic rule found with no specified policy: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "ZenModeHelper"

    invoke-static {p3, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/service/notification/ZenPolicy;->apply(Landroid/service/notification/ZenPolicy;)V

    return-void
.end method

.method public static checkManageRuleOrigin(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Expected one of ORIGIN_APP, ORIGIN_SYSTEM, or ORIGIN_USER_IN_SYSTEMUI for %s, but received \'%s\'."

    invoke-static {v0, p1, p0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static checkSetRuleStateOrigin(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Expected one of ORIGIN_APP, ORIGIN_USER_IN_APP, ORIGIN_SYSTEM, or ORIGIN_USER_IN_SYSTEMUI for %s, but received \'%s\'."

    invoke-static {v0, p1, p0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static updatePolicy(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenPolicy;ZZ)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    iput-object p0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p4

    :goto_0
    invoke-virtual {p4, p2}, Landroid/service/notification/ZenPolicy;->overwrittenWith(Landroid/service/notification/ZenPolicy;)Landroid/service/notification/ZenPolicy;

    move-result-object p0

    iput-object p0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz p3, :cond_14

    iget p2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result p3

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v1

    if-eq p3, v1, :cond_3

    or-int/lit8 p2, p2, 0x1

    :cond_3
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result p3

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v1

    if-eq p3, v1, :cond_4

    or-int/lit8 p2, p2, 0x2

    :cond_4
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result p3

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v1

    if-eq p3, v1, :cond_5

    or-int/lit8 p2, p2, 0x4

    :cond_5
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result p3

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityChannelsAllowed()I

    move-result v1

    if-eq p3, v1, :cond_6

    or-int/lit8 p2, p2, 0x8

    :cond_6
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result p3

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v1

    if-eq p3, v1, :cond_7

    or-int/lit8 p2, p2, 0x10

    :cond_7
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result p3

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v1

    if-eq p3, v1, :cond_8

    or-int/lit8 p2, p2, 0x20

    :cond_8
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result p3

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v1

    if-eq p3, v1, :cond_9

    or-int/lit8 p2, p2, 0x40

    :cond_9
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result p3

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v1

    if-eq p3, v1, :cond_a

    or-int/lit16 p2, p2, 0x80

    :cond_a
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result p3

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v1

    if-eq p3, v1, :cond_b

    or-int/lit16 p2, p2, 0x100

    :cond_b
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result p3

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v1

    if-eq p3, v1, :cond_c

    or-int/lit16 p2, p2, 0x200

    :cond_c
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result p3

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v1

    if-eq p3, v1, :cond_d

    or-int/lit16 p2, p2, 0x400

    :cond_d
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result p3

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v1

    if-eq p3, v1, :cond_e

    or-int/lit16 p2, p2, 0x800

    :cond_e
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result p3

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v1

    if-eq p3, v1, :cond_f

    or-int/lit16 p2, p2, 0x1000

    :cond_f
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result p3

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v1

    if-eq p3, v1, :cond_10

    or-int/lit16 p2, p2, 0x2000

    :cond_10
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result p3

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v1

    if-eq p3, v1, :cond_11

    or-int/lit16 p2, p2, 0x4000

    :cond_11
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result p3

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v1

    if-eq p3, v1, :cond_12

    const p3, 0x8000

    or-int/2addr p2, p3

    :cond_12
    invoke-virtual {p4}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result p3

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v1

    if-eq p3, v1, :cond_13

    const/high16 p3, 0x10000

    or-int/2addr p2, p3

    :cond_13
    iput p2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    :cond_14
    invoke-virtual {p0, p4}, Landroid/service/notification/ZenPolicy;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static updateRuleStringsForCurrentLocale(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)V
    .locals 3

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    const-string v2, "EVENTS_DEFAULT_RULE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104115e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "EVERY_NIGHT_DEFAULT_RULE"

    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104115f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final applyGlobalPolicyAsImplicitZenRule(Landroid/os/UserHandle;Ljava/lang/String;ILandroid/app/NotificationManager$Policy;)V
    .locals 9

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-nez p1, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    iget-object v0, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->implicitRuleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/server/notification/ZenModeHelper;->newImplicitZenRule(Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v0

    const/4 p2, 0x1

    iput p2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    iget-object v4, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move p2, v2

    :goto_0
    iget v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    if-nez v4, :cond_3

    invoke-static {p4}, Landroid/service/notification/ZenAdapters;->notificationPolicyToZenPolicy(Landroid/app/NotificationManager$Policy;)Landroid/service/notification/ZenPolicy;

    move-result-object p4

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/service/notification/ZenPolicy;->overwrittenWith(Landroid/service/notification/ZenPolicy;)Landroid/service/notification/ZenPolicy;

    move-result-object p4

    :cond_2
    invoke-static {v3, v0, p4, v2, p2}, Lcom/android/server/notification/ZenModeHelper;->updatePolicy(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenPolicy;ZZ)Z

    const-string/jumbo v5, "applyGlobalPolicyAsImplicitZenRule"

    const/4 v6, 0x0

    const/4 v4, 0x4

    const/4 v7, 0x1

    move-object v2, p0

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    :cond_3
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final applyGlobalZenModeAsImplicitZenRule(IILandroid/os/UserHandle;Ljava/lang/String;)V
    .locals 9

    const-string/jumbo v0, "applyGlobalZenModeAsImplicitZenRule: "

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p3

    if-nez p3, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p3}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    iget-object v2, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {p4}, Landroid/service/notification/ZenModeConfig;->implicitRuleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez p2, :cond_1

    if-eqz v2, :cond_4

    new-instance v5, Landroid/service/notification/Condition;

    iget-object p2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object p3, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const v4, 0x104116f

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v4, 0x0

    invoke-direct {v5, p2, p3, v4}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x4

    move-object v2, p0

    move v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Ljava/util/List;Landroid/service/notification/Condition;ILjava/lang/String;I)V

    goto :goto_0

    :cond_1
    move-object v8, v2

    move-object v2, p0

    move-object p0, v8

    move v8, p1

    if-nez p0, :cond_2

    invoke-virtual {v2, p4}, Lcom/android/server/notification/ZenModeHelper;->newImplicitZenRule(Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object p0

    invoke-virtual {p3}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->copy()Landroid/service/notification/ZenPolicy;

    move-result-object p1

    iput-object p1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    iget-object p1, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object p3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p1, p3, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget p1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    iput p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    :cond_3
    new-instance p1, Landroid/service/notification/Condition;

    iget-object p2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object p3, v2, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const p4, 0x104116e

    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    invoke-direct {p1, p2, p3, p4}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    iput-object p1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    const-string/jumbo v5, "applyGlobalZenModeAsImplicitZenRule"

    const/4 v6, 0x0

    const/4 v4, 0x4

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    :cond_4
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public applyRestrictions()V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    const/4 v7, 0x3

    if-ne v1, v7, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v8}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v8}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    goto :goto_3

    :cond_3
    move v8, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v8, v3

    :goto_4
    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v9}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result v9

    iget-object v10, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v10}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result v10

    iget-object v11, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v11}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result v11

    iget-object v12, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v12}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result v12

    iget-wide v13, v0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    const-wide/16 v15, 0x1

    and-long/2addr v15, v13

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_5

    move v15, v3

    goto :goto_5

    :cond_5
    move v15, v2

    :goto_5
    if-nez v1, :cond_8

    if-eqz v4, :cond_6

    if-nez v8, :cond_6

    if-eqz v9, :cond_8

    :cond_6
    const-wide/16 v8, 0x2

    and-long/2addr v8, v13

    cmp-long v8, v8, v17

    if-eqz v8, :cond_7

    goto :goto_6

    :cond_7
    move v8, v2

    goto :goto_7

    :cond_8
    :goto_6
    move v8, v3

    :goto_7
    if-eqz v4, :cond_9

    if-nez v12, :cond_9

    move v9, v3

    goto :goto_8

    :cond_9
    move v9, v2

    :goto_8
    if-eqz v4, :cond_a

    if-nez v11, :cond_a

    move v11, v3

    goto :goto_9

    :cond_a
    move v11, v2

    :goto_9
    if-nez v1, :cond_c

    if-eqz v4, :cond_b

    if-nez v10, :cond_b

    goto :goto_a

    :cond_b
    move v1, v2

    goto :goto_b

    :cond_c
    :goto_a
    move v1, v3

    :goto_b
    if-nez v6, :cond_e

    if-eqz v4, :cond_d

    iget-object v6, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->areAllZenBehaviorSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_c

    :cond_d
    move v6, v2

    goto :goto_d

    :cond_e
    :goto_c
    move v6, v3

    :goto_d
    sget-object v10, Landroid/media/AudioAttributes;->SDK_USAGES:Landroid/util/IntArray;

    invoke-virtual {v10}, Landroid/util/IntArray;->toArray()[I

    move-result-object v10

    array-length v12, v10

    move v13, v2

    :goto_e
    if-ge v13, v12, :cond_22

    aget v14, v10, v13

    sget-object v5, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    if-ne v5, v7, :cond_f

    invoke-virtual {v0, v4, v2, v14}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto/16 :goto_1b

    :cond_f
    if-ne v5, v3, :cond_12

    if-nez v15, :cond_11

    if-eqz v6, :cond_10

    goto :goto_f

    :cond_10
    move v5, v2

    goto :goto_10

    :cond_11
    :goto_f
    move v5, v3

    :goto_10
    invoke-virtual {v0, v4, v5, v14}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto/16 :goto_1b

    :cond_12
    const/4 v3, 0x2

    if-ne v5, v3, :cond_15

    if-nez v8, :cond_14

    if-eqz v6, :cond_13

    goto :goto_11

    :cond_13
    move v5, v2

    goto :goto_12

    :cond_14
    :goto_11
    const/4 v5, 0x1

    :goto_12
    invoke-virtual {v0, v4, v5, v14}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_1b

    :cond_15
    const/4 v3, 0x4

    if-ne v5, v3, :cond_18

    if-nez v9, :cond_17

    if-eqz v6, :cond_16

    goto :goto_13

    :cond_16
    move v3, v2

    goto :goto_14

    :cond_17
    :goto_13
    const/4 v3, 0x1

    :goto_14
    invoke-virtual {v0, v4, v3, v14}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_1b

    :cond_18
    const/4 v3, 0x5

    if-ne v5, v3, :cond_1b

    if-nez v11, :cond_1a

    if-eqz v6, :cond_19

    goto :goto_15

    :cond_19
    move v3, v2

    goto :goto_16

    :cond_1a
    :goto_15
    const/4 v3, 0x1

    :goto_16
    invoke-virtual {v0, v4, v3, v14}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_1b

    :cond_1b
    const/4 v3, 0x6

    if-ne v5, v3, :cond_21

    const/16 v3, 0xd

    if-ne v14, v3, :cond_1e

    if-nez v1, :cond_1d

    if-eqz v6, :cond_1c

    goto :goto_17

    :cond_1c
    move v3, v2

    goto :goto_18

    :cond_1d
    :goto_17
    const/4 v3, 0x1

    :goto_18
    const/16 v5, 0x1c

    invoke-virtual {v0, v4, v3, v14, v5}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    invoke-virtual {v0, v4, v2, v14, v7}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    goto :goto_1b

    :cond_1e
    if-nez v1, :cond_20

    if-eqz v6, :cond_1f

    goto :goto_19

    :cond_1f
    move v3, v2

    goto :goto_1a

    :cond_20
    :goto_19
    const/4 v3, 0x1

    :goto_1a
    invoke-virtual {v0, v4, v3, v14}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    goto :goto_1b

    :cond_21
    invoke-virtual {v0, v4, v6, v14}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZI)V

    :goto_1b
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x2

    goto :goto_e

    :cond_22
    return-void
.end method

.method public applyRestrictions(ZZI)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    const/16 v0, 0x1c

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/ZenModeHelper;->applyRestrictions(ZZII)V

    return-void
.end method

.method public applyRestrictions(ZZII)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v2, p4, p3, p2, p0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public applyZenToRingerMode()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManagerInternal;->getRingerModeInternal()I

    move-result v0

    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode_ringer_level"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V

    :cond_3
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    const-string/jumbo v1, "ZenModeHelper"

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioManagerInternal;->setRingerModeInternal(ILjava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final canManageAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;I)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    if-eqz p0, :cond_3

    array-length v1, p0

    move v2, p2

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return p2

    :cond_4
    :goto_1
    return v0
.end method

.method public final cleanUpZenRules()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/ZenModeHelper;->DELETED_RULE_KEPT_FOR:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Instant;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v4

    iget-object v2, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->deleteRulesWithoutOwner(Landroid/util/ArrayMap;)V

    iget-object v2, v4, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->deleteRulesWithoutOwner(Landroid/util/ArrayMap;)V

    iget-object v2, v4, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v3, v4, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    :goto_1
    iget-object v3, v4, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4, v0}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v6, "cleanUpZenRules"

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x5

    const/16 v9, 0x3e8

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    :cond_3
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final deleteRulesWithoutOwner(Landroid/util/ArrayMap;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-wide v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xf731400

    cmp-long v4, v6, v4

    if-gez v4, :cond_0

    :try_start_0
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v3

    const/high16 v5, 0x400000

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final dispatchOnAutomaticRuleStatusChanged(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/notification/ZenModeHelper$Callback;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/notification/ZenModeHelper$Callback;->onAutomaticRuleStatusChanged(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 6

    const-wide v0, 0x10e00000001L

    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v1

    const-wide v2, 0x20b00000002L

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v1, p1, v2, v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, p1, v2, v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    const-wide v2, 0x10b00000005L

    invoke-virtual {v1, p1, v2, v3}, Landroid/app/NotificationManager$Policy;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-wide v1, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 9

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mZenMode="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v1}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mConsolidatedPolicy="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x3d

    if-ge v4, v2, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mConfigs[u="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig;

    const-string v8, "    "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mUser="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    const-string/jumbo v1, "mConfig"

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const-string v6, "    "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mSuppressedEffects="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/notification/ZenModeHelper;->mSuppressedEffects:J

    const-string/jumbo v4, "mPriorityOnlyDndExemptPackages="

    invoke-static {v1, v2, p1, v0, v4}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

    array-length v1, v1

    if-ge v3, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "        "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mPriorityOnlyDndExemptPackages:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mDefaultPhoneApp="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "RepeatCallers.mThresholdMinutes="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    iget v1, v1, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSubscriptions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public evaluateZenModeLocked(ILjava/lang/String;Z)V
    .locals 11

    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ZenModeHelper"

    const-string/jumbo v1, "evaluateZenMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->hashCode()I

    move-result v0

    :goto_0
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v5, 0x1

    if-nez v4, :cond_3

    monitor-exit v3

    move v4, v1

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_3
    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    monitor-exit v3

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v1

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v7}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v8

    if-eqz v8, :cond_5

    iget v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-eq v7, v5, :cond_8

    if-eq v7, v8, :cond_7

    if-eq v7, v9, :cond_6

    move v10, v1

    goto :goto_2

    :cond_6
    move v10, v8

    goto :goto_2

    :cond_7
    move v10, v9

    goto :goto_2

    :cond_8
    move v10, v5

    :goto_2
    if-eq v6, v5, :cond_a

    if-eq v6, v8, :cond_9

    if-eq v6, v9, :cond_b

    move v8, v1

    goto :goto_3

    :cond_9
    move v8, v9

    goto :goto_3

    :cond_a
    move v8, v5

    :cond_b
    :goto_3
    if-le v10, v8, :cond_5

    move v6, v7

    goto :goto_1

    :cond_c
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v6

    :goto_4
    invoke-static {v4, p2}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    iput v4, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-virtual {p0, v4}, Lcom/android/server/notification/ZenModeHelper;->setZenModeSetting(I)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->updateAndApplyConsolidatedPolicyAndDeviceEffects(ILjava/lang/String;)V

    if-eqz p3, :cond_e

    if-ne v4, v2, :cond_d

    if-ne v4, v5, :cond_e

    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {p1}, Landroid/app/NotificationManager$Policy;->hashCode()I

    move-result p1

    if-eq v0, p1, :cond_e

    :cond_d
    move v1, v5

    :cond_e
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    sget p2, Lcom/android/server/notification/ZenModeHelper$H;->$r8$clinit:I

    if-eqz v1, :cond_f

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    :cond_f
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_5
    if-eq v4, v2, :cond_10

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_10
    :goto_6
    return-void

    :goto_7
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getAppsToBypassDndForEnabledForMode()Ljava/util/ArrayList;
    .locals 5

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    const-string/jumbo v4, "com.android.settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/service/notification/ZenPolicy;->getAppsToBypassDnd()Ljava/util/ArrayList;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BixbyRoutine Mode apps="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCallbacks()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/notification/ZenModeHelper$Callback;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getConfig()Landroid/service/notification/ZenModeConfig;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;
    .locals 2

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget v1, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/notification/ZenModeConfig;

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object p0
.end method

.method public final getCurrentInstanceCount(Landroid/content/ComponentName;Landroid/os/UserHandle;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p0

    if-nez p0, :cond_1

    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object p2, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v1

    return v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;
    .locals 0

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    return-object p0
.end method

.method public final getNotificationPolicy(Landroid/os/UserHandle;)Landroid/app/NotificationManager$Policy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final maybePreserveRemovedRule(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isUserModified()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string/jumbo p3, "android"

    iget-object v0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->deletedRuleKey(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->copy()Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-static {p0}, Ljava/time/Instant;->now(Ljava/time/Clock;)Ljava/time/Instant;

    move-result-object p0

    iput-object p0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->deletionInstant:Ljava/time/Instant;

    const/4 p0, 0x0

    iput-object p0, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    iget-object p0, p1, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {p0, p3, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final newImplicitZenRule(Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$ZenRule;
    .locals 4

    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->implicitRuleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    iput-object p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->isImplicitRuleId(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    const-string v2, "Implicit rule is not associated to package yet!"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/server/notification/ZenModeHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    and-int/2addr v3, v2

    if-nez v3, :cond_0

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const v3, 0x1041171

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    if-nez p0, :cond_2

    const-string/jumbo p0, "Unknown"

    iput-object p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    :cond_2
    :goto_0
    const/4 p0, 0x0

    iput p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    const/4 p0, 0x0

    iput-object p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v3, "condition"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v3, "android"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v3, "implicit"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iput-object p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iput-object p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final populateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;IZ)Z
    .locals 14

    move-object/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    iput-wide v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iput-object p1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    iget-object v6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    move v5, v3

    :cond_1
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.hardware.type.watch"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x3

    if-eqz v6, :cond_2

    if-nez v2, :cond_2

    if-ne v1, v8, :cond_2

    iget-boolean v6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v9

    if-ne v6, v9, :cond_2

    iget-object v6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v6, :cond_2

    iget-object v9, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v9, :cond_2

    iget-object v9, v9, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v6, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    iput-object v7, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    :goto_1
    iget-boolean v6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v9

    if-eq v6, v9, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v5

    iput-boolean v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    move v5, v3

    :cond_3
    iget-object v6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v9

    invoke-static {v6, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    move v5, v3

    :cond_4
    iget-boolean v6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->isManualInvocationAllowed()Z

    move-result v9

    if-eq v6, v9, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->isManualInvocationAllowed()Z

    move-result v5

    iput-boolean v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    move v5, v3

    :cond_5
    iget-object v6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getIconResId()I

    move-result v9

    const-string/jumbo v10, "ZenModeHelper"

    const-string/jumbo v11, "Resource name for ID="

    if-nez v9, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x3e8

    if-le v12, v13, :cond_7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " in package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " is too long ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "); ignoring it"

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_7
    move-object v7, p0

    goto :goto_2

    :catch_0
    const-string p0, " not found in package "

    const-string v12, ". Resource IDs may change when the application is upgraded, and the system may not be able to find the correct resource."

    invoke-static {v9, v11, p0, v6, v12}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    invoke-static {p0, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    iput-object v7, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    move v5, v3

    :cond_8
    iget-object p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getTriggerDescription()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getTriggerDescription()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    move v5, v3

    :cond_9
    iget p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getType()I

    move-result v6

    if-eq p0, v6, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getType()I

    move-result p0

    iput p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    move v5, v3

    :cond_a
    iget-object p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    const/4 v6, 0x5

    if-nez v2, :cond_c

    if-eq v1, v8, :cond_c

    if-ne v1, v6, :cond_b

    goto :goto_3

    :cond_b
    iget v7, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    and-int/2addr v7, v3

    if-nez v7, :cond_d

    :cond_c
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-static {v7, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v3

    or-int/2addr v5, v7

    :cond_d
    if-nez v2, :cond_10

    if-eq v1, v8, :cond_10

    if-ne v1, v6, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isUserModified()Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_4

    :cond_f
    return v5

    :cond_10
    :goto_4
    if-ne v1, v8, :cond_11

    move v6, v3

    goto :goto_5

    :cond_11
    move v6, v4

    :goto_5
    if-eqz v6, :cond_12

    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_12

    iget p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    or-int/2addr p0, v3

    iput p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result p0

    invoke-static {p0, v4}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result p0

    iget v7, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-eq v7, p0, :cond_14

    iput p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-eqz v6, :cond_13

    iget p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    or-int/lit8 p0, p0, 0x2

    iput p0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    :cond_13
    move v5, v3

    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    move-object/from16 v7, p3

    invoke-static {v7, v0, p0, v6, v2}, Lcom/android/server/notification/ZenModeHelper;->updatePolicy(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenPolicy;ZZ)Z

    move-result p0

    or-int/2addr p0, v5

    invoke-virtual/range {p2 .. p2}, Landroid/app/AutomaticZenRule;->getDeviceEffects()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v2

    const/4 v5, 0x4

    if-ne v1, v5, :cond_15

    move v1, v3

    goto :goto_6

    :cond_15
    move v1, v4

    :goto_6
    if-nez v2, :cond_16

    goto/16 :goto_8

    :cond_16
    iget-object v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    if-eqz v4, :cond_17

    goto :goto_7

    :cond_17
    new-instance v4, Landroid/service/notification/ZenDeviceEffects$Builder;

    invoke-direct {v4}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v4

    :goto_7
    if-eqz v1, :cond_18

    new-instance v1, Landroid/service/notification/ZenDeviceEffects$Builder;

    invoke-direct {v1, v2}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>(Landroid/service/notification/ZenDeviceEffects;)V

    invoke-virtual {v4}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableAutoBrightness(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTapToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTiltToWake(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldDisableTouch(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldMinimizeRadioUsage(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldMaximizeDoze(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightLight()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setShouldUseNightLight(Z)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/notification/ZenDeviceEffects$Builder;->setExtraEffects(Ljava/util/Set;)Landroid/service/notification/ZenDeviceEffects$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v2

    :cond_18
    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    if-eqz v6, :cond_25

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    invoke-virtual {v4}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v5

    invoke-virtual {v2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisplayGrayscale()Z

    move-result v6

    if-eq v5, v6, :cond_19

    or-int/lit8 v1, v1, 0x1

    :cond_19
    invoke-virtual {v4}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v5

    invoke-virtual {v2}, Landroid/service/notification/ZenDeviceEffects;->shouldSuppressAmbientDisplay()Z

    move-result v6

    if-eq v5, v6, :cond_1a

    or-int/lit8 v1, v1, 0x2

    :cond_1a
    invoke-virtual {v4}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v5

    invoke-virtual {v2}, Landroid/service/notification/ZenDeviceEffects;->shouldDimWallpaper()Z

    move-result v6

    if-eq v5, v6, :cond_1b

    or-int/lit8 v1, v1, 0x4

    :cond_1b
    invoke-virtual {v4}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result v5

    invoke-virtual {v2}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightMode()Z

    move-result v6

    if-eq v5, v6, :cond_1c

    or-int/lit8 v1, v1, 0x8

    :cond_1c
    invoke-virtual {v4}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result v5

    invoke-virtual {v2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableAutoBrightness()Z

    move-result v6

    if-eq v5, v6, :cond_1d

    or-int/lit8 v1, v1, 0x10

    :cond_1d
    invoke-virtual {v4}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result v5

    invoke-virtual {v2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTapToWake()Z

    move-result v6

    if-eq v5, v6, :cond_1e

    or-int/lit8 v1, v1, 0x20

    :cond_1e
    invoke-virtual {v4}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result v5

    invoke-virtual {v2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTiltToWake()Z

    move-result v6

    if-eq v5, v6, :cond_1f

    or-int/lit8 v1, v1, 0x40

    :cond_1f
    invoke-virtual {v4}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result v5

    invoke-virtual {v2}, Landroid/service/notification/ZenDeviceEffects;->shouldDisableTouch()Z

    move-result v6

    if-eq v5, v6, :cond_20

    or-int/lit16 v1, v1, 0x80

    :cond_20
    invoke-virtual {v4}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result v5

    invoke-virtual {v2}, Landroid/service/notification/ZenDeviceEffects;->shouldMinimizeRadioUsage()Z

    move-result v6

    if-eq v5, v6, :cond_21

    or-int/lit16 v1, v1, 0x100

    :cond_21
    invoke-virtual {v4}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result v5

    invoke-virtual {v2}, Landroid/service/notification/ZenDeviceEffects;->shouldMaximizeDoze()Z

    move-result v6

    if-eq v5, v6, :cond_22

    or-int/lit16 v1, v1, 0x200

    :cond_22
    invoke-virtual {v4}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightLight()Z

    move-result v5

    invoke-virtual {v2}, Landroid/service/notification/ZenDeviceEffects;->shouldUseNightLight()Z

    move-result v6

    if-eq v5, v6, :cond_23

    or-int/lit16 v1, v1, 0x800

    :cond_23
    invoke-virtual {v4}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v2}, Landroid/service/notification/ZenDeviceEffects;->getExtraEffects()Ljava/util/Set;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    or-int/lit16 v1, v1, 0x400

    :cond_24
    iput v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    :cond_25
    invoke-virtual {v2, v4}, Landroid/service/notification/ZenDeviceEffects;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    :goto_8
    or-int/2addr p0, v4

    return p0
.end method

.method public final readXml(Lcom/android/modules/utils/TypedXmlPullParser;ZILandroid/app/backup/BackupRestoreEventLogger;)Z
    .locals 9

    invoke-static {p1, p4}, Landroid/service/notification/ZenModeConfig;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/app/backup/BackupRestoreEventLogger;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    const-string/jumbo p1, "readXml"

    const/4 p4, 0x0

    if-eqz v1, :cond_12

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iput p3, v1, Landroid/service/notification/ZenModeConfig;->user:I

    iput-object v0, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    :cond_0
    iget-object p3, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string/jumbo v2, "fixed_delete_mode_rule"

    invoke-static {p3, v2, p4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    const/4 p4, 0x1

    if-nez p3, :cond_3

    const-string/jumbo p3, "ZenModeHelper"

    const-string/jumbo v2, "need Delete ModeRule"

    invoke-static {p3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    sub-int/2addr p3, p4

    :goto_0
    if-ltz p3, :cond_2

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    const-string/jumbo v3, "com.android.settings"

    iget-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "removeAt!! rule id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {v4, v2, v3}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string/jumbo v2, "fixed_delete_mode_rule"

    invoke-static {p3, v2, p4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    iget-object p3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    sub-int/2addr p3, p4

    :goto_1
    if-ltz p3, :cond_6

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    const-string/jumbo v3, "SCHEDULED_DEFAULT_RULE"

    iget-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "EVENTS_DEFAULT_RULE"

    iget-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "removeAt!! rule id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-static {v4, v2, v3}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104115f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    const-string/jumbo v2, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "change default rule name= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_6
    iget-object p3, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getDefaultRuleIds()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/util/ArrayMap;->containsAll(Ljava/util/Collection;)Z

    move-result p3

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-lez v4, :cond_a

    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, p4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz p2, :cond_8

    iput-object v0, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-virtual {v6}, Landroid/service/notification/ZenModeConfig$ZenRule;->resetConditionOverride()V

    iput-wide v2, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    :cond_8
    iget-boolean v7, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    xor-int/2addr v7, p4

    and-int/2addr v5, v7

    iget v7, v1, Landroid/service/notification/ZenModeConfig;->version:I

    const/16 v8, 0xb

    if-ge v7, v8, :cond_7

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v7

    iget-object v8, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-nez v8, :cond_9

    iput-object v7, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    goto :goto_3

    :cond_9
    invoke-virtual {v7, v8}, Landroid/service/notification/ZenPolicy;->overwrittenWith(Landroid/service/notification/ZenPolicy;)Landroid/service/notification/ZenPolicy;

    move-result-object v7

    iput-object v7, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    goto :goto_3

    :cond_a
    move v5, p4

    :cond_b
    if-nez p3, :cond_e

    if-eqz v5, :cond_e

    if-nez p2, :cond_c

    iget p3, v1, Landroid/service/notification/ZenModeConfig;->version:I

    const/16 v0, 0x8

    if-ge p3, v0, :cond_e

    :cond_c
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/service/notification/ZenModeConfig$ZenRule;->copy()Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object p3

    invoke-virtual {v0, v2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_d
    const-string/jumbo p1, "readXml, reset to default rules"

    :cond_e
    move-object v3, p1

    if-eqz p2, :cond_f

    iget-object p1, v1, Landroid/service/notification/ZenModeConfig;->deletedRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    :cond_f
    sget-boolean p1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz p1, :cond_10

    const-string/jumbo p1, "ZenModeHelper"

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter p1

    if-eqz p2, :cond_11

    const/4 p4, 0x6

    :cond_11
    move v2, p4

    const/4 v4, 0x0

    const/16 v6, 0x3e8

    const/4 v5, 0x1

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    move-result p0

    monitor-exit p1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_12
    return p4
.end method

.method public final ruleToProtoLocked(ILandroid/service/notification/ZenModeConfig$ZenRule;ZLjava/util/List;)V
    .locals 12

    iget-object v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    const-string v4, ""

    if-nez v3, :cond_0

    move-object v3, v4

    :cond_0
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getDefaultRuleIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v3, v4

    :cond_1
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-object v5, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v5, :cond_3

    move-object v4, v5

    :cond_3
    iget v5, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    if-eqz p3, :cond_4

    const-string/jumbo v3, "MANUAL_RULE"

    const/16 v5, 0x3e7

    :cond_4
    move v11, v5

    move-object v5, v3

    const/4 v3, 0x0

    new-array v3, v3, [B

    iget-object v6, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/service/notification/ZenPolicy;->toProto()[B

    move-result-object v3

    :cond_5
    move-object v7, v3

    iget-boolean v3, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iget v6, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const-string/jumbo v8, "android"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v0, 0x3e8

    goto :goto_1

    :cond_6
    const-string/jumbo v8, "|"

    invoke-static {p1, v4, v8}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_7

    :try_start_0
    iget-object v9, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    iget-object v10, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v4, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mRulesUidCache:Landroid/util/ArrayMap;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v8, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    iget v8, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->userModifiedFields:I

    iget v9, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicyUserModifiedFields:I

    iget v10, p2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffectsUserModifiedFields:I

    move v4, v6

    move v6, v0

    const/16 v0, 0x2764

    move v2, v3

    const/4 v3, 0x0

    move v1, p1

    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZZILjava/lang/String;I[BIIII)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setAutomaticZenRuleStateLocked(Landroid/service/notification/ZenModeConfig;Ljava/util/List;Landroid/service/notification/Condition;ILjava/lang/String;I)V
    .locals 7

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p3, Landroid/service/notification/Condition;->source:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 p4, 0x7

    :cond_1
    move v2, p4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object p3, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-virtual {p4}, Landroid/service/notification/ZenModeConfig$ZenRule;->reconsiderConditionOverride()V

    iget-object v4, p4, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    move-object p0, v0

    move-object p1, v1

    move-object p5, v3

    move p6, v6

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z
    .locals 12

    const-string v2, "Invalid config in setConfigLocked; "

    const-string/jumbo v3, "setConfigLocked reason="

    const-string/jumbo v4, "setConfigLocked: store config for user "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    const/4 v9, 0x0

    if-eqz p1, :cond_6

    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isValid()Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v2, p1, Landroid/service/notification/ZenModeConfig;->user:I

    iget v5, p0, Lcom/android/server/notification/ZenModeHelper;->mUser:I

    const/4 v10, 0x1

    if-eq v2, v5, :cond_2

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget v3, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v0, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    :goto_0
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_2
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    const/4 v11, 0x0

    invoke-virtual {v2, p1, v11, v9}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Z)V

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigs:Landroid/util/SparseArray;

    iget v5, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-virtual {v4, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    move-object v5, p1

    move v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/android/server/notification/ZenLog;->traceConfig(ILjava/lang/String;Landroid/content/ComponentName;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;I)V

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v6

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v11

    :goto_1
    invoke-static {v11, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->updateConfigAndZenModeLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;ZI)V

    if-nez v11, :cond_5

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v9

    :goto_2
    if-ge v4, v3, :cond_5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/notification/ZenModeHelper$Callback;

    invoke-virtual {v5, v6}, Lcom/android/server/notification/ZenModeHelper$Callback;->onPolicyChanged(Landroid/app/NotificationManager$Policy;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConditions:Lcom/android/server/notification/ZenModeConditions;

    move-object/from16 v3, p4

    invoke-virtual {v0, p1, v3, v10}, Lcom/android/server/notification/ZenModeConditions;->evaluateConfig(Landroid/service/notification/ZenModeConfig;Landroid/content/ComponentName;Z)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0

    :cond_6
    :goto_3
    const-string/jumbo v0, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :goto_4
    :try_start_9
    const-string/jumbo v1, "ZenModeHelper"

    const-string v2, "Invalid rule in config"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :goto_5
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final setManualZenMode(Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 4

    const-string/jumbo v0, "setManualZenMode "

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-nez p1, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    :cond_0
    invoke-static {p2}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    sget-boolean v2, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " conditionId="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " reason="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " setRingerMode="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-nez p2, :cond_5

    const/4 p2, 0x0

    iput-object p2, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object p2, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p3}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result p6

    if-eqz p6, :cond_3

    const/4 p6, 0x2

    invoke-virtual {p3, p6}, Landroid/service/notification/ZenModeConfig$ZenRule;->setConditionOverride(I)V

    goto :goto_0

    :cond_4
    :goto_1
    move p3, p4

    move-object p4, p5

    goto :goto_2

    :cond_5
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iput p2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    iput-object p3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iput-object p6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    iput-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    goto :goto_1

    :goto_2
    const/4 p5, 0x0

    move-object p2, p1

    move p6, p7

    move p7, p8

    move-object p1, p0

    invoke-virtual/range {p1 .. p7}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setNotificationPolicy(Landroid/os/UserHandle;Landroid/app/NotificationManager$Policy;II)V
    .locals 9

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getConfigLocked(Landroid/os/UserHandle;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    if-nez p1, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p1

    invoke-static {p1}, Landroid/service/notification/ZenAdapters;->notificationPolicyToZenPolicy(Landroid/app/NotificationManager$Policy;)Landroid/service/notification/ZenPolicy;

    move-result-object p1

    invoke-static {p2}, Landroid/service/notification/ZenAdapters;->notificationPolicyToZenPolicy(Landroid/app/NotificationManager$Policy;)Landroid/service/notification/ZenPolicy;

    move-result-object v0

    invoke-virtual {v3, p2}, Landroid/service/notification/ZenModeConfig;->applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    invoke-virtual {p1, v0}, Landroid/service/notification/ZenPolicy;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v2}, Landroid/service/notification/SystemZenRules;->isSystemOwnedRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_3

    iget v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-ne v4, v5, :cond_3

    iget-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Landroid/service/notification/ZenPolicy;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/service/notification/ZenPolicy;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iput-object v0, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    goto :goto_0

    :cond_3
    invoke-static {v2}, Landroid/service/notification/SystemZenRules;->isSystemOwnedRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-ne v4, v5, :cond_1

    const-string v4, "EVERY_NIGHT_DEFAULT_RULE"

    iget-object v5, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_4
    iput-object v0, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    goto :goto_0

    :cond_5
    const-string/jumbo v5, "setNotificationPolicy"

    const/4 v7, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setConfigLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;Landroid/content/ComponentName;ZI)Z

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setPreviousRingerModeSetting(Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string/jumbo v0, "zen_mode_ringer_level"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setZenModeSetting(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, -0x1

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string/jumbo p1, "updated setting"

    invoke-static {p0, p1}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "ZenModeHelper"

    return-object p0
.end method

.method public final updateAndApplyConsolidatedPolicyAndDeviceEffects(ILjava/lang/String;)V
    .locals 9

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    new-instance v2, Landroid/service/notification/ZenPolicy;

    invoke-direct {v2}, Landroid/service/notification/ZenPolicy;-><init>()V

    new-instance v3, Landroid/service/notification/ZenDeviceEffects$Builder;

    invoke-direct {v3}, Landroid/service/notification/ZenDeviceEffects$Builder;-><init>()V

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v5, v4, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v4, v2, v5, v0}, Lcom/android/server/notification/ZenModeHelper;->applyCustomPolicy(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v3, v4}, Landroid/service/notification/ZenDeviceEffects$Builder;->add(Landroid/service/notification/ZenDeviceEffects;)Landroid/service/notification/ZenDeviceEffects$Builder;

    :cond_1
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v7, v2, v5, v6}, Lcom/android/server/notification/ZenModeHelper;->applyCustomPolicy(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenPolicy;Landroid/service/notification/ZenModeConfig$ZenRule;Z)V

    :cond_3
    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {v3, v5}, Landroid/service/notification/ZenDeviceEffects$Builder;->add(Landroid/service/notification/ZenDeviceEffects;)Landroid/service/notification/ZenDeviceEffects$Builder;

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4, v2}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iput-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_5

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/2addr v7, v0

    check-cast v8, Lcom/android/server/notification/ZenModeHelper$Callback;

    invoke-virtual {v8, v2}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConsolidatedPolicyChanged(Landroid/app/NotificationManager$Policy;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    sget-object v2, Lcom/android/server/notification/ZenLog;->STATE_CHANGES:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x11

    invoke-static {v0, p2}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    :cond_6
    invoke-virtual {v3}, Landroid/service/notification/ZenDeviceEffects$Builder;->build()Landroid/service/notification/ZenDeviceEffects;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {p2, v0}, Landroid/service/notification/ZenDeviceEffects;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Lcom/android/server/notification/ZenModeHelper$H;

    sget p2, Lcom/android/server/notification/ZenModeHelper$H;->$r8$clinit:I

    const/4 p2, 0x6

    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, p2, p1, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_7
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateConfigAndZenModeLocked(Landroid/service/notification/ZenModeConfig;ILjava/lang/String;ZI)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/android/server/notification/ZenModeHelper;->mFlagResolver:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    sget-object v5, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->LOG_DND_STATE_EVENTS:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    invoke-interface {v4, v5}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->isEnabled(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)Z

    move-result v4

    iget v5, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v6, v0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/app/NotificationManager$Policy;->copy()Landroid/app/NotificationManager$Policy;

    move-result-object v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1, v9}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v13, 0x1

    if-nez v9, :cond_9

    if-eq v2, v13, :cond_7

    iget-object v9, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v8, v8, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    iget-object v12, v15, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v8, :cond_6

    iget-boolean v12, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iget-boolean v10, v15, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eq v12, v10, :cond_3

    invoke-virtual {v15}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v10

    iget v12, v1, Landroid/service/notification/ZenModeConfig;->user:I

    iget-object v11, v15, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    iget-boolean v13, v15, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    goto :goto_3

    :cond_2
    const/4 v13, 0x2

    :goto_3
    invoke-virtual {v0, v12, v13, v10, v11}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnAutomaticRuleStatusChanged(IILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v8}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v8

    invoke-virtual {v15}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v10

    if-eq v8, v10, :cond_6

    invoke-virtual {v15}, Landroid/service/notification/ZenModeConfig$ZenRule;->getPkg()Ljava/lang/String;

    move-result-object v8

    iget v10, v1, Landroid/service/notification/ZenModeConfig;->user:I

    iget-object v11, v15, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v15}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v12

    const-wide/32 v14, 0x1265fc51

    invoke-static {v10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v13

    invoke-static {v14, v15, v8, v13}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v13

    if-eqz v13, :cond_5

    if-eqz v12, :cond_4

    const/4 v12, 0x4

    goto :goto_4

    :cond_4
    const/4 v12, 0x5

    :goto_4
    invoke-virtual {v0, v10, v12, v8, v11}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnAutomaticRuleStatusChanged(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    const/4 v13, -0x1

    invoke-virtual {v0, v10, v13, v8, v11}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnAutomaticRuleStatusChanged(IILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_5
    const/4 v13, 0x1

    goto :goto_2

    :cond_7
    iput-object v1, v0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v9, :cond_8

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/server/notification/ZenModeHelper$Callback;

    invoke-virtual {v11}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConfigChanged()V

    goto :goto_6

    :cond_8
    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/ZenModeHelper;->updateAndApplyConsolidatedPolicyAndDeviceEffects(ILjava/lang/String;)V

    :cond_9
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "zen_mode_config_etag"

    invoke-static {v8, v9, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move/from16 v1, p4

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/notification/ZenModeHelper;->evaluateZenModeLocked(ILjava/lang/String;Z)V

    if-eqz v4, :cond_4c

    iget v1, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    iget-object v3, v0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v4, v0, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :goto_7
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/app/NotificationManager$Policy;->copy()Landroid/app/NotificationManager$Policy;

    move-result-object v4

    goto :goto_8

    :cond_b
    const/4 v4, 0x0

    :goto_8
    iget-object v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenModeEventLogger:Lcom/android/server/notification/ZenModeEventLogger;

    iget-object v8, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    iput v5, v8, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    iput v1, v8, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    iput-object v6, v8, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    iput-object v3, v8, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    iput-object v7, v8, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevPolicy:Landroid/app/NotificationManager$Policy;

    iput-object v4, v8, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    move/from16 v1, p5

    iput v1, v8, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mCallingUid:I

    iput v2, v8, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    invoke-virtual {v8}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->shouldLogChanges()Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getChangedRuleType()I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x3

    const/4 v4, 0x6

    const-string/jumbo v5, "ZenModeEventLogger"

    const/4 v6, 0x1

    if-ne v1, v6, :cond_13

    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    iget v7, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    if-eq v7, v6, :cond_d

    const/4 v6, 0x2

    if-eq v7, v6, :cond_d

    const/4 v6, 0x5

    if-eq v7, v6, :cond_d

    if-ne v7, v4, :cond_c

    goto :goto_a

    :cond_c
    :goto_9
    const/4 v4, 0x0

    const/4 v7, 0x2

    goto/16 :goto_16

    :cond_d
    :goto_a
    iget-object v1, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v1, :cond_f

    iget-object v6, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v6, :cond_e

    goto :goto_b

    :cond_e
    iget-object v6, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    goto :goto_c

    :cond_f
    :goto_b
    const/4 v6, 0x0

    :goto_c
    if-nez v6, :cond_10

    goto :goto_9

    :cond_10
    if-eqz v1, :cond_12

    iget-object v6, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v6, :cond_11

    goto :goto_d

    :cond_11
    iget-object v6, v6, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    goto :goto_e

    :cond_12
    :goto_d
    const/4 v6, 0x0

    :goto_e
    iget v1, v1, Landroid/service/notification/ZenModeConfig;->user:I

    move/from16 v17, v1

    goto :goto_f

    :cond_13
    const/4 v6, 0x0

    const/16 v17, -0x1

    :goto_f
    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getChangedRuleType()I

    move-result v1

    const/4 v7, 0x2

    if-ne v1, v7, :cond_1f

    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    iget v6, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    if-eq v6, v3, :cond_14

    if-ne v6, v2, :cond_15

    :cond_14
    :goto_10
    const/4 v4, 0x0

    goto/16 :goto_16

    :cond_15
    const/4 v8, 0x1

    if-eq v6, v8, :cond_16

    if-eq v6, v7, :cond_16

    const/4 v8, 0x5

    if-eq v6, v8, :cond_16

    if-ne v6, v4, :cond_14

    :cond_16
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    new-instance v6, Landroid/service/notification/ZenModeDiff$ConfigDiff;

    iget-object v8, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    invoke-direct {v6, v8, v1}, Landroid/service/notification/ZenModeDiff$ConfigDiff;-><init>(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    invoke-virtual {v6}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->hasDiff()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_11

    :cond_17
    invoke-virtual {v6}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->getAllAutomaticRuleDiffs()Landroid/util/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_18

    move-object v4, v1

    :cond_18
    :goto_11
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v6, 0x1

    if-eq v1, v6, :cond_19

    goto :goto_10

    :cond_19
    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeDiff$RuleDiff;

    iget-object v6, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4}, Landroid/service/notification/ZenModeDiff$RuleDiff;->wasRemoved()Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v6, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    :cond_1a
    if-nez v6, :cond_1b

    const/4 v4, 0x0

    goto :goto_12

    :cond_1b
    iget-object v1, v6, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    const/4 v4, 0x0

    invoke-virtual {v1, v8, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v1, :cond_1d

    iget-object v8, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v8, :cond_1c

    new-instance v8, Landroid/util/Pair;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v6, v6, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v8, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    :cond_1c
    iget-object v8, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_1d

    new-instance v8, Landroid/util/Pair;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v6, v6, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v8, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    :cond_1d
    :goto_12
    move-object v8, v4

    :goto_13
    if-eqz v8, :cond_21

    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v6, "android"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_16

    :cond_1e
    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    :goto_14
    move/from16 v1, v17

    const/4 v13, -0x1

    goto :goto_15

    :cond_1f
    const/4 v4, 0x0

    goto :goto_14

    :goto_15
    if-eq v1, v13, :cond_21

    if-nez v6, :cond_20

    goto :goto_16

    :cond_20
    :try_start_0
    iget-object v8, v0, Lcom/android/server/notification/ZenModeEventLogger;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v6, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v8

    iget-object v9, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    iput v8, v9, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mCallingUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_16

    :catch_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "unable to find package name "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_16
    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->shouldLogChanges()Z

    move-result v6

    if-nez v6, :cond_22

    const-string/jumbo v6, "attempt to get DNDStateChanged fields without shouldLog=true"

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    iget v6, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    iget v8, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    if-ne v6, v8, :cond_23

    goto :goto_17

    :cond_23
    if-eqz v6, :cond_30

    if-nez v8, :cond_24

    goto/16 :goto_20

    :cond_24
    :goto_17
    if-nez v8, :cond_2a

    iget-object v6, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevPolicy:Landroid/app/NotificationManager$Policy;

    if-eqz v6, :cond_25

    iget-object v8, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_25

    goto :goto_1b

    :cond_25
    iget-object v6, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevPolicy:Landroid/app/NotificationManager$Policy;

    if-eqz v6, :cond_27

    iget v6, v6, Landroid/app/NotificationManager$Policy;->state:I

    const/16 v16, 0x1

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_26

    move/from16 v6, v16

    goto :goto_19

    :cond_26
    :goto_18
    const/4 v6, 0x0

    goto :goto_19

    :cond_27
    const/16 v16, 0x1

    goto :goto_18

    :goto_19
    iget-object v1, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    if-eqz v1, :cond_28

    iget v1, v1, Landroid/app/NotificationManager$Policy;->state:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    goto :goto_1a

    :cond_28
    const/4 v1, 0x0

    :goto_1a
    if-eq v6, v1, :cond_29

    :goto_1b
    const-string v1, "Detected policy diff even though DND is OFF and not toggled"

    invoke-static {v5, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    sget-object v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_ACTIVE_RULES_CHANGED:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    goto :goto_21

    :cond_2a
    iget-object v6, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevPolicy:Landroid/app/NotificationManager$Policy;

    if-eqz v6, :cond_2b

    iget-object v8, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    goto :goto_1f

    :cond_2b
    iget-object v6, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevPolicy:Landroid/app/NotificationManager$Policy;

    if-eqz v6, :cond_2d

    iget v6, v6, Landroid/app/NotificationManager$Policy;->state:I

    const/16 v16, 0x1

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2c

    move/from16 v6, v16

    goto :goto_1d

    :cond_2c
    :goto_1c
    const/4 v6, 0x0

    goto :goto_1d

    :cond_2d
    const/16 v16, 0x1

    goto :goto_1c

    :goto_1d
    iget-object v1, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    if-eqz v1, :cond_2e

    iget v1, v1, Landroid/app/NotificationManager$Policy;->state:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_1e

    :cond_2e
    const/4 v1, 0x0

    :goto_1e
    if-eq v6, v1, :cond_2f

    :goto_1f
    sget-object v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_POLICY_CHANGED:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    goto :goto_21

    :cond_2f
    sget-object v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_ACTIVE_RULES_CHANGED:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    goto :goto_21

    :cond_30
    :goto_20
    if-nez v6, :cond_31

    sget-object v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_TURNED_ON:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    goto :goto_21

    :cond_31
    sget-object v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_TURNED_OFF:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    :goto_21
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->getId()I

    move-result v18

    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    iget v6, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    iget v8, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getChangedRuleType()I

    move-result v21

    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    iget-object v1, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->activeRulesList(Landroid/service/notification/ZenModeConfig;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v22

    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    iget v9, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    if-eq v9, v3, :cond_33

    if-ne v9, v2, :cond_32

    goto :goto_22

    :cond_32
    const/16 v23, 0x0

    goto :goto_23

    :cond_33
    :goto_22
    const/16 v23, 0x1

    :goto_23
    iget v2, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mCallingUid:I

    iget v3, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    if-nez v3, :cond_34

    move-object/from16 v25, v4

    goto/16 :goto_36

    :cond_34
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v4, v3}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v9, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    if-eqz v9, :cond_46

    invoke-virtual {v9}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result v5

    if-eqz v5, :cond_35

    const/4 v5, 0x1

    goto :goto_24

    :cond_35
    move v5, v7

    :goto_24
    const-wide v9, 0x10e00000001L

    invoke-virtual {v4, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v5, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v5}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result v5

    if-eqz v5, :cond_36

    const/4 v5, 0x1

    goto :goto_25

    :cond_36
    move v5, v7

    :goto_25
    const-wide v9, 0x10e00000002L

    invoke-virtual {v4, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v5, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v5}, Landroid/app/NotificationManager$Policy;->allowMessages()Z

    move-result v5

    if-eqz v5, :cond_37

    const/4 v5, 0x1

    goto :goto_26

    :cond_37
    move v5, v7

    :goto_26
    const-wide v9, 0x10e00000003L

    invoke-virtual {v4, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v5, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v5}, Landroid/app/NotificationManager$Policy;->allowConversations()Z

    move-result v5

    if-eqz v5, :cond_38

    const/4 v5, 0x1

    goto :goto_27

    :cond_38
    move v5, v7

    :goto_27
    const-wide v9, 0x10e00000004L

    invoke-virtual {v4, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v5, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v5}, Landroid/app/NotificationManager$Policy;->allowReminders()Z

    move-result v5

    if-eqz v5, :cond_39

    const/4 v5, 0x1

    goto :goto_28

    :cond_39
    move v5, v7

    :goto_28
    const-wide v9, 0x10e00000005L

    invoke-virtual {v4, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v5, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v5}, Landroid/app/NotificationManager$Policy;->allowEvents()Z

    move-result v5

    if-eqz v5, :cond_3a

    const/4 v5, 0x1

    goto :goto_29

    :cond_3a
    move v5, v7

    :goto_29
    const-wide v9, 0x10e00000006L

    invoke-virtual {v4, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v5, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v5}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result v5

    if-eqz v5, :cond_3b

    const/4 v5, 0x1

    goto :goto_2a

    :cond_3b
    move v5, v7

    :goto_2a
    const-wide v9, 0x10e00000007L

    invoke-virtual {v4, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v5, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v5}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result v5

    if-eqz v5, :cond_3c

    const/4 v5, 0x1

    goto :goto_2b

    :cond_3c
    move v5, v7

    :goto_2b
    const-wide v9, 0x10e00000008L

    invoke-virtual {v4, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v5, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v5}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result v5

    if-eqz v5, :cond_3d

    const/4 v5, 0x1

    goto :goto_2c

    :cond_3d
    move v5, v7

    :goto_2c
    const-wide v9, 0x10e00000009L

    invoke-virtual {v4, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v5, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v5}, Landroid/app/NotificationManager$Policy;->showFullScreenIntents()Z

    move-result v5

    if-eqz v5, :cond_3e

    const/4 v5, 0x1

    goto :goto_2d

    :cond_3e
    move v5, v7

    :goto_2d
    const-wide v9, 0x10e0000000aL

    invoke-virtual {v4, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v5, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v5}, Landroid/app/NotificationManager$Policy;->showLights()Z

    move-result v5

    if-eqz v5, :cond_3f

    const/4 v5, 0x1

    goto :goto_2e

    :cond_3f
    move v5, v7

    :goto_2e
    const-wide v9, 0x10e0000000bL

    invoke-virtual {v4, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v5, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v5}, Landroid/app/NotificationManager$Policy;->showPeeking()Z

    move-result v5

    if-eqz v5, :cond_40

    const/4 v5, 0x1

    goto :goto_2f

    :cond_40
    move v5, v7

    :goto_2f
    const-wide v9, 0x10e0000000cL

    invoke-virtual {v4, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v5, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v5}, Landroid/app/NotificationManager$Policy;->showStatusBarIcons()Z

    move-result v5

    if-eqz v5, :cond_41

    const/4 v5, 0x1

    goto :goto_30

    :cond_41
    move v5, v7

    :goto_30
    const-wide v9, 0x10e0000000dL

    invoke-virtual {v4, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v5, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v5}, Landroid/app/NotificationManager$Policy;->showBadges()Z

    move-result v5

    if-eqz v5, :cond_42

    const/4 v5, 0x1

    goto :goto_31

    :cond_42
    move v5, v7

    :goto_31
    const-wide v9, 0x10e0000000eL

    invoke-virtual {v4, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v5, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v5}, Landroid/app/NotificationManager$Policy;->showAmbient()Z

    move-result v5

    if-eqz v5, :cond_43

    const/4 v5, 0x1

    goto :goto_32

    :cond_43
    move v5, v7

    :goto_32
    const-wide v9, 0x10e0000000fL

    invoke-virtual {v4, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v5, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v5}, Landroid/app/NotificationManager$Policy;->showInNotificationList()Z

    move-result v5

    if-eqz v5, :cond_44

    const/4 v5, 0x1

    goto :goto_33

    :cond_44
    move v5, v7

    :goto_33
    const-wide v9, 0x10e00000010L

    invoke-virtual {v4, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v5, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v5}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result v5

    invoke-static {v5}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    move-result v5

    const-wide v9, 0x10e00000011L

    invoke-virtual {v4, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v5, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v5}, Landroid/app/NotificationManager$Policy;->allowMessagesFrom()I

    move-result v5

    invoke-static {v5}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    move-result v5

    const-wide v9, 0x10e00000012L

    invoke-virtual {v4, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v5, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v5}, Landroid/app/NotificationManager$Policy;->allowConversationsFrom()I

    move-result v5

    const-wide v9, 0x10e00000013L

    invoke-virtual {v4, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v1, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v1}, Landroid/app/NotificationManager$Policy;->allowPriorityChannels()Z

    move-result v1

    if-eqz v1, :cond_45

    const/4 v11, 0x1

    goto :goto_34

    :cond_45
    move v11, v7

    :goto_34
    const-wide v9, 0x10e00000014L

    invoke-virtual {v4, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_35

    :cond_46
    const-string/jumbo v1, "attempted to write zen mode log event with null policy"

    invoke-static {v5, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    invoke-virtual {v4}, Landroid/util/proto/ProtoOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object/from16 v25, v1

    :goto_36
    iget-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    iget-object v3, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    if-eqz v3, :cond_47

    iget v3, v3, Landroid/app/NotificationManager$Policy;->state:I

    const/16 v16, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_47

    move/from16 v26, v16

    goto :goto_37

    :cond_47
    const/16 v26, 0x0

    :goto_37
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->activeRulesList(Landroid/service/notification/ZenModeConfig;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_49

    const/4 v4, 0x0

    new-array v1, v4, [I

    :cond_48
    move-object/from16 v27, v1

    goto :goto_3a

    :cond_49
    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v7, v4

    :goto_38
    if-ge v7, v5, :cond_4a

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v7, v7, 0x1

    check-cast v9, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v9, v9, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_4a
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    move v12, v4

    :goto_39
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v12, v4, :cond_48

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_39

    :goto_3a
    const/16 v28, 0x0

    const/16 v17, 0x291

    move/from16 v24, v2

    move/from16 v19, v6

    move/from16 v20, v8

    invoke-static/range {v17 .. v28}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIZI[BZ[II)V

    :cond_4b
    new-instance v1, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    invoke-direct {v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;-><init>()V

    iput-object v1, v0, Lcom/android/server/notification/ZenModeEventLogger;->mChangeState:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;

    :cond_4c
    return-void
.end method

.method public final zenRuleToAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;
    .locals 5

    new-instance v0, Landroid/app/AutomaticZenRule$Builder;

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/app/AutomaticZenRule$Builder;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->allowManualInvocation:Z

    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule$Builder;->setManualInvocationAllowed(Z)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule$Builder;->setPackage(Ljava/lang/String;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    iget-wide v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    invoke-virtual {v0, v1, v2}, Landroid/app/AutomaticZenRule$Builder;->setCreationTime(J)Landroid/app/AutomaticZenRule$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->pkg:Ljava/lang/String;

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->iconResName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo v1, "ZenModeHelper"

    const-string/jumbo v2, "cannot load rule icon for pkg"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v0, v4}, Landroid/app/AutomaticZenRule$Builder;->setIconResId(I)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    iget v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setType(I)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setZenPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setDeviceEffects(Landroid/service/notification/ZenDeviceEffects;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    iget-boolean v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setEnabled(Z)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    iget v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setInterruptionFilter(I)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setOwner(Landroid/content/ComponentName;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Landroid/app/AutomaticZenRule$Builder;->setConfigurationActivity(Landroid/content/ComponentName;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->triggerDescription:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/app/AutomaticZenRule$Builder;->setTriggerDescription(Ljava/lang/String;)Landroid/app/AutomaticZenRule$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AutomaticZenRule$Builder;->build()Landroid/app/AutomaticZenRule;

    move-result-object p0

    return-object p0
.end method
