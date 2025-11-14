.class public final Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;
.super Landroid/os/Handler;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 25

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    iget v0, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    const-string/jumbo v3, "com.samsung.android.mcfds"

    const-wide/16 v4, 0x0

    const-string/jumbo v6, "[MCF_DS_SYS]_McfDsManager"

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v1, :cond_105

    if-eq v1, v7, :cond_101

    const/4 v9, 0x3

    if-eq v1, v8, :cond_51

    if-eq v1, v9, :cond_4d

    const/4 v0, 0x4

    if-eq v1, v0, :cond_24

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_24
    iget-object v0, v2, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string/jumbo v1, "replacedPackage - remove unbind message"

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v9}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeMessage(I)V

    :cond_35
    invoke-virtual {v0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string/jumbo v0, "replacedPackage - has bind message"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_42
    const-string/jumbo v0, "replacedPackage"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    invoke-virtual {v2, v8, v0, v4, v5}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeAndSendMessageDelayed(IIJ)V

    return-void

    :cond_4d
    invoke-virtual {v2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->unbindMcf()V

    return-void

    :cond_51
    iget-boolean v1, v2, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    if-nez v1, :cond_5c

    const-string/jumbo v0, "bindMcf - invalid state"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5c
    iget-object v1, v2, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    iget v4, v1, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceState:I

    if-eqz v4, :cond_75

    if-ne v4, v7, :cond_67

    const/4 v5, 0x6

    if-eq v0, v5, :cond_75

    :cond_67
    const-string/jumbo v1, "bindMcf - invalid state "

    const-string v3, ", reason "

    invoke-static {v4, v0, v1, v3, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-ne v4, v9, :cond_32f

    invoke-virtual {v2, v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->initMcfDeviceSyncMainController(I)V

    return-void

    :cond_75
    iget-object v5, v2, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mCurrentUserHandle:Landroid/os/UserHandle;

    if-nez v5, :cond_80

    const-string/jumbo v0, "bindMcf - null current user handle"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_80
    new-instance v9, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;

    invoke-direct {v9, v2, v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;-><init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;I)V

    const-string/jumbo v10, "[MCF_DS_LIB]_DeviceSyncManager"

    if-eqz v4, :cond_9a

    if-eq v4, v7, :cond_9a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "connectServiceAsUser : invalid request "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceState:I

    invoke-static {v2, v1, v10}, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_dc

    :cond_9a
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v11, "com.samsung.android.mcfds.ACTION_START"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v11, Landroid/content/ComponentName;

    const-string/jumbo v12, "com.samsung.android.mcfds.McfDeviceSyncService"

    invoke-direct {v11, v3, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, v1, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v11, "Caller"

    invoke-virtual {v4, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v1, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceConnection:Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$3;

    invoke-virtual {v3, v4, v11, v7, v5}, Landroid/content/Context;->semBindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_e3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "connectServiceAsUser : success "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v8, v1, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mServiceState:I

    iput-object v9, v1, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mListener:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;

    :goto_dc
    const-string/jumbo v1, "bindMcf - success with reason: "

    invoke-static {v0, v1, v6}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e3
    const-string/jumbo v1, "connectService : failed"

    invoke-static {v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "bindMcf - failed with reason: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v8, v0, v3, v4}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeAndSendMessageDelayed(IIJ)V

    return-void

    :cond_101
    invoke-virtual {v2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->stopUser()V

    return-void

    :cond_105
    iget-object v0, v2, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mCurrentUserHandle:Landroid/os/UserHandle;

    const/16 v1, -0x2710

    if-nez v0, :cond_10d

    move v0, v1

    goto :goto_113

    :cond_10d
    sget-object v9, Lcom/samsung/android/server/continuity/sem/SemWrapper;->SEM_ALL:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v0

    :goto_113
    if-ne v0, v1, :cond_11c

    const-string/jumbo v0, "start : userId is USER_NULL"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11c
    new-instance v1, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;

    invoke-direct {v1, v2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;-><init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V

    iget-object v6, v2, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    iput v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    iput-object v1, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mListener:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;

    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.scloud"

    const/4 v9, 0x0

    invoke-virtual {v12, v1, v9}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    invoke-virtual {v12, v3, v9}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    move v10, v9

    iget-object v9, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/os/UserHandle;

    iget v13, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    invoke-direct {v11, v13}, Landroid/os/UserHandle;-><init>(I)V

    sget-object v13, Lcom/samsung/android/server/continuity/sem/SemWrapper;->SEM_ALL:Landroid/os/UserHandle;

    const/4 v14, 0x0

    const/4 v15, 0x2

    move v13, v10

    iget-object v10, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mPkgReceiver:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;

    move/from16 v16, v13

    const/4 v13, 0x0

    move/from16 v4, v16

    invoke-virtual/range {v9 .. v15}, Landroid/content/Context;->semRegisterReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v9, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    iget-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    iget v10, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    const/16 v21, 0x0

    const/16 v22, 0x2

    iget-object v10, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mPkgReceiver:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;

    const/16 v20, 0x0

    move-object/from16 v16, v0

    move-object/from16 v19, v5

    move-object/from16 v18, v9

    move-object/from16 v17, v10

    invoke-virtual/range {v16 .. v22}, Landroid/content/Context;->semRegisterReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iput-boolean v7, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mIsPkgObserverRegistered:Z

    iget-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/server/continuity/common/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    const/16 v0, 0xf0

    invoke-virtual {v6, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setFlag(I)V

    :cond_1a3
    iget-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/samsung/android/server/continuity/common/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b0

    const/16 v0, 0xf00

    invoke-virtual {v6, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setFlag(I)V

    :cond_1b0
    invoke-virtual {v6}, Lcom/samsung/android/server/continuity/PreconditionObserver;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;

    iget-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    iget v1, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "mcf_continuity"

    const/4 v5, -0x1

    invoke-static {v0, v3, v5, v1}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v5, :cond_1d8

    iget-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_1d4

    invoke-static {}, Lcom/samsung/android/server/continuity/common/Utils;->isHighPowerConsumptionChipset()Z

    move-result v0

    if-nez v0, :cond_1d4

    move v9, v7

    goto :goto_1d5

    :cond_1d4
    move v9, v4

    :goto_1d5
    invoke-virtual {v6, v9}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setContinuitySetting(I)V

    :cond_1d8
    invoke-virtual {v6}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isEnableSettings()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->updateSettings(Z)V

    sget v0, Lcom/samsung/android/server/continuity/PreconditionObserver;->FEATURE_CONTINUITY:I

    const-string/jumbo v1, "[MCF_DS_SYS]_PreconditionObserver"

    if-gtz v0, :cond_1ee

    const-string/jumbo v0, "registerSettingsObserver - invalid feature value"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d8

    :cond_1ee
    iget-boolean v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mRegisterSettingsObserver:Z

    if-eqz v0, :cond_1f4

    goto/16 :goto_2d8

    :cond_1f4
    invoke-static {}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupportedContinuity()Z

    move-result v0

    if-eqz v0, :cond_241

    iget-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget v5, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    iget-object v9, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mSettingObserver:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;

    invoke-virtual {v0, v3, v4, v9, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "multi_control_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget v5, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    invoke-virtual {v0, v3, v4, v9, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "vcc_continuity"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget v5, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    invoke-virtual {v0, v3, v4, v9, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "hwrs_service"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget v5, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    invoke-virtual {v0, v3, v4, v9, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_241
    invoke-static {v8}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_2d6

    iget-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mAutoSwitchSettingHelper:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    const-string/jumbo v5, "[MCF_DS_SYS]_AutoSwitchSettingHelper"

    if-nez v3, :cond_25c

    const-string/jumbo v0, "start - null bluetoothAdapter"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d6

    :cond_25c
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->semIsBleEnabled()Z

    move-result v3

    iget-object v9, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mBtStateReceiver:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;

    if-eqz v3, :cond_288

    const-string/jumbo v3, "start - BleEnabled true"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v7}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->setStandAloneBleMode(Z)V

    iget-boolean v3, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsRegisterBtStateReceiver:Z

    if-eqz v3, :cond_278

    iput-boolean v4, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsRegisterBtStateReceiver:Z

    iget-object v3, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_278
    new-instance v3, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;)V

    sget-object v4, Lcom/samsung/android/server/continuity/common/ExecutorUtil;->sExecutorIO:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v5, Lcom/samsung/android/server/continuity/common/ExecutorUtil$ThrowExceptionRunnable;

    invoke-direct {v5, v3}, Lcom/samsung/android/server/continuity/common/ExecutorUtil$ThrowExceptionRunnable;-><init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$$ExternalSyntheticLambda0;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2a0

    :cond_288
    iget-boolean v3, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsRegisterBtStateReceiver:Z

    if-nez v3, :cond_29d

    const-string/jumbo v3, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    const-string/jumbo v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-static {v3, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9, v3, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iput-boolean v7, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsRegisterBtStateReceiver:Z

    :cond_29d
    invoke-virtual {v0, v7}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->setStandAloneBleMode(Z)V

    :goto_2a0
    const-string/jumbo v3, "com.samsung.bluetooth.device.action.AUTO_SWITCH_MODE_CHANGED"

    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mReceiver:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;

    invoke-virtual {v4, v5, v3, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "com.samsung.intent.action.SETTINGS_WIFI_BLUETOOTH_RESET"

    invoke-virtual {v11, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "com.sec.android.settings.permission.WIFI_BLUETOOTH_RESET"

    const/4 v13, 0x0

    iget-object v10, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mReceiver:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;

    const/4 v14, 0x2

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SETTINGS_SOFT_RESET"

    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v11

    iget-object v9, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "com.sec.android.settings.permission.SOFT_RESET"

    iget-object v10, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mReceiver:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$1;

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :cond_2d6
    :goto_2d6
    iput-boolean v7, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mRegisterSettingsObserver:Z

    :goto_2d8
    iget-boolean v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mIsAddedAccountListener:Z

    if-eqz v0, :cond_2e3

    const-string/jumbo v0, "addOnAccountsUpdatedListener - already added"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_319

    :cond_2e3
    const-string/jumbo v0, "addOnAccountsUpdatedListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/server/continuity/PreconditionObserver;->SAMSUNG_ACCOUNT_TYPE:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v4, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mOnAccountsUpdateListener:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v4, v3, v7, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z[Ljava/lang/String;)V

    iget v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    if-eqz v0, :cond_317

    const-string/jumbo v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v12

    iget-object v9, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/os/UserHandle;

    iget v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    invoke-direct {v11, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v10, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mAccountChangeReceiver:Lcom/samsung/android/server/continuity/PreconditionObserver$1;

    const/4 v15, 0x2

    invoke-virtual/range {v9 .. v15}, Landroid/content/Context;->semRegisterReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :cond_317
    iput-boolean v7, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mIsAddedAccountListener:Z

    :goto_319
    iget-object v0, v6, Lcom/samsung/android/server/continuity/PreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_322

    const/16 v0, 0xf

    invoke-virtual {v6, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setFlag(I)V

    :cond_322
    invoke-virtual {v6}, Lcom/samsung/android/server/continuity/PreconditionObserver;->meetConditions()Z

    move-result v0

    iput-boolean v0, v2, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    if-eqz v0, :cond_32f

    const-wide/16 v0, 0x0

    invoke-virtual {v2, v8, v7, v0, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeAndSendMessageDelayed(IIJ)V

    :cond_32f
    return-void
.end method
