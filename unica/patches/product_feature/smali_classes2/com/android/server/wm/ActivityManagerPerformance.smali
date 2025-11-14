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
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    const-string/jumbo v0, "failed writeAppLaunchTimeCountStatsToDB, "

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ActivityManagerPerformance"

    if-eqz v1, :cond_1

    :try_start_0
    sget-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    const-string v4, "AppLaunchTimeCountStats"

    invoke-static {v3, v1, v4}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    sget-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "lastModifiedTime"

    invoke-static {v1, v3, v4}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string/jumbo v1, "writeAppLaunchTimeCountStatsToDB"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    :goto_1
    if-eqz p0, :cond_0

    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw p0

    :goto_2
    return-void

    :cond_1
    const-string/jumbo p0, "failed DB writable open to writeAppLaunchTimeCountStatsToDB."

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 18

    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "false"

    const-string/jumbo v3, "true"

    if-eqz v0, :cond_1

    const-string/jumbo v0, "sys.config.amp_debug"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
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
    .locals 26

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

    :goto_0
    sget-object v7, Lcom/android/server/wm/ActivityManagerPerformance;->sLowPerformancePkgList:[Ljava/lang/String;

    array-length v8, v7

    if-ge v6, v8, :cond_0

    sget-object v8, Lcom/android/server/wm/ActivityManagerPerformance;->sLowPerformancePkgSet:Ljava/util/HashSet;

    aget-object v7, v7, v6

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
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

    if-eqz v6, :cond_1

    const v7, 0x402610

    invoke-virtual {v6, v7}, Lcom/samsung/android/os/SemDvfsManager;->checkSysfsIdExist(I)Z

    move-result v6

    iput-boolean v6, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIsTaskBoostExist:Z

    :cond_1
    const-string v6, "ActivityManagerPerformance"

    sget-boolean v7, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_2

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

    :cond_2
    move-object v8, v0

    new-instance v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    sget-object v11, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v11}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;-><init>(Lcom/android/server/wm/ActivityManagerPerformance;Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v0, "getWritableDatabase for appDB"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Exception for appDB "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v11, v6}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_3

    :goto_2
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

    if-eqz v0, :cond_4

    const-string/jumbo v0, "delete app db and open"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v11, "/data/misc/AppLaunchTime/app_launch_time.db"

    invoke-virtual {v0, v11}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    :cond_3
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_3

    :catch_2
    const-string/jumbo v0, "SQLiteDatabaseCorruptException for appDB"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    :cond_4
    :goto_3
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1c

    :try_start_1
    sget-object v11, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    invoke-static {v11, v0}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mfetch(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    if-eqz v7, :cond_5

    const-string v0, "AppLaunchDB fetch"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :cond_5
    :goto_4
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_6

    :catch_3
    :try_start_2
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    sget-object v11, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    const-string v0, "DROP TABLE AppLaunchTime;"

    invoke-virtual {v11, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    goto :goto_5

    :catch_4
    move-exception v0

    :try_start_4
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

    :goto_5
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    sget-object v11, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string/jumbo v0, "failed fetch, drop & onCreate new"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :goto_6
    const-string/jumbo v11, "failed checkStartTimeGathered, "

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    iget-wide v12, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mStartTimeGathered:J

    cmp-long v14, v12, v3

    const-string/jumbo v15, "startTimeOfGatheredData"

    if-lez v14, :cond_6

    if-eqz v7, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "DB mStartTimeGathered : "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_8

    :try_start_5
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mStartTimeGathered:J

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    sget-object v12, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v12, v15}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_7
    :goto_7
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_8

    :catch_5
    move-exception v0

    if-eqz v7, :cond_7

    :try_start_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0

    :cond_8
    :goto_8
    if-eqz v7, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "setStartTimeGathered : "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    iget-wide v11, v11, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mStartTimeGathered:J

    invoke-static {v0, v11, v12, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    :cond_9
    :goto_9
    const-string/jumbo v11, "failed checkDevicePowerOnCount, "

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    iget-wide v12, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDevicePowerOnCount:J

    cmp-long v0, v12, v3

    move-wide/from16 v16, v3

    const-wide/16 v3, 0x1

    if-lez v0, :cond_a

    add-long/2addr v12, v3

    if-eqz v7, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v14, "DB mDevicePowerOnCount : "

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_a
    move-wide v12, v3

    :cond_b
    :goto_a
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v14, "devicePowerOnCount"

    if-eqz v0, :cond_d

    move/from16 v18, v5

    :try_start_7
    sget-object v5, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    iput-wide v12, v5, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDevicePowerOnCount:J

    invoke-static {v5, v0, v14}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_c
    :goto_b
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_c

    :catch_6
    move-exception v0

    if-eqz v7, :cond_c

    :try_start_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_b

    :catchall_1
    move-exception v0

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0

    :cond_d
    move/from16 v18, v5

    :goto_c
    if-eqz v7, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setDevicePowerOnCount : "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    iget-wide v11, v5, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDevicePowerOnCount:J

    invoke-static {v0, v11, v12, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    :cond_e
    const-string/jumbo v5, "failed checkBuildVersionChanged, "

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    iget-object v0, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mBuildVersion:Ljava/lang/String;

    const-string/jumbo v11, "ro.build.version.incremental"

    const-string/jumbo v12, "None"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v0, :cond_f

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    if-eqz v7, :cond_12

    const-string/jumbo v5, "build version check : "

    const-string v12, ","

    invoke-static {v5, v0, v12, v11, v6}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_f
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityManagerPerformance;->deleteDBTableAndClear()V

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_11

    :try_start_9
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
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_10
    :goto_d
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_e

    :catch_7
    move-exception v0

    if-eqz v7, :cond_10

    :try_start_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_d

    :catchall_2
    move-exception v0

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0

    :cond_11
    :goto_e
    if-eqz v7, :cond_12

    const-string/jumbo v0, "detect New build version : "

    invoke-static {v0, v11, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_f
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

    if-gez v0, :cond_15

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

    if-eqz v0, :cond_14

    :try_start_b
    sget-object v15, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    int-to-long v3, v14

    iput-wide v3, v15, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mDBDayOfWeek:J

    const-string v3, "DayOfWeek"

    invoke-static {v15, v0, v3}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :cond_13
    :goto_10
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_11

    :catch_8
    move-exception v0

    if-eqz v7, :cond_13

    :try_start_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_10

    :catchall_3
    move-exception v0

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0

    :cond_14
    :goto_11
    move v0, v14

    :cond_15
    if-eqz v7, :cond_16

    const-string/jumbo v3, "TTLS Day of Week : "

    invoke-static {v0, v3, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_16
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

    if-lez v0, :cond_17

    invoke-static {v4, v5}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v11

    sub-long v11, v2, v11

    move-wide/from16 v21, v2

    move-wide v2, v11

    goto :goto_12

    :cond_17
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    const-wide/32 v13, 0x240c8400

    add-long/2addr v11, v13

    move-wide/from16 v21, v11

    :goto_12
    const/16 v20, 0x1

    const-wide/32 v23, 0x240c8400

    invoke-virtual/range {v19 .. v25}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    move-wide/from16 v11, v21

    if-eqz v7, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "Bigdata will send at : "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    iget-wide v11, v0, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->mLastModifiedTime:J

    sub-long/2addr v2, v11

    invoke-static/range {p1 .. p2}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v11

    div-long/2addr v2, v11

    cmp-long v0, v2, v4

    if-lez v0, :cond_1a

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityManagerPerformance;->deleteDBTableAndClear()V

    if-eqz v7, :cond_19

    const-string/jumbo v0, "deleted data older than last week."

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_13
    move/from16 v2, v18

    goto :goto_14

    :cond_1a
    cmp-long v0, v2, v16

    if-lez v0, :cond_1b

    iget-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIntentReceiver:Lcom/android/server/wm/ActivityManagerPerformance$2;

    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/ActivityManagerPerformance$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    if-eqz v7, :cond_19

    const-string/jumbo v0, "did cleanup the data old the last week."

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_1b
    if-eqz v7, :cond_19

    const-string/jumbo v0, "all data was updated this week."

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :goto_14
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mIsAppLaunchDBInit:Z

    goto :goto_15

    :catchall_4
    move-exception v0

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0

    :cond_1c
    :goto_15
    if-eqz v7, :cond_1d

    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_1d
    iget-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    if-nez v0, :cond_1e

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    iput-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    :cond_1e
    iget-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    if-eqz v0, :cond_1f

    new-instance v2, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v1, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mDeviceStateCallback:Lcom/android/server/wm/ActivityManagerPerformance$1;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    :cond_1f
    return-void
.end method

.method public static getBooster(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/ActivityManagerPerformance;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mLockinit:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/ActivityManagerPerformance;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)V

    sput-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz p0, :cond_2

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    :cond_2
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static final isBlockedApp(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->gBlockedPkgs:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isSpeg(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "com.samsung.speg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "Skipping boost of "

    const-string/jumbo v0, "SPEG"

    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized notifyCurTopAct(Lcom/android/server/wm/ActivityRecord;)V
    .locals 11

    const-string/jumbo v0, "notifyCurTopAct() activity changed\n[Activity] prev: "

    const-class v1, Lcom/android/server/wm/ActivityManagerPerformance;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v2, :cond_15

    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    if-ne v2, p0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    sget-boolean v6, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_6

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

    if-eqz v8, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n[Process] prev: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_3
    move-object v0, v7

    :goto_1
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

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v0, v7

    :goto_2
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

    :cond_5
    const-string v9, "ActivityManagerPerformance"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_6

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->ALLIED_PROC_PROTECTION_LMKD:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_b

    iget v8, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    if-ne v8, v5, :cond_a

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->alliedProtectedProcList:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v8, :cond_8

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_7
    :goto_3
    if-eqz v6, :cond_8

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

    :cond_8
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_9
    monitor-exit v0

    goto :goto_5

    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw p0

    :cond_a
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->alliedProtectedProcList:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    goto :goto_5

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    throw p0

    :cond_b
    :goto_5
    sput-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    sput-object v7, Lcom/android/server/wm/ActivityManagerPerformance;->prevSwitchActivity:Lcom/android/server/wm/ActivityRecord;

    sget v0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    if-eq v0, v2, :cond_13

    sput v2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    sget-boolean v7, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v7, :cond_13

    sget-object v7, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v7, :cond_13

    iget-boolean v7, v7, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    if-eqz v7, :cond_13

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v2, v4, :cond_d

    if-eqz v6, :cond_c

    const-string v0, "ActivityManagerPerformance"

    const-string/jumbo v2, "notifyCurTopAct() call setBoosterHome()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-virtual {v0, p0, v7, v8}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterHome(Lcom/android/server/wm/ActivityRecord;ZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v1

    return-void

    :cond_d
    if-ne v0, v3, :cond_13

    if-eq v2, v5, :cond_e

    if-ne v2, v7, :cond_13

    :cond_e
    :try_start_5
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_f

    if-eq v0, p0, :cond_13

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_6

    :catch_0
    move-exception p0

    goto :goto_7

    :cond_f
    :goto_6
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    if-eqz v2, :cond_11

    sget v2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    if-ne v2, v5, :cond_11

    iput-boolean v8, v0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    if-eqz v6, :cond_10

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo v0, "notifyCurTopAct() skipped. isMultiWindowResume: true"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_10
    monitor-exit v1

    return-void

    :cond_11
    if-eqz v6, :cond_12

    :try_start_6
    const-string v0, "ActivityManagerPerformance"

    const-string/jumbo v2, "notifyCurTopAct() call setBoosterAppSwitch()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-virtual {v0, p0, v7}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterAppSwitch(Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v1

    return-void

    :goto_7
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    sget-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    iput-boolean v8, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v1

    return-void

    :cond_13
    :try_start_8
    sget-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz p0, :cond_14

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_14

    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->sLowPerformancePkgSet:Ljava/util/HashSet;

    if-eqz v2, :cond_14

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityManagerPerformance;->setLowPower(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_14
    monitor-exit v1

    return-void

    :cond_15
    :goto_8
    monitor-exit v1

    return-void

    :goto_9
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p0
.end method

.method public static topStateToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string/jumbo v0, "NO_STATE_NUM_OF_"

    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "TOP_STATE_APP"

    return-object p0

    :cond_1
    const-string/jumbo p0, "TOP_STATE_RECENTS_APP"

    return-object p0

    :cond_2
    const-string/jumbo p0, "TOP_STATE_HOME"

    return-object p0

    :cond_3
    const-string/jumbo p0, "TOP_STATE_IS_CREATING"

    return-object p0

    :cond_4
    const-string/jumbo p0, "TOP_STATE_INIT"

    return-object p0
.end method

.method public static x(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->pkgDecoder:Ljava/util/Base64$Decoder;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final checkBoostDisabledByFold()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_DISABLE_WHEN_FOLDED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final deleteDBTableAndClear()V
    .locals 6

    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    const-string/jumbo v1, "failed deleteDBTableAndClear, "

    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ActivityManagerPerformance"

    if-eqz v2, :cond_2

    :try_start_0
    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    invoke-static {v4, v2}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mdeleteDBData(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDBHelper:Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;

    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "lastModifiedTime"

    invoke-static {v2, v4, v5}, Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;->-$$Nest$mupdateDataInTable(Lcom/android/server/wm/ActivityManagerPerformance$AppLaunchTimeDBHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchTimeCountStats:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    if-eqz v0, :cond_0

    const-string/jumbo p0, "deleteDBTableAndClear"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void

    :goto_1
    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void

    :cond_2
    const-string/jumbo p0, "failed DB writable open to deleteDBTableAndClear."

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final gatherAppLaunchTime(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JLjava/lang/String;)V
    .locals 32

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

    if-eqz v11, :cond_11

    if-eqz v1, :cond_11

    const-wide/16 v11, 0x4e20

    cmp-long v11, v2, v11

    if-ltz v11, :cond_0

    goto/16 :goto_c

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sget-object v13, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->HOT:Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->getType()I

    move-result v13

    if-eq v4, v13, :cond_1

    const-wide/16 v13, 0xbb8

    cmp-long v13, v2, v13

    if-lez v13, :cond_1

    const-wide/16 v13, 0x4

    cmp-long v13, v5, v13

    if-ltz v13, :cond_1

    sget-wide v13, Lcom/android/server/wm/ActivityManagerPerformance;->sNextTimeToSendSlugBigdata:J

    cmp-long v13, v11, v13

    if-lez v13, :cond_1

    iget-object v13, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mBigdataSlugSkipPackage:Ljava/util/Set;

    check-cast v13, Ljava/util/HashSet;

    invoke-virtual {v13, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo v8, "failed to sendMessage"

    invoke-static {v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    sget-object v8, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    sget-boolean v11, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    const/4 v12, 0x0

    if-eqz v8, :cond_3

    :try_start_1
    invoke-virtual {v8, v1, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    if-eqz v11, :cond_2

    const-string/jumbo v8, "is not found in pm"

    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v8, "None"

    goto :goto_1

    :cond_3
    const-string v8, ""

    :goto_1
    :try_start_2
    iget-object v13, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchTimeCountStats:Ljava/util/Map;

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    const-wide/16 v14, 0x0

    if-eqz v13, :cond_6

    iget-object v13, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchTimeCountStats:Ljava/util/Map;

    check-cast v13, Ljava/util/HashMap;

    invoke-virtual {v13, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    invoke-interface {v13, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Ljava/lang/Long;

    move-wide/from16 v30, v14

    goto/16 :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_b

    :cond_4
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

    goto/16 :goto_2

    :cond_5
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

    goto/16 :goto_2

    :cond_6
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

    :goto_2
    move-object v8, v12

    :goto_3
    invoke-static {}, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->values()[Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    move-result-object v12

    array-length v13, v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v14, 0x0

    :goto_4
    sget-object v15, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->UNKNOWN:Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;

    if-ge v14, v13, :cond_8

    :try_start_3
    aget-object v16, v12, v14

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ActivityManagerPerformance$TransitionLaunchType;->getType()I

    move-result v2

    if-ne v2, v4, :cond_7

    move-object/from16 v2, v16

    goto :goto_5

    :cond_7
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v2, p3

    goto :goto_4

    :cond_8
    move-object v2, v15

    :goto_5
    if-eq v2, v15, :cond_f

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {}, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;->values()[Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;

    move-result-object v4

    array-length v12, v4

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v12, :cond_a

    aget-object v14, v4, v13

    invoke-virtual {v14}, Lcom/android/server/wm/ActivityManagerPerformance$LaunchTimeRange;->getThreshold()I

    move-result v15

    move-object/from16 v16, v2

    move/from16 p2, v3

    int-to-long v2, v15

    cmp-long v2, p3, v2

    if-gez v2, :cond_9

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    goto :goto_7

    :cond_9
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, p2

    move-object/from16 v2, v16

    goto :goto_6

    :cond_a
    move-object/from16 v16, v2

    move/from16 p2, v3

    const/16 v2, 0x9

    :goto_7
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

    if-nez v2, :cond_b

    aget-object v2, v8, p2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v12

    goto :goto_8

    :cond_b
    aget-object v2, v8, p2

    aget-object v2, v2, v12

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-lez v2, :cond_c

    aget-object v2, v8, p2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v12

    :cond_c
    :goto_8
    aget-object v2, v8, p2

    aget-object v2, v2, v13

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v30

    if-nez v2, :cond_d

    aget-object v2, v8, p2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v13

    goto :goto_9

    :cond_d
    aget-object v2, v8, p2

    aget-object v2, v2, v13

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-gez v2, :cond_e

    aget-object v2, v8, p2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v13

    :cond_e
    :goto_9
    aget-object v2, v8, p2

    aget-object v3, v2, v14

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long v3, v3, p3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v14

    goto :goto_a

    :cond_f
    move-object/from16 v16, v2

    :goto_a
    cmp-long v2, v5, v30

    if-lez v2, :cond_10

    iget-wide v2, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mDramSize:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_10

    iput-wide v5, v0, Lcom/android/server/wm/ActivityManagerPerformance;->mDramSize:J

    :cond_10
    if-eqz v11, :cond_11

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
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_c

    :goto_b
    const-string/jumbo v1, "failed to gatherAppLaunchTime"

    invoke-static {v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11
    :goto_c
    return-void
.end method

.method public final getCurBoostInfoStr()Ljava/lang/String;
    .locals 5

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

    if-eqz v1, :cond_0

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

    goto :goto_0

    :cond_0
    const-string v1, "\nTIMEOUT_PREV_RESUME: "

    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
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

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
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

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, v2

    :goto_2
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

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v4, v2

    :goto_3
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

    if-eqz v4, :cond_4

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v4, v2

    :goto_4
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

    if-eqz v4, :cond_5

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object v4, v2

    :goto_5
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

    if-eqz v4, :cond_6

    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    :cond_6
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
    .locals 4

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsFolded:Z

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/wm/ActivityManagerPerformance;->mFoldListenedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo v0, "mIsFolded: true && Folded just now"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final notifyTaskBoost(I)V
    .locals 1

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
    .locals 6

    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
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

    if-eqz v2, :cond_1

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

    :cond_1
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_RELAUNCH_RESUME_ON:Z

    if-nez v2, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v2, :cond_3

    if-eqz v0, :cond_a

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "onActivityRelaunchLocked() skipped. mIsScreenOn: false"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->isJustFoldedState()Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_2

    :cond_4
    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    :cond_5
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

    if-eqz v0, :cond_6

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

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v1, "AMS_RELAUNCH_RESUME"

    invoke-static {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_7

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_8

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterRelaunchResume() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockRelaunchResume:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/wm/ActivityRecord;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p1, "ActivityManagerPerformance"

    const-string v0, "AMP_acquire() RELAUNCH_RESUME"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    const-string v0, "ActivityManagerPerformance"

    const-string v1, "AMP_acquire() RELAUNCH_RESUME failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_9

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

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_2
    return-void
.end method

.method public final onActivityStartLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 7

    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    const-string v1, "ActivityManagerPerformance"

    if-eqz v0, :cond_0

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

    if-eqz v2, :cond_0

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

    :cond_0
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/wm/ActivityManagerPerformance;->isSpeg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->isBlockedApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iput-boolean v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    :cond_4
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v2, :cond_5

    if-eqz v0, :cond_11

    const-string/jumbo p0, "onActivityStartLocked() skipped. mIsScreenOn: false"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->isJustFoldedState()Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_2

    :cond_6
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->needSkipResume:Z

    if-eqz v2, :cond_7

    iput-boolean v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->needSkipResume:Z

    :cond_7
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    const/4 v4, 0x1

    if-nez v2, :cond_8

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void

    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterHome(Lcom/android/server/wm/ActivityRecord;ZZ)V

    return-void

    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void

    :cond_a
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    const-string/jumbo v3, "onActivityStartLocked() skipped. already boosted "

    if-eqz v2, :cond_e

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :try_start_0
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-eq v2, p1, :cond_d

    if-eq v5, p1, :cond_d

    if-eqz v2, :cond_b

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    if-eqz v5, :cond_c

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_c

    goto :goto_0

    :cond_c
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void

    :cond_d
    :goto_0
    if-eqz v0, :cond_11

    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :cond_e
    :try_start_2
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-eq v2, p1, :cond_10

    if-eqz v2, :cond_f

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v2, :cond_f

    goto :goto_1

    :cond_f
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_10
    :goto_1
    if-eqz v0, :cond_11

    :try_start_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_11
    :goto_2
    return-void

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void
.end method

.method public final onActivityVisibleLocked(Lcom/android/server/wm/ActivityRecord;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ActivityManagerPerformance"

    if-nez p1, :cond_0

    const-string/jumbo p0, "onActivityVisibleLocked() ActivityRecord is Null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v1, "onActivityVisibleLocked() ActivityRecord\'s ProcessName is Null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
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

    :goto_0
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v1, :cond_2

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

    :cond_2
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->isJustFoldedState()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_7
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterAppSwitch(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final onAppLaunch(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 9

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->isSpeg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/wm/ActivityManagerPerformance;->isBlockedApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->isJustFoldedState()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockAppLaunch:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v2, "AMS_APP_LAUNCH"

    invoke-static {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_d

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v2, 0x20

    const/16 v3, -0x3e7

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchPackagesTimeOutM:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_2
    if-ge v7, v5, :cond_7

    aget-object v8, v4, v7

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v3, 0x1b

    goto :goto_5

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchPackagesTimeOutLM:[Ljava/lang/String;

    array-length v5, v4

    :goto_3
    if-ge v6, v5, :cond_b

    aget-object v7, v4, v6

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->SYSPERF_DYNAMIC_BOOST:Z

    if-eqz v8, :cond_8

    const-string/jumbo v8, "Y29tLnNlYy5hbmRyb2lkLmFwcC5zYnJvd3Nlcg=="

    invoke-static {v8}, Lcom/android/server/wm/ActivityManagerPerformance;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-eqz p2, :cond_9

    const/16 v3, 0x23

    goto :goto_5

    :cond_9
    const/16 v3, 0x1c

    goto :goto_5

    :cond_a
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_b
    if-eqz p2, :cond_c

    goto :goto_5

    :cond_c
    move v3, v2

    :goto_5
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {p2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {p2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->SYSPERF_DYNAMIC_BOOST:Z

    if-eqz p2, :cond_d

    if-ne v3, v2, :cond_d

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

    :cond_d
    monitor-exit v0

    return-void

    :goto_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final declared-synchronized sendHqmBigData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string/jumbo v0, "Success to report \'"

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHqmManager:Landroid/os/SemHqmManager;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v2, "HqmManagerService"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SemHqmManager;

    iput-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHqmManager:Landroid/os/SemHqmManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHqmManager:Landroid/os/SemHqmManager;

    if-nez v1, :cond_1

    const-string p1, "ActivityManagerPerformance"

    const-string p2, "HQM services is not working"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
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

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p1, :cond_3

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

    goto :goto_1

    :cond_2
    const-string p1, "ActivityManagerPerformance"

    const-string/jumbo p2, "failed to send to server"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final setBoosterActResume(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_3

    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_2
    move-object v3, v0

    :goto_2
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

    if-eqz v2, :cond_3

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

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v3, 0x3

    if-nez v2, :cond_4

    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v4, "AMS_ACT_RESUME"

    invoke-static {v2, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v2, :cond_5

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterActResume() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    if-eqz p2, :cond_9

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p2

    if-eqz p2, :cond_6

    const/16 p2, 0x1f4

    goto :goto_3

    :cond_6
    sget p2, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    :goto_3
    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
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
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_7

    :catch_1
    move-exception p1

    goto :goto_4

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_4
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    if-eqz p2, :cond_7

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    :cond_7
    const-string p2, "ActivityManagerPerformance"

    const-string v1, "AMP_acquire() ACT_RESUME failed. stop boosting"

    invoke-static {p2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_8

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

    :cond_8
    const/4 p2, 0x0

    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(Lcom/android/server/wm/ActivityRecord;Z)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :cond_9
    :try_start_6
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    monitor-enter p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    if-nez p2, :cond_a

    monitor-exit p1

    goto :goto_7

    :catchall_1
    move-exception p2

    goto :goto_5

    :cond_a
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    const-string p1, "ActivityManagerPerformance"

    const-string p2, "AMP_release() ACT_RESUME"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_7

    :catch_2
    move-exception p1

    goto :goto_6

    :goto_5
    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    :goto_6
    const-string p2, "ActivityManagerPerformance"

    const-string v0, "AMP_release() ACT_RESUME failed"

    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_b

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

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    return-void
.end method

.method public final setBoosterActStart(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 6

    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_1
    move-object v2, v1

    :goto_1
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

    if-eqz v0, :cond_2

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

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->checkBoostDisabledByFold()V

    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->isChinaModel:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_6

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string/jumbo v3, "LuckyMoneyReceiveUI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_12

    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez p1, :cond_5

    sget-object p1, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "LuckyMoneyBooster"

    invoke-static {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p1, :cond_4

    const p2, 0x12001001

    invoke-virtual {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency(I)[I

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    aget p1, p1, v2

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/os/SemDvfsManager;->addResourceValue(II)V

    goto :goto_2

    :cond_3
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

    :cond_4
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

    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    const/16 p1, 0x1388

    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    goto/16 :goto_9

    :cond_6
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    const/4 v3, 0x4

    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v4, :cond_7

    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v5, "AMS_ACT_START"

    invoke-static {v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v4, :cond_8

    invoke-virtual {v4, v3}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    goto :goto_3

    :cond_7
    if-nez v0, :cond_8

    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v4, :cond_8

    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v5, "AMS_RESUME"

    invoke-static {v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v4, :cond_8

    invoke-virtual {v4, v3}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    :cond_8
    :goto_3
    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    goto :goto_4

    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    :goto_4
    if-nez v3, :cond_a

    const-string p0, "ActivityManagerPerformance"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "setBoosterActStart() skipped. SemDvfsManager.createInstance() failed. AMP_PERF_ENABLE: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const/4 v4, 0x2

    if-eqz p2, :cond_f

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p2

    if-eqz p2, :cond_b

    const/16 p2, 0x1f4

    goto :goto_5

    :cond_b
    if-eqz v0, :cond_c

    sget p2, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    goto :goto_5

    :cond_c
    sget p2, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    :goto_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v3}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v0, "ActivityManagerPerformance"

    const-string v3, "AMP_acquire() ACT_START"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    int-to-long v3, p2

    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_9

    :catch_1
    move-exception p1

    goto :goto_6

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-eqz p2, :cond_d

    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    :cond_d
    const-string p2, "ActivityManagerPerformance"

    const-string v0, "AMP_acquire() ACT_START failed. stop boosting"

    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_e

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

    :cond_e
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p2, v2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(Lcom/android/server/wm/ActivityRecord;Z)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :cond_f
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterTail(Lcom/android/server/wm/ActivityRecord;Z)V

    :try_start_6
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    monitor-enter p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-nez p2, :cond_10

    monitor-exit p1

    goto :goto_9

    :catchall_1
    move-exception p2

    goto :goto_7

    :cond_10
    invoke-virtual {v3}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    const-string p1, "ActivityManagerPerformance"

    const-string p2, "AMP_release() ACT_START"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_9

    :catch_2
    move-exception p1

    goto :goto_8

    :goto_7
    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    :goto_8
    const-string p2, "ActivityManagerPerformance"

    const-string v0, "AMP_release() ACT_START failed"

    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_11

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

    :cond_11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_12
    :goto_9
    return-void
.end method

.method public final setBoosterAppSwitch(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->prevSwitchActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    sget-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v3, :cond_4

    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v3, v0

    :goto_2
    :try_start_0
    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_3
    move-object v4, v0

    :goto_3
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

    if-eqz v3, :cond_4

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

    :cond_4
    if-eqz p2, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_11

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterAppSwitch() skipped. Background activity start on abnormal app : "

    invoke-static {p1, v2, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->checkBoostDisabledByFold()V

    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v2, :cond_6

    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v3, "AMS_APP_SWITCH"

    invoke-static {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v2, :cond_6

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v2, :cond_7

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterAppSwitch() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const/16 v3, 0xb

    const/16 v4, 0x9

    const/4 v5, 0x1

    if-eqz p2, :cond_d

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p2

    if-eqz p2, :cond_8

    const/16 p2, 0x1f4

    goto :goto_4

    :cond_8
    sget p2, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    :goto_4
    iget-object v6, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v6, 0x0

    :try_start_1
    sget-object v7, Lcom/android/server/wm/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    sput-object p1, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    sput-object p1, Lcom/android/server/wm/ActivityManagerPerformance;->prevSwitchActivity:Lcom/android/server/wm/ActivityRecord;

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
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

    if-eqz v2, :cond_a

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v2, "com.sec.android.app.camera"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x1388

    goto :goto_5

    :cond_9
    move v2, v6

    :goto_5
    invoke-virtual {p2, p1, v2, v1}, Lcom/android/server/am/FreecessController;->enterOLAF(IILjava/lang/String;)V

    goto :goto_6

    :catch_1
    move-exception p1

    goto :goto_7

    :cond_a
    :goto_6
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->isPerfReserveSupport:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const-string p2, "120"

    invoke-virtual {p1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_b

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_7
    sget-object p2, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-eqz p2, :cond_b

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    :cond_b
    const-string p2, "ActivityManagerPerformance"

    const-string v1, "AMP_acquire() APP_SWITCH failed. stop boosting"

    invoke-static {p2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_c

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

    :cond_c
    sget-object p2, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p2, v6}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterAppSwitch(Lcom/android/server/wm/ActivityRecord;Z)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b

    :cond_d
    invoke-virtual {p0, p1, v5}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterTail(Lcom/android/server/wm/ActivityRecord;Z)V

    :try_start_6
    sget-object p1, Lcom/android/server/wm/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    monitor-enter p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    sget-object p2, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-nez p2, :cond_e

    monitor-exit p1

    goto/16 :goto_b

    :catchall_1
    move-exception p2

    goto :goto_9

    :cond_e
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    const-string p1, "ActivityManagerPerformance"

    const-string p2, "AMP_release() APP_SWITCH"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    sget-boolean p1, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object p1, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean p2, p1, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz p2, :cond_f

    const-string/jumbo p2, "com.sec.android.app.camera"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    invoke-virtual {p1}, Lcom/android/server/am/FreecessController;->exitOLAF()V

    goto :goto_8

    :catch_2
    move-exception p1

    goto :goto_a

    :cond_f
    :goto_8
    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->isPerfReserveSupport:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const-string p2, "0"

    invoke-virtual {p1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_b

    :goto_9
    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    :goto_a
    const-string p2, "ActivityManagerPerformance"

    const-string v0, "AMP_release() APP_SWITCH failed"

    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_10

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

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11
    :goto_b
    return-void
.end method

.method public final setBoosterHome(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .locals 10

    const-string/jumbo v0, "setBoosterHome() skipped. already boosted "

    const-string/jumbo v1, "setBoosterHome() skipped. already boosted "

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    sget-boolean v4, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_2

    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    :cond_1
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

    if-eqz v2, :cond_2

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

    :cond_2
    sget v2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    if-nez v2, :cond_3

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterHome() skipped. Method is called by non-system_server"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v2, :cond_4

    if-eqz v4, :cond_1a

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterHome() skipped. mIsScreenOn: false"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->checkBoostDisabledByFold()V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->isJustFoldedState()Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v5, 0x2

    const-wide/16 v6, 0xc8

    if-eqz p2, :cond_a

    if-nez p1, :cond_6

    iput-wide v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomePressedTime:J

    goto :goto_1

    :cond_6
    iget-wide p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomePressedTime:J

    sub-long p2, v2, p2

    cmp-long p2, p2, v6

    if-ltz p2, :cond_8

    iget-wide p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomeBoostedTime:J

    sub-long p2, v2, p2

    cmp-long p2, p2, v6

    if-gez p2, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    if-nez p1, :cond_14

    sget p2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    if-ne p2, v5, :cond_14

    if-eqz v4, :cond_1a

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

    :cond_8
    :goto_2
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    if-eq p2, p1, :cond_9

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    :cond_9
    if-eqz v4, :cond_1a

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterHome() skipped. uninterrupted boosting"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    iget-wide v8, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomePressedTime:J

    sub-long v8, v2, v8

    cmp-long p2, v8, v6

    if-ltz p2, :cond_18

    iget-wide v8, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomeBoostedTime:J

    sub-long v8, v2, v8

    cmp-long p2, v8, v6

    if-gez p2, :cond_b

    goto/16 :goto_4

    :cond_b
    sget p2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    if-ne p2, v5, :cond_14

    :try_start_0
    sget-object p2, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_e

    if-eq p2, p1, :cond_d

    if-eq v2, p1, :cond_d

    if-eqz p2, :cond_c

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    :cond_c
    if-eqz v2, :cond_e

    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    :cond_d
    if-eqz v4, :cond_1a

    const-string p0, "ActivityManagerPerformance"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_e
    const/4 p2, 0x1

    if-eqz p3, :cond_10

    if-eqz v4, :cond_f

    const-string p3, "ActivityManagerPerformance"

    const-string/jumbo v0, "setBoosterHome() call setBoosterActStart()"

    invoke-static {p3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void

    :cond_10
    :try_start_1
    iget-object p3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_12

    if-eq p3, p1, :cond_11

    if-eqz p3, :cond_12

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object p3, p3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12

    :cond_11
    if-eqz v4, :cond_1a

    const-string p0, "ActivityManagerPerformance"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_12
    if-eqz v4, :cond_13

    const-string p3, "ActivityManagerPerformance"

    const-string/jumbo v0, "setBoosterHome() call setBoosterActResume()"

    invoke-static {p3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void

    :cond_14
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    if-nez p2, :cond_15

    sget-object p2, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string p3, "AMS_APP_HOME"

    invoke-static {p2, p3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p2, :cond_15

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    :cond_15
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    if-nez p2, :cond_16

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterHome() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    iput-wide v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomeBoostedTime:J

    :try_start_2
    iget-object p3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockHome:Ljava/lang/Object;

    monitor-enter p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {p2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "ActivityManagerPerformance"

    const-string p2, "AMP_acquire() HOME"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    move-exception p1

    goto :goto_3

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :goto_3
    const-string p2, "ActivityManagerPerformance"

    const-string p3, "AMP_acquire() HOME failed"

    invoke-static {p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_17

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

    :cond_17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_18
    :goto_4
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    if-eq p2, p1, :cond_19

    if-eqz p1, :cond_19

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    :cond_19
    if-eqz v4, :cond_1a

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterHome() skipped. uninterrupted boosting"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :goto_5
    return-void
.end method

.method public final setBoosterTail(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 7

    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setBoosterTail() from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string v4, "AppSwitch"

    goto :goto_1

    :cond_1
    const-string v4, "ActStart"

    :goto_1
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

    if-eqz v1, :cond_2

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

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->checkBoostDisabledByFold()V

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_d

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterTail() skipped. mIsScreenOn: false"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_5

    :cond_4
    if-nez p2, :cond_7

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_7

    :cond_5
    if-eqz v0, :cond_d

    const-string p0, "ActivityManagerPerformance"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setBoosterTail() skipped. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_6

    const-string p2, "AppSwitch"

    goto :goto_2

    :cond_6
    const-string p2, "ActStart"

    :goto_2
    const-string v0, " is not finished"

    invoke-static {p1, p2, v0, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    if-nez p2, :cond_8

    sget-object p2, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v0, "AMS_RESUME_TAIL"

    invoke-static {p2, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p2, :cond_8

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    :cond_8
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

    if-nez p2, :cond_9

    sget-object p2, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v0, "AMS_ACT_LAZY"

    invoke-static {p2, v0}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p2, :cond_9

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    :cond_9
    iget-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    if-nez p2, :cond_a

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterTail() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_b

    const-string p0, "ActivityManagerPerformance"

    const-string/jumbo p1, "setBoosterTail() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockTail:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/wm/ActivityRecord;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p1, "ActivityManagerPerformance"

    const-string p2, "AMP_acquire() TAIL"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_3

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    const-string p2, "ActivityManagerPerformance"

    const-string v0, "AMP_acquire() TAIL failed"

    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p2, :cond_c

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

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    return-void
.end method

.method public final setLowPower(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const/16 v2, 0x1e

    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_2
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    :cond_3
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockTail:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    const/16 p1, 0x1f

    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_3

    :cond_4
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    :cond_5
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :goto_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :goto_5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method
