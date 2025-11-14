.class public final Lcom/android/server/notification/PreferencesHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/notification/RankingConfig;


# static fields
.field static final DEFAULT_BUBBLE_PREFERENCE:I = 0x0

.field static final DEFAULT_HIDE_SILENT_STATUS_BAR_ICONS:Z = false

.field static final NOTIFICATION_CHANNEL_COUNT_LIMIT:I = 0x1388

.field static final NOTIFICATION_CHANNEL_GROUP_COUNT_LIMIT:I = 0x1770

.field public static final PREF_GRACE_PERIOD_MS:J

.field static final TAG_RANKING:Ljava/lang/String; = "ranking"

.field static final UNKNOWN_UID:I = -0x2710


# instance fields
.field public final XML_VERSION:I

.field public final mAllowList:Ljava/util/HashSet;

.field public final mAppOps:Landroid/app/AppOpsManager;

.field public mBadgingEnabled:Landroid/util/SparseBooleanArray;

.field public final mBlockList:Ljava/util/List;

.field public mBubblesEnabled:Landroid/util/SparseBooleanArray;

.field public final mClock:Ljava/time/Clock;

.field public final mContext:Landroid/content/Context;

.field public final mCscConfigNoneBlockableList:Ljava/util/List;

.field public mCurrentUserHasPriorityChannels:Z

.field public final mDeviceFirstApiLevel:I

.field public mHideContentXmlVersion:I

.field public mHideSilentStatusBarIcons:Z

.field public mIsMediaNotificationFilteringEnabled:Z

.field public final mLock:Ljava/lang/Object;

.field public mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

.field public mLockScreenPrivateNotificationsValue:I

.field public mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

.field public final mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

.field public final mOemLockedApps:Ljava/util/Map;

.field public final mOngoingActivityAllowedAppList:Landroid/util/ArrayMap;

.field public final mPackagePreferences:Landroid/util/ArrayMap;

.field public final mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

.field public final mPermissionManager:Landroid/permission/PermissionManager;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field public final mRestoredWithoutUids:Landroid/util/ArrayMap;

.field public final mShowReviewPermissionsNotification:Z

.field public final mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/notification/PreferencesHelper;->PREF_GRACE_PERIOD_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/PermissionHelper;Landroid/permission/PermissionManager;Lcom/android/server/notification/NotificationChannelLogger;Landroid/app/AppOpsManager;ZLjava/time/Clock;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mHideSilentStatusBarIcons:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mOemLockedApps:Ljava/util/Map;

    const/16 v1, -0x3e8

    iput v1, p0, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotificationsValue:I

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mAllowList:Ljava/util/HashSet;

    iput v0, p0, Lcom/android/server/notification/PreferencesHelper;->mHideContentXmlVersion:I

    const-string/jumbo v1, "ro.product.first_api_level"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/notification/PreferencesHelper;->mDeviceFirstApiLevel:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mOngoingActivityAllowedAppList:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBlockList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mCscConfigNoneBlockableList:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iput-object p3, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    iput-object p5, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    iput-object p6, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionManager:Landroid/permission/PermissionManager;

    iput-object p2, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    iput-object p7, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    iput-object p8, p0, Lcom/android/server/notification/PreferencesHelper;->mAppOps:Landroid/app/AppOpsManager;

    iput-boolean p9, p0, Lcom/android/server/notification/PreferencesHelper;->mShowReviewPermissionsNotification:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110223

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    iput-object p10, p0, Lcom/android/server/notification/PreferencesHelper;->mClock:Ljava/time/Clock;

    const/4 p1, 0x5

    iput p1, p0, Lcom/android/server/notification/PreferencesHelper;->XML_VERSION:I

    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateBadgingEnabled()V

    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateBubblesEnabled()V

    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateMediaNotificationFilteringEnabled()V

    return-void
.end method

.method public static dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)Lorg/json/JSONArray;
    .registers 7

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_14

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_3c
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_44
    :goto_44
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_6f
    const-string/jumbo v4, "userId"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "packageName"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7b
    .catch Lorg/json/JSONException; {:try_start_6f .. :try_end_7b} :catch_7c

    goto :goto_80

    :catch_7c
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_80
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_44

    :cond_84
    return-object v0
.end method

