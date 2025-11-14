.class public final Lcom/android/server/wm/SplashScreenExceptionList;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mDeviceConfigExcludedPackages:Ljava/util/HashSet;

.field public final mLock:Ljava/lang/Object;

.field final mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/SplashScreenExceptionList;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mDeviceConfigExcludedPackages:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mLock:Ljava/lang/Object;

    const-string/jumbo v0, "window_manager"

    const-string/jumbo v1, "splash_screen_exception_list"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SplashScreenExceptionList;->updateDeviceConfig(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/wm/SplashScreenExceptionList$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/SplashScreenExceptionList$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SplashScreenExceptionList;)V

    iput-object v1, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v0, p1, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method


# virtual methods
.method public updateDeviceConfig(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mDeviceConfigExcludedPackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_29

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_26

    iget-object v4, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mDeviceConfigExcludedPackages:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_2b

    :cond_26
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_29
    monitor-exit v0

    return-void

    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_24

    throw p0
.end method
