.class public final Lcom/android/server/power/AbuseWakeLockDetector;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final CTS_APP_PREFIX:Ljava/util/regex/Pattern;

.field public static final SEC_APP_PREFIX:[Ljava/lang/String;


# instance fields
.field public final mAm:Landroid/app/ActivityManager;

.field public final mCallback:Lcom/android/server/power/PowerManagerService$1;

.field public mIsAbuseWakeLockFound:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "com.sec."

    const-string/jumbo v1, "com.samsung."

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/AbuseWakeLockDetector;->SEC_APP_PREFIX:[Ljava/lang/String;

    const-string/jumbo v0, "android\\..*\\.cts"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/AbuseWakeLockDetector;->CTS_APP_PREFIX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/PowerManagerService$1;Lcom/android/server/wm/WindowManagerService;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo p1, "activity"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mAm:Landroid/app/ActivityManager;

    iput-object p4, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mWms:Lcom/android/server/wm/WindowManagerService;

    iput-object p3, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mCallback:Lcom/android/server/power/PowerManagerService$1;

    return-void
.end method


# virtual methods
.method public final handleAbuseWakelockWhenUserActivityChanged(Ljava/util/ArrayList;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mIsAbuseWakeLockFound:Z

    if-nez v1, :cond_7d

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_7d

    :cond_e
    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_7b

    iget-object v0, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getVisibleWinSurfacePkgList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3d

    return-void

    :cond_3d
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/AbuseWakeLockDetector;Ljava/util/ArrayList;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/power/AbuseWakeLockDetector$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_65
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mIsAbuseWakeLockFound:Z

    if-nez v0, :cond_77

    iget-object p0, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mCallback:Lcom/android/server/power/PowerManagerService$1;

    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService$1;->onAbuseWakeLockAdded(Ljava/util/List;)V

    goto :goto_77

    :catchall_75
    move-exception p0

    goto :goto_79

    :cond_77
    :goto_77
    monitor-exit v1

    return-void

    :goto_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_65 .. :try_end_7a} :catchall_75

    throw p0

    :catchall_7b
    move-exception p0

    goto :goto_7f

    :cond_7d
    :goto_7d
    :try_start_7d
    monitor-exit v0

    return-void

    :goto_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_7b

    throw p0
.end method

.method public final onUserActivity()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mIsAbuseWakeLockFound:Z

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mIsAbuseWakeLockFound:Z

    iget-object p0, p0, Lcom/android/server/power/AbuseWakeLockDetector;->mCallback:Lcom/android/server/power/PowerManagerService$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v1, "clear abuse wakelock"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$1;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda15;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda15;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda12;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda12;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget p0, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 p0, p0, 0x1

    iput p0, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    :cond_36
    return-void
.end method
