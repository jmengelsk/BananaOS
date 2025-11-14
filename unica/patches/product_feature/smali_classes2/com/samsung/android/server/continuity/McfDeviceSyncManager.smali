.class public final Lcom/samsung/android/server/continuity/McfDeviceSyncManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field static final MSG_AVAILABLE_MCF:I = 0x5

.field static final MSG_BIND_MCF:I = 0x2

.field static final MSG_REPLACED_PKG:I = 0x4

.field static final MSG_START_USER:I = 0x0

.field static final MSG_STOP_USER:I = 0x1

.field static final MSG_UNBIND_MCF:I = 0x3


# instance fields
.field public mCurrentUserHandle:Landroid/os/UserHandle;

.field public final mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

.field public final mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;

.field public mIsValidState:Z

.field public final mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/continuity/PreconditionObserver;Lcom/samsung/android/mcfds/lib/DeviceSyncManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    iput-object p2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    new-instance p1, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;-><init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;

    return-object p0
.end method

.method public final initMcfDeviceSyncMainController(I)V
    .registers 9

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    const/4 v2, 0x4

    iget-object v1, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mAutoSwitchSettingHelper:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne p1, v2, :cond_21

    iget-object v2, v1, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_1d

    :cond_13
    iget-object v2, v1, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;

    if-nez v2, :cond_1e

    :goto_1d
    goto :goto_21

    :cond_1e
    iget-object v2, v2, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->mAddress:Ljava/lang/String;

    goto :goto_22

    :cond_21
    :goto_21
    move-object v2, v4

    :goto_22
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    const-string/jumbo v5, "initMcfDeviceSyncMainController, bindReason: "

    const-string v6, ", hasAutoSwitchDeviceMac: "

    invoke-static {p1, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_31

    move v6, v0

    goto :goto_32

    :cond_31
    move v6, v3

    :goto_32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "[MCF_DS_LIB]_DeviceSyncManager"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "KEY_BIND_REASON"

    invoke-virtual {v5, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "KEY_AUTO_SWITCH_DEVICE"

    invoke-virtual {v5, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v2, 0x3ea

    iput v2, p1, Landroid/os/Message;->what:I

    iput-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->sendMessage(Landroid/os/Message;)I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_cc

    const-string/jumbo p0, "[MCF_DS_SYS]_PreconditionObserver"

    const-string/jumbo p1, "setAutoSwitchOff"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-eqz p0, :cond_cc

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_77

    goto :goto_cc

    :cond_77
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_cc

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_cc

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "disableAutoSwitchDevices - mAutoSwitchableDevices size:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v1, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "[MCF_DS_SYS]_AutoSwitchSettingHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v1, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mAutoSwitchableDevices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v1, v3

    :cond_a5
    :goto_a5
    if-ge v1, p1, :cond_cc

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/2addr v1, v0

    check-cast v2, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;

    iget-object v2, v2, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->mAddress:Ljava/lang/String;

    if-nez v2, :cond_b4

    :cond_b2
    move-object v2, v4

    goto :goto_be

    :cond_b4
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    if-eqz v5, :cond_b2

    invoke-virtual {v5, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    :goto_be
    if-eqz v2, :cond_a5

    sget-object v5, Lcom/samsung/android/server/continuity/sem/SemWrapper;->SEM_ALL:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->semGetAutoSwitchMode()I

    move-result v5

    if-ne v5, v0, :cond_a5

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->semSetAutoSwitchMode(I)Z

    goto :goto_a5

    :cond_cc
    :goto_cc
    return-void
.end method

.method public removeAndSendMessageDelayed(IIJ)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeMessage(I)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->sendMessageDelayed(IIJ)V

    return-void
.end method

.method public removeAndSendMessageDelayed(IJ)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeMessage(I)V

    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final removeMessage(I)V
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_b
    return-void
.end method

.method public final sendMessageDelayed(IIJ)V
    .registers 6

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;

    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final startUser(Landroid/os/UserHandle;)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mCurrentUserHandle:Landroid/os/UserHandle;

    const/16 v1, -0x2710

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_e

    :cond_8
    sget-object v2, Lcom/samsung/android/server/continuity/sem/SemWrapper;->SEM_ALL:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v0

    :goto_e
    const-string/jumbo v2, "[MCF_DS_SYS]_McfDsManager"

    if-eq v0, v1, :cond_1a

    const-string/jumbo p0, "startUser - invalid request!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startUser : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/server/continuity/sem/SemWrapper;->SEM_ALL:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mCurrentUserHandle:Landroid/os/UserHandle;

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeAndSendMessageDelayed(IJ)V

    return-void
.end method

.method public final stopUser()V
    .registers 7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mCurrentUserHandle:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    iget-boolean v2, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mIsPkgObserverRegistered:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_13

    iget-object v2, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mPkgReceiver:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v3, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mIsPkgObserverRegistered:Z

    :cond_13
    iget-boolean v2, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mRegisterSettingsObserver:Z

    if-nez v2, :cond_18

    goto :goto_4a

    :cond_18
    invoke-static {}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupportedContinuity()Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mSettingObserver:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_29
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupported(I)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v2, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mAutoSwitchSettingHelper:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    iput-boolean v3, v2, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsAutoSwitchModeEnabled:Z

    iget-object v4, v2, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    iget-object v5, v2, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mReceiver:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v4, v2, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsRegisterBtStateReceiver:Z

    if-eqz v4, :cond_48

    iput-boolean v3, v2, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsRegisterBtStateReceiver:Z

    iget-object v4, v2, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    iget-object v2, v2, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mBtStateReceiver:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;

    invoke-virtual {v4, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_48
    iput-boolean v3, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mRegisterSettingsObserver:Z

    :goto_4a
    iget-boolean v2, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mIsAddedAccountListener:Z

    const-string/jumbo v4, "[MCF_DS_SYS]_PreconditionObserver"

    if-nez v2, :cond_58

    const-string/jumbo v2, "removeOnAccountsUpdatedListener - already added"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    :cond_58
    const-string/jumbo v2, "removeOnAccountsUpdatedListener"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iget-object v4, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mOnAccountsUpdateListener:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v4}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    iget v2, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    if-eqz v2, :cond_74

    iget-object v2, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mAccountChangeReceiver:Lcom/samsung/android/server/continuity/PreconditionObserver$1;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_74
    iput-boolean v3, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mIsAddedAccountListener:Z

    :goto_76
    iput-object v0, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;

    iput v3, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    const/16 v0, -0x2710

    iput v0, v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->unbindMcf()V

    return-void
.end method

.method public final unbindMcf()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const-string/jumbo v2, "[MCF_DS_SYS]_McfDsManager"

    if-eqz v0, :cond_15

    const-string/jumbo v0, "unbindMcf - remove bind message"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeMessage(I)V

    :cond_15
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    iget v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceState:I

    if-nez v0, :cond_22

    const-string/jumbo p0, "unbindMcf - invalid state "

    invoke-static {v0, p0, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    const-string/jumbo v0, "unbindMcf"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceState:I

    const-string/jumbo v1, "[MCF_DS_LIB]_DeviceSyncManager"

    if-nez v0, :cond_36

    const-string/jumbo p0, "disconnectService : invalid request"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_36
    const-string/jumbo v0, "disconnectService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0xb

    iput v3, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$1;->sendMessage(Landroid/os/Message;)I

    :try_start_4c
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceConnection:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4c .. :try_end_53} :catch_54

    goto :goto_5a

    :catch_54
    const-string/jumbo v0, "disconnectService : IllegalArgumentException"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5a
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceState:I

    iput-object v3, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mService:Lcom/samsung/android/mcfds/lib/IMcfDeviceSyncService;

    iput-object v3, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mListener:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;

    return-void
.end method