.method public static dumpPackagePreferencesLocked(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    :goto_e
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_13
    const-wide v10, 0x10500000002L

    const-wide v12, 0x10900000001L

    if-ge v6, v4, :cond_d4

    move-object/from16 v14, p4

    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget-object v5, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d0

    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    iget-object v9, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget v9, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v0, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    new-instance v9, Landroid/util/Pair;

    iget v10, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v2, :cond_71

    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_71

    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_69

    const/4 v5, 0x3

    :goto_63
    const-wide v10, 0x11100000003L

    goto :goto_6b

    :cond_69
    const/4 v5, 0x0

    goto :goto_63

    :goto_6b
    invoke-virtual {v0, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-interface {v3, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_71
    const-wide v9, 0x10500000004L

    iget v5, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-virtual {v0, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x11100000005L

    iget v5, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {v0, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v9, 0x10800000006L

    iget-boolean v5, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-virtual {v0, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v5, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_99
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ae

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannel;

    const-wide v10, 0x20b00000007L

    invoke-virtual {v9, v0, v10, v11}, Landroid/app/NotificationChannel;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_99

    :cond_ae
    iget-object v5, v15, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_cd

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannelGroup;

    const-wide v10, 0x20b00000008L

    invoke-virtual {v9, v0, v10, v11}, Landroid/app/NotificationChannelGroup;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_b8

    :cond_cd
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_d0
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_13

    :cond_d4
    if-eqz v3, :cond_12c

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_da
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_126

    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    iget-object v8, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v12, v13, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v10, v11, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_11d

    const/4 v4, 0x3

    :goto_117
    const-wide v8, 0x11100000003L

    goto :goto_11f

    :cond_11d
    const/4 v4, 0x0

    goto :goto_117

    :goto_11f
    invoke-virtual {v0, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_da

    :cond_126
    const-wide v8, 0x11100000003L

    goto :goto_da

    :cond_12c
    return-void
.end method

.method public static getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .registers 4

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x358

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x359

    invoke-virtual {p1, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v0, 0x35a

    invoke-virtual {p1, v0, p0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method public static hasUserConfiguredSettings(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_21

    :cond_1d
    iget p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez p0, :cond_23

    :goto_21
    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method public static lockFieldsForUpdateLocked(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .registers 4

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_e
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    if-eq v0, v1, :cond_1c

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_1c
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    if-eq v0, v1, :cond_2a

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_2a
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v1

    if-ne v0, v1, :cond_3e

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v1

    if-eq v0, v1, :cond_43

    :cond_3e
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_43
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_56
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    if-eq v0, v1, :cond_81

    :cond_7c
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_81
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    if-eq v0, v1, :cond_90

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_90
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result p0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v0

    if-eq p0, v0, :cond_9f

    const/16 p0, 0x100

    invoke-virtual {p1, p0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_9f
    return-void
.end method

.method public static packagePreferencesKey(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "|"

    invoke-static {p0, p1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unrestoredPackageKey(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "|"

    invoke-static {p0, p1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bubblesEnabled(Landroid/os/UserHandle;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_9

    return v1

    :cond_9
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    const/4 v2, 0x1

    if-gez v0, :cond_27

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "notification_bubbles"

    invoke-static {v3, v4, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_24

    move v1, v2

    :cond_24
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_27
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public final canBePromoted(ILjava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->canHavePromotedNotifs:Z

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z
    .registers 5

    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/notification/PreferencesHelper;->isGroupBlocked(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_1e

    :cond_f
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p0

    if-nez p0, :cond_1e

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p0, 0x1

    return p0

    :cond_1e
    :goto_1e
    const/4 p0, 0x0

    return p0
.end method

.method public final createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .registers 8

    iget v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    const/16 v1, -0x2710

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    goto :goto_3c

    :cond_8
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v1, "miscellaneous"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const v3, 0x1040467

    if-eqz v0, :cond_28

    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationChannel;

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    return v2

    :cond_28
    iget v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_3d

    :goto_3c
    return v2

    :cond_3d
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iget v3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    invoke-direct {v0, v1, p0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-ne p0, v1, :cond_51

    move v2, v3

    :cond_51
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    iget p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {v0, p0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    iget p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/16 v2, -0x3e8

    if-eq p0, v2, :cond_63

    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_63
    iget p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz p0, :cond_6a

    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_6a
    iget p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq p0, v2, :cond_71

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_71
    iget-object p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3
.end method

.method public final createNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZIZ)Z
    .registers 20

    move-object/from16 v2, p3

    move/from16 v7, p6

    const-string/jumbo v0, "NotificationChannelGroup doesn\'t exist : pkg="

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v8, 0x1

    xor-int/2addr v1, v8

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    const/4 v9, 0x0

    if-ltz v1, :cond_2e

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    const/4 v4, 0x5

    if-gt v1, v4, :cond_2e

    move v1, v8

    goto :goto_2f

    :cond_2e
    move v1, v9

    :goto_2f
    const-string v4, "Invalid importance level"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->hasNotificationChannelsBypassingDnd(ILjava/lang/String;)Z

    move-result v1

    iget-object v10, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_3b
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v4

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_74

    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    goto :goto_74

    :cond_52
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", channel group="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_70
    move-exception v0

    move-object p0, v0

    goto/16 :goto_29d

    :cond_74
    :goto_74
    const-string/jumbo v0, "miscellaneous"

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_294

    if-nez v7, :cond_91

    sget-object v0, Landroid/app/NotificationChannel;->SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    monitor-exit v10

    return v9

    :cond_91
    iget-object v0, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/app/NotificationChannel;

    const/16 v12, -0x3e8

    if-eqz v11, :cond_1ad

    invoke-virtual {v11}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_e0

    invoke-virtual {v11, v9}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    const-wide/16 v0, -0x1

    invoke-virtual {v11, v0, v1}, Landroid/app/NotificationChannel;->setDeletedTimeMs(J)V

    invoke-static {v2, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_cb

    sget-object v1, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CONVERSATION_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    goto :goto_cd

    :cond_cb
    sget-object v1, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    :goto_cd
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;I)I

    move-result v6

    check-cast v0, Lcom/android/server/notification/NotificationChannelLoggerImpl;

    const/4 v5, 0x0

    move-object v4, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/NotificationChannelLoggerImpl;->logNotificationChannel(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannel;ILjava/lang/String;II)V

    move v0, v8

    :goto_de
    move v1, v0

    goto :goto_e2

    :cond_e0
    move v0, v9

    goto :goto_de

    :goto_e2
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_104

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    move v1, v8

    :cond_104
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11a

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    move v1, v8

    :cond_11a
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v3

    invoke-virtual {v11}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v4

    if-eq v3, v4, :cond_12c

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v1

    invoke-virtual {v11, v1}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    move v1, v8

    :cond_12c
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_140

    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_140

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    move v1, v8

    :cond_140
    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    invoke-static {v11, v4}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;I)I

    move-result v4

    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v5

    if-nez v5, :cond_164

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v5

    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v6

    if-ge v5, v6, :cond_164

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    move v1, v8

    :cond_164
    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v5

    if-nez v5, :cond_18a

    if-eqz p4, :cond_18a

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v5

    invoke-virtual {v11}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v6

    if-ne v5, v6, :cond_178

    if-eqz v0, :cond_18a

    :cond_178
    invoke-virtual {v11, v5}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    iget-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasPriorityChannels:Z

    if-ne v5, v1, :cond_188

    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    if-eq v3, v1, :cond_186

    goto :goto_188

    :cond_186
    move v1, v8

    goto :goto_18a

    :cond_188
    :goto_188
    move v1, v8

    move v9, v1

    :cond_18a
    :goto_18a
    invoke-virtual {v11}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result v3

    if-ne v3, v12, :cond_198

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/app/NotificationChannel;->setOriginalImportance(I)V

    goto :goto_199

    :cond_198
    move v8, v1

    :goto_199
    if-eqz v8, :cond_19e

    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_19e
    if-eqz v8, :cond_282

    if-nez v0, :cond_282

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    const/4 v5, 0x0

    move-object v3, p1

    move v2, p2

    move-object v1, v11

    invoke-interface/range {v0 .. v5}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelModified(Landroid/app/NotificationChannel;ILjava/lang/String;IZ)V

    goto/16 :goto_282

    :cond_1ad
    move-object v0, v11

    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/16 v6, 0x1388

    if-ge v5, v6, :cond_28b

    iget-boolean v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    if-nez v5, :cond_1bf

    invoke-virtual {p0, v4}, Lcom/android/server/notification/PreferencesHelper;->lockChannelsForOEMwithPackagePreferences(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)V

    :cond_1bf
    if-nez p4, :cond_1cc

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1c8

    move v5, v8

    goto :goto_1c9

    :cond_1c8
    move v5, v9

    :goto_1c9
    invoke-virtual {v2, v5}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    :cond_1cc
    if-eqz v1, :cond_1d1

    invoke-virtual {v2, v8}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    :cond_1d1
    iget v1, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    if-eqz v0, :cond_1dd

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v0

    goto :goto_1de

    :cond_1dd
    const/4 v0, -0x1

    :goto_1de
    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->setAllowBubbles(I)V

    invoke-virtual {v2, v9}, Landroid/app/NotificationChannel;->setImportantConversation(Z)V

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->unlockFields(I)V

    iget-boolean v0, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v0

    if-nez v0, :cond_207

    iget-object v0, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_207

    invoke-virtual {v2, v8}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    :cond_207
    iget-boolean v0, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    if-nez v0, :cond_212

    iget-boolean v0, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    if-eqz v0, :cond_210

    goto :goto_212

    :cond_210
    move v0, v9

    goto :goto_213

    :cond_212
    :goto_212
    move v0, v8

    :goto_213
    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    if-ne v0, v8, :cond_21f

    invoke-virtual {v2, v12}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    :cond_21f
    iget-boolean v0, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    if-nez v0, :cond_226

    invoke-virtual {v2, v9}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    :cond_226
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->setOriginalImportance(I)V

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_243

    iget-object v0, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "Tried to create a conversation channel without a preexisting parent"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    :cond_243
    iget-object v0, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasPriorityChannels:Z

    if-eq v0, v1, :cond_255

    move v9, v8

    :cond_255
    invoke-static {v2, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_270

    sget-object v1, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CONVERSATION_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    goto :goto_272

    :cond_270
    sget-object v1, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    :goto_272
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;I)I

    move-result v6

    check-cast v0, Lcom/android/server/notification/NotificationChannelLoggerImpl;

    const/4 v5, 0x0

    move-object v4, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/NotificationChannelLoggerImpl;->logNotificationChannel(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannel;ILjava/lang/String;II)V

    :cond_282
    :goto_282
    monitor-exit v10
    :try_end_283
    .catchall {:try_start_3b .. :try_end_283} :catchall_70

    if-eqz v9, :cond_28a

    move/from16 p1, p5

    invoke-virtual {p0, p1, v7}, Lcom/android/server/notification/PreferencesHelper;->updateCurrentUserHasPriorityChannels(IZ)V

    :cond_28a
    return v8

    :cond_28b
    :try_start_28b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Limit exceed; cannot create more channels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_294
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Reserved id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_29d
    monitor-exit v10
    :try_end_29e
    .catchall {:try_start_28b .. :try_end_29e} :catchall_70

    throw p0
.end method

.method public final deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    .registers 6

    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v1, "miscellaneous"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_d

    return v2

    :cond_d
    iget v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x1a

    if-lt p0, v0, :cond_2e

    iget-object p0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationChannel;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    return p1

    :cond_2e
    return v2
.end method

.method public final deleteNotificationChannelLocked(Ljava/lang/String;ILandroid/app/NotificationChannel;)Z
    .registers 13

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_43

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Landroid/app/NotificationChannel;->setDeletedTimeMs(J)V

    invoke-static {p3, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    invoke-static {v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    sget-object v1, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CONVERSATION_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    :goto_2b
    move-object v3, v1

    goto :goto_30

    :cond_2d
    sget-object v1, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    goto :goto_2b

    :goto_30
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-static {p3, v1}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;I)I

    move-result v7

    const/4 v8, 0x0

    move-object v2, p0

    check-cast v2, Lcom/android/server/notification/NotificationChannelLoggerImpl;

    move-object v6, p1

    move v5, p2

    move-object v4, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/NotificationChannelLoggerImpl;->logNotificationChannel(Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;Landroid/app/NotificationChannel;ILjava/lang/String;II)V

    return v0

    :cond_43
    const/4 p0, 0x0

    return p0
.end method

.method public didUserEverDemoteInvalidMsgApp(Ljava/lang/String;I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 6

    const-string v0, "    "

    const-string/jumbo v1, "per-package config version: "

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/notification/PreferencesHelper;->XML_VERSION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "PackagePreferences:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1e
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    const-string/jumbo p3, "Restored without uid:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/notification/PreferencesHelper;->dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_31

    throw p0
.end method

.method public final dumpChannelsJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .registers 11

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    :try_start_f
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_4a

    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move v6, v3

    move v7, v6

    :goto_21
    iget-object v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v6, v8, :cond_3e

    iget-object v8, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannel;

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v8

    if-nez v8, :cond_39

    add-int/lit8 v7, v7, 0x1

    :cond_39
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    :catchall_3c
    move-exception p0

    goto :goto_8a

    :cond_3e
    iget-object v5, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_f .. :try_end_4b} :catchall_3c

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_53
    :goto_53
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_53

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_70
    const-string/jumbo v4, "packageName"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "channelCount"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_70 .. :try_end_80} :catch_81

    goto :goto_85

    :catch_81
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_85
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_53

    :cond_89
    return-object v0

    :goto_8a
    :try_start_8a
    monitor-exit v2
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_3c

    throw p0
.end method

.method public final dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)Lorg/json/JSONObject;
    .registers 16

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_d
    const-string/jumbo v3, "noUid"

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_19} :catch_1d
    .catchall {:try_start_d .. :try_end_19} :catchall_1a

    goto :goto_1d

    :catchall_1a
    move-exception p0

    goto/16 :goto_181

    :catch_1d
    :goto_1d
    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1a

    if-eqz p2, :cond_25

    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_29
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_31
    const/4 v7, 0x3

    if-ge v6, v4, :cond_11b

    iget-object v8, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget-object v9, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_117

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V
    :try_end_49
    .catchall {:try_start_29 .. :try_end_49} :catchall_92

    :try_start_49
    const-string/jumbo v10, "userId"

    iget v11, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v10, "packageName"

    iget-object v11, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v10, Landroid/util/Pair;

    iget v11, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p2, :cond_95

    invoke-interface {v2, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_95

    const-string/jumbo v11, "importance"

    invoke-virtual {p2, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_86

    goto :goto_87

    :cond_86
    move v7, v5

    :goto_87
    invoke-static {v7}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v2, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_95

    :catchall_92
    move-exception p0

    goto/16 :goto_17f

    :cond_95
    :goto_95
    iget v7, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v7, :cond_a3

    const-string/jumbo v10, "priority"

    invoke-static {v7}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a3
    iget v7, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    const/16 v10, -0x3e8

    if-eq v7, v10, :cond_b3

    const-string/jumbo v10, "visibility"

    invoke-static {v7}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b3
    iget-boolean v7, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    const/4 v10, 0x1

    if-eq v7, v10, :cond_c2

    const-string/jumbo v10, "showBadge"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c2
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    iget-object v10, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_d1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationChannel;

    invoke-virtual {v11}, Landroid/app/NotificationChannel;->toJson()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_d1

    :cond_e5
    const-string/jumbo v10, "channels"

    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    iget-object v8, v8, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_fa
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->toJson()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_fa

    :cond_10e
    const-string/jumbo v8, "groups"

    invoke-virtual {v9, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_114
    .catch Lorg/json/JSONException; {:try_start_49 .. :try_end_114} :catch_114
    .catchall {:try_start_49 .. :try_end_114} :catchall_92

    :catch_114
    :try_start_114
    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_117
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_31

    :cond_11b
    monitor-exit v3
    :try_end_11c
    .catchall {:try_start_114 .. :try_end_11c} :catchall_92

    if-eqz v2, :cond_178

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_122
    :goto_122
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_178

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_122

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_13d
    const-string/jumbo v4, "userId"

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v4, "packageName"

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "importance"

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_16c

    move v2, v7

    goto :goto_16d

    :cond_16c
    move v2, v5

    :goto_16d
    invoke-static {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_174
    .catch Lorg/json/JSONException; {:try_start_13d .. :try_end_174} :catch_174

    :catch_174
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_122

    :cond_178
    :try_start_178
    const-string/jumbo p0, "PackagePreferencess"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17e
    .catch Lorg/json/JSONException; {:try_start_178 .. :try_end_17e} :catch_17e

    :catch_17e
    return-object v0

    :goto_17f
    :try_start_17f
    monitor-exit v3
    :try_end_180
    .catchall {:try_start_17f .. :try_end_180} :catchall_92

    throw p0

    :goto_181
    :try_start_181
    monitor-exit v2
    :try_end_182
    .catchall {:try_start_181 .. :try_end_182} :catchall_1a

    throw p0
.end method

.method public final dumpPackagePreferencesLocked(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    goto :goto_10

    :cond_f
    const/4 v4, 0x0

    :goto_10
    invoke-virtual/range {p3 .. p3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_15
    const-string v8, "    "

    const-string v9, " userSet="

    const-string v11, " importance="

    const-string/jumbo v13, "UNKNOWN_UID"

    const-string v15, " ("

    const-string v10, "  AppSettings: "

    if-ge v7, v5, :cond_270

    move-object/from16 v6, p3

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v12, v18

    check-cast v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget-object v14, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v14}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_26c

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    const/16 v14, -0x2710

    if-ne v10, v14, :cond_4b

    goto :goto_4f

    :cond_4b
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    :goto_4f
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v10, 0x29

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(C)V

    new-instance v10, Landroid/util/Pair;

    iget v13, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-direct {v10, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v13, 0x1

    if-eqz v3, :cond_101

    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_101

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_83

    const/16 v16, 0x3

    goto :goto_85

    :cond_83
    const/16 v16, 0x0

    :goto_85
    invoke-static/range {v16 .. v16}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_fe

    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    iget-object v11, v0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    iget-object v14, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v11, v14, v9}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_fe

    const-string v11, " permission [pre-grant=true"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :try_start_bf
    iget-object v11, v0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v14, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;
    :try_end_c3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_bf .. :try_end_c3} :catch_d7

    const/4 v15, 0x0

    :try_start_c4
    invoke-virtual {v11, v14, v15, v9}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_ca
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c4 .. :try_end_ca} :catch_d5

    and-int/2addr v11, v13

    if-eqz v11, :cond_cf

    move v11, v13

    goto :goto_d0

    :cond_cf
    move v11, v15

    :goto_d0
    :try_start_d0
    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v9
    :try_end_d4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d0 .. :try_end_d4} :catch_d9

    goto :goto_ea

    :catch_d5
    :goto_d5
    move v11, v15

    goto :goto_d9

    :catch_d7
    const/4 v15, 0x0

    goto :goto_d5

    :catch_d9
    :goto_d9
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "NameNotFoundException pkg "

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    const-string/jumbo v15, "NotificationPrefHelper"

    invoke-static {v9, v14, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_ea
    if-eqz v11, :cond_f1

    const-string v11, " isPreload=true"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_f1
    if-eqz v9, :cond_f8

    const-string v9, " isSigned=true"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_f8
    const-string/jumbo v9, "]"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_fe
    invoke-interface {v4, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_101
    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz v9, :cond_113

    const-string v9, " priority="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-static {v9}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_113
    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    const/16 v10, -0x3e8

    if-eq v9, v10, :cond_127

    const-string v9, " visibility="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-static {v9}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_127
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    if-eq v9, v13, :cond_135

    const-string v9, " showBadge="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    :cond_135
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    if-eqz v9, :cond_143

    const-string v9, " oemLocked="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    :cond_143
    iget-object v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_157

    const-string v9, " futureLockedChannels="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :cond_157
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    if-eqz v9, :cond_165

    const-string v9, " defaultAppLocked="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    :cond_165
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    if-eqz v9, :cond_173

    const-string v9, " fixedImportance="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    :cond_173
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowEdgeLighting:Z

    if-eq v9, v13, :cond_181

    const-string v9, " allowEdgeLighting="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowEdgeLighting:Z

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    :cond_181
    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->edgeLightingState:I

    const/4 v11, -0x1

    if-eq v9, v11, :cond_190

    const-string v9, " edgeLightingState="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->edgeLightingState:I

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    :cond_190
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowSubDisplayNoti:Z

    if-eqz v9, :cond_19e

    const-string v9, " allowSubDisplayNoti="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowSubDisplayNoti:Z

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    :cond_19e
    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowOngoingActivity:I

    if-le v9, v11, :cond_1ac

    const-string v9, " allowOngoingActivity="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowOngoingActivity:I

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    :cond_1ac
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isNotificationAlertsEnabled:Z

    if-eq v9, v13, :cond_1ba

    const-string v9, " isNotificationAlertsEnabled="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isNotificationAlertsEnabled:Z

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    :cond_1ba
    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->muteByWearable:I

    if-eq v9, v11, :cond_1c8

    const-string v9, " muteByWearable="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->muteByWearable:I

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    :cond_1c8
    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    if-eq v9, v10, :cond_1d6

    const-string v9, " appLockScreenVisibility="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    :cond_1d6
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isAllowPopup:Z

    if-eq v9, v13, :cond_1e4

    const-string v9, " isAllowPopup="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isAllowPopup:Z

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    :cond_1e4
    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    if-eqz v9, :cond_1f2

    const-string v9, " bubblePreference="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    :cond_1f2
    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    if-eqz v9, :cond_200

    const-string v9, " reminder="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Z)V

    :cond_200
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    iget-object v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz v9, :cond_228

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-object v10, v9, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    iget v9, v9, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v11, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean v11, v11, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    filled-new-array {v10, v9, v11}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "    Delegate: %s (%s) enabled=%s"

    invoke-virtual {v1, v10, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_228
    iget-object v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_232
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_247

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannel;

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v11, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v10, v1, v8, v11}, Landroid/app/NotificationChannel;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_232

    :cond_247
    iget-object v9, v12, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_251
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_26c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  "

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_251

    :cond_26c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_15

    :cond_270
    const/16 v17, 0x0

    if-eqz v4, :cond_2f5

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_278
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f0

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v14, -0x2710

    if-ne v5, v14, :cond_2ac

    move-object v5, v13

    goto :goto_2b8

    :cond_2ac
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    :goto_2b8
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v5, 0x29

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2d5

    const/4 v6, 0x3

    goto :goto_2d7

    :cond_2d5
    move/from16 v6, v17

    :goto_2d7
    invoke-static {v6}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto :goto_278

    :cond_2f0
    const/16 v5, 0x29

    const/16 v14, -0x2710

    goto :goto_278

    :cond_2f5
    return-void
.end method

.method public final getAppsBypassingDndCount(I)I
    .registers 10

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v2, v1, :cond_4c

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne p1, v5, :cond_49

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-nez v5, :cond_22

    goto :goto_49

    :cond_22
    iget-object v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    invoke-virtual {p0, v4, v6}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v7

    if-eqz v7, :cond_2c

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v6

    if-eqz v6, :cond_2c

    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    :catchall_47
    move-exception p0

    goto :goto_4e

    :cond_49
    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_4c
    monitor-exit v0

    return v3

    :goto_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_47

    throw p0
.end method

.method public final getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;
    .registers 10

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-nez p3, :cond_12

    const-string/jumbo p3, "miscellaneous"

    goto :goto_12

    :catchall_10
    move-exception p0

    goto :goto_62

    :cond_12
    :goto_12
    const/4 p1, 0x0

    if-eqz p4, :cond_48

    iget-object p2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    if-nez p6, :cond_47

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_47
    move-object p1, v1

    :cond_48
    if-nez p1, :cond_60

    if-eqz p5, :cond_60

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationChannel;

    if-eqz p0, :cond_60

    if-nez p6, :cond_5e

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p2

    if-nez p2, :cond_60

    :cond_5e
    monitor-exit v0

    return-object p0

    :cond_60
    monitor-exit v0

    return-object p1

    :goto_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_6 .. :try_end_63} :catchall_10

    throw p0
.end method

.method public final getEdgeLightingSettingState(Ljava/lang/String;I)I
    .registers 11

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    const-string/jumbo v0, "NotificationPrefHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "holdsLock getEdgeLightingSettingState pac = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/server/notification/PreferencesHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_44
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_67

    :try_start_4a
    iget-object p0, v3, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_4f} :catch_50

    goto :goto_44

    :catch_50
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "NotificationPrefHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "InterruptedException - "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :cond_67
    const-string/jumbo p0, "NotificationPrefHelper"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "getEdgeLightingSettingState = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_8c
    move-object v3, p0

    move-object v4, p1

    iget-object p0, v3, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_91
    invoke-virtual {v3, p2, v4}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p1

    iget p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->edgeLightingState:I

    monitor-exit p0

    return p1

    :catchall_99
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_9c
    .catchall {:try_start_91 .. :try_end_9c} :catchall_99

    throw p1
.end method

.method public getFsiState(Ljava/lang/String;IZ)I
    .registers 4

    if-nez p3, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    new-instance p3, Landroid/content/AttributionSource$Builder;

    invoke-direct {p3, p2}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    invoke-virtual {p3, p1}, Landroid/content/AttributionSource$Builder;->setPackageName(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionManager:Landroid/permission/PermissionManager;

    const-string/jumbo p2, "android.permission.USE_FULL_SCREEN_INTENT"

    invoke-virtual {p0, p2, p1}, Landroid/permission/PermissionManager;->checkPermissionForPreflight(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result p0

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x2

    return p0
.end method

.method public final getLockScreenNotificationVisibilityForPackage(Ljava/lang/String;I)I
    .registers 4

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_f

    iget p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    goto :goto_13

    :cond_f
    const/16 p0, -0x3e8

    monitor-exit v0

    return p0

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_d

    throw p0
.end method

.method public final getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_f

    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isNotificationAlertsEnabled:Z

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    goto :goto_12

    :cond_f
    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_d

    throw p0
.end method

.method public final getNotificationChannelGroup(ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannelGroup;
    .registers 5

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    invoke-virtual {p0, p1, p3}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-nez p0, :cond_11

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    goto :goto_1b

    :cond_11
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationChannelGroup;

    monitor-exit v0

    return-object p0

    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_f

    throw p0
.end method

.method public final getNotificationChannelGroupWithChannels(ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannelGroup;
    .registers 6

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_27

    if-eqz p3, :cond_27

    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_27

    :cond_17
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-static {p3, p1, p0, p4}, Lcom/android/internal/notification/NotificationChannelGroupsHelper;->getGroupWithChannels(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;Z)Landroid/app/NotificationChannelGroup;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_25
    move-exception p0

    goto :goto_2a

    :cond_27
    :goto_27
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_25

    throw p0
.end method

.method public final getNotificationChannelGroups(Ljava/lang/String;ILcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Landroid/content/pm/ParceledListSlice;
    .registers 5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-nez p0, :cond_14

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    goto :goto_27

    :cond_14
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    iget-object p2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-static {p2, p0, p3}, Lcom/android/internal/notification/NotificationChannelGroupsHelper;->getGroupsWithChannels(Ljava/util/Collection;Ljava/util/Map;Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0

    return-object p1

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_12

    throw p0
.end method

.method public final getNotificationChannelGroupsWithoutChannels(ILjava/lang/String;)Ljava/util/Collection;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-nez p0, :cond_12

    monitor-exit v1

    return-object v0

    :catchall_10
    move-exception p0

    goto :goto_1d

    :cond_12
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-object v0

    :goto_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_10

    throw p0
.end method

.method public final getNotificationChannels(Ljava/lang/String;IZZ)Landroid/content/pm/ParceledListSlice;
    .registers 10

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-nez p0, :cond_19

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_17
    move-exception p0

    goto :goto_4d

    :cond_19
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_20
    if-ge p2, p1, :cond_46

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    if-nez p3, :cond_32

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_43

    :cond_32
    if-nez p4, :cond_40

    sget-object v3, Landroid/app/NotificationChannel;->SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    :cond_40
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_43
    add-int/lit8 p2, p2, 0x1

    goto :goto_20

    :cond_46
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object p0

    :goto_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_b .. :try_end_4e} :catchall_17

    throw p0
.end method

.method public final getOngoingActivityAllowedState(ILjava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    iget p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowOngoingActivity:I

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .registers 18

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/16 v4, -0x3e8

    const/4 v5, 0x0

    const/16 v6, -0x3e8

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, -0x1

    move-object v0, p0

    move/from16 v3, p1

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v14}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIIZIJZIZI)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    return-object p0
.end method

.method public final getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIIZIJZIZI)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .registers 22

    invoke-static {p3, p1}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x2710

    if-ne p3, v2, :cond_15

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p2, p1}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    goto :goto_1d

    :cond_15
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    :goto_1d
    if-nez v0, :cond_fc

    new-instance v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v2, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    const/16 v0, -0x3e8

    iput v0, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    iput v0, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    iput v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    iput v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    iput-boolean v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    iput-boolean v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    iput-boolean v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    iput-boolean v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    iput-boolean v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    iput-boolean v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    iput-boolean v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidBubble:Z

    iput-boolean v5, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowEdgeLighting:Z

    const/4 v6, -0x1

    iput v6, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->edgeLightingState:I

    iput-boolean v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowSubDisplayNoti:Z

    iput v6, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowOngoingActivity:I

    iput-boolean v5, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isNotificationAlertsEnabled:Z

    iput v6, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->muteByWearable:I

    iput v0, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    iput-boolean v5, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isAllowPopup:Z

    iput-boolean v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    iput-boolean v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->migrateToPm:Z

    iput-boolean v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->canHavePromotedNotifs:Z

    const/4 v6, 0x0

    iput-object v6, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    iput-object v6, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v6, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    iput-object p1, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iput p3, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    iput p4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    iput p5, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    iput p6, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    iput-boolean p7, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    iput p8, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    if-ne p3, v2, :cond_87

    move-wide/from16 p3, p9

    iput-wide p3, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->creationTime:J

    :cond_87
    move/from16 p3, p11

    iput-boolean p3, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowEdgeLighting:Z

    move/from16 p3, p12

    iput p3, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->edgeLightingState:I

    move/from16 p3, p13

    iput-boolean p3, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowSubDisplayNoti:Z

    iget-object p3, p0, Lcom/android/server/notification/PreferencesHelper;->mOngoingActivityAllowedAppList:Landroid/util/ArrayMap;

    if-eqz p3, :cond_b1

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b1

    iget-object p3, p0, Lcom/android/server/notification/PreferencesHelper;->mOngoingActivityAllowedAppList:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_ae

    iput v5, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowOngoingActivity:I

    goto :goto_b5

    :cond_ae
    iput v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowOngoingActivity:I

    goto :goto_b5

    :cond_b1
    move/from16 p3, p14

    iput p3, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowOngoingActivity:I

    :goto_b5
    iput v0, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    iput-boolean v5, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isAllowPopup:Z

    iput-boolean v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    sget-boolean p3, Lcom/android/server/notification/NmRune;->NM_SUPPORT_HIDE_CONTENT_CONVERSATION_PACKAGE:Z

    if-eqz p3, :cond_cb

    iget-object p3, p0, Lcom/android/server/notification/PreferencesHelper;->mAllowList:Ljava/util/HashSet;

    iget-object p4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_cb

    iput v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    :cond_cb
    :try_start_cb
    invoke-virtual {p0, v3}, Lcom/android/server/notification/PreferencesHelper;->createDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    :try_end_ce
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_cb .. :try_end_ce} :catch_cf

    goto :goto_e6

    :catch_cf
    move-exception v0

    move-object p3, v0

    new-instance p4, Ljava/lang/StringBuilder;

    const-string/jumbo p5, "createDefaultChannelIfNeededLocked - Exception: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo p4, "NotificationPrefHelper"

    invoke-static {p4, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e6
    iget p3, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    if-ne p3, v2, :cond_f6

    iput p2, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userIdWhenUidUnknown:I

    iget-object p3, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p2, p1}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_fb

    :cond_f6
    iget-object p3, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {p3, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_fb
    move-object v0, v3

    :cond_fc
    iget p3, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    if-ne p3, v2, :cond_118

    iget-object p3, p0, Lcom/android/server/notification/PreferencesHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {p3}, Ljava/time/Clock;->millis()J

    move-result-wide p3

    iget-wide v1, v0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->creationTime:J

    sub-long/2addr p3, v1

    sget-wide v1, Lcom/android/server/notification/PreferencesHelper;->PREF_GRACE_PERIOD_MS:J

    cmp-long p3, v1, p3

    if-gez p3, :cond_118

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p2, p1}, Lcom/android/server/notification/PreferencesHelper;->unrestoredPackageKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_118
    return-object v0
.end method

.method public final getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;
    .registers 3

    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    return-object p0
.end method

.method public getRemovedPkgNotificationChannels(Ljava/lang/String;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_17

    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    if-nez p1, :cond_b

    goto :goto_17

    :cond_b
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_17
    :goto_17
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final getWearableAppMuted(ILjava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_f

    iget p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->muteByWearable:I

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    goto :goto_12

    :cond_f
    const/4 p0, -0x1

    monitor-exit v0

    return p0

    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_d

    throw p0
.end method

.method public final hasNotificationChannelsBypassingDnd(ILjava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->packagePreferencesKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    if-eqz p1, :cond_38

    iget-object p2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_36
    move-exception p0

    goto :goto_3b

    :cond_38
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_36

    throw p0
.end method

.method public hasSentInvalidMsg(Ljava/lang/String;I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public hasSentValidMsg(Ljava/lang/String;I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->isInInvalidMsgState(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_12

    iget-boolean p0, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    goto :goto_13

    :catchall_10
    move-exception p0

    goto :goto_15

    :cond_12
    const/4 p0, 0x0

    :goto_13
    monitor-exit v0

    return p0

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_10

    throw p0
.end method

.method public invalidateNotificationChannelCache()V
    .registers 1

    invoke-static {}, Landroid/app/NotificationManager;->invalidateNotificationChannelCache()V

    return-void
.end method

.method public invalidateNotificationChannelGroupCache()V
    .registers 1

    invoke-static {}, Landroid/app/NotificationManager;->invalidateNotificationChannelGroupCache()V

    return-void
.end method

.method public final isDelegateAllowed(IILjava/lang/String;Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1, p3}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_26

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz p0, :cond_26

    if-eqz p4, :cond_26

    const/16 p1, -0x2710

    if-ne p2, p1, :cond_14

    goto :goto_26

    :cond_14
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    iget p1, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUid:I

    if-ne p2, p1, :cond_26

    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    :goto_26
    const/4 p0, 0x0

    :goto_27
    monitor-exit v0

    return p0

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public isFsiPermissionUserSet(Ljava/lang/String;III)Z
    .registers 5

    const/4 p0, 0x0

    if-nez p3, :cond_4

    return p0

    :cond_4
    const/4 p1, 0x1

    and-int/lit8 p2, p4, 0x1

    if-eqz p2, :cond_a

    return p1

    :cond_a
    return p0
.end method

.method public final isGroupBlocked(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationChannelGroup;

    if-nez p0, :cond_19

    monitor-exit v1

    return v0

    :catchall_17
    move-exception p0

    goto :goto_1f

    :cond_19
    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p0

    monitor-exit v1

    return p0

    :goto_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_17

    throw p0
.end method

.method public final isInInvalidMsgState(Ljava/lang/String;I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    iget-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    if-eqz p1, :cond_13

    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    if-nez p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :catchall_11
    move-exception p0

    goto :goto_16

    :cond_13
    const/4 p0, 0x0

    :goto_14
    monitor-exit v0

    return p0

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_11

    throw p0
.end method

.method public final lockChannelsForOEM([Ljava/lang/String;)V
    .registers 13

    if-nez p1, :cond_4

    goto/16 :goto_a4

    :cond_4
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_a4

    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a0

    array-length v4, v3

    if-lez v4, :cond_a0

    aget-object v4, v3, v1

    array-length v5, v3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v5, v6, :cond_26

    aget-object v3, v3, v7

    goto :goto_27

    :cond_26
    const/4 v3, 0x0

    :goto_27
    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_2a
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v8, v1

    :cond_35
    :goto_35
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget-object v10, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_35

    if-nez v3, :cond_69

    iput-boolean v7, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    iget-object v8, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_57
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannel;

    invoke-virtual {v9, v7}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    goto :goto_57

    :catchall_67
    move-exception p0

    goto :goto_9e

    :cond_69
    iget-object v8, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannel;

    if-eqz v8, :cond_76

    invoke-virtual {v8, v7}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    :cond_76
    iget-object v8, v9, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7d
    move v8, v7

    goto :goto_35

    :cond_7f
    if-nez v8, :cond_9c

    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mOemLockedApps:Ljava/util/Map;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v3, :cond_95

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_95
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mOemLockedApps:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9c
    monitor-exit v5

    goto :goto_a0

    :goto_9e
    monitor-exit v5
    :try_end_9f
    .catchall {:try_start_2a .. :try_end_9f} :catchall_67

    throw p0

    :cond_a0
    :goto_a0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_a4
    :goto_a4
    return-void
.end method

.method public final lockChannelsForOEMwithPackagePreferences(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mCscConfigNoneBlockableList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mCscConfigNoneBlockableList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_45

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mCscConfigNoneBlockableList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_45
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mCscConfigNoneBlockableList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c4

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mCscConfigNoneBlockableList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mCscConfigNoneBlockableList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_66
    if-ge v2, v0, :cond_c4

    aget-object v3, p0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c1

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c1

    array-length v4, v3

    if-lez v4, :cond_c1

    aget-object v4, v3, v1

    array-length v5, v3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v5, v6, :cond_85

    aget-object v3, v3, v7

    goto :goto_86

    :cond_85
    const/4 v3, 0x0

    :goto_86
    iget-object v5, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c1

    if-nez v3, :cond_ac

    iput-boolean v7, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    iget-object v3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    invoke-virtual {v4, v7}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    goto :goto_9c

    :cond_ac
    iget-object v4, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    if-eqz v4, :cond_ba

    invoke-virtual {v4, v7}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    goto :goto_c1

    :cond_ba
    iget-object v4, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c1
    :goto_c1
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    :cond_c4
    return-void
.end method

.method public final migrateNotificationPermissions(Ljava/util/List;)V
    .registers 11

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_38
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, v3}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget-boolean v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->migrateToPm:Z

    if-eqz v3, :cond_8c

    iget v3, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_6f

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_8c

    :try_start_4c
    iget-object v4, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget v5, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    const/4 v6, 0x1

    if-eqz v5, :cond_59

    move v5, v6

    goto :goto_5a

    :cond_59
    const/4 v5, 0x0

    :goto_5a
    invoke-static {v1}, Lcom/android/server/notification/PreferencesHelper;->hasUserConfiguredSettings(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_65

    goto :goto_8c

    :cond_65
    invoke-virtual {v7, v4, v3}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_8c

    invoke-virtual {v7, v4, v3, v5, v6}, Lcom/android/server/notification/PermissionHelper;->setNotificationPermission(Ljava/lang/String;IZZ)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_6e} :catch_71
    .catchall {:try_start_4c .. :try_end_6e} :catchall_6f

    goto :goto_8c

    :catchall_6f
    move-exception p0

    goto :goto_8e

    :catch_71
    move-exception v3

    :try_start_72
    const-string/jumbo v4, "NotificationPrefHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "could not migrate setting for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8c
    :goto_8c
    monitor-exit v2

    goto :goto_29

    :goto_8e
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_72 .. :try_end_8f} :catchall_6f

    throw p0

    :cond_90
    return-void
.end method

.method public final onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    const-string/jumbo p2, "miscellaneous"

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_5e

    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_20

    monitor-exit v0

    return v1

    :catchall_1e
    move-exception p0

    goto :goto_60

    :cond_20
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v2, 0x5

    if-gt p1, v2, :cond_5c

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationChannel;

    sget-object p1, Landroid/app/NotificationChannel;->SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5a

    const-string/jumbo p1, "miscellaneous"

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5a

    monitor-exit v0

    return p2

    :cond_5a
    monitor-exit v0

    return v1

    :cond_5c
    monitor-exit v0

    return p2

    :cond_5e
    monitor-exit v0

    return p2

    :goto_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_1e

    throw p0
.end method

.method public permanentlyDeleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-nez p0, :cond_13

    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    goto :goto_1a

    :cond_13
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_11

    throw p0
.end method

.method public final removeAllReminderSetting(I)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_29

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne v5, p1, :cond_26

    iget-boolean v5, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    if-eqz v5, :cond_26

    iput-boolean v2, v4, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_2b

    :cond_26
    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_29
    monitor-exit v0

    return-void

    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_24

    throw p0
.end method

.method public final resetDefaultAllowOngoingActivityExceptGivenApps(Ljava/util/List;)V
    .registers 9

    if-nez p1, :cond_c

    const-string/jumbo p0, "NotificationPrefHelper"

    const-string/jumbo p1, "except  app list is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :catchall_31
    move-exception p0

    goto :goto_6e

    :cond_33
    iget-object p1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    :goto_39
    if-ge v3, p1, :cond_6c

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget-object v4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    const-string/jumbo v4, "NotificationPrefHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetDefaultAllowOngoingActivityExceptGivenApps - exceptPackage = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    :cond_66
    const/4 v4, -0x1

    iput v4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowOngoingActivity:I

    :goto_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_6c
    monitor-exit v0

    return-void

    :goto_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_f .. :try_end_6f} :catchall_31

    throw p0
.end method

.method public final restoreChannel(Lcom/android/modules/utils/TypedXmlPullParser;ZLcom/android/server/notification/PreferencesHelper$PackagePreferences;ZZ)V
    .registers 12

    :try_start_0
    const-string/jumbo v0, "id"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "name"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "importance"

    const/16 v4, -0x3e8

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d2

    new-instance v3, Landroid/app/NotificationChannel;

    invoke-direct {v3, v0, v2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_44

    iget p2, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    const/16 v5, -0x2710

    if-eq p2, v5, :cond_35

    move p2, v2

    goto :goto_36

    :cond_35
    move p2, v1

    :goto_36
    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1, p2, p0}, Landroid/app/NotificationChannel;->populateFromXmlForRestore(Lorg/xmlpull/v1/XmlPullParser;ZLandroid/content/Context;)V

    if-eqz p4, :cond_47

    invoke-virtual {v3, v4}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    goto :goto_47

    :catch_41
    move-exception p0

    goto/16 :goto_bb

    :cond_44
    invoke-virtual {v3, p1}, Landroid/app/NotificationChannel;->populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_47
    :goto_47
    iget-boolean p0, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    if-nez p0, :cond_52

    iget-boolean p0, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    if-eqz p0, :cond_50

    goto :goto_52

    :cond_50
    move p0, v1

    goto :goto_53

    :cond_52
    :goto_52
    move p0, v2

    :goto_53
    invoke-virtual {v3, p0}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    sget-object p0, Landroid/app/NotificationChannel;->SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_67

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p0

    if-eqz p0, :cond_67

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    :cond_67
    iget-boolean p0, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedImportance:Z

    invoke-virtual {v3, p0}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result p0

    if-nez p0, :cond_83

    iget-object p0, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->oemLockedChannels:Ljava/util/List;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_83

    invoke-virtual {v3, v2}, Landroid/app/NotificationChannel;->setImportanceLockedByOEM(Z)V

    :cond_83
    if-eqz p5, :cond_88

    invoke-virtual {v3, v2}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    :cond_88
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9b

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object p0

    const-string p1, ":placeholder_id"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9b

    goto :goto_d2

    :cond_9b
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p0

    if-nez p0, :cond_a2

    goto :goto_b5

    :cond_a2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-wide p4, 0x9a7ec800L

    sub-long/2addr p0, p4

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getDeletedTimeMs()J

    move-result-wide p4

    cmp-long p0, p4, p0

    if-gtz p0, :cond_b5

    goto :goto_d2

    :cond_b5
    :goto_b5
    iget-object p0, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ba} :catch_41

    return-void

    :goto_bb
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "could not restore channel for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "NotificationPrefHelper"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d2
    :goto_d2
    return-void
.end method

.method public final restorePackage(Lcom/android/modules/utils/TypedXmlPullParser;ZILjava/lang/String;ZZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 51

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-object/from16 v1, p4

    const-string/jumbo v7, "app_lockscreen_visibility"

    const-string/jumbo v8, "allow_ongoing_activity_setting"

    const-string/jumbo v9, "allow_sub_display_noti"

    const-string/jumbo v10, "edge_lighting_state"

    const-string/jumbo v11, "allow_edge_lighting"

    const-string/jumbo v12, "show_badge"

    const-string/jumbo v13, "visibility"

    const-string/jumbo v14, "priority"

    const-string/jumbo v2, "app_user_locked_fields"

    const-string/jumbo v3, "uid"

    const-string/jumbo v4, "NotificationPrefHelper"

    const-string/jumbo v5, "restore appLockScreenVisibility pkg: "

    const-string/jumbo v6, "readxml not launcher pkg - "

    move-object/from16 v16, v5

    const-string/jumbo v5, "readxml reminder pkg - "

    move-object/from16 v17, v5

    const/16 v5, -0x2710

    move-object/from16 v18, v7

    const/4 v7, 0x0

    :try_start_39
    invoke-interface {v15, v7, v3, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v19
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3d} :catch_4a

    if-eqz p2, :cond_4e

    :try_start_3f
    iget-object v5, v0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3f .. :try_end_41} :catch_4e
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_41} :catch_4a

    move/from16 v7, p3

    :try_start_43
    invoke-virtual {v5, v1, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v19
    :try_end_47
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_43 .. :try_end_47} :catch_47
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_47} :catch_4a

    :catch_47
    :goto_47
    move/from16 v5, v19

    goto :goto_51

    :catch_4a
    move-exception v0

    move-object v10, v4

    goto/16 :goto_39f

    :catch_4e
    :cond_4e
    move/from16 v7, p3

    goto :goto_47

    :goto_51
    :try_start_51
    const-string/jumbo v1, "allow_bubble"

    const/4 v7, 0x0

    move-object/from16 v19, v3

    const/4 v3, 0x0

    invoke-interface {v15, v3, v1, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v22

    invoke-interface {v15, v3, v2, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_60} :catch_4a

    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_75

    :cond_65
    move-object/from16 v26, v2

    move-object/from16 v28, v4

    move v3, v5

    move-object/from16 v30, v6

    move-object/from16 v29, v16

    move-object/from16 v31, v17

    move-object/from16 v27, v19

    const/16 v7, -0x2710

    goto :goto_bc

    :cond_75
    if-eqz p5, :cond_65

    const/16 v1, -0x2710

    if-eq v5, v1, :cond_ae

    move/from16 v20, v1

    :try_start_7d
    iget-object v1, v0, Lcom/android/server/notification/PreferencesHelper;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v23, v6

    const-string/jumbo v6, "check-notif-bubble"
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_84} :catch_aa

    move-object/from16 v24, v2

    const/16 v2, 0x18

    move/from16 v25, v3

    move v3, v5

    const/4 v5, 0x0

    move-object/from16 v28, v4

    move-object/from16 v29, v16

    move-object/from16 v31, v17

    move-object/from16 v27, v19

    move/from16 v7, v20

    move-object/from16 v30, v23

    move-object/from16 v26, v24

    move-object/from16 v4, p4

    :try_start_9c
    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_bc

    const/16 v22, 0x1

    goto :goto_bc

    :catch_a5
    move-exception v0

    :goto_a6
    move-object/from16 v10, v28

    goto/16 :goto_39f

    :catch_aa
    move-exception v0

    move-object/from16 v28, v4

    goto :goto_a6

    :cond_ae
    move v7, v1

    move-object/from16 v26, v2

    move-object/from16 v28, v4

    move v3, v5

    move-object/from16 v30, v6

    move-object/from16 v29, v16

    move-object/from16 v31, v17

    move-object/from16 v27, v19

    :cond_bc
    :goto_bc
    const-string/jumbo v1, "importance"

    const/16 v2, -0x3e8

    const/4 v4, 0x0

    invoke-interface {v15, v4, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-nez p2, :cond_d3

    if-ne v3, v7, :cond_d3

    const-string/jumbo v5, "userid"

    const/4 v6, 0x0

    invoke-interface {v15, v4, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    goto :goto_d6

    :cond_d3
    const/4 v6, 0x0

    move/from16 v5, p3

    :goto_d6
    invoke-interface {v15, v4, v14, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v17

    invoke-interface {v15, v4, v13, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    move/from16 p5, v1

    move/from16 v20, v7

    const/4 v1, 0x1

    invoke-interface {v15, v4, v12, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    const-string/jumbo v2, "creation_time"

    iget-object v1, v0, Lcom/android/server/notification/PreferencesHelper;->mClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-interface {v15, v4, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    move-wide/from16 v23, v0

    move-object v0, v11

    const/4 v2, 0x1

    invoke-interface {v15, v4, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    const/4 v1, -0x1

    move-object/from16 v21, v12

    invoke-interface {v15, v4, v10, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v16, v13

    const/4 v2, 0x0

    invoke-interface {v15, v4, v9, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v32, v14

    invoke-interface {v15, v4, v8, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v1, p4

    move/from16 v4, p5

    move-object/from16 v37, v0

    move v2, v5

    move-object/from16 v34, v8

    move-object/from16 v35, v9

    move-object/from16 v36, v10

    move-object/from16 v39, v16

    move/from16 v5, v17

    move-object/from16 v33, v18

    move-object/from16 v38, v21

    move/from16 v8, v22

    move-wide/from16 v9, v23

    move-object/from16 v40, v32

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v14}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(Ljava/lang/String;IIIIIZIJZIZI)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v3

    move v6, v4

    iput v8, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    move-object/from16 v2, v40

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v15, v7, v2, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    move-object/from16 v2, v39

    const/16 v4, -0x3e8

    invoke-interface {v15, v7, v2, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eqz p2, :cond_154

    if-nez v2, :cond_154

    iput v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    const/16 v41, 0x1

    :goto_150
    move-object/from16 v2, v38

    const/4 v9, 0x1

    goto :goto_157

    :cond_154
    move/from16 v41, v8

    goto :goto_150

    :goto_157
    invoke-interface {v15, v7, v2, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    move-object/from16 v2, v26

    invoke-interface {v15, v7, v2, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    const-string/jumbo v2, "sent_invalid_msg"

    invoke-interface {v15, v7, v2, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    const-string/jumbo v2, "sent_valid_msg"

    invoke-interface {v15, v7, v2, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    const-string/jumbo v2, "user_demote_msg_app"

    invoke-interface {v15, v7, v2, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    const-string/jumbo v2, "sent_valid_bubble"

    invoke-interface {v15, v7, v2, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidBubble:Z

    move-object/from16 v2, v37

    invoke-interface {v15, v7, v2, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowEdgeLighting:Z

    move-object/from16 v2, v36

    const/4 v5, -0x1

    invoke-interface {v15, v7, v2, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->edgeLightingState:I

    move-object/from16 v2, v35

    invoke-interface {v15, v7, v2, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowSubDisplayNoti:Z

    iget-object v2, v0, Lcom/android/server/notification/PreferencesHelper;->mOngoingActivityAllowedAppList:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1c0

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c0

    iget-object v2, v0, Lcom/android/server/notification/PreferencesHelper;->mOngoingActivityAllowedAppList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1be

    move v1, v9

    :goto_1bb
    move-object/from16 v2, v34

    goto :goto_1c2

    :cond_1be
    move v1, v8

    goto :goto_1bb

    :cond_1c0
    move v1, v5

    goto :goto_1bb

    :goto_1c2
    invoke-interface {v15, v7, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowOngoingActivity:I

    const-string/jumbo v1, "notification_alerts_enabled"

    invoke-interface {v15, v7, v1, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isNotificationAlertsEnabled:Z

    const-string/jumbo v1, "mute_for_wearable_app"

    invoke-interface {v15, v7, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->muteByWearable:I

    move-object/from16 v1, v33

    invoke-interface {v15, v7, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    const-string/jumbo v2, "allow_popup"

    invoke-interface {v15, v7, v2, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isAllowPopup:Z

    const-string/jumbo v2, "enable_reminder"

    invoke-interface {v15, v7, v2, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    move-object/from16 v2, p8

    if-eqz v2, :cond_22e

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v10, v31

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_208
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_208} :catch_a5

    move-object/from16 v10, v28

    :try_start_20a
    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_230

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v5, v30

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    goto :goto_230

    :catch_22b
    move-exception v0

    goto/16 :goto_39f

    :cond_22e
    move-object/from16 v10, v28

    :cond_230
    :goto_230
    sget-boolean v2, Lcom/android/server/notification/NmRune;->NM_SUPPORT_HIDE_CONTENT_CONVERSATION_PACKAGE:Z

    if-eqz v2, :cond_25e

    iget v2, v0, Lcom/android/server/notification/PreferencesHelper;->mHideContentXmlVersion:I

    if-nez v2, :cond_25e

    iget v2, v0, Lcom/android/server/notification/PreferencesHelper;->mDeviceFirstApiLevel:I

    const/16 v5, 0x21

    if-lt v2, v5, :cond_25e

    iget-object v2, v0, Lcom/android/server/notification/PreferencesHelper;->mAllowList:Ljava/util/HashSet;

    iget-object v5, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25e

    iput v8, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v29

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_264

    :cond_25e
    invoke-interface {v15, v7, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    :goto_264
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v11

    move v12, v8

    move v13, v12

    :goto_26a
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    if-eq v1, v9, :cond_27a

    const/4 v2, 0x3

    if-ne v1, v2, :cond_27e

    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v11, :cond_27a

    goto :goto_27e

    :cond_27a
    const/16 v5, -0x2710

    goto/16 :goto_35f

    :cond_27e
    :goto_27e
    if-eq v1, v2, :cond_283

    const/4 v2, 0x4

    if-ne v1, v2, :cond_28c

    :cond_283
    move-object v1, v15

    move-object/from16 v2, v27

    move/from16 v4, v41

    :goto_288
    const/16 v5, -0x2710

    goto/16 :goto_356

    :cond_28c
    invoke-interface {v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v1, "channelGroup"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_297
    .catch Ljava/lang/Exception; {:try_start_20a .. :try_end_297} :catch_22b

    const-string/jumbo v2, "name"

    if-eqz v1, :cond_2df

    :try_start_29c
    iget-object v1, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v4, 0x1770

    if-lt v1, v4, :cond_2c1

    if-nez v12, :cond_283

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Skipping further groups for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v9

    goto :goto_26a

    :cond_2c1
    const-string/jumbo v1, "id"

    invoke-interface {v15, v7, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v7, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2df

    new-instance v5, Landroid/app/NotificationChannelGroup;

    invoke-direct {v5, v1, v4}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v15}, Landroid/app/NotificationChannelGroup;->populateFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2df
    const-string/jumbo v1, "channel"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_320

    iget-object v1, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/16 v4, 0x1388

    if-lt v1, v4, :cond_30e

    if-nez v13, :cond_283

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Skipping further channels for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v9

    goto/16 :goto_26a

    :cond_30e
    iget-object v1, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v0, v4, v1}, Lcom/android/server/notification/PreferencesHelper;->hasNotificationChannelsBypassingDnd(ILjava/lang/String;)Z

    move-result v5

    move-object v1, v15

    move/from16 v4, v41

    move-object v15, v2

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/PreferencesHelper;->restoreChannel(Lcom/android/modules/utils/TypedXmlPullParser;ZLcom/android/server/notification/PreferencesHelper$PackagePreferences;ZZ)V

    goto :goto_324

    :cond_320
    move-object v1, v15

    move/from16 v4, v41

    move-object v15, v2

    :goto_324
    const-string/jumbo v2, "delegate"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_352

    move-object/from16 v2, v27

    const/16 v5, -0x2710

    invoke-interface {v1, v7, v2, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v14

    invoke-static {v1, v15}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v8, "enabled"

    invoke-interface {v1, v7, v8, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eq v14, v5, :cond_34e

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_34e

    new-instance v7, Lcom/android/server/notification/PreferencesHelper$Delegate;

    invoke-direct {v7, v14, v15, v8}, Lcom/android/server/notification/PreferencesHelper$Delegate;-><init>(ILjava/lang/String;Z)V

    goto :goto_34f

    :cond_34e
    const/4 v7, 0x0

    :goto_34f
    iput-object v7, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;
    :try_end_351
    .catch Ljava/lang/Exception; {:try_start_29c .. :try_end_351} :catch_22b

    goto :goto_356

    :cond_352
    move-object/from16 v2, v27

    goto/16 :goto_288

    :goto_356
    move-object v15, v1

    move-object/from16 v27, v2

    move/from16 v41, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto/16 :goto_26a

    :goto_35f
    :try_start_35f
    invoke-virtual {v0, v3}, Lcom/android/server/notification/PreferencesHelper;->deleteDefaultChannelIfNeededLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z
    :try_end_362
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_35f .. :try_end_362} :catch_363
    .catch Ljava/lang/Exception; {:try_start_35f .. :try_end_362} :catch_22b

    goto :goto_379

    :catch_363
    move-exception v0

    :try_start_364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleteDefaultChannelIfNeededLocked - Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_379
    if-eqz p6, :cond_3a4

    iput v6, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    iput-boolean v9, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->migrateToPm:Z

    iget v0, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    if-eq v0, v5, :cond_3a4

    new-instance v1, Lcom/android/server/notification/PermissionHelper$PackagePermission;

    iget-object v2, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget v4, v3, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-eqz v4, :cond_391

    move v7, v9

    goto :goto_392

    :cond_391
    const/4 v7, 0x0

    :goto_392
    invoke-static {v3}, Lcom/android/server/notification/PreferencesHelper;->hasUserConfiguredSettings(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;)Z

    move-result v3

    invoke-direct {v1, v2, v0, v7, v3}, Lcom/android/server/notification/PermissionHelper$PackagePermission;-><init>(Ljava/lang/String;IZZ)V

    move-object/from16 v2, p7

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_39e
    .catch Ljava/lang/Exception; {:try_start_364 .. :try_end_39e} :catch_22b

    goto :goto_3a4

    :goto_39f
    const-string v1, "Failed to restore pkg"

    invoke-static {v10, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3a4
    :goto_3a4
    return-void
.end method

.method public final setAllowOngoingActivityState(IILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1, p3}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    iput p2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowOngoingActivity:I

    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final setAppBypassDndList(IZLjava/util/List;)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_87

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v4, v3

    :goto_12
    if-ge v4, v1, :cond_47

    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget-object v6, v5, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_26
    :goto_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannel;

    invoke-virtual {p0, v5, v7}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v8

    if-eqz v8, :cond_26

    invoke-virtual {v7, v3}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    goto :goto_26

    :catchall_42
    move-exception p0

    goto :goto_9c

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_47
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4b

    aget-object v4, v1, v3

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1, v4}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_77
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    invoke-virtual {v4, v2}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    goto :goto_77

    :cond_87
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/server/notification/PreferencesHelper;->getAppsBypassingDndCount(I)I

    move-result p3

    if-lez p3, :cond_92

    goto :goto_93

    :cond_92
    move v2, v3

    :goto_93
    iget-boolean p3, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasPriorityChannels:Z

    if-eq p3, v2, :cond_9a

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->updateCurrentUserHasPriorityChannels(IZ)V

    :cond_9a
    monitor-exit v0

    return-void

    :goto_9c
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_3 .. :try_end_9d} :catchall_42

    throw p0
.end method

.method public final setChannelsBypassingDndForMode(IZZ)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    if-eqz p2, :cond_86

    iget-boolean v4, v0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasPriorityChannels:Z

    if-nez v4, :cond_93

    iget-object v4, v0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/ZenModeHelper;->getAppsToBypassDndForEnabledForMode()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_15
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_20
    :goto_20
    const/4 v10, 0x1

    if-ge v9, v7, :cond_78

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v9, v9, 0x1

    check-cast v11, Ljava/lang/String;

    if-nez v11, :cond_2e

    goto :goto_20

    :cond_2e
    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x2

    if-ge v13, v14, :cond_39

    goto :goto_20

    :cond_39
    const/4 v13, 0x0

    :goto_3a
    iget-object v14, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v13, v14, :cond_20

    iget-object v14, v0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget-object v15, v14, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v3, v12, v16

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    iget v3, v14, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    aget-object v15, v12, v10

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-ne v3, v15, :cond_75

    iget-object v3, v0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    iget v14, v14, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v3, v14}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    move-result v3

    if-nez v3, :cond_74

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_75

    :catchall_72
    move-exception v0

    goto :goto_84

    :cond_74
    move v8, v10

    :cond_75
    :goto_75
    add-int/lit8 v13, v13, 0x1

    goto :goto_3a

    :cond_78
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v5
    :try_end_7c
    .catchall {:try_start_15 .. :try_end_7c} :catchall_72

    if-eqz v8, :cond_93

    iput-boolean v10, v0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasPriorityChannels:Z

    invoke-virtual {v0, v1, v10, v2}, Lcom/android/server/notification/PreferencesHelper;->updateZenPolicy(IZZ)V

    return-void

    :goto_84
    :try_start_84
    monitor-exit v5
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_72

    throw v0

    :cond_86
    const/16 v16, 0x0

    iget-boolean v3, v0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasPriorityChannels:Z

    if-eqz v3, :cond_93

    move/from16 v3, v16

    iput-boolean v3, v0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasPriorityChannels:Z

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/notification/PreferencesHelper;->updateZenPolicy(IZZ)V

    :cond_93
    return-void
.end method

.method public final setHideContentAllowList(Ljava/util/List;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mAllowList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_1f

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mAllowList:Ljava/util/HashSet;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setHideContentAllowList - size = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mAllowList:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "NotificationPrefHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setNotificationAlertsEnabledForPackage(Ljava/lang/String;IZ)V
    .registers 6

    const-string/jumbo v0, "Set a isNotificationAlertsEnabled : "

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getPackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    if-eqz p0, :cond_25

    iput-boolean p3, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isNotificationAlertsEnabled:Z

    const-string/jumbo p1, "NotificationPrefHelper"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isNotificationAlertsEnabled:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :catchall_23
    move-exception p0

    goto :goto_27

    :cond_25
    :goto_25
    monitor-exit v1

    return-void

    :goto_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_23

    throw p0
.end method

.method public final setOngoingActivityAppList(Ljava/util/List;)V
    .registers 10

    const-string/jumbo v0, "NotificationPrefHelper"

    if-nez p1, :cond_c

    const-string/jumbo p0, "ongoing activity app list is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mOngoingActivityAllowedAppList:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_17
    if-ge v3, v1, :cond_67

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v2

    array-length v6, v4

    const/4 v7, 0x1

    if-le v6, v7, :cond_3b

    const-string/jumbo v6, "off"

    aget-object v4, v4, v7

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    move v7, v2

    :cond_3b
    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mOngoingActivityAllowedAppList:Landroid/util/ArrayMap;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setOngoingActivityAppList package= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " defaultOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_67
    return-void
.end method

.method public final setReminderEnabled(ILjava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    iput-boolean p3, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final setWearableAppMuted(IILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1, p3}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p0

    iput p2, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->muteByWearable:I

    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final syncHasPriorityChannels()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/os/UserHandle;)Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v0, v0, Landroid/app/NotificationManager$Policy;->state:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasPriorityChannels:Z

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/PreferencesHelper;->updateCurrentUserHasPriorityChannels(IZ)V

    return-void
.end method

.method public final updateBadgingEnabled()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_e
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_42

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "notification_badging"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_34

    move v5, v7

    goto :goto_35

    :cond_34
    move v5, v0

    :goto_35
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v4, v5, :cond_3d

    goto :goto_3e

    :cond_3d
    move v7, v0

    :goto_3e
    or-int/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_42
    if-eqz v2, :cond_47

    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_47
    return-void
.end method

.method public final updateBubblesEnabled()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_e
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_42

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "notification_bubbles"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v7, :cond_34

    move v5, v7

    goto :goto_35

    :cond_34
    move v5, v0

    :goto_35
    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mBubblesEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v4, v5, :cond_3d

    goto :goto_3e

    :cond_3d
    move v7, v0

    :goto_3e
    or-int/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_42
    if-eqz v2, :cond_47

    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_47
    return-void
.end method

.method public final updateChildrenConversationChannels(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .registers 13

    invoke-virtual {p2, p3}, Landroid/app/NotificationChannel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_16a

    :cond_8
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isConversation()Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_16a

    :cond_10
    iget-object v0, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isConversation()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v5, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-static {v3, v1}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;I)I

    move-result v6

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_62

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v7

    if-eq v1, v7, :cond_62

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    move v1, v2

    goto :goto_63

    :cond_62
    const/4 v1, 0x0

    :goto_63
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_7d

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v7

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v8

    if-eq v7, v8, :cond_7d

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    move v1, v2

    :cond_7d
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v7

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_97

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v7

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v8

    if-eq v7, v8, :cond_97

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setImportance(I)V

    move v1, v2

    :cond_97
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v7

    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_c2

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v7

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v8

    if-ne v7, v8, :cond_b3

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v7

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v8

    if-eq v7, v8, :cond_c2

    :cond_b3
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v1

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setLightColor(I)V

    move v1, v2

    :cond_c2
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v7

    and-int/lit8 v7, v7, 0x20

    if-nez v7, :cond_e4

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e4

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    move v1, v2

    :cond_e4
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v7

    and-int/lit8 v7, v7, 0x10

    if-nez v7, :cond_121

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v7

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v7

    if-eqz v7, :cond_112

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v7

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getVibrationEffect()Landroid/os/VibrationEffect;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_112

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v7

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v8

    if-eq v7, v8, :cond_121

    :cond_112
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    move v1, v2

    :cond_121
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v7

    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_13b

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v7

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v8

    if-eq v7, v8, :cond_13b

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    move v1, v2

    :cond_13b
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v7

    and-int/lit16 v7, v7, 0x100

    if-nez v7, :cond_155

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v7

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v8

    if-eq v7, v8, :cond_155

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setAllowBubbles(I)V

    move v1, v2

    :cond_155
    if-eqz v1, :cond_1a

    invoke-static {v3, v5}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    const/4 v7, 0x1

    invoke-interface/range {v2 .. v7}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelModified(Landroid/app/NotificationChannel;ILjava/lang/String;IZ)V

    goto/16 :goto_1a

    :cond_16a
    :goto_16a
    return-void
.end method

.method public final updateConfig()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/PreferencesHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    check-cast p0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->requestSort()V

    return-void
.end method

.method public final updateCurrentUserHasPriorityChannels(IZ)V
    .registers 13

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v5, 0x0

    invoke-virtual {v3, v7, v5}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v3

    array-length v6, v3

    move v7, v5

    :goto_2a
    if-ge v7, v6, :cond_38

    aget v8, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    :cond_38
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3e
    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move v3, v5

    :goto_45
    if-ge v3, v2, :cond_98

    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget v7, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_60

    goto :goto_95

    :cond_60
    iget-object v7, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_95

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationChannel;

    invoke-virtual {p0, v6, v8}, Lcom/android/server/notification/PreferencesHelper;->channelIsLiveLocked(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;)Z

    move-result v9

    if-eqz v9, :cond_6a

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v8

    if-eqz v8, :cond_6a

    new-instance v7, Landroid/util/Pair;

    iget-object v8, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    iget v6, v6, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_95

    :catchall_93
    move-exception p0

    goto :goto_ce

    :cond_95
    :goto_95
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    :cond_98
    monitor-exit v1
    :try_end_99
    .catchall {:try_start_3e .. :try_end_99} :catchall_93

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_9f
    if-ltz v1, :cond_bd

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, p0, Lcom/android/server/notification/PreferencesHelper;->mPermissionHelper:Lcom/android/server/notification/PermissionHelper;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    move-result v3

    if-nez v3, :cond_ba

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_ba
    add-int/lit8 v1, v1, -0x1

    goto :goto_9f

    :cond_bd
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_c4

    move v5, v2

    :cond_c4
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasPriorityChannels:Z

    if-eq v0, v5, :cond_cd

    iput-boolean v5, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasPriorityChannels:Z

    invoke-virtual {p0, p1, v5, p2}, Lcom/android/server/notification/PreferencesHelper;->updateZenPolicy(IZZ)V

    :cond_cd
    return-void

    :goto_ce
    :try_start_ce
    monitor-exit v1
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_93

    throw p0
.end method

.method public final updateDefaultApps(ILandroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper;->mPackagePreferences:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    iget v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne p1, v3, :cond_d

    if-eqz p2, :cond_d

    iget-object v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    iget-boolean v4, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->fixedImportance:Z

    if-nez v4, :cond_d

    iget-object v2, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    invoke-virtual {v4, v3}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    goto :goto_3c

    :catchall_4c
    move-exception p0

    goto :goto_8d

    :cond_4e
    invoke-virtual {p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_52
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    iget-object p3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object p2

    const/4 p3, 0x1

    iput-boolean p3, p2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->defaultAppLockedImportance:Z

    iget-object p2, p2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    invoke-virtual {v1, p3}, Landroid/app/NotificationChannel;->setImportanceLockedByCriticalDeviceFunction(Z)V

    goto :goto_7b

    :cond_8b
    monitor-exit v0

    return-void

    :goto_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_3 .. :try_end_8e} :catchall_4c

    throw p0
.end method

.method public final updateMediaNotificationFilteringEnabled()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "qs_media_controls"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110223

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    iget-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    if-eq v2, v0, :cond_2a

    iput-boolean v2, p0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_2a
    return-void
.end method

.method public final updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZIZ)V
    .registers 19

    move/from16 v5, p4

    const-string/jumbo v0, "NameNotFoundException pkg "

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_f
    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    move-result-object v7

    iget-object v3, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/app/NotificationChannel;

    if-eqz v8, :cond_117

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_117

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v3

    const/4 v9, 0x1

    if-ne v3, v9, :cond_39

    const/16 v3, -0x3e8

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    goto :goto_39

    :catchall_35
    move-exception v0

    move-object p0, v0

    goto/16 :goto_11f

    :cond_39
    :goto_39
    if-eqz v5, :cond_46

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->lockFields(I)V

    invoke-static {v8, p3}, Lcom/android/server/notification/PreferencesHelper;->lockFieldsForUpdateLocked(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    goto :goto_4d

    :cond_46
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->unlockFields(I)V

    :goto_4d
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->isImportanceLockedByCriticalDeviceFunction()Z

    move-result v3

    const/4 v10, 0x0

    if-eqz v3, :cond_95

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->isBlockable()Z

    move-result v3

    if-nez v3, :cond_95

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3
    :try_end_5e
    .catchall {:try_start_f .. :try_end_5e} :catchall_35

    if-eqz v3, :cond_95

    :try_start_60
    iget-object v3, p0, Lcom/android/server/notification/PreferencesHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v11, 0x80

    invoke-virtual {v3, p1, v11, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_95

    const-string/jumbo v4, "com.samsung.android.notification.blockable"

    invoke-virtual {v3, v4, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_95

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/app/NotificationChannel;->setImportance(I)V
    :try_end_80
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_60 .. :try_end_80} :catch_81
    .catchall {:try_start_60 .. :try_end_80} :catchall_35

    goto :goto_95

    :catch_81
    :try_start_81
    const-string/jumbo v3, "NotificationPrefHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_95
    :goto_95
    iget-object v0, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/notification/PreferencesHelper;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v0

    if-eqz v0, :cond_ac

    const/4 v0, 0x2

    goto :goto_ad

    :cond_ac
    move v0, v10

    :goto_ad
    iput v0, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    iput v0, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    move v0, v9

    goto :goto_be

    :cond_bd
    move v0, v10

    :goto_be
    invoke-virtual {v8, p3}, Landroid/app/NotificationChannel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e0

    invoke-static {p3, p1}, Lcom/android/server/notification/PreferencesHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    iget-object v0, p0, Lcom/android/server/notification/PreferencesHelper;->mNotificationChannelLogger:Lcom/android/server/notification/NotificationChannelLogger;

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    invoke-static {v8, v3}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;I)I

    move-result v4

    move-object v3, p1

    move v2, p2

    move-object v1, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/notification/NotificationChannelLogger;->logNotificationChannelModified(Landroid/app/NotificationChannel;ILjava/lang/String;IZ)V

    move v0, v9

    :cond_e0
    if-eqz p4, :cond_f1

    invoke-static {}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags;->getResolver()Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    move-result-object p1

    sget-object v2, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->PROPAGATE_CHANNEL_UPDATES_TO_CONVERSATIONS:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    invoke-interface {p1, v2}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->isEnabled(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)Z

    move-result p1

    if-eqz p1, :cond_f1

    invoke-virtual {p0, v7, v8, p3}, Lcom/android/server/notification/PreferencesHelper;->updateChildrenConversationChannels(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    :cond_f1
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result p1

    iget-boolean v2, p0, Lcom/android/server/notification/PreferencesHelper;->mCurrentUserHasPriorityChannels:Z

    if-ne p1, v2, :cond_106

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    if-eq p1, v1, :cond_104

    goto :goto_106

    :cond_104
    move v9, v10

    goto :goto_107

    :cond_106
    :goto_106
    move v0, v9

    :goto_107
    monitor-exit v6
    :try_end_108
    .catchall {:try_start_81 .. :try_end_108} :catchall_35

    if-eqz v9, :cond_111

    move/from16 p1, p5

    move/from16 v1, p6

    invoke-virtual {p0, p1, v1}, Lcom/android/server/notification/PreferencesHelper;->updateCurrentUserHasPriorityChannels(IZ)V

    :cond_111
    if-eqz v0, :cond_116

    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->updateConfig()V

    :cond_116
    return-void

    :cond_117
    :try_start_117
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Channel does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_11f
    monitor-exit v6
    :try_end_120
    .catchall {:try_start_117 .. :try_end_120} :catchall_35

    throw p0
.end method

.method public final updateZenPolicy(IZZ)V
    .registers 21

    move/from16 v0, p1

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/android/server/notification/PreferencesHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2, v1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/os/UserHandle;)Landroid/app/NotificationManager$Policy;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x5

    if-eqz v3, :cond_34

    new-instance v6, Landroid/app/NotificationManager$Policy;

    iget v7, v3, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v8, v3, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v9, v3, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v10, v3, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iget v12, v3, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    iget v13, v3, Landroid/app/NotificationManager$Policy;->exceptionContactsFlag:I

    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object v14

    iget v15, v3, Landroid/app/NotificationManager$Policy;->appBypassDndFlag:I

    invoke-virtual {v3}, Landroid/app/NotificationManager$Policy;->getAppBypassDndList()Ljava/util/List;

    move-result-object v16

    move/from16 v11, p2

    invoke-direct/range {v6 .. v16}, Landroid/app/NotificationManager$Policy;-><init>(IIIIIIILjava/util/List;ILjava/util/List;)V

    if-eqz p3, :cond_30

    move v4, v5

    :cond_30
    invoke-virtual {v2, v1, v6, v4, v0}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/os/UserHandle;Landroid/app/NotificationManager$Policy;II)V

    return-void

    :cond_34
    new-instance v7, Landroid/app/NotificationManager$Policy;

    iget v8, v3, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v9, v3, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v10, v3, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v11, v3, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iget v13, v3, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    move/from16 v12, p2

    invoke-direct/range {v7 .. v13}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    if-eqz p3, :cond_48

    move v4, v5

    :cond_48
    invoke-virtual {v2, v1, v7, v4, v0}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/os/UserHandle;Landroid/app/NotificationManager$Policy;II)V

    return-void
.end method

.method public final writePackageXml(Lcom/android/server/notification/PreferencesHelper$PackagePreferences;Lcom/android/modules/utils/TypedXmlSerializer;Landroid/util/ArrayMap;Z)V
    .registers 13

    const/4 v0, 0x0

    const-string/jumbo v1, "package"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {p2, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    const-string/jumbo v4, "importance"

    const/16 v5, -0x3e8

    if-nez v2, :cond_43

    new-instance v2, Landroid/util/Pair;

    iget v6, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->pkg:Ljava/lang/String;

    invoke-direct {v2, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    if-eqz v6, :cond_3b

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3b

    const/4 v6, 0x3

    goto :goto_3c

    :cond_3b
    const/4 v6, 0x0

    :goto_3c
    invoke-interface {p2, v0, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    :cond_43
    iget p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->importance:I

    if-eq p3, v5, :cond_4a

    invoke-interface {p2, v0, v4, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4a
    :goto_4a
    iget p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->priority:I

    if-eqz p3, :cond_54

    const-string/jumbo v2, "priority"

    invoke-interface {p2, v0, v2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_54
    iget p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->visibility:I

    if-eq p3, v5, :cond_5e

    const-string/jumbo v2, "visibility"

    invoke-interface {p2, v0, v2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5e
    iget p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    if-eqz p3, :cond_68

    const-string/jumbo v2, "allow_bubble"

    invoke-interface {p2, v0, v2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_68
    const-string/jumbo p3, "show_badge"

    iget-boolean v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p3, "app_user_locked_fields"

    iget v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->lockedAppFields:I

    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p3, "sent_invalid_msg"

    iget-boolean v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentInvalidMessage:Z

    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p3, "sent_valid_msg"

    iget-boolean v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidMessage:Z

    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p3, "user_demote_msg_app"

    iget-boolean v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userDemotedMsgApp:Z

    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p3, "sent_valid_bubble"

    iget-boolean v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->hasSentValidBubble:Z

    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    iget p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    const/16 v2, -0x2710

    if-ne p3, v2, :cond_ae

    const-string/jumbo p3, "creation_time"

    iget-wide v6, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->creationTime:J

    invoke-interface {p2, v0, p3, v6, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p3, "userid"

    iget v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->userIdWhenUidUnknown:I

    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_ae
    const-string/jumbo p3, "allow_edge_lighting"

    iget-boolean v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowEdgeLighting:Z

    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p3, "edge_lighting_state"

    iget v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->edgeLightingState:I

    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p3, "allow_sub_display_noti"

    iget-boolean v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowSubDisplayNoti:Z

    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p3, "allow_ongoing_activity_setting"

    iget v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->allowOngoingActivity:I

    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p3, "notification_alerts_enabled"

    iget-boolean v2, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isNotificationAlertsEnabled:Z

    invoke-interface {p2, v0, p3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    iget p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->muteByWearable:I

    const/4 v2, -0x1

    if-eq p3, v2, :cond_e1

    const-string/jumbo v2, "mute_for_wearable_app"

    invoke-interface {p2, v0, v2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_e1
    iget p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->appLockScreenVisibility:I

    if-eq p3, v5, :cond_eb

    const-string/jumbo v2, "app_lockscreen_visibility"

    invoke-interface {p2, v0, v2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_eb
    iget-boolean p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->isAllowPopup:Z

    const/4 v2, 0x1

    if-eq p3, v2, :cond_f6

    const-string/jumbo v4, "allow_popup"

    invoke-interface {p2, v0, v4, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f6
    iget-boolean p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->reminder:Z

    if-eqz p3, :cond_100

    const-string/jumbo v4, "enable_reminder"

    invoke-interface {p2, v0, v4, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_100
    const-string/jumbo p3, "uid"

    if-nez p4, :cond_10a

    iget v4, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->uid:I

    invoke-interface {p2, v0, p3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_10a
    iget-object v4, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    if-eqz v4, :cond_131

    const-string/jumbo v4, "delegate"

    invoke-interface {p2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-object v5, v5, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    invoke-interface {p2, v0, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget v3, v3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUid:I

    invoke-interface {p2, v0, p3, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->delegate:Lcom/android/server/notification/PreferencesHelper$Delegate;

    iget-boolean p3, p3, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    if-eq p3, v2, :cond_12e

    const-string/jumbo v2, "enabled"

    invoke-interface {p2, v0, v2, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_12e
    invoke-interface {p2, v0, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_131
    iget-object p3, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->groups:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_13b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v2, p2}, Landroid/app/NotificationChannelGroup;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    goto :goto_13b

    :cond_14b
    iget-object p1, p1, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_155
    :goto_155
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_173

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/NotificationChannel;

    if-eqz p4, :cond_16f

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_155

    iget-object v2, p0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p2, v2}, Landroid/app/NotificationChannel;->writeXmlForBackup(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V

    goto :goto_155

    :cond_16f
    invoke-virtual {p3, p2}, Landroid/app/NotificationChannel;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_155

    :cond_173
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
