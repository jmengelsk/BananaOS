.class public final Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final mDeviceId:I

.field public final mInnerLock:Ljava/lang/Object;

.field public mIsAlarmSet:Z

.field public mIsFinished:Z

.field public final mObserver:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;

.field public final mPackageName:Ljava/lang/String;

.field public mRevokeAfterKilledDelay:J

.field public mTimeout:J

.field public mTimerStart:J

.field public final mToken:Ljava/lang/Object;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;


# direct methods
.method public static -$$Nest$mcancel(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsFinished:Z

    iget-boolean v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    iget-object v1, v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_1e

    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    iget-object v1, v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mIActivityManager:Landroid/app/IActivityManager;

    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mObserver:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;

    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1d} :catch_20
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1e

    goto :goto_2a

    :catchall_1e
    move-exception p0

    goto :goto_2c

    :catch_20
    move-exception p0

    :try_start_21
    const-string/jumbo v1, "OneTimePermissionUserManager"

    const-string/jumbo v2, "Unable to unregister uid observer."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    monitor-exit v0

    return-void

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_1e

    throw p0
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager;ILjava/lang/String;IJJ)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimerStart:J

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mToken:Ljava/lang/Object;

    new-instance v2, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V

    iput-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mObserver:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;

    const-string/jumbo v3, "OneTimePermissionUserManager"

    const-string/jumbo v4, "Start tracking "

    const-string v5, ". uid="

    const-string v6, " timeout="

    invoke-static {p2, v4, p3, v5, v6}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " killedDelay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    iput-object p3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mPackageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mDeviceId:I

    iput-wide p5, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimeout:J

    cmp-long p2, p7, v0

    if-nez p2, :cond_56

    const-string/jumbo p2, "permissions"

    const-string/jumbo p3, "one_time_permissions_killed_delay_millis"

    const-wide/16 p4, 0x1388

    invoke-static {p2, p3, p4, p5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p7

    :cond_56
    iput-wide p7, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mRevokeAfterKilledDelay:J

    const/4 p2, 0x4

    :try_start_59
    iget-object p3, p1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mIActivityManager:Landroid/app/IActivityManager;

    const/4 p4, 0x0

    const/4 p5, 0x3

    invoke-interface {p3, v2, p5, p2, p4}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_60} :catch_61

    goto :goto_75

    :catch_61
    move-exception p3

    const-string/jumbo p4, "OneTimePermissionUserManager"

    const-string p5, "Couldn\'t check uid proc state"

    invoke-static {p4, p5, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_6d
    iget-object p3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_8e

    :try_start_70
    invoke-virtual {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onPackageInactiveLocked()V

    monitor-exit p3
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_90

    :try_start_74
    monitor-exit p1
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_8e

    :goto_75
    iget-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    iget-object p1, p1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget p3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    invoke-virtual {p1, p3}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result p1

    const/16 p3, 0x14

    if-ne p1, p3, :cond_85

    const/4 p1, 0x0

    goto :goto_8a

    :cond_85
    if-le p1, p2, :cond_89

    const/4 p1, 0x1

    goto :goto_8a

    :cond_89
    const/4 p1, 0x2

    :goto_8a
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->updateUidState(I)V

    return-void

    :catchall_8e
    move-exception p0

    goto :goto_93

    :catchall_90
    move-exception p0

    :try_start_91
    monitor-exit p3
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    :try_start_92
    throw p0

    :goto_93
    monitor-exit p1
    :try_end_94
    .catchall {:try_start_92 .. :try_end_94} :catchall_8e

    throw p0
.end method


# virtual methods
.method public final onAlarm()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    iget-object v0, v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_f

    :try_start_8
    iget-boolean v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    if-nez v2, :cond_13

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception p0

    goto :goto_1e

    :catchall_11
    move-exception p0

    goto :goto_1c

    :cond_13
    const/4 v2, 0x0

    :try_start_14
    iput-boolean v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    invoke-virtual {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onPackageInactiveLocked()V

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_11

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_f

    return-void

    :goto_1c
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_11

    :try_start_1d
    throw p0

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_f

    throw p0
.end method

.method public final onPackageInactiveLocked()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsFinished:Z

    if-eqz v0, :cond_5

    goto :goto_46

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsFinished:Z

    iget-boolean v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    iget-object v0, v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    :cond_16
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    iget-object v0, v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_23
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    iget-object v0, v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mIActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mObserver:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2c} :catch_2d

    goto :goto_37

    :catch_2d
    move-exception v0

    const-string/jumbo v1, "OneTimePermissionUserManager"

    const-string/jumbo v2, "Unable to unregister uid observer."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_37
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    iget-object v0, v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3c
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    iget-object v1, v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mListeners:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    :goto_46
    return-void

    :catchall_47
    move-exception p0

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3c .. :try_end_49} :catchall_47

    throw p0
.end method

.method public final updateSessionParameters(JJ)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimeout:J

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimeout:J

    iget-wide p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mRevokeAfterKilledDelay:J

    const-wide/16 v1, -0x1

    cmp-long v1, p3, v1

    if-nez v1, :cond_22

    const-string/jumbo p3, "permissions"

    const-string/jumbo p4, "one_time_permissions_killed_delay_millis"

    const-wide/16 v1, 0x1388

    invoke-static {p3, p4, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p3

    goto :goto_22

    :catchall_20
    move-exception p0

    goto :goto_43

    :cond_22
    :goto_22
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mRevokeAfterKilledDelay:J

    iget-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    iget-object p1, p1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget p2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    invoke-virtual {p1, p2}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result p1

    const/16 p2, 0x14

    if-ne p1, p2, :cond_38

    const/4 p1, 0x0

    goto :goto_3e

    :cond_38
    const/4 p2, 0x4

    if-le p1, p2, :cond_3d

    const/4 p1, 0x1

    goto :goto_3e

    :cond_3d
    const/4 p1, 0x2

    :goto_3e
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->updateUidState(I)V

    monitor-exit v0

    return-void

    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_20

    throw p0
.end method

.method public final updateUidState(I)V
    .registers 16

    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    iget-object v1, v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_21

    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    iget-object v0, v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mToken:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-nez p1, :cond_3a

    iget-wide v3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mRevokeAfterKilledDelay:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_28

    invoke-virtual {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onPackageInactiveLocked()V

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_25

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v0

    move-object p0, v0

    goto/16 :goto_8d

    :catchall_25
    move-exception v0

    move-object p0, v0

    goto :goto_8b

    :cond_28
    :try_start_28
    iget-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    iget-object p1, p1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;I)V

    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mToken:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_25

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_21

    return-void

    :cond_3a
    const-wide/16 v3, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_74

    :try_start_3f
    iget-wide v5, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimerStart:J

    cmp-long p1, v5, v3

    if-nez p1, :cond_88

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimerStart:J

    iget-boolean p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    if-eqz p1, :cond_50

    goto :goto_88

    :cond_50
    iget-wide v5, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimeout:J

    add-long v9, v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long p1, v9, v3

    if-lez p1, :cond_6d

    iget-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    iget-object v7, p1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v13, p1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mHandler:Landroid/os/Handler;

    const-string/jumbo v11, "OneTimePermissionUserManager"

    const/4 v8, 0x0

    move-object v12, p0

    invoke-virtual/range {v7 .. v13}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    iput-boolean v0, v12, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    goto :goto_88

    :cond_6d
    move-object v12, p0

    iput-boolean v0, v12, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    invoke-virtual {v12}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onAlarm()V

    goto :goto_88

    :cond_74
    move-object v12, p0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_88

    iput-wide v3, v12, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimerStart:J

    iget-boolean p0, v12, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    if-eqz p0, :cond_88

    iget-object p0, v12, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0, v12}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 p0, 0x0

    iput-boolean p0, v12, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    :cond_88
    :goto_88
    monitor-exit v2
    :try_end_89
    .catchall {:try_start_3f .. :try_end_89} :catchall_25

    :try_start_89
    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_21

    return-void

    :goto_8b
    :try_start_8b
    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_25

    :try_start_8c
    throw p0

    :goto_8d
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8c .. :try_end_8e} :catchall_21

    throw p0
.end method
