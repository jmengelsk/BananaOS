.class public final Lcom/android/server/wm/ActivityManagerPerformance;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final AMP_ENABLE:Z

.field public static final AMP_PERF_ENABLE:Z

.field public static final AMP_RELAUNCH_RESUME_ON:Z

.field public static final DEBUG:Z

.field public static final DEBUG_TRACE:Z

.field public static final RANDOM:Ljava/util/Random;

.field public static final TIMEOUT_ACT_RESUME:I

.field public static final TIMEOUT_ACT_START:I

.field public static final TIMEOUT_APP_SWITCH:I

.field public static final TIMEOUT_PREV_RESUME:I

.field public static final WALLPAPER_PROFILE:[Ljava/lang/String;

.field public static booster:Lcom/android/server/wm/ActivityManagerPerformance;

.field public static curTopAct:Lcom/android/server/wm/ActivityRecord;

.field public static curTopState:I

.field public static final gBlockedPkgs:[Ljava/lang/String;

.field public static final gSystemuiPkgs:[Ljava/lang/String;

.field public static final isChinaModel:Z

.field public static isPerfReserveSupport:Z

.field public static mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

.field public static mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

.field public static final mAppLaunchPackagesTimeOutLM:[Ljava/lang/String;

.field public static final mAppLaunchPackagesTimeOutM:[Ljava/lang/String;

.field public static mContext:Landroid/content/Context;

.field public static mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

.field public static mFoldListenedTime:J

.field public static final mLockAppSwitch:Ljava/lang/Object;

.field public static final mLockinit:Ljava/lang/Object;

.field public static final pkgDecoder:Ljava/util/Base64$Decoder;

.field public static prevSwitchActivity:Lcom/android/server/wm/ActivityRecord;

.field public static rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

.field public static final sLowPerformancePkgList:[Ljava/lang/String;

.field public static sLowPerformancePkgSet:Ljava/util/HashSet;

.field public static sNextTimeToSendSlugBigdata:J


# instance fields
.field public isMultiWindowResume:Z

.field public lastHomeBoostedTime:J

.field public lastHomePressedTime:J

.field public final mAppLaunchTimeCountStats:Ljava/util/Map;

.field public final mBigdataSlugSkipPackage:Ljava/util/Set;

.field public mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

.field public mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

.field public mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

.field public mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

.field public mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

.field public mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

.field public mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

.field public mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

.field public mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

.field public final mDeviceStateCallback:Lcom/android/server/wm/ActivityManagerPerformance$1;

.field public final mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field public mDramSize:J

.field public final mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

.field public mHqmManager:Landroid/os/SemHqmManager;

.field public final mIntentReceiver:Lcom/android/server/wm/ActivityManagerPerformance$2;

.field public final mIsAppLaunchDBInit:Z

.field public mIsFolded:Z

.field public mIsMidGroundCpuSetEnable:Z

.field public mIsRunningAmsAppLaunch:Z

.field public mIsScreenOn:Z

.field public mIsSdhmsInitCompleted:Z

.field public final mIsTaskBoostExist:Z

.field public final mLockActResume:Ljava/lang/Object;

.field public final mLockActStart:Ljava/lang/Object;

.field public final mLockAppLaunch:Ljava/lang/Object;

.field public final mLockHome:Ljava/lang/Object;

.field public final mLockRelaunchResume:Ljava/lang/Object;

.field public final mLockTail:Ljava/lang/Object;

.field public mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

.field public mRunningAmsAppLaunchPackageName:Ljava/lang/String;

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

.field public needSkipResume:Z

.field public rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

.field public rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

.field public rLastActHome:Lcom/android/server/wm/ActivityRecord;

.field public rLastActTail:Lcom/android/server/wm/ActivityRecord;

.field public rLastRelaunchResume:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public static -$$Nest$mwriteAppLaunchTimeCountStatsToDB(Lcom/android/server/wm/ActivityManagerPerformance;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    const-string/jumbo v0, "failed writeAppLaunchTimeCountStatsToDB, "

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ActivityManagerPerformance"

    if-eqz v1, :cond_54

    :try_start_14
    sget-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    const-string v4, "AppLaunchTimeCountStats"

    invoke-static {v3, v1, v4}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    sget-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "lastModifiedTime"

    invoke-static {v1, v3, v4}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    if-eqz p0, :cond_30

    const-string/jumbo v1, "writeAppLaunchTimeCountStatsToDB"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2d} :catch_2e
    .catchall {:try_start_14 .. :try_end_2d} :catchall_4c

    goto :goto_30

    :catch_2e
    move-exception v1

    goto :goto_36

    :cond_30
    :goto_30
    sget-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_53

    :goto_36
    if-eqz p0, :cond_30

    :try_start_38
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_38 .. :try_end_4b} :catchall_4c

    goto :goto_30

    :catchall_4c
    move-exception p0

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw p0

    :goto_53
    return-void

    :cond_54
    const-string/jumbo p0, "failed DB writable open to writeAppLaunchTimeCountStatsToDB."

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 18

    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "false"

    const-string/jumbo v3, "true"

    if-eqz v0, :cond_22

    const-string/jumbo v0, "sys.config.amp_debug"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_22

    :cond_20
    move v0, v1

    goto :goto_23

    :cond_22
    :goto_22
    const/4 v0, 0x1

    :goto_23
    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    const-string/jumbo v0, "sys.config.amp_debug_trace"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    const-string/jumbo v0, "sys.config.amp_enable"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    const-string/jumbo v0, "sys.config.amp_perf_enable"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    const-string/jumbo v0, "sys.config.amp_relaunch_resume"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_RELAUNCH_RESUME_ON:Z

    const-string/jumbo v0, "sys.config.amp_to_act_resume"

    const-string v2, "1000"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    const-string/jumbo v0, "sys.config.amp_to_act_start"

    const-string v2, "2000"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    const-string/jumbo v0, "sys.config.amp_to_app_switch"

    const-string v2, "3000"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    const-string/jumbo v0, "sys.config.amp_to_prev_resume"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "China"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->isChinaModel:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v2

    sput-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->pkgDecoder:Ljava/util/Base64$Decoder;

    const-string/jumbo v2, "Y29tLnNlYy5hbmRyb2lkLmFwcC5zYnJvd3Nlcg=="

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Y29tLmFuZHJvaWQuY2hyb21l"

    invoke-static {v4}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->sLowPerformancePkgList:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "Y29tLnNhbXN1bmcuYW5kcm9pZC5ob21laHVi"

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "Y29tLm5obi5hbmRyb2lkLnNlYXJjaA=="

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "Y29tLmdvb2dsZS5hbmRyb2lkLmdt"

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v2, "Y29tLnNhbXN1bmcuYW5kcm9pZC5lbWFpbC51aQ=="

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v2, "Y29tLmFuZHJvaWQudmVuZGluZw=="

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v2, "Y29tLnNhbXN1bmcuZXZlcmdsYWRlcy52aWRlbw=="

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v2, "Y29tLnNhbXN1bmcuYW5kcm9pZC52aWRlbw=="

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v2, "Y29tLnNlYy5hbmRyb2lkLmdhbGxlcnkzZA=="

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v2, "Y29tLmdvb2dsZS5hbmRyb2lkLmFwcHMubWFwcw=="

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v2, "Y29tLmJhaWR1LmFwcHNlYXJjaA=="

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v2, "Y29tLnNpbmEud2VpYm8="

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v2, "Y29tLmJhaWR1LkJhaWR1TWFw"

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v2, "Y29tLnR3aXR0ZXIuYW5kcm9pZA=="

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    filled-new-array/range {v4 .. v17}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchPackagesTimeOutLM:[Ljava/lang/String;

    const-string/jumbo v2, "Y29tLnNlYy5hbmRyb2lkLmFwcC5jYW1lcmE="

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchPackagesTimeOutM:[Ljava/lang/String;

    const-string/jumbo v2, "Y29tLnNlYy5hbmRyb2lkLmFwcC50aW55bQ=="

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->gBlockedPkgs:[Ljava/lang/String;

    sput-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->isPerfReserveSupport:Z

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1e

    invoke-static {v3, v4}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    sput-wide v3, Lcom/android/server/wm/ActivityManagerPerformance;->sNextTimeToSendSlugBigdata:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/wm/ActivityManagerPerformance;->mFoldListenedTime:J

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mLockinit:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->prevSwitchActivity:Lcom/android/server/wm/ActivityRecord;

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    const-string/jumbo v0, "MidgroundProcess"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->WALLPAPER_PROFILE:[Ljava/lang/String;

    const-string/jumbo v0, "Y29tLmFuZHJvaWQuc3lzdGVtdWk="

    invoke-static {v0}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Y29tLnNlYy5hbmRyb2lkLmRleHN5c3RlbXVp"

    invoke-static {v1}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->gSystemuiPkgs:[Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 29

    move-object/from16 v1, p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const-string/jumbo v2, "YW5kcm9pZA=="

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "Y29tLmdvb2dsZS5hbmRyb2lkLnBhY2thZ2VpbnN0YWxsZXI="

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "Y29tLnRydWVjYWxsZXI="

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "Y29tLmdvb2dsZS5hbmRyb2lkLnBlcm1pc3Npb25jb250cm9sbGVy"

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "Y29tLnNlYy5hbmRyb2lkLmFwcC5sYXVuY2hlcg=="

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v2, "c3lzdGVtdWk="

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mBigdataSlugSkipPackage:Ljava/util/Set;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIsSdhmsInitCompleted:Z

    iput-boolean v2, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIsMidGroundCpuSetEnable:Z

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mDramSize:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchTimeCountStats:Ljava/util/Map;

    iput-boolean v2, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIsAppLaunchDBInit:Z

    iput-boolean v2, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIsFolded:Z

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v5, Lcom/android/server/wm/ActivityManagerPerformance$1;

    invoke-direct {v5, v1}, Lcom/android/server/wm/ActivityManagerPerformance$1;-><init>(Lcom/android/server/wm/ActivityManagerPerformance;)V

    iput-object v5, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mDeviceStateCallback:Lcom/android/server/wm/ActivityManagerPerformance$1;

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mLockTail:Ljava/lang/Object;

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mLockHome:Ljava/lang/Object;

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mLockRelaunchResume:Ljava/lang/Object;

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mLockAppLaunch:Ljava/lang/Object;

    iput-boolean v2, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIsRunningAmsAppLaunch:Z

    const-string v5, ""

    iput-object v5, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mRunningAmsAppLaunchPackageName:Ljava/lang/String;

    iput-boolean v2, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIsTaskBoostExist:Z

    iput-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    new-instance v6, Lcom/android/server/wm/ActivityManagerPerformance$2;

    invoke-direct {v6, v1}, Lcom/android/server/wm/ActivityManagerPerformance$2;-><init>(Lcom/android/server/wm/ActivityManagerPerformance;)V

    iput-object v6, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIntentReceiver:Lcom/android/server/wm/ActivityManagerPerformance$2;

    move-object/from16 v6, p2

    iput-object v6, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    sput-object p1, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    sput-object v6, Lcom/android/server/wm/ActivityManagerPerformance;->sLowPerformancePkgSet:Ljava/util/HashSet;

    move v6, v2

    :goto_a8
    sget-object v7, Lcom/android/server/wm/ActivityManagerPerformance;->sLowPerformancePkgList:[Ljava/lang/String;

    array-length v8, v7

    if-ge v6, v8, :cond_b7

    sget-object v8, Lcom/android/server/wm/ActivityManagerPerformance;->sLowPerformancePkgSet:Ljava/util/HashSet;

    aget-object v7, v7, v6

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_a8

    :cond_b7
    const-string v6, "AmpHandlerThread"

    const/4 v7, -0x2

    invoke-static {v7, v6, v2}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    move-result-object v6

    new-instance v7, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v6}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v7, v1, v6}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;-><init>(Lcom/android/server/wm/ActivityManagerPerformance;Landroid/os/Looper;)V

    iput-object v7, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const-string v6, "/proc/perf_reserve"

    invoke-static {v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/wm/ActivityManagerPerformance;->isPerfReserveSupport:Z

    const-string/jumbo v6, "android.intent.action.SCREEN_ON"

    const-string/jumbo v7, "android.intent.action.SCREEN_OFF"

    const-string/jumbo v8, "com.sec.android.sdhms.action.INIT_COMPLETED"

    const-string/jumbo v9, "com.sec.android.intent.action.BIGDATA_EVERY_DAY_UPDATE"

    const-string/jumbo v10, "com.sec.android.intent.action.BIGDATA_EVERY_WEEK_CLEANUP"

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v6

    const-string/jumbo v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v7, 0x3e7

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    sget-object v7, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIntentReceiver:Lcom/android/server/wm/ActivityManagerPerformance$2;

    const/4 v11, 0x2

    invoke-virtual {v7, v8, v6, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    sget-object v6, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "TASK_BOOST"

    invoke-static {v6, v7}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mTaskBoostManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v6, :cond_10d

    const v7, 0x402610

    invoke-virtual {v6, v7}, Lcom/samsung/android/os/SemDvfsManager;->checkSysfsIdExist(I)Z

    move-result v6

    iput-boolean v6, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIsTaskBoostExist:Z

    :cond_10d
    const-string v6, "ActivityManagerPerformance"

    sget-boolean v7, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_12b

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    new-instance v8, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v8, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v8}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v8

    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_12b
    move-object v8, v0

    new-instance v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    sget-object v11, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v11}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;-><init>(Lcom/android/server/wm/ActivityManagerPerformance;Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    :try_start_135
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v0, "getWritableDatabase for appDB"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_141
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_135 .. :try_end_141} :catch_196
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_135 .. :try_end_141} :catch_144
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_141} :catch_142

    goto :goto_1a4

    :catch_142
    move-exception v0

    goto :goto_146

    :catch_144
    move-exception v0

    goto :goto_151

    :goto_146
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Exception for appDB "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v11, v6}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1a4

    :goto_151
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "SQLiteException for appDB "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, "malformed database"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a4

    const-string/jumbo v0, "delete app db and open"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v11, "/data/misc/AppLaunchTime/app_launch_time.db"

    invoke-virtual {v0, v11}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_18d

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_18d

    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    :cond_18d
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1a4

    :catch_196
    const-string/jumbo v0, "SQLiteDatabaseCorruptException for appDB"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1a4
    :goto_1a4
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_497

    :try_start_1a8
    sget-object v11, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    invoke-static {v11, v0}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mfetch(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    if-eqz v7, :cond_1b4

    const-string v0, "AppLaunchDB fetch"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_1a8 .. :try_end_1b4} :catch_1ba
    .catchall {:try_start_1a8 .. :try_end_1b4} :catchall_490

    :cond_1b4
    :goto_1b4
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1ed

    :catch_1ba
    :try_start_1ba
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    sget-object v11, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1c1
    .catchall {:try_start_1ba .. :try_end_1c1} :catchall_490

    :try_start_1c1
    const-string v0, "DROP TABLE AppLaunchTime;"

    invoke-virtual {v11, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1c6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c1 .. :try_end_1c6} :catch_1c7
    .catchall {:try_start_1c1 .. :try_end_1c6} :catchall_490

    goto :goto_1df

    :catch_1c7
    move-exception v0

    :try_start_1c8
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed to drop table. "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "ActivityManagerPerformance:AppLaunchTime"

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1df
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    sget-object v11, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string/jumbo v0, "failed fetch, drop & onCreate new"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ec
    .catchall {:try_start_1c8 .. :try_end_1ec} :catchall_490

    goto :goto_1b4

    :goto_1ed
    const-string/jumbo v11, "failed checkStartTimeGathered, "

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    iget-wide v12, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mStartTimeGathered:J

    cmp-long v14, v12, v3

    const-string/jumbo v15, "startTimeOfGatheredData"

    if-lez v14, :cond_20f

    if-eqz v7, :cond_25b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "DB mStartTimeGathered : "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25b

    :cond_20f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_24a

    :try_start_217
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mStartTimeGathered:J

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    sget-object v12, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v12, v15}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_226
    .catch Ljava/lang/Exception; {:try_start_217 .. :try_end_226} :catch_22c
    .catchall {:try_start_217 .. :try_end_226} :catchall_243

    :cond_226
    :goto_226
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_24a

    :catch_22c
    move-exception v0

    if-eqz v7, :cond_226

    :try_start_22f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_242
    .catchall {:try_start_22f .. :try_end_242} :catchall_243

    goto :goto_226

    :catchall_243
    move-exception v0

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0

    :cond_24a
    :goto_24a
    if-eqz v7, :cond_25b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "setStartTimeGathered : "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    iget-wide v11, v11, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mStartTimeGathered:J

    invoke-static {v0, v11, v12, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    :cond_25b
    :goto_25b
    const-string/jumbo v11, "failed checkDevicePowerOnCount, "

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    iget-wide v12, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDevicePowerOnCount:J

    cmp-long v0, v12, v3

    move-wide/from16 v16, v3

    const-wide/16 v3, 0x1

    if-lez v0, :cond_27f

    add-long/2addr v12, v3

    if-eqz v7, :cond_280

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v14, "DB mDevicePowerOnCount : "

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_280

    :cond_27f
    move-wide v12, v3

    :cond_280
    :goto_280
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v14, "devicePowerOnCount"

    if-eqz v0, :cond_2ba

    move/from16 v18, v5

    :try_start_28f
    sget-object v5, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    iput-wide v12, v5, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDevicePowerOnCount:J

    invoke-static {v5, v0, v14}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_296
    .catch Ljava/lang/Exception; {:try_start_28f .. :try_end_296} :catch_29c
    .catchall {:try_start_28f .. :try_end_296} :catchall_2b3

    :cond_296
    :goto_296
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2bc

    :catch_29c
    move-exception v0

    if-eqz v7, :cond_296

    :try_start_29f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b2
    .catchall {:try_start_29f .. :try_end_2b2} :catchall_2b3

    goto :goto_296

    :catchall_2b3
    move-exception v0

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0

    :cond_2ba
    move/from16 v18, v5

    :goto_2bc
    if-eqz v7, :cond_2cd

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setDevicePowerOnCount : "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    iget-wide v11, v5, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDevicePowerOnCount:J

    invoke-static {v0, v11, v12, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    :cond_2cd
    const-string/jumbo v5, "failed checkBuildVersionChanged, "

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    iget-object v0, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mBuildVersion:Ljava/lang/String;

    const-string/jumbo v11, "ro.build.version.incremental"

    const-string/jumbo v12, "None"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v0, :cond_2f1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2f1

    if-eqz v7, :cond_34c

    const-string/jumbo v5, "build version check : "

    const-string v12, ","

    invoke-static {v5, v0, v12, v11, v6}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34c

    :cond_2f1
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityManagerPerformance;->deleteDBTableAndClear()V

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_344

    :try_start_2fe
    sget-object v12, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    iput-object v11, v12, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mBuildVersion:Ljava/lang/String;

    const-string/jumbo v13, "buildVersion"

    invoke-static {v12, v0, v13}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mStartTimeGathered:J

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    sget-object v12, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v12, v15}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    iput-wide v3, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDevicePowerOnCount:J

    sget-object v12, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v12, v14}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_320
    .catch Ljava/lang/Exception; {:try_start_2fe .. :try_end_320} :catch_326
    .catchall {:try_start_2fe .. :try_end_320} :catchall_33d

    :cond_320
    :goto_320
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_344

    :catch_326
    move-exception v0

    if-eqz v7, :cond_320

    :try_start_329
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33c
    .catchall {:try_start_329 .. :try_end_33c} :catchall_33d

    goto :goto_320

    :catchall_33d
    move-exception v0

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0

    :cond_344
    :goto_344
    if-eqz v7, :cond_34c

    const-string/jumbo v0, "detect New build version : "

    invoke-static {v0, v11, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_34c
    :goto_34c
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "failed registerAlarm - dayOfWeek, "

    const-string/jumbo v11, "alarm"

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x4000000

    invoke-static {v0, v2, v14, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    const/16 v14, 0xb

    const/4 v0, 0x3

    invoke-virtual {v11, v14, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v15, 0xc

    const/16 v0, 0x1e

    invoke-virtual {v11, v15, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {v11, v0, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {v11, v0, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    const-wide/32 v22, 0x5265c00

    add-long v21, v20, v22

    const-wide/32 v23, 0x5265c00

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v25}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    move-wide/from16 p1, v3

    iget-wide v3, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDBDayOfWeek:J

    long-to-int v0, v3

    const/4 v3, 0x7

    if-gez v0, :cond_3eb

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->RANDOM:Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v0, v14, v15}, Ljava/util/Random;->setSeed(J)V

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v14, v0, 0x1

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3ea

    :try_start_3bc
    sget-object v15, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    int-to-long v3, v14

    iput-wide v3, v15, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDBDayOfWeek:J

    const-string v3, "DayOfWeek"

    invoke-static {v15, v0, v3}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_3c6
    .catch Ljava/lang/Exception; {:try_start_3bc .. :try_end_3c6} :catch_3cc
    .catchall {:try_start_3bc .. :try_end_3c6} :catchall_3e3

    :cond_3c6
    :goto_3c6
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3ea

    :catch_3cc
    move-exception v0

    if-eqz v7, :cond_3c6

    :try_start_3cf
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e2
    .catchall {:try_start_3cf .. :try_end_3e2} :catchall_3e3

    goto :goto_3c6

    :catchall_3e3
    move-exception v0

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0

    :cond_3ea
    :goto_3ea
    move v0, v14

    :cond_3eb
    if-eqz v7, :cond_3f3

    const-string/jumbo v3, "TTLS Day of Week : "

    invoke-static {v0, v3, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3f3
    sget-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2, v4, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    const/4 v3, 0x7

    invoke-virtual {v11, v3, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xb

    invoke-virtual {v11, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    invoke-virtual {v11, v3, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v2, v12

    const-wide/16 v4, 0x7

    if-lez v0, :cond_424

    invoke-static {v4, v5}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v11

    sub-long v11, v2, v11

    move-wide/from16 v21, v2

    move-wide v2, v11

    goto :goto_42e

    :cond_424
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    const-wide/32 v13, 0x240c8400

    add-long/2addr v11, v13

    move-wide/from16 v21, v11

    :goto_42e
    const/16 v20, 0x1

    const-wide/32 v23, 0x240c8400

    invoke-virtual/range {v19 .. v25}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    move-wide/from16 v11, v21

    if-eqz v7, :cond_44b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "Bigdata will send at : "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44b
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    iget-wide v11, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mLastModifiedTime:J

    sub-long/2addr v2, v11

    invoke-static/range {p1 .. p2}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v11

    div-long/2addr v2, v11

    cmp-long v0, v2, v4

    if-lez v0, :cond_46b

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityManagerPerformance;->deleteDBTableAndClear()V

    if-eqz v7, :cond_468

    const-string/jumbo v0, "deleted data older than last week."

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_468
    :goto_468
    move/from16 v2, v18

    goto :goto_48d

    :cond_46b
    cmp-long v0, v2, v16

    if-lez v0, :cond_484

    iget-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIntentReceiver:Lcom/android/server/wm/ActivityManagerPerformance$2;

    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/ActivityManagerPerformance$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    if-eqz v7, :cond_468

    const-string/jumbo v0, "did cleanup the data old the last week."

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_468

    :cond_484
    if-eqz v7, :cond_468

    const-string/jumbo v0, "all data was updated this week."

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_468

    :goto_48d
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIsAppLaunchDBInit:Z

    goto :goto_497

    :catchall_490
    move-exception v0

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0

    :cond_497
    :goto_497
    if-eqz v7, :cond_49c

    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_49c
    iget-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    if-nez v0, :cond_4ac

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    iput-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    :cond_4ac
    iget-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    if-eqz v0, :cond_4ba

    new-instance v2, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v1, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mDeviceStateCallback:Lcom/android/server/wm/ActivityManagerPerformance$1;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    :cond_4ba
    return-void
.end method

.method public static getBooster(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/ActivityManagerPerformance;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    if-nez p0, :cond_6

    goto :goto_25

    :cond_6
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mLockinit:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v2, :cond_1b

    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-nez v2, :cond_1b

    new-instance v2, Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/ActivityManagerPerformance;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)V

    sput-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_23

    :cond_1b
    :goto_1b
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz p0, :cond_21

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    :cond_21
    monitor-exit v1

    return-object v0

    :goto_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_19

    throw p0

    :cond_25
    :goto_25
    return-object v0
.end method

.method public static final isBlockedApp(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->gBlockedPkgs:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_8
    if-ge v3, v2, :cond_17

    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_17
    return v0
.end method

.method public static isSpeg(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-nez v0, :cond_5

    goto :goto_19

    :cond_5
    const-string/jumbo v0, "com.samsung.speg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    const-string/jumbo p1, "Skipping boost of "

    const-string/jumbo v0, "SPEG"

    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized notifyCurTopAct(Lcom/android/server/wm/ActivityRecord;)V
    .registers 12

    const-string/jumbo v0, "notifyCurTopAct() activity changed\n[Activity] prev: "

    const-class v1, Lcom/android/server/wm/ActivityManagerPerformance;

    monitor-enter v1

    :try_start_6
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v2, :cond_1bb

    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    if-ne v2, p0, :cond_10

    goto/16 :goto_1bb

    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eqz v2, :cond_1b

    move v2, v4

    goto :goto_24

    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v2

    if-eqz v2, :cond_23

    move v2, v3

    goto :goto_24

    :cond_23
    move v2, v5

    :goto_24
    sget-boolean v6, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_c7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", cur: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v8, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v8, :cond_b8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n[Process] prev: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_5a

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_5b

    :catchall_57
    move-exception p0

    goto/16 :goto_1bd

    :cond_5a
    move-object v0, v7

    :goto_5b
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cur: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n[Package] prev: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_80

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_81

    :cond_80
    move-object v0, v7

    :goto_81
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cur: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n[TOP_STATE] prev: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    invoke-static {v0}, Lcom/android/server/wm/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cur: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b8
    const-string v9, "ActivityManagerPerformance"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_c7

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c7
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->ALLIED_PROC_PROTECTION_LMKD:Z

    if-eqz v0, :cond_12e

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_12e

    iget v8, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    if-ne v8, v5, :cond_123

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12e

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->alliedProtectedProcList:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_e0
    .catchall {:try_start_6 .. :try_end_e0} :catchall_57

    :try_start_e0
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v8, :cond_112

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f6

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f6

    :catchall_f4
    move-exception p0

    goto :goto_121

    :cond_f6
    :goto_f6
    if-eqz v6, :cond_112

    const-string v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " allied process eligble for LMKD kill protect"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_112
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11f

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_11f
    monitor-exit v0

    goto :goto_12e

    :goto_121
    monitor-exit v0
    :try_end_122
    .catchall {:try_start_e0 .. :try_end_122} :catchall_f4

    :try_start_122
    throw p0

    :cond_123
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->alliedProtectedProcList:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_126
    .catchall {:try_start_122 .. :try_end_126} :catchall_57

    :try_start_126
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    goto :goto_12e

    :catchall_12b
    move-exception p0

    monitor-exit v0
    :try_end_12d
    .catchall {:try_start_126 .. :try_end_12d} :catchall_12b

    :try_start_12d
    throw p0

    :cond_12e
    :goto_12e
    sput-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    sput-object v7, Lcom/android/server/wm/ActivityManagerPerformance;->prevSwitchActivity:Lcom/android/server/wm/ActivityRecord;

    sget v0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    if-eq v0, v2, :cond_1a4

    sput v2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    sget-boolean v7, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v7, :cond_1a4

    sget-object v7, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v7, :cond_1a4

    iget-boolean v7, v7, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    if-eqz v7, :cond_1a4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v2, v4, :cond_159

    if-eqz v6, :cond_152

    const-string v0, "ActivityManagerPerformance"

    const-string/jumbo v2, "notifyCurTopAct() call setBoosterHome()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_152
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-virtual {v0, p0, v7, v8}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterHome(Lcom/android/server/wm/ActivityRecord;ZZ)V
    :try_end_157
    .catchall {:try_start_12d .. :try_end_157} :catchall_57

    monitor-exit v1

    return-void

    :cond_159
    if-ne v0, v3, :cond_1a4

    if-eq v2, v5, :cond_15f

    if-ne v2, v7, :cond_1a4

    :cond_15f
    :try_start_15f
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_172

    if-eq v0, p0, :cond_1a4

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a4

    goto :goto_172

    :catch_170
    move-exception p0

    goto :goto_19b

    :cond_172
    :goto_172
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    if-eqz v2, :cond_18a

    sget v2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    if-ne v2, v5, :cond_18a

    iput-boolean v8, v0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    if-eqz v6, :cond_188

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo v0, "notifyCurTopAct() skipped. isMultiWindowResume: true"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_188
    .catch Ljava/lang/NullPointerException; {:try_start_15f .. :try_end_188} :catch_170
    .catchall {:try_start_15f .. :try_end_188} :catchall_57

    :cond_188
    monitor-exit v1

    return-void

    :cond_18a
    if-eqz v6, :cond_194

    :try_start_18c
    const-string v0, "ActivityManagerPerformance"

    const-string/jumbo v2, "notifyCurTopAct() call setBoosterAppSwitch()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_194
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-virtual {v0, p0, v7}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterAppSwitch(Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_199
    .catch Ljava/lang/NullPointerException; {:try_start_18c .. :try_end_199} :catch_170
    .catchall {:try_start_18c .. :try_end_199} :catchall_57

    monitor-exit v1

    return-void

    :goto_19b
    :try_start_19b
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    iput-boolean v8, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z
    :try_end_1a2
    .catchall {:try_start_19b .. :try_end_1a2} :catchall_57

    monitor-exit v1

    return-void

    :cond_1a4
    :try_start_1a4
    sget-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz p0, :cond_1b9

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1b9

    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->sLowPerformancePkgSet:Ljava/util/HashSet;

    if-eqz v2, :cond_1b9

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityManagerPerformance;->setLowPower(Z)V
    :try_end_1b9
    .catchall {:try_start_1a4 .. :try_end_1b9} :catchall_57

    :cond_1b9
    monitor-exit v1

    return-void

    :cond_1bb
    :goto_1bb
    monitor-exit v1

    return-void

    :goto_1bd
    :try_start_1bd
    monitor-exit v1
    :try_end_1be
    .catchall {:try_start_1bd .. :try_end_1be} :catchall_57

    throw p0
.end method

.method public static topStateToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_26

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_16

    const-string/jumbo v0, "NO_STATE_NUM_OF_"

    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const-string/jumbo p0, "TOP_STATE_APP"

    return-object p0

    :cond_1a
    const-string/jumbo p0, "TOP_STATE_RECENTS_APP"

    return-object p0

    :cond_1e
    const-string/jumbo p0, "TOP_STATE_HOME"

    return-object p0

    :cond_22
    const-string/jumbo p0, "TOP_STATE_IS_CREATING"

    return-object p0

    :cond_26
    const-string/jumbo p0, "TOP_STATE_INIT"

    return-object p0
.end method

.method public static x(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->pkgDecoder:Ljava/util/Base64$Decoder;

    if-nez v0, :cond_7

    const-string p0, ""

    return-object p0

    :cond_7
    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final checkBoostDisabledByFold()V
    .registers 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_DISABLE_WHEN_FOLDED:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final deleteDBTableAndClear()V
    .registers 7

    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    const-string/jumbo v1, "failed deleteDBTableAndClear, "

    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ActivityManagerPerformance"

    if-eqz v2, :cond_5b

    :try_start_11
    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    invoke-static {v4, v2}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mdeleteDBData(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "lastModifiedTime"

    invoke-static {v2, v4, v5}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchTimeCountStats:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    if-eqz v0, :cond_32

    const-string/jumbo p0, "deleteDBTableAndClear"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2f} :catch_30
    .catchall {:try_start_11 .. :try_end_2f} :catchall_4e

    goto :goto_32

    :catch_30
    move-exception p0

    goto :goto_38

    :cond_32
    :goto_32
    sget-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void

    :goto_38
    if-eqz v0, :cond_55

    :try_start_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_3a .. :try_end_4d} :catchall_4e

    goto :goto_55

    :catchall_4e
    move-exception p0

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw p0

    :cond_55
    :goto_55
    sget-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void

    :cond_5b
    const-string/jumbo p0, "failed DB writable open to deleteDBTableAndClear."

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final gatherAppLaunchTime(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JLjava/lang/String;)V
    .registers 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    move/from16 v4, p5

    move-wide/from16 v5, p7

    move-object/from16 v7, p9

    iget-object v8, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const-string v9, "ActivityManagerPerformance"

    const-string/jumbo v10, "entry : "

    iget-boolean v11, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsAppLaunchDBInit:Z

    if-eqz v11, :cond_445

    if-eqz v1, :cond_445

    const-wide/16 v11, 0x4e20

    cmp-long v11, v2, v11

    if-ltz v11, :cond_21

    goto/16 :goto_445

    :cond_21
    :try_start_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sget-object v13, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->HOT:Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->getType()I

    move-result v13

    if-eq v4, v13, :cond_72

    const-wide/16 v13, 0xbb8

    cmp-long v13, v2, v13

    if-lez v13, :cond_72

    const-wide/16 v13, 0x4

    cmp-long v13, v5, v13

    if-ltz v13, :cond_72

    sget-wide v13, Lcom/android/server/wm/ActivityManagerPerformance;->sNextTimeToSendSlugBigdata:J

    cmp-long v13, v11, v13

    if-lez v13, :cond_72

    iget-object v13, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mBigdataSlugSkipPackage:Ljava/util/Set;

    check-cast v13, Ljava/util/HashSet;

    invoke-virtual {v13, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_72

    const-wide/16 v13, 0x2710

    add-long/2addr v11, v13

    sput-wide v11, Lcom/android/server/wm/ActivityManagerPerformance;->sNextTimeToSendSlugBigdata:J

    const/16 v11, 0x32

    invoke-virtual {v8, v11}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v12, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iput-object v1, v12, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;->packageName:Ljava/lang/String;

    move-object/from16 v13, p2

    iput-object v13, v12, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;->activityName:Ljava/lang/String;

    iput-wide v2, v12, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;->launchTime:J

    iput v4, v12, Lcom/android/server/wm/ActivityManagerPerformance$SlugBigDataInfo;->launchType:I

    invoke-virtual {v8, v11, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    const-wide/16 v12, 0x1388

    invoke-virtual {v8, v11, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_6b} :catch_6c

    goto :goto_72

    :catch_6c
    const-string/jumbo v8, "failed to sendMessage"

    invoke-static {v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    :goto_72
    sget-object v8, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    sget-boolean v11, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    const/4 v12, 0x0

    if-eqz v8, :cond_94

    :try_start_7d
    invoke-virtual {v8, v1, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_83
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7d .. :try_end_83} :catch_84

    goto :goto_96

    :catch_84
    if-eqz v11, :cond_90

    const-string/jumbo v8, "is not found in pm"

    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    const-string/jumbo v8, "None"

    goto :goto_96

    :cond_94
    const-string v8, ""

    :goto_96
    :try_start_96
    iget-object v13, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchTimeCountStats:Ljava/util/Map;

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    const-wide/16 v14, 0x0

    if-eqz v13, :cond_251

    iget-object v13, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchTimeCountStats:Ljava/util/Map;

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    invoke-interface {v13, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_18a

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_cb

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Ljava/lang/Long;

    move-wide/from16 v30, v14

    goto/16 :goto_323

    :catch_c8
    move-exception v0

    goto/16 :goto_43c

    :cond_cb
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    filled-new-array/range {v16 .. v29}, [Ljava/lang/Long;

    move-result-object v13

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    filled-new-array/range {v16 .. v29}, [Ljava/lang/Long;

    move-result-object v12

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-wide/from16 v30, v14

    filled-new-array/range {v16 .. v29}, [Ljava/lang/Long;

    move-result-object v14

    filled-new-array {v13, v12, v14}, [[Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v8, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_322

    :cond_18a
    move-wide/from16 v30, v14

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    filled-new-array/range {v14 .. v27}, [Ljava/lang/Long;

    move-result-object v12

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    filled-new-array/range {v14 .. v27}, [Ljava/lang/Long;

    move-result-object v14

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    filled-new-array/range {v15 .. v28}, [Ljava/lang/Long;

    move-result-object v15

    filled-new-array {v12, v14, v15}, [[Ljava/lang/Long;

    move-result-object v12

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v14, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v13, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_322

    :cond_251
    move-wide/from16 v30, v14

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    filled-new-array/range {v12 .. v25}, [Ljava/lang/Long;

    move-result-object v12

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    filled-new-array/range {v13 .. v26}, [Ljava/lang/Long;

    move-result-object v13

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    filled-new-array/range {v14 .. v27}, [Ljava/lang/Long;

    move-result-object v14

    filled-new-array {v12, v13, v14}, [[Ljava/lang/Long;

    move-result-object v12

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v13, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v14, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchTimeCountStats:Ljava/util/Map;

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_322
    move-object v8, v12

    :goto_323
    invoke-static {}, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->values()[Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    move-result-object v12

    array-length v13, v12
    :try_end_328
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_328} :catch_c8

    const/4 v14, 0x0

    :goto_329
    sget-object v15, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->UNKNOWN:Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    if-ge v14, v13, :cond_33d

    :try_start_32d
    aget-object v16, v12, v14

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->getType()I

    move-result v2

    if-ne v2, v4, :cond_338

    move-object/from16 v2, v16

    goto :goto_33e

    :cond_338
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v2, p3

    goto :goto_329

    :cond_33d
    move-object v2, v15

    :goto_33e
    if-eq v2, v15, :cond_3fe

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {}, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;->values()[Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;

    move-result-object v4

    array-length v12, v4

    const/4 v13, 0x0

    :goto_34a
    if-ge v13, v12, :cond_367

    aget-object v14, v4, v13

    invoke-virtual {v14}, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;->getThreshold()I

    move-result v15

    move-object/from16 v16, v2

    move/from16 p2, v3

    int-to-long v2, v15

    cmp-long v2, p3, v2

    if-gez v2, :cond_360

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    goto :goto_36d

    :cond_360
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, p2

    move-object/from16 v2, v16

    goto :goto_34a

    :cond_367
    move-object/from16 v16, v2

    move/from16 p2, v3

    const/16 v2, 0x9

    :goto_36d
    aget-object v3, v8, p2

    array-length v4, v3

    add-int/lit8 v4, v4, -0x4

    array-length v12, v3

    add-int/lit8 v12, v12, -0x3

    array-length v13, v3

    add-int/lit8 v13, v13, -0x2

    array-length v14, v3

    add-int/lit8 v14, v14, -0x1

    aget-object v15, v3, v2

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const-wide/16 v19, 0x1

    add-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v3, v2

    aget-object v2, v8, p2

    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    add-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    aget-object v2, v8, p2

    aget-object v2, v2, v12

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v30

    if-nez v2, :cond_3b0

    aget-object v2, v8, p2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v12

    goto :goto_3c4

    :cond_3b0
    aget-object v2, v8, p2

    aget-object v2, v2, v12

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-lez v2, :cond_3c4

    aget-object v2, v8, p2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v12

    :cond_3c4
    :goto_3c4
    aget-object v2, v8, p2

    aget-object v2, v2, v13

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v30

    if-nez v2, :cond_3d9

    aget-object v2, v8, p2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v13

    goto :goto_3ed

    :cond_3d9
    aget-object v2, v8, p2

    aget-object v2, v2, v13

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-gez v2, :cond_3ed

    aget-object v2, v8, p2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v13

    :cond_3ed
    :goto_3ed
    aget-object v2, v8, p2

    aget-object v3, v2, v14

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long v3, v3, p3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v14

    goto :goto_400

    :cond_3fe
    move-object/from16 v16, v2

    :goto_400
    cmp-long v2, v5, v30

    if-lez v2, :cond_40c

    iget-wide v2, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mDramSize:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_40c

    iput-wide v5, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mDramSize:J

    :cond_40c
    if-eqz v11, :cond_445

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transition type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Optimization : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43b
    .catch Ljava/lang/Exception; {:try_start_32d .. :try_end_43b} :catch_c8

    goto :goto_445

    :goto_43c
    const-string/jumbo v1, "failed to gatherAppLaunchTime"

    invoke-static {v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_445
    :goto_445
    return-void
.end method

.method public final getCurBoostInfoStr()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "===== ActivityManagerPerformance, getCurBoostInfoStr info =====\nAMP_ENABLE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", AMP_PERF_ENABLE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsScreenOn: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_4a

    const-string v1, "\nTIMEOUT_ACT_RESUME: "

    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", TIMEOUT_ACT_START: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", TIMEOUT_APP_SWITCH: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_59

    :cond_4a
    const-string v1, "\nTIMEOUT_PREV_RESUME: "

    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_59
    const-string v1, "\n"

    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n[curTopState] "

    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    invoke-static {v1}, Lcom/android/server/wm/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n[rCurBoostAppSwitch] procName: "

    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_80

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_81

    :cond_80
    move-object v1, v2

    :goto_81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\n[rCurBoostActStart] procName: "

    invoke-static {v0, v4}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_a4

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_a5

    :cond_a4
    move-object v4, v2

    :goto_a5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\n[rCurBoostActResume] procName: "

    invoke-static {v0, v4}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_c4

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_c5

    :cond_c4
    move-object v4, v2

    :goto_c5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\n[rLastActTail] procName: "

    invoke-static {v0, v4}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_e4

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_e5

    :cond_e4
    move-object v4, v2

    :goto_e5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\n[rLastActHome] procName: "

    invoke-static {v0, v4}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_104

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_105

    :cond_104
    move-object v4, v2

    :goto_105
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\n[rLastRelaunchResume] procName: "

    invoke-static {v0, v4}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_123

    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    :cond_123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n===== ActivityManagerPerformance, getCurBoostInfoStr end  ====="

    invoke-static {p0, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isJustFoldedState()Z
    .registers 5

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsFolded:Z

    if-eqz p0, :cond_1f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/wm/ActivityManagerPerformance;->mFoldListenedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p0, v0, v2

    if-gez p0, :cond_1f

    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_1d

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo v0, "mIsFolded: true && Folded just now"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public final notifyTaskBoost(I)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onActivityRelaunchLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 8

    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_50

    if-eqz p1, :cond_a

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, v1

    :goto_b
    const-string v3, "ActivityManagerPerformance"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onActivityRelaunchLocked() r: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "), andResume: true"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v2, :cond_50

    const-string v2, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onActivityRelaunchLocked() Trace\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_50
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_RELAUNCH_RESUME_ON:Z

    if-nez v2, :cond_56

    goto/16 :goto_11c

    :cond_56
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v2, :cond_65

    if-eqz v0, :cond_11c

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "onActivityRelaunchLocked() skipped. mIsScreenOn: false"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_65
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->isJustFoldedState()Z

    move-result v2

    if-eqz v2, :cond_6d

    goto/16 :goto_11c

    :cond_6d
    if-eqz v0, :cond_b8

    if-eqz p1, :cond_73

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    :cond_73
    const-string v0, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setBoosterRelaunchResume() r: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v0, :cond_b8

    const-string v0, "ActivityManagerPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setBoosterRelaunchResume() Trace\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b8
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_cc

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v1, "AMS_RELAUNCH_RESUME"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_cc

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    :cond_cc
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_d9

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterRelaunchResume() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d9
    :try_start_d9
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockRelaunchResume:Ljava/lang/Object;

    monitor-enter v1
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_dc} :catch_ea

    :try_start_dc
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/wm/ActivityRecord;

    monitor-exit v1
    :try_end_e2
    .catchall {:try_start_dc .. :try_end_e2} :catchall_ec

    :try_start_e2
    const-string p1, "ActivityManagerPerformance"

    const-string v0, "AMP_acquire() RELAUNCH_RESUME"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e9} :catch_ea

    return-void

    :catch_ea
    move-exception p1

    goto :goto_ef

    :catchall_ec
    move-exception p1

    :try_start_ed
    monitor-exit v1
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_ec

    :try_start_ee
    throw p1
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_ef} :catch_ea

    :goto_ef
    const-string v0, "ActivityManagerPerformance"

    const-string v1, "AMP_acquire() RELAUNCH_RESUME failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_119

    const-string v0, "ActivityManagerPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AMP_acquire() RELAUNCH_RESUME failed. e: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_119
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11c
    :goto_11c
    return-void
.end method

.method public final onActivityStartLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 9

    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    const-string v1, "ActivityManagerPerformance"

    if-eqz v0, :cond_49

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onActivityStartLocked() r: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v2, :cond_49

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onActivityStartLocked() Trace\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_49
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-nez v2, :cond_4f

    goto/16 :goto_123

    :cond_4f
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/wm/ActivityManagerPerformance;->isSpeg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    goto/16 :goto_123

    :cond_5b
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->isBlockedApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    goto/16 :goto_123

    :cond_65
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_6c

    iput-boolean v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    :cond_6c
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v2, :cond_79

    if-eqz v0, :cond_123

    const-string/jumbo p0, "onActivityStartLocked() skipped. mIsScreenOn: false"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_79
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->isJustFoldedState()Z

    move-result v2

    if-eqz v2, :cond_81

    goto/16 :goto_123

    :cond_81
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->needSkipResume:Z

    if-eqz v2, :cond_87

    iput-boolean v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->needSkipResume:Z

    :cond_87
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    const/4 v4, 0x1

    if-nez v2, :cond_90

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void

    :cond_90
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterHome(Lcom/android/server/wm/ActivityRecord;ZZ)V

    return-void

    :cond_9a
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void

    :cond_a4
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    const-string/jumbo v3, "onActivityStartLocked() skipped. already boosted "

    if-eqz v2, :cond_f3

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    :try_start_b5
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-eq v2, p1, :cond_da

    if-eq v5, p1, :cond_da

    if-eqz v2, :cond_c9

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_da

    :cond_c9
    if-eqz v5, :cond_d6

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_d3
    .catch Ljava/lang/NullPointerException; {:try_start_b5 .. :try_end_d3} :catch_ee

    if-eqz v2, :cond_d6

    goto :goto_da

    :cond_d6
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void

    :cond_da
    :goto_da
    if-eqz v0, :cond_123

    :try_start_dc
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ed
    .catch Ljava/lang/NullPointerException; {:try_start_dc .. :try_end_ed} :catch_ee

    return-void

    :catch_ee
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :cond_f3
    :try_start_f3
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-eq v2, p1, :cond_110

    if-eqz v2, :cond_104

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_101
    .catch Ljava/lang/NullPointerException; {:try_start_f3 .. :try_end_101} :catch_124

    if-eqz v2, :cond_104

    goto :goto_110

    :cond_104
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_110
    :goto_110
    if-eqz v0, :cond_123

    :try_start_112
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_123
    .catch Ljava/lang/NullPointerException; {:try_start_112 .. :try_end_123} :catch_124

    :cond_123
    :goto_123
    return-void

    :catch_124
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void
.end method

.method public final onActivityVisibleLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_5d

    const-string v0, "ActivityManagerPerformance"

    if-nez p1, :cond_f

    const-string/jumbo p0, "onActivityVisibleLocked() ActivityRecord is Null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    if-nez v1, :cond_1a

    const-string/jumbo v1, "onActivityVisibleLocked() ActivityRecord\'s ProcessName is Null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onActivityVisibleLocked() r: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v1, :cond_5d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onActivityVisibleLocked() Trace\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5d
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-nez v0, :cond_62

    goto :goto_93

    :cond_62
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->isJustFoldedState()Z

    move-result v0

    if-eqz v0, :cond_69

    goto :goto_93

    :cond_69
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_70

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    :cond_70
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_77

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_77
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_7e

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_7e
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_93

    if-eqz p1, :cond_93

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_93

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v0

    if-nez v0, :cond_93

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterAppSwitch(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_93
    :goto_93
    return-void
.end method

.method public final onAppLaunch(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 12

    if-nez p1, :cond_3

    goto :goto_1d

    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->isSpeg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1d

    :cond_e
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/wm/ActivityManagerPerformance;->isBlockedApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_1d

    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->isJustFoldedState()Z

    move-result v0

    if-eqz v0, :cond_1e

    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockAppLaunch:Ljava/lang/Object;

    monitor-enter v0

    :try_start_21
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_33

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v2, "AMS_APP_LAUNCH"

    invoke-static {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    goto :goto_33

    :catchall_30
    move-exception p0

    goto/16 :goto_c8

    :cond_33
    :goto_33
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_c6

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v2, 0x20

    const/16 v3, -0x3e7

    if-nez v1, :cond_40

    goto :goto_83

    :cond_40
    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchPackagesTimeOutM:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_45
    if-ge v7, v5, :cond_55

    aget-object v8, v4, v7

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_52

    const/16 v3, 0x1b

    goto :goto_83

    :cond_52
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    :cond_55
    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchPackagesTimeOutLM:[Ljava/lang/String;

    array-length v5, v4

    :goto_58
    if-ge v6, v5, :cond_7f

    aget-object v7, v4, v6

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->SYSPERF_DYNAMIC_BOOST:Z

    if-eqz v8, :cond_6e

    const-string/jumbo v8, "Y29tLnNlYy5hbmRyb2lkLmFwcC5zYnJvd3Nlcg=="

    invoke-static {v8}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6e

    goto :goto_7c

    :cond_6e
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7c

    if-eqz p2, :cond_79

    const/16 v3, 0x23

    goto :goto_83

    :cond_79
    const/16 v3, 0x1c

    goto :goto_83

    :cond_7c
    :goto_7c
    add-int/lit8 v6, v6, 0x1

    goto :goto_58

    :cond_7f
    if-eqz p2, :cond_82

    goto :goto_83

    :cond_82
    move v3, v2

    :goto_83
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {p2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {p2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->SYSPERF_DYNAMIC_BOOST:Z

    if-eqz p2, :cond_c6

    if-ne v3, v2, :cond_c6

    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/16 v1, 0x14

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsRunningAmsAppLaunch:Z

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mRunningAmsAppLaunchPackageName:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mRunningAmsAppLaunchPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AMS_APP_LAUNCH acquire"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_c6
    monitor-exit v0

    return-void

    :goto_c8
    monitor-exit v0
    :try_end_c9
    .catchall {:try_start_21 .. :try_end_c9} :catchall_30

    throw p0
.end method

.method public final declared-synchronized sendHqmBigData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    const-string/jumbo v0, "Success to report \'"

    monitor-enter p0

    :try_start_4
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHqmManager:Landroid/os/SemHqmManager;

    if-nez v1, :cond_18

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v2, "HqmManagerService"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SemHqmManager;

    iput-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHqmManager:Landroid/os/SemHqmManager;

    goto :goto_18

    :catchall_15
    move-exception v0

    move-object p1, v0

    goto :goto_64

    :cond_18
    :goto_18
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHqmManager:Landroid/os/SemHqmManager;

    if-nez v1, :cond_25

    const-string p1, "ActivityManagerPerformance"

    const-string p2, "HQM services is not working"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_15

    monitor-exit p0

    return-void

    :cond_25
    :try_start_25
    const-string/jumbo v3, "Sluggish"

    const-string/jumbo v5, "ph"

    const-string/jumbo v7, "sec"

    const-string v8, ""

    const-string v10, ""

    const/4 v2, 0x0

    move-object v4, p1

    move-object v6, p2

    move-object v9, p3

    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5a

    sget-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p1, :cond_62

    const-string p1, "ActivityManagerPerformance"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :cond_5a
    const-string p1, "ActivityManagerPerformance"

    const-string/jumbo p2, "failed to send to server"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_25 .. :try_end_62} :catchall_15

    :cond_62
    :goto_62
    monitor-exit p0

    return-void

    :goto_64
    :try_start_64
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_15

    throw p1
.end method

.method public final setBoosterActResume(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_7

    :cond_6
    move-object v1, v0

    :goto_7
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_7c

    if-eqz p1, :cond_10

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_11

    :cond_10
    move-object v2, v0

    :goto_11
    :try_start_11
    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_1c

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_17} :catch_18

    goto :goto_1d

    :catch_18
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_1c
    move-object v3, v0

    :goto_1d
    const-string v4, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setBoosterActResume() onoff: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", r: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "), curBoost: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v2, :cond_7c

    const-string v2, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setBoosterActResume() Trace\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7c
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v3, 0x3

    if-nez v2, :cond_90

    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v4, "AMS_ACT_RESUME"

    invoke-static {v2, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v2, :cond_90

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    :cond_90
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v2, :cond_9d

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterActResume() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9d
    if-eqz p2, :cond_127

    if-eqz p1, :cond_aa

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p2

    if-eqz p2, :cond_aa

    const/16 p2, 0x1f4

    goto :goto_ac

    :cond_aa
    sget p2, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    :goto_ac
    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    :try_start_b1
    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    monitor-enter v4
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b4} :catch_df

    :try_start_b4
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    monitor-exit v4
    :try_end_ba
    .catchall {:try_start_b4 .. :try_end_ba} :catchall_e1

    :try_start_ba
    const-string v2, "ActivityManagerPerformance"

    const-string v4, "AMP_acquire() ACT_RESUME"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    int-to-long v3, p2

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {p1, p2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_dd} :catch_df

    goto/16 :goto_176

    :catch_df
    move-exception p1

    goto :goto_e4

    :catchall_e1
    move-exception p1

    :try_start_e2
    monitor-exit v4
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e1

    :try_start_e3
    throw p1
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e4} :catch_df

    :goto_e4
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    if-eqz p2, :cond_ea

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    :cond_ea
    const-string p2, "ActivityManagerPerformance"

    const-string v1, "AMP_acquire() ACT_RESUME failed. stop boosting"

    invoke-static {p2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_11d

    const-string p2, "ActivityManagerPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AMP_acquire() ACT_RESUME failed["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "] e: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11d
    const/4 p2, 0x0

    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(Lcom/android/server/wm/ActivityRecord;Z)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_176

    :cond_127
    :try_start_127
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    monitor-enter p1
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_12a} :catch_145

    :try_start_12a
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    if-nez p2, :cond_132

    monitor-exit p1

    goto :goto_176

    :catchall_130
    move-exception p2

    goto :goto_147

    :cond_132
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    monitor-exit p1
    :try_end_138
    .catchall {:try_start_12a .. :try_end_138} :catchall_130

    :try_start_138
    const-string p1, "ActivityManagerPerformance"

    const-string p2, "AMP_release() ACT_RESUME"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_144} :catch_145

    goto :goto_176

    :catch_145
    move-exception p1

    goto :goto_149

    :goto_147
    :try_start_147
    monitor-exit p1
    :try_end_148
    .catchall {:try_start_147 .. :try_end_148} :catchall_130

    :try_start_148
    throw p2
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_149} :catch_145

    :goto_149
    const-string p2, "ActivityManagerPerformance"

    const-string v0, "AMP_release() ACT_RESUME failed"

    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_173

    const-string p2, "ActivityManagerPerformance"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AMP_release() ACT_RESUME failed. e: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_173
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_176
    return-void
.end method

.method public final setBoosterActStart(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 9

    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_76

    if-eqz p1, :cond_a

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v0, v1

    :goto_b
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_16

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_11} :catch_12

    goto :goto_17

    :catch_12
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_16
    move-object v2, v1

    :goto_17
    const-string v3, "ActivityManagerPerformance"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setBoosterActStart() onoff: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", r: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "), curBoost: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v0, :cond_76

    const-string v0, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setBoosterActStart() Trace\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_76
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->checkBoostDisabledByFold()V

    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->isChinaModel:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_ec

    if-eqz p1, :cond_ec

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_ec

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_ec

    const-string/jumbo v3, "LuckyMoneyReceiveUI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ec

    if-eqz p2, :cond_209

    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez p1, :cond_e3

    sget-object p1, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "LuckyMoneyBooster"

    invoke-static {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p1, :cond_cc

    const p2, 0x12001001

    invoke-virtual {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency(I)[I

    move-result-object p1

    if-eqz p1, :cond_b5

    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    aget p1, p1, v2

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/os/SemDvfsManager;->addResourceValue(II)V

    goto :goto_e3

    :cond_b5
    const-string p0, "ActivityManagerPerformance"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "setBoosterActStart() skipped. getSupportedFrequency() failed. AMP_PERF_ENABLE: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_cc
    const-string p0, "ActivityManagerPerformance"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "setBoosterActStart() skipped. SemDvfsManager.createInstance() failed. AMP_PERF_ENABLE: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e3
    :goto_e3
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    const/16 p1, 0x1388

    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    goto/16 :goto_209

    :cond_ec
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    const/4 v3, 0x4

    if-eqz v0, :cond_105

    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v4, :cond_105

    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v5, "AMS_ACT_START"

    invoke-static {v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v4, :cond_11a

    invoke-virtual {v4, v3}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    goto :goto_11a

    :cond_105
    if-nez v0, :cond_11a

    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v4, :cond_11a

    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v5, "AMS_RESUME"

    invoke-static {v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v4, :cond_11a

    invoke-virtual {v4, v3}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    :cond_11a
    :goto_11a
    if-eqz v0, :cond_11f

    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    goto :goto_121

    :cond_11f
    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    :goto_121
    if-nez v3, :cond_138

    const-string p0, "ActivityManagerPerformance"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "setBoosterActStart() skipped. SemDvfsManager.createInstance() failed. AMP_PERF_ENABLE: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_138
    const/4 v4, 0x2

    if-eqz p2, :cond_1b7

    if-eqz p1, :cond_146

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p2

    if-eqz p2, :cond_146

    const/16 p2, 0x1f4

    goto :goto_14d

    :cond_146
    if-eqz v0, :cond_14b

    sget p2, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    goto :goto_14d

    :cond_14b
    sget p2, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    :goto_14d
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :try_start_152
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    monitor-enter v0
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_155} :catch_170

    :try_start_155
    invoke-virtual {v3}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    monitor-exit v0
    :try_end_15b
    .catchall {:try_start_155 .. :try_end_15b} :catchall_172

    :try_start_15b
    const-string v0, "ActivityManagerPerformance"

    const-string v3, "AMP_acquire() ACT_START"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    int-to-long v3, p2

    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_16e} :catch_170

    goto/16 :goto_209

    :catch_170
    move-exception p1

    goto :goto_175

    :catchall_172
    move-exception p1

    :try_start_173
    monitor-exit v0
    :try_end_174
    .catchall {:try_start_173 .. :try_end_174} :catchall_172

    :try_start_174
    throw p1
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_175} :catch_170

    :goto_175
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-eqz p2, :cond_17b

    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    :cond_17b
    const-string p2, "ActivityManagerPerformance"

    const-string v0, "AMP_acquire() ACT_START failed. stop boosting"

    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_1ae

    const-string p2, "ActivityManagerPerformance"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "AMP_acquire() ACT_START failed. ["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "] e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ae
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p2, v2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(Lcom/android/server/wm/ActivityRecord;Z)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_209

    :cond_1b7
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterTail(Lcom/android/server/wm/ActivityRecord;Z)V

    :try_start_1ba
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1bd
    .catch Ljava/lang/Exception; {:try_start_1ba .. :try_end_1bd} :catch_1d8

    :try_start_1bd
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-nez p2, :cond_1c5

    monitor-exit p1

    goto :goto_209

    :catchall_1c3
    move-exception p2

    goto :goto_1da

    :cond_1c5
    invoke-virtual {v3}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    monitor-exit p1
    :try_end_1cb
    .catchall {:try_start_1bd .. :try_end_1cb} :catchall_1c3

    :try_start_1cb
    const-string p1, "ActivityManagerPerformance"

    const-string p2, "AMP_release() ACT_START"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1d7
    .catch Ljava/lang/Exception; {:try_start_1cb .. :try_end_1d7} :catch_1d8

    goto :goto_209

    :catch_1d8
    move-exception p1

    goto :goto_1dc

    :goto_1da
    :try_start_1da
    monitor-exit p1
    :try_end_1db
    .catchall {:try_start_1da .. :try_end_1db} :catchall_1c3

    :try_start_1db
    throw p2
    :try_end_1dc
    .catch Ljava/lang/Exception; {:try_start_1db .. :try_end_1dc} :catch_1d8

    :goto_1dc
    const-string p2, "ActivityManagerPerformance"

    const-string v0, "AMP_release() ACT_START failed"

    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_206

    const-string p2, "ActivityManagerPerformance"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AMP_release() ACT_START failed. e: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_206
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_209
    :goto_209
    return-void
.end method

.method public final setBoosterAppSwitch(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 12

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_7

    :cond_6
    move-object v1, v0

    :goto_7
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->prevSwitchActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_e

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_f

    :cond_e
    move-object v2, v0

    :goto_f
    sget-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v3, :cond_84

    if-eqz p1, :cond_18

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_19

    :cond_18
    move-object v3, v0

    :goto_19
    :try_start_19
    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_24

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_1f} :catch_20

    goto :goto_25

    :catch_20
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_24
    move-object v4, v0

    :goto_25
    const-string v5, "ActivityManagerPerformance"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setBoosterAppSwitch() onoff: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", r: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "), curBoost: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v3, :cond_84

    const-string v3, "ActivityManagerPerformance"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setBoosterAppSwitch() Trace\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_84
    if-eqz p2, :cond_9c

    if-eqz v1, :cond_9c

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c

    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_220

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterAppSwitch() skipped. Background activity start on abnormal app : "

    invoke-static {p1, v2, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_220

    :cond_9c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->checkBoostDisabledByFold()V

    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v2, :cond_b3

    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v3, "AMS_APP_SWITCH"

    invoke-static {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v2, :cond_b3

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    :cond_b3
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v2, :cond_c0

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterAppSwitch() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c0
    const/16 v3, 0xb

    const/16 v4, 0x9

    const/4 v5, 0x1

    if-eqz p2, :cond_19d

    if-eqz p1, :cond_d2

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p2

    if-eqz p2, :cond_d2

    const/16 p2, 0x1f4

    goto :goto_d4

    :cond_d2
    sget p2, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    :goto_d4
    iget-object v6, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v6, 0x0

    :try_start_da
    sget-object v7, Lcom/android/server/wm/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    monitor-enter v7
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_dd} :catch_139

    :try_start_dd
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    sput-object p1, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    sput-object p1, Lcom/android/server/wm/ActivityManagerPerformance;->prevSwitchActivity:Lcom/android/server/wm/ActivityRecord;

    monitor-exit v7
    :try_end_e5
    .catchall {:try_start_dd .. :try_end_e5} :catchall_157

    :try_start_e5
    const-string v2, "ActivityManagerPerformance"

    const-string v7, "AMP_acquire() APP_SWITCH"

    invoke-static {v2, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    int-to-long v7, p2

    invoke-virtual {v5, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/16 v2, 0xe

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {p2, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/16 v2, 0xa

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v7, 0xdac

    invoke-virtual {p2, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean p2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object p2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v2, p2, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v2, :cond_13b

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v2, "com.sec.android.app.camera"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_134

    const/16 v2, 0x1388

    goto :goto_135

    :cond_134
    move v2, v6

    :goto_135
    invoke-virtual {p2, p1, v2, v1}, Lcom/android/server/am/FreecessController;->enterOLAF(IILjava/lang/String;)V

    goto :goto_13b

    :catch_139
    move-exception p1

    goto :goto_15a

    :cond_13b
    :goto_13b
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->isPerfReserveSupport:Z

    if-eqz p1, :cond_220

    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const-string p2, "120"

    invoke-virtual {p1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_155} :catch_139

    goto/16 :goto_220

    :catchall_157
    move-exception p1

    :try_start_158
    monitor-exit v7
    :try_end_159
    .catchall {:try_start_158 .. :try_end_159} :catchall_157

    :try_start_159
    throw p1
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_15a} :catch_139

    :goto_15a
    sget-object p2, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-eqz p2, :cond_160

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    :cond_160
    const-string p2, "ActivityManagerPerformance"

    const-string v1, "AMP_acquire() APP_SWITCH failed. stop boosting"

    invoke-static {p2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_193

    const-string p2, "ActivityManagerPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AMP_acquire() APP_SWITCH failed. ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "] e: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_193
    sget-object p2, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p2, v6}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterAppSwitch(Lcom/android/server/wm/ActivityRecord;Z)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_220

    :cond_19d
    invoke-virtual {p0, p1, v5}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterTail(Lcom/android/server/wm/ActivityRecord;Z)V

    :try_start_1a0
    sget-object p1, Lcom/android/server/wm/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1a3} :catch_1d3

    :try_start_1a3
    sget-object p2, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-nez p2, :cond_1ac

    monitor-exit p1

    goto/16 :goto_220

    :catchall_1aa
    move-exception p2

    goto :goto_1f0

    :cond_1ac
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    monitor-exit p1
    :try_end_1b2
    .catchall {:try_start_1a3 .. :try_end_1b2} :catchall_1aa

    :try_start_1b2
    const-string p1, "ActivityManagerPerformance"

    const-string p2, "AMP_release() APP_SWITCH"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object p1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean p2, p1, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz p2, :cond_1d5

    const-string/jumbo p2, "com.sec.android.app.camera"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d5

    invoke-virtual {p1}, Lcom/android/server/am/FreecessController;->exitOLAF()V

    goto :goto_1d5

    :catch_1d3
    move-exception p1

    goto :goto_1f2

    :cond_1d5
    :goto_1d5
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->isPerfReserveSupport:Z

    if-eqz p1, :cond_220

    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const-string p2, "0"

    invoke-virtual {p1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1ef
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_1ef} :catch_1d3

    goto :goto_220

    :goto_1f0
    :try_start_1f0
    monitor-exit p1
    :try_end_1f1
    .catchall {:try_start_1f0 .. :try_end_1f1} :catchall_1aa

    :try_start_1f1
    throw p2
    :try_end_1f2
    .catch Ljava/lang/Exception; {:try_start_1f1 .. :try_end_1f2} :catch_1d3

    :goto_1f2
    const-string p2, "ActivityManagerPerformance"

    const-string v0, "AMP_release() APP_SWITCH failed"

    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_21d

    const-string p2, "ActivityManagerPerformance"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBoosterAppSwitch() AMP_release failed. e: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21d
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_220
    :goto_220
    return-void
.end method

.method public final setBoosterHome(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .registers 14

    const-string/jumbo v0, "setBoosterHome() skipped. already boosted "

    const-string/jumbo v1, "setBoosterHome() skipped. already boosted "

    const/4 v2, 0x0

    if-eqz p1, :cond_c

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_d

    :cond_c
    move-object v3, v2

    :goto_d
    sget-boolean v4, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_6e

    if-eqz p1, :cond_15

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    :cond_15
    const-string v5, "ActivityManagerPerformance"

    const-string/jumbo v6, "setBoosterHome() fastBoost: "

    const-string v7, ", startAct: "

    const-string v8, ", curTopState: "

    invoke-static {v6, p2, v7, p3, v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    invoke-static {v7}, Lcom/android/server/wm/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", r: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "), pkgName : "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v2, :cond_6e

    const-string v2, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setBoosterHome() Trace\n"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6e
    sget v2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    if-nez v2, :cond_7b

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterHome() skipped. Method is called by non-system_server"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7b
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v2, :cond_8a

    if-eqz v4, :cond_201

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterHome() skipped. mIsScreenOn: false"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->checkBoostDisabledByFold()V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->isJustFoldedState()Z

    move-result v2

    if-eqz v2, :cond_95

    goto/16 :goto_201

    :cond_95
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v5, 0x2

    const-wide/16 v6, 0xc8

    if-eqz p2, :cond_e8

    if-nez p1, :cond_a3

    iput-wide v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomePressedTime:J

    goto :goto_b4

    :cond_a3
    iget-wide p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomePressedTime:J

    sub-long p2, v2, p2

    cmp-long p2, p2, v6

    if-ltz p2, :cond_d7

    iget-wide p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomeBoostedTime:J

    sub-long p2, v2, p2

    cmp-long p2, p2, v6

    if-gez p2, :cond_b4

    goto :goto_d7

    :cond_b4
    :goto_b4
    if-nez p1, :cond_187

    sget p2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    if-ne p2, v5, :cond_187

    if-eqz v4, :cond_201

    const-string p0, "ActivityManagerPerformance"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "setBoosterHome() skipped. Home key was pressed, but curTopState is already "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    invoke-static {p2}, Lcom/android/server/wm/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d7
    :goto_d7
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    if-eq p2, p1, :cond_dd

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    :cond_dd
    if-eqz v4, :cond_201

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterHome() skipped. uninterrupted boosting"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e8
    iget-wide v8, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomePressedTime:J

    sub-long v8, v2, v8

    cmp-long p2, v8, v6

    if-ltz p2, :cond_1ef

    iget-wide v8, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomeBoostedTime:J

    sub-long v8, v2, v8

    cmp-long p2, v8, v6

    if-gez p2, :cond_fa

    goto/16 :goto_1ef

    :cond_fa
    sget p2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    if-ne p2, v5, :cond_187

    :try_start_fe
    sget-object p2, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_136

    if-eq p2, p1, :cond_120

    if-eq v2, p1, :cond_120

    if-eqz p2, :cond_114

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_120

    :cond_114
    if-eqz v2, :cond_136

    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_136

    :cond_120
    if-eqz v4, :cond_201

    const-string p0, "ActivityManagerPerformance"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_135
    .catch Ljava/lang/NullPointerException; {:try_start_fe .. :try_end_135} :catch_182

    return-void

    :cond_136
    const/4 p2, 0x1

    if-eqz p3, :cond_147

    if-eqz v4, :cond_143

    const-string p3, "ActivityManagerPerformance"

    const-string/jumbo v0, "setBoosterHome() call setBoosterActStart()"

    invoke-static {p3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_143
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void

    :cond_147
    :try_start_147
    iget-object p3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_16f

    if-eq p3, p1, :cond_159

    if-eqz p3, :cond_16f

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object p3, p3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_16f

    :cond_159
    if-eqz v4, :cond_201

    const-string p0, "ActivityManagerPerformance"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16e
    .catch Ljava/lang/NullPointerException; {:try_start_147 .. :try_end_16e} :catch_17d

    return-void

    :cond_16f
    if-eqz v4, :cond_179

    const-string p3, "ActivityManagerPerformance"

    const-string/jumbo v0, "setBoosterHome() call setBoosterActResume()"

    invoke-static {p3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_179
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void

    :catch_17d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :catch_182
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :cond_187
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    if-nez p2, :cond_19c

    sget-object p2, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string p3, "AMS_APP_HOME"

    invoke-static {p2, p3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p2, :cond_19c

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    :cond_19c
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    if-nez p2, :cond_1a9

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterHome() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a9
    iput-wide v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomeBoostedTime:J

    :try_start_1ab
    iget-object p3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockHome:Ljava/lang/Object;

    monitor-enter p3
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_1ab .. :try_end_1ae} :catch_1bc

    :try_start_1ae
    invoke-virtual {p2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    monitor-exit p3
    :try_end_1b4
    .catchall {:try_start_1ae .. :try_end_1b4} :catchall_1be

    :try_start_1b4
    const-string p1, "ActivityManagerPerformance"

    const-string p2, "AMP_acquire() HOME"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bb
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_1bb} :catch_1bc

    return-void

    :catch_1bc
    move-exception p1

    goto :goto_1c1

    :catchall_1be
    move-exception p1

    :try_start_1bf
    monitor-exit p3
    :try_end_1c0
    .catchall {:try_start_1bf .. :try_end_1c0} :catchall_1be

    :try_start_1c0
    throw p1
    :try_end_1c1
    .catch Ljava/lang/Exception; {:try_start_1c0 .. :try_end_1c1} :catch_1bc

    :goto_1c1
    const-string p2, "ActivityManagerPerformance"

    const-string p3, "AMP_acquire() HOME failed"

    invoke-static {p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_1eb

    const-string p2, "ActivityManagerPerformance"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "AMP_acquire() HOME failed. e: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1eb
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_201

    :cond_1ef
    :goto_1ef
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    if-eq p2, p1, :cond_1f7

    if-eqz p1, :cond_1f7

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    :cond_1f7
    if-eqz v4, :cond_201

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterHome() skipped. uninterrupted boosting"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_201
    :goto_201
    return-void
.end method

.method public final setBoosterTail(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 10

    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_55

    if-eqz p1, :cond_9

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    const-string v2, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setBoosterTail() from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_19

    const-string v4, "AppSwitch"

    goto :goto_1b

    :cond_19
    const-string v4, "ActStart"

    :goto_1b
    const-string v5, ", r: "

    const-string v6, " ("

    invoke-static {v3, v4, v5, v1, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v1, :cond_55

    const-string v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setBoosterTail() Trace\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_55
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->checkBoostDisabledByFold()V

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v1, :cond_67

    if-eqz v0, :cond_114

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterTail() skipped. mIsScreenOn: false"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_67
    if-eqz p2, :cond_6d

    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_73

    :cond_6d
    if-nez p2, :cond_8c

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_8c

    :cond_73
    if-eqz v0, :cond_114

    const-string p0, "ActivityManagerPerformance"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setBoosterTail() skipped. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_84

    const-string p2, "AppSwitch"

    goto :goto_86

    :cond_84
    const-string p2, "ActStart"

    :goto_86
    const-string v0, " is not finished"

    invoke-static {p1, p2, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8c
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    if-nez p2, :cond_a0

    sget-object p2, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v0, "AMS_RESUME_TAIL"

    invoke-static {p2, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p2, :cond_a0

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    :cond_a0
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

    if-nez p2, :cond_b4

    sget-object p2, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v0, "AMS_ACT_LAZY"

    invoke-static {p2, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p2, :cond_b4

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    :cond_b4
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    if-nez p2, :cond_c1

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterTail() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c1
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_ce

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterTail() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_ce
    :try_start_ce
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockTail:Ljava/lang/Object;

    monitor-enter v1
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d1} :catch_e2

    :try_start_d1
    invoke-virtual {p2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/wm/ActivityRecord;

    monitor-exit v1
    :try_end_da
    .catchall {:try_start_d1 .. :try_end_da} :catchall_e4

    :try_start_da
    const-string p1, "ActivityManagerPerformance"

    const-string p2, "AMP_acquire() TAIL"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_e1} :catch_e2

    return-void

    :catch_e2
    move-exception p1

    goto :goto_e7

    :catchall_e4
    move-exception p1

    :try_start_e5
    monitor-exit v1
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e4

    :try_start_e6
    throw p1
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_e7} :catch_e2

    :goto_e7
    const-string p2, "ActivityManagerPerformance"

    const-string v0, "AMP_acquire() TAIL failed"

    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_111

    const-string p2, "ActivityManagerPerformance"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AMP_acquire() TAIL failed. e: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_111
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_114
    return-void
.end method

.method public final setLowPower(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_15

    if-eqz p1, :cond_11

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    goto :goto_15

    :catchall_f
    move-exception p0

    goto :goto_47

    :cond_11
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    :cond_15
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_f

    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    monitor-enter v1

    :try_start_19
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_2b

    if-eqz p1, :cond_27

    const/16 v2, 0x1e

    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    goto :goto_2b

    :catchall_25
    move-exception p0

    goto :goto_45

    :cond_27
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    :cond_2b
    :goto_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_19 .. :try_end_2c} :catchall_25

    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockTail:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2f
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p0, :cond_41

    if-eqz p1, :cond_3d

    const/16 p1, 0x1f

    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    goto :goto_41

    :catchall_3b
    move-exception p0

    goto :goto_43

    :cond_3d
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    :cond_41
    :goto_41
    monitor-exit v0

    return-void

    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_2f .. :try_end_44} :catchall_3b

    throw p0

    :goto_45
    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_25

    throw p0

    :goto_47
    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_f

    throw p0
.end method
