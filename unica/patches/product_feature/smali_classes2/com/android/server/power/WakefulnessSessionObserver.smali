.class public final Lcom/android/server/power/WakefulnessSessionObserver;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final HANDLER_TOKEN:Ljava/lang/Object;


# instance fields
.field public final mClock:Lcom/android/server/power/WakefulnessSessionObserver$Injector$$ExternalSyntheticLambda0;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mOverrideTimeoutMs:I

.field public mPhysicalDisplayPortIdForDefaultDisplay:I

.field public final mPowerGroups:Landroid/util/SparseArray;

.field public mScreenOffTimeoutMs:I

.field public final mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/WakefulnessSessionObserver;->HANDLER_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mOverrideTimeoutMs:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/server/power/WakefulnessSessionObserver$Injector;

    invoke-direct {v1}, Lcom/android/server/power/WakefulnessSessionObserver$Injector;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    new-instance v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mWakefulnessSessionFrameworkStatsLogger:Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionFrameworkStatsLogger;

    new-instance v1, Lcom/android/server/power/WakefulnessSessionObserver$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mClock:Lcom/android/server/power/WakefulnessSessionObserver$Injector$$ExternalSyntheticLambda0;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/android/server/power/WakefulnessSessionObserver;->updateSettingScreenOffTimeout(Landroid/content/Context;)V

    :try_start_0
    new-instance p1, Lcom/android/server/power/WakefulnessSessionObserver$UserSwitchObserver;

    invoke-direct {p1, p0}, Lcom/android/server/power/WakefulnessSessionObserver$UserSwitchObserver;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const-string/jumbo v2, "WakefulnessSessionObserver"

    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x10e015d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mOverrideTimeoutMs:I

    iget-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/power/WakefulnessSessionObserver$1;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/android/server/power/WakefulnessSessionObserver$1;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;Landroid/os/Handler;)V

    const/4 v3, -0x1

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    check-cast p1, Landroid/view/DisplayAddress$Physical;

    invoke-virtual {p1}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result v3

    :goto_0
    iput v3, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPhysicalDisplayPortIdForDefaultDisplay:I

    iget-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    if-eqz p1, :cond_1

    new-instance v1, Lcom/android/server/power/WakefulnessSessionObserver$2;

    invoke-direct {v1, p0}, Lcom/android/server/power/WakefulnessSessionObserver$2;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;)V

    iget-object v2, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    :cond_1
    iget-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    invoke-direct {v1, p0, v0}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;I)V

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final notifyUserActivity(IIJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;-><init>(Lcom/android/server/power/WakefulnessSessionObserver;I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mPowerGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;

    iget p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityEvent:I

    if-ne p2, p1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityEvent:I

    iput p2, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityEvent:I

    iget-wide p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityTimestamp:J

    iput-wide p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mPrevUserActivityTimestamp:J

    iput-wide p3, p0, Lcom/android/server/power/WakefulnessSessionObserver$WakefulnessSessionPowerGroup;->mCurrentUserActivityTimestamp:J

    return-void
.end method

.method public updateSettingScreenOffTimeout(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "screen_off_timeout"

    const/16 v2, 0x3a98

    const/4 v3, -0x2

    invoke-static {p1, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/WakefulnessSessionObserver;->mScreenOffTimeoutMs:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
