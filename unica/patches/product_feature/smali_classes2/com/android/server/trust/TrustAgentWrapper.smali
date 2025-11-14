.class public final Lcom/android/server/trust/TrustAgentWrapper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAlarmIntent:Landroid/content/Intent;

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public mAlarmPendingIntent:Landroid/app/PendingIntent;

.field public mBound:Z

.field public final mBroadcastReceiver:Lcom/android/server/trust/TrustAgentWrapper$1;

.field public final mCallback:Lcom/android/server/trust/TrustAgentWrapper$4;

.field public final mConnection:Lcom/android/server/trust/TrustAgentWrapper$5;

.field public final mContext:Landroid/content/Context;

.field public mDisplayTrustGrantedMessage:Z

.field public final mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

.field public mManagingTrust:Z

.field public mMaximumTimeToLock:J

.field public mMessage:Ljava/lang/CharSequence;

.field public final mName:Landroid/content/ComponentName;

.field public mPendingSuccessfulUnlock:Z

.field public mScheduledRestartUptimeMillis:J

.field public mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

.field public mTrustAgentService:Landroid/service/trust/ITrustAgentService;

.field public mTrustDisabledByDpm:Z

.field public final mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

.field public mTrustable:Z

.field public final mTrustableDowngradeReceiver:Lcom/android/server/trust/TrustAgentWrapper$1;

.field public mTrusted:Z

.field public final mUserId:I

.field public mWaitingForTrustableDowngrade:Z

.field public mWithinSecurityLockdownWindow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/server/trust/TrustManagerService;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/trust/TrustManagerService;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z

    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mWithinSecurityLockdownWindow:Z

    new-instance v1, Lcom/android/server/trust/TrustAgentWrapper$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/trust/TrustAgentWrapper$1;-><init>(Lcom/android/server/trust/TrustAgentWrapper;I)V

    iput-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustableDowngradeReceiver:Lcom/android/server/trust/TrustAgentWrapper$1;

    new-instance v4, Lcom/android/server/trust/TrustAgentWrapper$1;

    const/4 v2, 0x1

    invoke-direct {v4, p0, v2}, Lcom/android/server/trust/TrustAgentWrapper$1;-><init>(Lcom/android/server/trust/TrustAgentWrapper;I)V

    iput-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Lcom/android/server/trust/TrustAgentWrapper$1;

    new-instance v2, Lcom/android/server/trust/TrustAgentWrapper$3;

    invoke-direct {v2, p0}, Lcom/android/server/trust/TrustAgentWrapper$3;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    new-instance v3, Lcom/android/server/trust/TrustAgentWrapper$4;

    invoke-direct {v3, p0}, Lcom/android/server/trust/TrustAgentWrapper$4;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mCallback:Lcom/android/server/trust/TrustAgentWrapper$4;

    new-instance v3, Lcom/android/server/trust/TrustAgentWrapper$5;

    invoke-direct {v3, p0}, Lcom/android/server/trust/TrustAgentWrapper$5;-><init>(Lcom/android/server/trust/TrustAgentWrapper;)V

    iput-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Lcom/android/server/trust/TrustAgentWrapper$5;

    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    const-string/jumbo p2, "alarm"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    iput p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.server.trust.TRUST_EXPIRED_ACTION"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "componentName"

    invoke-virtual {v5, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object v8, v5

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v6, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/32 v9, 0x493e0

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/android/server/trust/TrustAgentWrapper;->mScheduledRestartUptimeMillis:J

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    const v2, 0x4000001

    invoke-virtual {p1, p3, v3, v2, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    if-eqz p3, :cond_0

    const/4 v8, 0x2

    const-string/jumbo v6, "android.permission.PROVIDE_TRUST_AGENT"

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Can\'t bind to TrustAgent "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "TrustAgentWrapper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static onError(Ljava/lang/Exception;)V
    .locals 2

    const-string/jumbo v0, "TrustAgentWrapper"

    const-string v1, "Exception "

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 11

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v5, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/trust/TrustArchive$Event;

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x5

    iget v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/android/server/trust/TrustArchive$Event;-><init>(IILandroid/content/ComponentName;Ljava/lang/String;JIZ)V

    invoke-virtual {v0, v2}, Lcom/android/server/trust/TrustArchive;->addEvent(Lcom/android/server/trust/TrustArchive$Event;)V

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mConnection:Lcom/android/server/trust/TrustAgentWrapper$5;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBound:Z

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mBroadcastReceiver:Lcom/android/server/trust/TrustAgentWrapper$1;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustableDowngradeReceiver:Lcom/android/server/trust/TrustAgentWrapper$1;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    iput-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    const/4 p0, 0x2

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final isManagingTrust()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isTrusted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final updateDevicePolicyFeatures()V
    .locals 8

    iget v0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v4, v0}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    iput-object v5, p0, Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    invoke-interface {v6, v1, v5}, Landroid/service/trust/ITrustAgentService;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    move v1, v4

    goto :goto_1

    :catch_1
    move-exception v2

    move v4, v1

    move-object v1, v2

    goto :goto_2

    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v4, v5, v3}, Landroid/service/trust/ITrustAgentService;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_2

    iput-wide v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v4, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iput-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Lcom/android/server/trust/TrustAgentWrapper$3;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :goto_2
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    move v1, v4

    :cond_2
    :goto_3
    iget-boolean v2, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    if-eq v2, v1, :cond_3

    iput-boolean v1, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z

    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    :cond_3
    return-void
.end method
