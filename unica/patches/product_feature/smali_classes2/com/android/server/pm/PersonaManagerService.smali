.class public Lcom/android/server/pm/PersonaManagerService;
.super Lcom/samsung/android/knox/ISemPersonaManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG:Z

.field public static final DEVICE_SUPPORT_KNOX:Z

.field public static final USER_INFO_DIR:Ljava/lang/String;

.field public static final cachedTime:Ljava/util/HashMap;

.field public static final containerCriticalApps:Ljava/util/List;

.field public static mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

.field public static mDeviceOwnerPackage:Ljava/lang/String;

.field static mSeparationConfiginCache:Landroid/os/Bundle;

.field public static final sEncV3Key:[[B

.field public static sInstance:Lcom/android/server/pm/PersonaManagerService;

.field public static workTabSupportLauncherUids:Ljava/util/ArrayList;


# instance fields
.field public final LOG_FS_TAG:Ljava/lang/String;

.field public final analyticsObserver:Lcom/android/server/pm/PersonaManagerService$7;

.field containerDependencyWrapper:Lcom/android/server/knox/ContainerDependencyWrapper;

.field public final containerNames:Ljava/util/HashSet;

.field public final ddmBroadcastReceverMap:Ljava/util/HashMap;

.field public final ddmContentObserverMap:Ljava/util/HashMap;

.field public edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mAPM:Landroid/app/ApplicationPackageManager;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAnalyticsReceiver:Lcom/android/server/pm/PersonaManagerService$2;

.field public mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mContext:Landroid/content/Context;

.field public final mCorePackageUid:Ljava/util/List;

.field public final mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

.field public mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mFingerPrintReceiver:Lcom/android/server/pm/PersonaManagerService$2;

.field public mFirmwareVersion:Ljava/lang/String;

.field public final mFocusLauncherLock:Ljava/lang/Object;

.field public final mFocusLock:Ljava/lang/Object;

.field public mFocusedLauncherId:I

.field public mFocusedUserId:I

.field public mImeSet:Ljava/util/Set;

.field public final mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

.field public mKALockscreenTimeoutAdminFlag:Z

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

.field public mLegacyStateMonitor:Lcom/android/server/pm/PersonaLegacyStateMonitor;

.field public final mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mPackageReceiver:Lcom/android/server/pm/PersonaManagerService$2;

.field public final mPersonaCacheFile:Ljava/io/File;

.field public final mPersonaCacheLock:Ljava/lang/Object;

.field public final mPersonaCacheMap:Ljava/util/HashMap;

.field public final mPersonaDbLock:Ljava/lang/Object;

.field public final mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

.field public final mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

.field public mPersonaServiceProxy:Lcom/android/server/pm/PersonaServiceProxy;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public mSeamLessSwitchHandler:Lcom/android/server/knox/SeamLessSwitchHandler;

.field public final mSecureFolderId:I

.field public final mSetupWizardCompleteReceiver:Lcom/android/server/pm/PersonaManagerService$2;

.field public mTrustManager:Landroid/app/trust/ITrustManager;

.field public final mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;

.field public final mUserListFile:Ljava/io/File;

.field public mUserManager:Landroid/os/UserManager;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mUserReceiver:Lcom/android/server/pm/PersonaManagerService$2;

.field public final mUserSwitchObserver:Lcom/android/server/pm/PersonaManagerService$1;

.field public final mUsersDir:Ljava/io/File;

.field public packageFilter:Landroid/content/IntentFilter;

.field public personaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field public usageWatcher:Lcom/android/server/pm/PersonaManagerService$10;


# direct methods
.method public static -$$Nest$mallowUsbDebugging(Lcom/android/server/pm/PersonaManagerService;I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "allowUsbDebugging : userId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PersonaManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    const-string/jumbo v0, "no_debugging_features"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/UserManagerInternal;->setUserRestriction(ILjava/lang/String;Z)V

    return-void
.end method

.method public static -$$Nest$menableMyFilesLauncherActivity(Lcom/android/server/pm/PersonaManagerService;I)V
    .registers 7

    const-string/jumbo v0, "PersonaManagerService"

    const-string/jumbo v1, "enableMyFilesLauncherActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "visible_app_icon"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_19
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "myfiles"

    const-string/jumbo v3, "SET_APP_ICON_STATUS"

    const-string v4, ""

    invoke-virtual {p0, p1, v3, v4, v0}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_33} :catch_39
    .catchall {:try_start_19 .. :try_end_33} :catchall_37

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_37
    move-exception p0

    goto :goto_41

    :catch_39
    move-exception p0

    :try_start_3a
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_37

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_41
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public static -$$Nest$menforceAppSeparationAllowListUpdateInternal(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 36

    move-object/from16 v1, p0

    const-string/jumbo v0, "enforceAppSeparationAllowListUpdateInternal Is in allowlist ? - "

    const-string/jumbo v2, "enforceAppSeparationAllowListUpdateInternal packageInfoList size -"

    const-string/jumbo v3, "enforceAppSeparationAllowListUpdateInternal coexistenceAppSet size - "

    const-string/jumbo v4, "enforceAppSeparationAllowListUpdateInternal prevWlAppsSet size - "

    const-string/jumbo v5, "enforceAppSeparationAllowListUpdateInternal wlAppsSet size - "

    const-string/jumbo v6, "enforceAppSeparationAllowListUpdateInternal is called for isOutside - "

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v9

    if-eqz v7, :cond_24

    const/4 v12, 0x1

    goto :goto_25

    :cond_24
    const/4 v12, 0x0

    :goto_25
    const-string/jumbo v13, "enforceAppSeparationWhiteListUpdateInternal sending removedinfo intent. count = "

    const-string/jumbo v14, "com.samsung.android.appseparation.receiver.ProfileStateChangedReceiver"

    const-string/jumbo v15, "com.samsung.android.appseparation"

    const-string/jumbo v10, "app_uninstalled"

    const-string/jumbo v11, "com.samsung.android.knox.action.APP_SEPARATION_ACTION"

    move/from16 v17, v9

    const-string/jumbo v9, "SeparationWhiteListReturn"

    move/from16 v18, v12

    const-string/jumbo v12, "com.samsung.android.knox.intent.action.SEPARATION_ALLOWEDLIST_RETURN"

    move-object/from16 v19, v2

    const-string/jumbo v2, "enforceAppSeparationAllowListUpdateInternal after update packageName - "

    move-object/from16 v20, v3

    const-string/jumbo v3, "enforceAppSeparationAllowListUpdateInternal used by createSeparationConfig"

    move-object/from16 v21, v4

    const-string/jumbo v4, "enforceAppSeparationAllowListUpdateInternal before update packageName - "

    move-object/from16 v22, v5

    const-string/jumbo v5, "enforceAppSeparationAllowListUpdateInternal isOutside - "

    move-object/from16 v23, v6

    const-string v6, "APP_SEPARATION_OUTSIDE"

    move-object/from16 v24, v13

    const-string v13, "APP_SEPARATION_APP_LIST"

    move-object/from16 v25, v14

    const-string/jumbo v14, "PersonaManagerService"

    if-nez v8, :cond_12b

    :try_start_61
    const-string/jumbo v0, "enforceAppSeparationAllowListUpdateInternal no app separation data found in db"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_67} :catch_11a
    .catchall {:try_start_61 .. :try_end_67} :catchall_106

    if-eqz v7, :cond_8c

    move-object/from16 v26, v15

    const/4 v15, 0x0

    invoke-virtual {v7, v6, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v5, v14, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v3, :cond_91

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v7, 0x0

    :goto_7e
    if-ge v7, v0, :cond_91

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v7, v7, 0x1

    check-cast v15, Ljava/lang/String;

    invoke-static {v4, v15, v14}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7e

    :cond_8c
    move-object/from16 v26, v15

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    sput-object v8, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    if-eqz v8, :cond_b8

    const/4 v15, 0x0

    invoke-virtual {v8, v6, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v5, v14, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v3, :cond_b8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_aa
    if-ge v4, v0, :cond_b8

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    invoke-static {v2, v5, v14}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_aa

    :cond_b8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    :try_start_c7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v15, 0x0

    invoke-virtual {v0, v10, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_f5} :catch_f6

    goto :goto_fa

    :catch_f6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_fa
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    if-nez v17, :cond_5a4

    :goto_101
    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationCreation()V

    goto/16 :goto_5a4

    :catchall_106
    move-exception v0

    move-object/from16 v27, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v9

    move-object v9, v2

    move-object v2, v12

    move-object v12, v10

    move-object/from16 v10, v16

    move-object/from16 v16, v0

    move-object/from16 v34, v27

    :goto_116
    const/4 v0, 0x1

    const/4 v15, 0x0

    goto/16 :goto_5b7

    :catch_11a
    move-exception v0

    move-object/from16 v27, v15

    move-object/from16 v15, v25

    move-object/from16 v26, v10

    move-object/from16 v33, v27

    const/4 v15, 0x0

    const/16 v20, 0x1

    move-object v10, v9

    :goto_127
    move-object v9, v2

    move-object v2, v12

    goto/16 :goto_4f0

    :cond_12b
    move-object/from16 v26, v10

    move-object/from16 v27, v15

    const/4 v15, 0x0

    :try_start_130
    invoke-virtual {v8, v6, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v8, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v28, v15

    const-string v15, "APP_SEPARATION_COEXISTANCE_LIST"

    invoke-virtual {v8, v15}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_145} :catch_4e9
    .catchall {:try_start_130 .. :try_end_145} :catchall_4e2

    if-eqz v7, :cond_14b

    :try_start_147
    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v29
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_14b} :catch_15c
    .catchall {:try_start_147 .. :try_end_14b} :catchall_14e

    :cond_14b
    move-object/from16 v30, v15

    goto :goto_164

    :catchall_14e
    move-exception v0

    move-object/from16 v16, v0

    move-object v10, v9

    move-object/from16 v34, v27

    :goto_154
    const/4 v0, 0x1

    const/4 v15, 0x0

    move-object v9, v2

    move-object v2, v12

    move-object/from16 v12, v26

    goto/16 :goto_5b7

    :catch_15c
    move-exception v0

    move-object v10, v9

    move-object/from16 v33, v27

    :goto_160
    const/4 v15, 0x0

    const/16 v20, 0x1

    goto :goto_127

    :goto_164
    :try_start_164
    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackages()Ljava/util/Set;

    move-result-object v15

    iput-object v15, v1, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_16a} :catch_4e9
    .catchall {:try_start_164 .. :try_end_16a} :catchall_4e2

    if-nez v28, :cond_174

    :try_start_16c
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_171} :catch_15c
    .catchall {:try_start_16c .. :try_end_171} :catchall_14e

    :goto_171
    move-object/from16 v28, v11

    goto :goto_177

    :cond_174
    move-object/from16 v15, v28

    goto :goto_171

    :goto_177
    :try_start_177
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11, v15}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_177 .. :try_end_17c} :catch_4d5
    .catchall {:try_start_177 .. :try_end_17c} :catchall_4c8

    if-nez v29, :cond_183

    :try_start_17e
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    :cond_183
    move-object/from16 v15, v29

    goto :goto_196

    :catchall_186
    move-exception v0

    move-object/from16 v16, v0

    move-object v10, v9

    move-object/from16 v34, v27

    move-object/from16 v11, v28

    goto :goto_154

    :catch_18f
    move-exception v0

    move-object v10, v9

    move-object/from16 v33, v27

    move-object/from16 v11, v28

    goto :goto_160

    :goto_196
    if-nez v30, :cond_19f

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_17e .. :try_end_19d} :catch_18f
    .catchall {:try_start_17e .. :try_end_19d} :catchall_186

    move-object/from16 v30, v29

    :cond_19f
    move-object/from16 v29, v9

    move-object/from16 v9, v30

    move-object/from16 v30, v12

    :try_start_1a5
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v15}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v15, Ljava/lang/StringBuilder;
    :try_end_1b1
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1b1} :catch_4b9
    .catchall {:try_start_1a5 .. :try_end_1b1} :catchall_4aa

    move-object/from16 v31, v2

    move-object/from16 v2, v23

    :try_start_1b5
    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v15, v22

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v15, v21

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v15, v20

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v7, v11, v9}, Lcom/android/server/pm/PersonaManagerService;->getUpdatedPackageInfo(Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/List;

    move-result-object v16

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v21, v2

    move-object/from16 v2, v19

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_229
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_229} :catch_496
    .catchall {:try_start_1b5 .. :try_end_229} :catchall_481

    move-object/from16 v16, v2

    const/4 v2, 0x0

    const/4 v15, 0x1

    :goto_22d
    :try_start_22d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v19
    :try_end_231
    .catch Ljava/lang/Exception; {:try_start_22d .. :try_end_231} :catch_46a
    .catchall {:try_start_22d .. :try_end_231} :catchall_44d

    if-eqz v19, :cond_39e

    :try_start_233
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move/from16 v22, v10

    move-object/from16 v10, v19

    check-cast v10, Landroid/content/pm/PackageInfo;
    :try_end_23d
    .catch Ljava/lang/Exception; {:try_start_233 .. :try_end_23d} :catch_399
    .catchall {:try_start_233 .. :try_end_23d} :catchall_394

    :try_start_23d
    invoke-static {v10}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    move-result v19
    :try_end_241
    .catch Ljava/lang/Exception; {:try_start_23d .. :try_end_241} :catch_38f
    .catchall {:try_start_23d .. :try_end_241} :catchall_38a

    if-nez v19, :cond_37d

    move/from16 v19, v2

    :try_start_245
    iget-object v2, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService;->isKeyboardApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_299

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_252
    .catch Ljava/lang/Exception; {:try_start_245 .. :try_end_252} :catch_295
    .catchall {:try_start_245 .. :try_end_252} :catchall_291

    move/from16 v20, v15

    :try_start_254
    const-string/jumbo v15, "enforceAppSeparationAllowListUpdateInternal isKeyBoardApp - "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v2, v19

    move/from16 v15, v20

    move/from16 v10, v22

    goto :goto_22d

    :catchall_26d
    move-exception v0

    :goto_26e
    move-object/from16 v16, v0

    move/from16 v15, v19

    move/from16 v0, v20

    move-object/from16 v12, v26

    move-object/from16 v34, v27

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v2, v30

    move-object/from16 v9, v31

    goto/16 :goto_5b7

    :catch_282
    move-exception v0

    :goto_283
    move/from16 v15, v19

    move-object/from16 v33, v27

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v2, v30

    move-object/from16 v9, v31

    goto/16 :goto_4f0

    :catchall_291
    move-exception v0

    :goto_292
    move/from16 v20, v15

    goto :goto_26e

    :catch_295
    move-exception v0

    :goto_296
    move/from16 v20, v15

    goto :goto_283

    :cond_299
    move/from16 v20, v15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "enforceAppSeparationAllowListUpdateInternal Non system app - "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_2eb

    iget-object v2, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2ed

    :cond_2eb
    move/from16 v2, v22

    :goto_2ed
    if-eqz v2, :cond_2f7

    iget-object v15, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_301

    :cond_2f7
    if-nez v2, :cond_376

    iget-object v2, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_376

    :cond_301
    if-nez v17, :cond_307

    if-nez v17, :cond_376

    if-eqz v18, :cond_376

    :cond_307
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_376

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/UserInfo;

    move-object/from16 v23, v0

    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    if-eqz v0, :cond_327

    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v0

    if-eqz v0, :cond_324

    goto :goto_327

    :cond_324
    move-object/from16 v32, v2

    goto :goto_371

    :cond_327
    :goto_327
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v32, v2

    iget-object v2, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_371

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_371

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enforceAppSeparationAllowListUpdateInternal Installing package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in user -"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    iget-object v2, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/server/pm/PersonaManagerService;->deletePackageAsUser(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_369

    const/16 v20, 0x0

    goto :goto_371

    :cond_369
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v0

    if-eqz v0, :cond_371

    add-int/lit8 v19, v19, 0x1

    :cond_371
    :goto_371
    move-object/from16 v0, v23

    move-object/from16 v2, v32

    goto :goto_30b

    :cond_376
    move-object/from16 v23, v0

    :goto_378
    move/from16 v2, v19

    move/from16 v15, v20

    goto :goto_384

    :cond_37d
    move-object/from16 v23, v0

    move/from16 v19, v2

    move/from16 v20, v15

    goto :goto_378

    :goto_384
    move/from16 v10, v22

    move-object/from16 v0, v23

    goto/16 :goto_22d

    :catchall_38a
    move-exception v0

    move/from16 v19, v2

    goto/16 :goto_292

    :catch_38f
    move-exception v0

    move/from16 v19, v2

    goto/16 :goto_296

    :catchall_394
    move-exception v0

    move/from16 v19, v2

    goto/16 :goto_292

    :catch_399
    move-exception v0

    move/from16 v19, v2

    goto/16 :goto_296

    :cond_39e
    move/from16 v19, v2

    move/from16 v20, v15

    if-nez v17, :cond_3ab

    if-nez v18, :cond_3ab

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsCreated()V
    :try_end_3ab
    .catch Ljava/lang/Exception; {:try_start_254 .. :try_end_3ab} :catch_282
    .catchall {:try_start_254 .. :try_end_3ab} :catchall_26d

    :cond_3ab
    if-eqz v7, :cond_3ce

    const/4 v15, 0x0

    invoke-virtual {v7, v6, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v5, v14, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v2, :cond_3d1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_3c0
    if-ge v3, v0, :cond_3d1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v3, v3, 0x1

    check-cast v7, Ljava/lang/String;

    invoke-static {v4, v7, v14}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c0

    :cond_3ce
    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d1
    sput-object v8, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    const/4 v15, 0x0

    invoke-virtual {v8, v6, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v2, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v5, v14, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v2, :cond_3f8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v11, 0x0

    :goto_3e8
    if-ge v11, v0, :cond_3f8

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v11, v11, 0x1

    check-cast v3, Ljava/lang/String;

    move-object/from16 v9, v31

    invoke-static {v9, v3, v14}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e8

    :cond_3f8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object/from16 v2, v30

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move/from16 v15, v20

    move-object/from16 v10, v29

    invoke-virtual {v0, v10, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    :try_start_40c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object/from16 v11, v28

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move/from16 v2, v19

    move-object/from16 v12, v26

    invoke-virtual {v0, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v3, v25

    move-object/from16 v4, v27

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v24

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_43f
    .catch Ljava/lang/Exception; {:try_start_40c .. :try_end_43f} :catch_440

    goto :goto_444

    :catch_440
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_444
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    if-nez v17, :cond_5a4

    goto/16 :goto_101

    :catchall_44d
    move-exception v0

    move/from16 v19, v2

    move/from16 v20, v15

    move-object/from16 v15, v25

    move-object/from16 v12, v26

    move-object/from16 v33, v27

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v2, v30

    move-object/from16 v9, v31

    move-object/from16 v16, v0

    move/from16 v15, v19

    move/from16 v0, v20

    move-object/from16 v34, v33

    goto/16 :goto_5b7

    :catch_46a
    move-exception v0

    move/from16 v19, v2

    move/from16 v20, v15

    move-object/from16 v15, v25

    move-object/from16 v12, v26

    move-object/from16 v33, v27

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v2, v30

    move-object/from16 v9, v31

    move/from16 v15, v19

    goto/16 :goto_4f0

    :catchall_481
    move-exception v0

    move-object/from16 v15, v25

    move-object/from16 v12, v26

    move-object/from16 v33, v27

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v2, v30

    move-object/from16 v9, v31

    :goto_490
    move-object/from16 v16, v0

    move-object/from16 v34, v33

    goto/16 :goto_116

    :catch_496
    move-exception v0

    move-object/from16 v15, v25

    move-object/from16 v12, v26

    move-object/from16 v33, v27

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v2, v30

    move-object/from16 v9, v31

    :goto_4a5
    const/4 v15, 0x0

    const/16 v20, 0x1

    goto/16 :goto_4f0

    :catchall_4aa
    move-exception v0

    move-object v9, v2

    move-object/from16 v15, v25

    move-object/from16 v12, v26

    move-object/from16 v33, v27

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v2, v30

    goto :goto_490

    :catch_4b9
    move-exception v0

    move-object v9, v2

    move-object/from16 v15, v25

    move-object/from16 v12, v26

    move-object/from16 v33, v27

    move-object/from16 v11, v28

    move-object/from16 v10, v29

    move-object/from16 v2, v30

    goto :goto_4a5

    :catchall_4c8
    move-exception v0

    move-object v10, v9

    move-object/from16 v15, v25

    move-object/from16 v33, v27

    move-object/from16 v11, v28

    :goto_4d0
    move-object v9, v2

    move-object v2, v12

    move-object/from16 v12, v26

    goto :goto_490

    :catch_4d5
    move-exception v0

    move-object v10, v9

    move-object/from16 v15, v25

    move-object/from16 v33, v27

    move-object/from16 v11, v28

    :goto_4dd
    move-object v9, v2

    move-object v2, v12

    move-object/from16 v12, v26

    goto :goto_4a5

    :catchall_4e2
    move-exception v0

    move-object v10, v9

    move-object/from16 v15, v25

    move-object/from16 v33, v27

    goto :goto_4d0

    :catch_4e9
    move-exception v0

    move-object v10, v9

    move-object/from16 v15, v25

    move-object/from16 v33, v27

    goto :goto_4dd

    :goto_4f0
    :try_start_4f0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4f5
    .catchall {:try_start_4f0 .. :try_end_4f5} :catchall_5b3

    move/from16 v16, v15

    :try_start_4f7
    const-string v15, "Exception in enforceAppSeparationAllowListUpdateInternal "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_509
    .catchall {:try_start_4f7 .. :try_end_509} :catchall_5a5

    if-eqz v7, :cond_52c

    const/4 v15, 0x0

    invoke-virtual {v7, v6, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v5, v14, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v3, :cond_52f

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v7, 0x0

    :goto_51e
    if-ge v7, v0, :cond_52f

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v7, v7, 0x1

    check-cast v12, Ljava/lang/String;

    invoke-static {v4, v12, v14}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51e

    :cond_52c
    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52f
    sput-object v8, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    if-eqz v8, :cond_556

    const/4 v15, 0x0

    invoke-virtual {v8, v6, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v5, v14, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v3, :cond_556

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_548
    if-ge v4, v0, :cond_556

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    invoke-static {v9, v5, v14}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_548

    :cond_556
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v15, 0x0

    invoke-virtual {v0, v10, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    :try_start_565
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move/from16 v15, v16

    move-object/from16 v12, v26

    invoke-virtual {v0, v12, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v2, v25

    move-object/from16 v3, v33

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_596
    .catch Ljava/lang/Exception; {:try_start_565 .. :try_end_596} :catch_597

    goto :goto_59b

    :catch_597
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_59b
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    if-nez v17, :cond_5a4

    goto/16 :goto_101

    :cond_5a4
    :goto_5a4
    return-void

    :catchall_5a5
    move-exception v0

    :goto_5a6
    move-object/from16 v15, v25

    move-object/from16 v12, v26

    move-object/from16 v34, v33

    move/from16 v15, v16

    move-object/from16 v16, v0

    move/from16 v0, v20

    goto :goto_5b7

    :catchall_5b3
    move-exception v0

    move/from16 v16, v15

    goto :goto_5a6

    :goto_5b7
    if-eqz v7, :cond_5e2

    move-object/from16 v26, v12

    const/4 v12, 0x0

    invoke-virtual {v7, v6, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v5, v14, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v7, :cond_5e7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v12, 0x0

    :goto_5ce
    if-ge v12, v3, :cond_5e7

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    add-int/lit8 v12, v12, 0x1

    move/from16 v19, v3

    move-object/from16 v3, v18

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3, v14}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v3, v19

    goto :goto_5ce

    :cond_5e2
    move-object/from16 v26, v12

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e7
    sput-object v8, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    if-eqz v8, :cond_60d

    const/4 v12, 0x0

    invoke-virtual {v8, v6, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sget-object v4, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v5, v14, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v4, :cond_60d

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_5ff
    if-ge v12, v3, :cond_60d

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v12, v12, 0x1

    check-cast v5, Ljava/lang/String;

    invoke-static {v9, v5, v14}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5ff

    :cond_60d
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    :try_start_61b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v12, v26

    invoke-virtual {v0, v12, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v2, v25

    move-object/from16 v3, v34

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_64a
    .catch Ljava/lang/Exception; {:try_start_61b .. :try_end_64a} :catch_64b

    goto :goto_64f

    :catch_64b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_64f
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    if-nez v17, :cond_659

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationCreation()V

    :cond_659
    throw v16
.end method

.method public static -$$Nest$menforceAppSeparationDeletionInternal(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 11

    const-string/jumbo v0, "rS"

    const-string v1, "APP_SEPARATION_REMOVED"

    const-string/jumbo v2, "e"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1b} :catch_48

    const-string/jumbo v8, "PersonaManagerService"

    if-eqz v7, :cond_6c

    :try_start_20
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v9

    if-eqz v9, :cond_4a

    iget-boolean v9, v7, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v9, :cond_4a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isAppSeparationRemovable returns false. partial user : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    :catch_48
    move-exception v6

    goto :goto_90

    :cond_4a
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v9

    if-eqz v9, :cond_17

    iget-boolean v9, v7, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v9, :cond_17

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isAppSeparationRemovable returns true."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_6b} :catch_48

    goto :goto_93

    :cond_6c
    :goto_6c
    const-string/jumbo v5, "enforceAppSeparationDeletionInternal !isAppSeparationRemovable"

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    iget-object v5, v5, Lcom/android/server/knox/KnoxAnalyticsContainer;->separatedAppsAnalytics:Lcom/android/server/knox/SeparatedAppsAnalytics;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v5, v6, v1}, Lcom/android/server/knox/SeparatedAppsAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    return-void

    :goto_90
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_93
    :try_start_93
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "com.samsung.android.knox.action.APP_SEPARATION_ACTION"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "removestart"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.appseparation"

    const-string/jumbo v8, "com.samsung.android.appseparation.receiver.ProfileStateChangedReceiver"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v7, v6, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_b4} :catch_b5

    goto :goto_b9

    :catch_b5
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b9
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_101

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v7

    if-eqz v7, :cond_c5

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v5

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->removeUser(I)Z

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->enforceSeparatedAppsRemoveInternal()Z

    move-result v5

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "com.samsung.android.knox.intent.action.SEPARATION_ACTION_RETURN"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "type"

    const-string/jumbo v8, "deactivate"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "status"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v6}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    :cond_101
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    iget-object v5, v5, Lcom/android/server/knox/KnoxAnalyticsContainer;->separatedAppsAnalytics:Lcom/android/server/knox/SeparatedAppsAnalytics;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v5, v6, v1}, Lcom/android/server/knox/SeparatedAppsAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    iput-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    return-void
.end method

.method public static -$$Nest$mgetDeviceFirmwareVersion(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string/jumbo v0, "ro.build.PDA"

    const-string/jumbo v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1. pdaVersion = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PersonaManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "trimHiddenVersion("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4c

    const/4 v3, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4c
    const-string v1, "2. pdaVersion = "

    invoke-static {v1, v0, v2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static -$$Nest$mgetRequiredApps(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x100000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_30

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_30

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_30
    const-string/jumbo v0, "android.intent.action.MAIN"

    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    invoke-static {v0, v3}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const v4, 0xc2200

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_64
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    new-instance v0, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x1070214

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static -$$Nest$mgetWorkTabSupportLauncherUids(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;
    .registers 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "com.nttdocomo.android.dhome"

    const-string/jumbo v2, "com.nttdocomo.android.homezozo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.MAIN"

    const-string/jumbo v3, "android.intent.category.HOME"

    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0xc0000

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_43
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v5

    :cond_48
    :goto_48
    if-ge v4, v2, :cond_79

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    :try_start_5c
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    const-wide/16 v8, 0x40

    invoke-interface {v7, v6, v8, v9, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_48

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_73} :catch_74

    goto :goto_48

    :catch_74
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48

    :cond_79
    return-object v0
.end method

.method public static -$$Nest$mlogUserRemoval(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_13

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    const-string/jumbo v2, "USER-REMOVED"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->writePersonaCacheLocked()V

    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    :try_start_12
    throw p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_13} :catch_13

    :catch_13
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static -$$Nest$mmigrateForPrivateProfile(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 13

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/pm/PersonaManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    iget-object v2, v2, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    :cond_19
    :goto_19
    if-ge v4, v3, :cond_139

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v6, "sf_reset_with_samsung_account"

    const-string/jumbo v7, "samsungaccount"

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_34

    goto/16 :goto_df

    :cond_34
    const-string/jumbo v8, "Migrate Samsung account settings values. knoxId = "

    const-string/jumbo v10, "PersonaManagerService:FOTA"

    invoke-static {v5, v8, v10}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_3d
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_46
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3d .. :try_end_46} :catch_47
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_46} :catch_ae

    goto :goto_5a

    :catch_47
    :try_start_47
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v6, v0, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iget-object v11, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v6, v8, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5a} :catch_ae

    :goto_5a
    :try_start_5a
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_64} :catch_b0

    if-eqz v6, :cond_b0

    :try_start_66
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_88

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_83

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v8, "#G$E"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_82} :catch_88

    goto :goto_84

    :cond_83
    move v6, v0

    :goto_84
    if-eqz v6, :cond_88

    move v6, v9

    goto :goto_89

    :catch_88
    :cond_88
    move v6, v0

    :goto_89
    if-nez v6, :cond_df

    :try_start_8b
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/String;

    invoke-static {v6, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v6, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->getEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_df

    :catch_ae
    move-exception v6

    goto :goto_ca

    :catch_b0
    :cond_b0
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_df

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->getEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v7, v6, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_c9} :catch_ae

    goto :goto_df

    :goto_ca
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Migration failed! knoxId = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_df
    :goto_df
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {v2, v5}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v6

    if-eqz v6, :cond_19

    :try_start_eb
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "usertype"

    const-string/jumbo v8, "android.os.usertype.profile.PRIVATE"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Landroid/os/UserManager;->updateUserInfo(ILandroid/os/Bundle;)Z
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_fc} :catch_fd

    goto :goto_101

    :catch_fd
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_101
    invoke-virtual {v2}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v6

    if-nez v6, :cond_19

    const-string/jumbo v6, "updateFingerprintStateForFOTA"

    const-string/jumbo v7, "PersonaManagerService"

    invoke-static {v5, v6, v7}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_110
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v9, v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricState(III)V

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "removeBiometricsLockDBValue - LockType : 1"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_12b

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "fingerprint_screen_lock"

    invoke-static {v6, v7, v0, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_19

    :cond_12b
    const-string/jumbo v5, "context is null!"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_131} :catch_133

    goto/16 :goto_19

    :catch_133
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_19

    :cond_139
    return-void
.end method

.method public static -$$Nest$mmigrateKnoxFingerprintPlusValueIfNeeded(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 11

    const-string/jumbo v0, "knox_finger_print_plus"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :catch_10
    :cond_10
    :goto_10
    if-ge v4, v3, :cond_72

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    if-nez v5, :cond_24

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_10

    :cond_24
    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v6

    if-eqz v6, :cond_2b

    goto :goto_10

    :cond_2b
    :try_start_2b
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v0, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_34
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2b .. :try_end_34} :catch_10

    :try_start_34
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v0, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_3d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_34 .. :try_end_3d} :catch_3e

    goto :goto_10

    :catch_3e
    const-string/jumbo v6, "Migrate fingerprint plus settings value. knoxId = "

    const-string/jumbo v7, "PersonaManagerService:FOTA"

    invoke-static {v5, v6, v7}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_47
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v0, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v0, v6, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5a} :catch_5b

    goto :goto_10

    :catch_5b
    move-exception v6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Migration failed! knoxId = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10

    :cond_72
    return-void
.end method

.method public static -$$Nest$mrecoverContainerInfo(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 3

    :try_start_0
    const-string/jumbo v0, "persist.sys.knox.userinfo"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/android/server/pm/PersonaManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_35

    if-eqz v0, :cond_1e

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_1e
    const-string/jumbo v0, "PersonaManagerService"

    const-string/jumbo v1, "UserInfo currupted, set again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    if-eqz p0, :cond_35

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->setContainerInfo()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    return-void

    :catch_31
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_35
    return-void
.end method

.method public static -$$Nest$mremoveDisallowedSFpackages(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 9

    const-string/jumbo v0, "removeDisallowedSFpackages() called."

    const-string/jumbo v1, "PersonaManagerService:FOTA"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    if-nez v0, :cond_16

    const-string/jumbo p0, "removeDisallowedSFpackages() - user manager is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_1f

    :cond_32
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string/jumbo v3, "removeDisallowedSecureFolderPackages() user="

    :try_start_3b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070214

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Landroid/util/ArraySet;

    const-string v5, "AllowPackage"

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    new-instance v5, Landroid/util/ArraySet;

    const-string v6, "DefaultPackage"

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_84
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-boolean v5, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz v5, :cond_ac

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dsallowedPackage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    :catch_aa
    move-exception v2

    goto :goto_d7

    :cond_ac
    :goto_ac
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Not removing package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": has active device admin"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    :cond_d1
    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5, v4}, Lcom/android/server/pm/PersonaManagerService;->deletePkg(ILjava/lang/String;)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_d6} :catch_aa

    goto :goto_84

    :goto_d7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "exception occurred in removeDisallowedSecureFolderPackages()! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_1f

    :cond_e4
    return-void
.end method

.method public static -$$Nest$msendMessageAndLockTimeout(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_24
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_c

    :cond_39
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v2

    if-nez v2, :cond_c

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTimeoutLocked(I)I

    move-result v2

    if-nez v2, :cond_c

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "android.intent.extra.user_handle"

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const-string/jumbo v1, "knox.container.proxy.EVENT_LOCK_TIMEOUT"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/ContainerProxy;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    :cond_7a
    return-void
.end method

.method public static -$$Nest$msetDpmScreenTimeoutFlag(Lcom/android/server/pm/PersonaManagerService;I)V
    .registers 9

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_f

    invoke-virtual {v1, v0, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v0

    goto :goto_11

    :cond_f
    const-wide/16 v0, 0x0

    :goto_11
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    const v3, 0x7fffffff

    if-lez v2, :cond_1d

    move v0, v3

    goto :goto_1e

    :cond_1d
    long-to-int v0, v0

    :goto_1e
    const/4 v1, 0x1

    if-lez v0, :cond_25

    if-ge v0, v3, :cond_25

    move v2, v1

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    const/4 v4, -0x1

    const-string/jumbo v5, "knox_screen_off_timeout"

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v5, v4, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    :goto_3a
    int-to-long v3, p1

    goto :goto_47

    :cond_3c
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v5, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    goto :goto_3a

    :goto_47
    if-eqz v2, :cond_59

    int-to-long v5, v0

    cmp-long p1, v3, v5

    if-lez p1, :cond_59

    iput-boolean v1, p0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    const-string/jumbo p0, "PersonaManagerService:KnoxAnalytics"

    const-string/jumbo p1, "setting mKALockscreenTimeoutAdminFlag true (at boot)"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    return-void
.end method

.method static constructor <clinit>()V
    .registers 11

    const/4 v0, 0x1

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "eng"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    const-string/jumbo v3, "users"

    invoke-static {v1, v2, v3}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/PersonaManagerService;->USER_INFO_DIR:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    const-string/jumbo v2, "com.samsung.android.knox.containercore"

    const-string/jumbo v3, "com.sec.knox.bluetooth"

    const-string/jumbo v4, "com.samsung.knox.securefolder"

    const-string/jumbo v5, "com.samsung.knox.appsupdateagent"

    const-string/jumbo v6, "com.android.bbc.fileprovider"

    filled-new-array {v4, v2, v3, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/android/server/pm/PersonaManagerService;->containerCriticalApps:Ljava/util/List;

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    sput-object v1, Lcom/android/server/pm/PersonaManagerService;->mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

    const-string v2, ""

    sput-object v2, Lcom/android/server/pm/PersonaManagerService;->mDeviceOwnerPackage:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/server/pm/PersonaManagerService;->cachedTime:Ljava/util/HashMap;

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5f

    const-string/jumbo v1, "version"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5f
    const/4 v2, 0x0

    if-eqz v1, :cond_73

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_73

    const-string/jumbo v3, "v00"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73

    move v1, v0

    goto :goto_74

    :cond_73
    move v1, v2

    :goto_74
    sput-boolean v1, Lcom/android/server/pm/PersonaManagerService;->DEVICE_SUPPORT_KNOX:Z

    new-array v3, v0, [B

    const/4 v1, 0x0

    aput-byte v2, v3, v1

    new-array v4, v0, [B

    aput-byte v0, v4, v1

    new-array v5, v0, [B

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-byte v1, v5, v2

    new-array v6, v0, [B

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput-byte v0, v6, v1

    const/16 v0, 0x100

    new-array v7, v0, [B

    fill-array-data v7, :array_b0

    new-array v8, v0, [B

    fill-array-data v8, :array_134

    new-array v9, v0, [B

    fill-array-data v9, :array_1b8

    new-array v10, v0, [B

    fill-array-data v10, :array_23c

    filled-new-array/range {v3 .. v10}, [[B

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->sEncV3Key:[[B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->workTabSupportLauncherUids:Ljava/util/ArrayList;

    return-void

    nop

    :array_b0
    .array-data 1
        -0x13t
        0x46t
        0x4ct
        0x9t
        -0x39t
        -0x7bt
        0x2et
        0x15t
        0x10t
        0x56t
        -0x23t
        0x7at
        0x62t
        0x6t
        0x1bt
        0x79t
        0x44t
        0x7bt
        -0x67t
        0x65t
        -0xdt
        0x30t
        0xct
        0x60t
        -0x48t
        -0x4ct
        0x4dt
        -0x7et
        -0x42t
        -0x70t
        0x24t
        -0x51t
        -0x53t
        0x55t
        0x3ct
        0x64t
        0x79t
        0x1at
        -0xdt
        -0x14t
        -0x73t
        0x74t
        -0x6ct
        0x58t
        0x11t
        0x2bt
        0x38t
        -0x77t
        0x7dt
        0x1t
        -0x80t
        -0x78t
        0xdt
        0xft
        0x6et
        -0x3at
        0x5ct
        -0x2at
        -0x6t
        -0x2ft
        -0xft
        0xat
        0x53t
        -0x2ct
        0x32t
        0x1bt
        0xat
        -0x22t
        0x71t
        -0x47t
        -0x5t
        -0x1t
        -0x3t
        0x24t
        -0x76t
        -0x71t
        -0x3t
        -0xat
        -0x1ct
        -0x11t
        0x70t
        0x2ft
        0x2t
        -0x2et
        -0x17t
        -0x6et
        -0x3dt
        -0x1dt
        -0x66t
        -0x55t
        -0x27t
        0x48t
        -0x23t
        -0x10t
        -0x1at
        -0x14t
        -0x38t
        0x21t
        0x7ft
        -0x15t
        -0x63t
        -0x2t
        0x50t
        -0x12t
        -0x41t
        0x7ct
        -0x12t
        0x21t
        -0x10t
        0x2t
        -0x37t
        -0x13t
        0x69t
        0x24t
        0x7ct
        0x15t
        -0x68t
        -0x7dt
        -0x69t
        -0x18t
        0x7ct
        0x53t
        -0x67t
        0x69t
        -0x76t
        -0x1ct
        -0x4ct
        -0x9t
        0xbt
        0x28t
        -0x37t
        0x71t
        0x3ct
        0x4et
        -0x2bt
        -0x6t
        0xbt
        0x17t
        -0xet
        0x43t
        -0x45t
        0x42t
        -0x3et
        0x7ct
        -0x42t
        -0x1ct
        -0x3dt
        -0x31t
        0x6et
        0x7bt
        0x27t
        -0x60t
        -0x50t
        -0x41t
        -0x30t
        0xft
        -0x18t
        -0x46t
        0x2at
        0x50t
        0x5dt
        -0x28t
        -0x2at
        0x41t
        -0x3at
        -0x1ft
        -0x2ct
        -0x35t
        -0x29t
        -0x5bt
        0x60t
        -0x6dt
        -0x36t
        -0x1bt
        -0x72t
        -0x2ct
        -0x23t
        -0x4t
        0x3t
        0x7bt
        -0x7bt
        0x40t
        -0x45t
        -0x5bt
        -0x6bt
        -0x7ft
        0x39t
        0x45t
        -0x70t
        0x5t
        -0x26t
        -0x7et
        -0x51t
        -0x10t
        -0x16t
        -0x21t
        0x2bt
        0x20t
        0x4dt
        -0x48t
        0x24t
        -0x63t
        -0x6ct
        0x2et
        0x33t
        0x26t
        0x63t
        0x2bt
        -0x12t
        -0x23t
        0x24t
        0x6ft
        -0x24t
        -0x43t
        0x10t
        0x6ft
        -0x10t
        -0x1t
        -0x80t
        0x41t
        0x46t
        -0x31t
        0x3et
        -0x72t
        0x1at
        0x6ct
        -0x1dt
        0xbt
        -0x5t
        -0x36t
        -0x6et
        0x36t
        0x45t
        -0x72t
        0x43t
        0x31t
        -0x3at
        -0x73t
        -0xbt
        0x1ft
        -0x7bt
        0x71t
        0x1dt
        -0x52t
        -0x5ct
        -0x8t
        0x44t
        -0x4ct
        -0x2at
        0x7ft
        0x2et
        0x8t
        -0x47t
        -0x4t
        0x1at
        0x20t
    .end array-data

    :array_134
    .array-data 1
        -0x36t
        0x33t
        -0x3ct
        -0x71t
        -0x12t
        0x6at
        -0x54t
        -0x2ft
        -0x76t
        -0x7ct
        -0x58t
        0x1ft
        -0x60t
        0x15t
        0x5bt
        0x60t
        -0x1dt
        0x77t
        -0x37t
        0x54t
        0x22t
        -0x5dt
        -0x2ct
        -0x61t
        0x4et
        -0x74t
        0x2ct
        0x30t
        0x8t
        -0x22t
        0xet
        0x47t
        -0x44t
        -0x4bt
        -0x12t
        -0x2et
        0x46t
        -0x6et
        0x5t
        0x3et
        -0x14t
        0x12t
        0x7et
        -0x5ct
        -0x41t
        -0x35t
        0x68t
        0x8t
        0x51t
        0x11t
        -0x57t
        -0xft
        -0x4ct
        -0x50t
        0x16t
        0x5dt
        0x15t
        0x41t
        0x5dt
        0x50t
        -0x7et
        0x72t
        -0x34t
        0x14t
        -0x39t
        0xft
        -0x6at
        -0x4et
        -0x68t
        0x72t
        -0x1bt
        -0x3t
        0x1et
        0x79t
        0x5dt
        0x49t
        0x15t
        0x4ft
        -0x1dt
        0x2dt
        -0x4t
        0x15t
        0x32t
        0x7dt
        -0x7ft
        0x77t
        -0x32t
        0x7bt
        0x24t
        -0x15t
        -0x2bt
        -0x75t
        0x2ft
        -0x34t
        0x77t
        -0x49t
        0x7et
        0x2ct
        -0x9t
        0x21t
        0x79t
        0x2dt
        0x2bt
        0x1ct
        -0x6at
        0x66t
        -0x18t
        -0x7et
        -0x62t
        -0x3at
        0x30t
        0x22t
        -0xdt
        -0x63t
        -0x3t
        0x42t
        0x3bt
        -0x1ct
        0x36t
        -0x63t
        0x58t
        -0x7at
        0x26t
        -0x37t
        -0x6et
        0x33t
        -0x4ct
        -0x74t
        0x5bt
        0x5bt
        -0x48t
        0x7t
        -0x7dt
        -0x80t
        -0x2at
        -0x80t
        -0x2t
        -0x2ct
        0x56t
        -0x59t
        -0xbt
        -0x44t
        -0x26t
        -0xdt
        -0x54t
        0x4ct
        -0x7bt
        0x55t
        -0x71t
        0x3dt
        0x27t
        0xbt
        -0x2dt
        -0x63t
        0x49t
        0x13t
        0x32t
        0x60t
        -0x2ct
        -0x62t
        -0x3et
        -0x14t
        0xet
        -0x18t
        0x45t
        0x3et
        -0x25t
        0x4dt
        -0x5bt
        -0x7dt
        -0x23t
        0x54t
        -0x14t
        0x6ft
        -0x6ft
        -0x70t
        -0x66t
        -0x27t
        -0x33t
        0xct
        -0x55t
        -0x1ct
        -0x4bt
        -0x76t
        -0x6ft
        0x6t
        -0x68t
        -0x75t
        0x62t
        0x78t
        -0x48t
        0x25t
        0x4ft
        0x44t
        0x16t
        -0x2ct
        -0x77t
        0xbt
        -0x47t
        -0x20t
        0x4ft
        -0x69t
        0x65t
        -0x5at
        -0x5bt
        0x6t
        0x4t
        0x37t
        0x59t
        0x52t
        -0x74t
        0x2t
        0x70t
        -0x47t
        -0x1ft
        0x18t
        -0x5ct
        -0xct
        0x6dt
        -0x67t
        -0x39t
        0x28t
        -0x2ft
        0x6ct
        -0x5t
        -0x12t
        -0x1bt
        0x15t
        -0x7bt
        -0x14t
        0x60t
        -0x20t
        0x6t
        -0x37t
        0x22t
        -0x1dt
        -0x56t
        0x3ct
        0x2ft
        -0x7dt
        -0x18t
        -0x67t
        0x4ct
        0x17t
        -0x45t
        0x77t
        -0x2dt
        -0xft
        -0x59t
        -0x11t
        -0x2dt
        -0x54t
        0x23t
        0x71t
        -0x31t
        -0x44t
    .end array-data

    :array_1b8
    .array-data 1
        -0x75t
        0x2ct
        -0x24t
        0x29t
        0x68t
        0x29t
        -0x22t
        -0x24t
        0x52t
        -0x46t
        -0x7ct
        0x8t
        -0x79t
        -0x11t
        -0x74t
        -0x3dt
        0x73t
        -0x57t
        -0x1t
        -0x8t
        0x57t
        -0x51t
        0x19t
        0x71t
        -0x19t
        0x26t
        -0x33t
        0x2ft
        -0x1et
        -0x5bt
        0x79t
        -0x53t
        -0x29t
        -0x7ct
        -0x5ct
        0x7at
        -0x36t
        -0x12t
        0x51t
        0xct
        0x64t
        -0x1bt
        -0x5t
        -0x49t
        0x67t
        0x23t
        -0x53t
        -0xct
        0x31t
        0xat
        -0x6bt
        -0x4et
        0xat
        -0x42t
        0x70t
        0x42t
        -0x4et
        -0x69t
        -0x42t
        0x18t
        -0x1dt
        0xbt
        0x2et
        0x78t
        0x5et
        -0x39t
        0x71t
        0x5ft
        0x79t
        0x46t
        -0x5at
        -0x66t
        -0x4at
        -0x57t
        0x18t
        0xet
        0x2ft
        -0x11t
        -0x3dt
        -0x2t
        -0x31t
        0xft
        0x4t
        -0x3ft
        0x45t
        0x64t
        -0x6at
        0x6bt
        0x5et
        -0x5ct
        0x63t
        -0x5et
        0x4t
        -0x4ct
        -0x76t
        -0x4ct
        -0x56t
        0x19t
        -0x4t
        -0x1bt
        0x2dt
        -0x22t
        -0x5ct
        0x4t
        -0x68t
        -0xbt
        -0x76t
        -0x1ct
        -0x66t
        -0x2dt
        -0x75t
        -0x61t
        -0xft
        0x45t
        0x4ct
        0x29t
        -0x7t
        0x53t
        -0x55t
        -0x57t
        -0x7ft
        0x70t
        -0x15t
        -0x55t
        -0xct
        -0x4t
        -0x43t
        0x12t
        0xat
        0x75t
        -0x56t
        -0x2at
        -0x67t
        0x12t
        -0x49t
        0x1at
        0x2dt
        0xet
        0x6at
        -0x1et
        -0x28t
        0x8t
        0x23t
        -0x77t
        0x40t
        -0x57t
        -0xbt
        0x13t
        0x5t
        0x5et
        -0x73t
        -0x5at
        -0x2at
        -0x51t
        -0x5at
        0x32t
        -0x44t
        0x38t
        0x1t
        -0x7ct
        0x17t
        0x2dt
        0x7ft
        -0x78t
        0x5ct
        -0x34t
        0xet
        0x7t
        0x5dt
        -0x10t
        0x6ct
        0x10t
        0x30t
        0x2bt
        0x49t
        0x3et
        -0x76t
        0x16t
        -0x7et
        0x6ft
        -0x33t
        -0x56t
        -0x30t
        0x7ct
        0x5at
        0x40t
        -0x36t
        -0x7bt
        -0x6ct
        0xdt
        -0x3et
        0x63t
        -0x71t
        -0x1bt
        0x3at
        -0xbt
        0x58t
        -0x50t
        0x79t
        -0x10t
        0x38t
        -0x2ct
        0x61t
        0x38t
        0x1ct
        -0x1ct
        -0x77t
        0x18t
        0x75t
        0x72t
        0x64t
        0x1ct
        0x6bt
        0x6at
        -0x55t
        0x13t
        0x10t
        0x2ft
        -0x28t
        -0x79t
        0x6ft
        -0x1t
        -0x15t
        -0x1t
        -0x4t
        -0x6et
        0x32t
        -0x6ft
        -0x1bt
        0xet
        -0x6at
        -0x4ct
        0x42t
        0x49t
        -0x6ct
        -0x46t
        0x6bt
        -0xdt
        -0x3at
        0x8t
        0x3dt
        0x12t
        -0x23t
        0x12t
        0xat
        -0x4ct
        0x7ft
        -0x2bt
        -0x1t
        -0x6dt
        0x11t
        -0x5ct
        -0x30t
        -0x60t
        -0x28t
        0x30t
    .end array-data

    :array_23c
    .array-data 1
        -0x4dt
        -0x14t
        0x6bt
        0x69t
        0x69t
        0x2at
        -0x38t
        0x30t
        0x3ft
        0x6ft
        -0x7ft
        0x3at
        -0x19t
        0x2bt
        -0x44t
        -0x71t
        0xet
        -0x1at
        0x61t
        0x13t
        -0x2ct
        -0x2bt
        0x5bt
        0x32t
        -0x22t
        -0x3bt
        -0x71t
        -0x17t
        0x5dt
        -0xdt
        0x79t
        0x50t
        -0x65t
        -0x17t
        0x61t
        0xat
        -0x35t
        0x4et
        0x70t
        -0x5et
        -0x23t
        -0x2dt
        0x66t
        -0x40t
        -0xet
        -0x26t
        -0x21t
        0x66t
        0x62t
        -0x27t
        -0xbt
        0x63t
        0x12t
        -0x41t
        0x13t
        0x7bt
        -0x11t
        0x75t
        0x69t
        -0x46t
        -0x52t
        0x7ct
        0x19t
        0x33t
        0x4et
        -0x58t
        0x10t
        -0x5ct
        0x4ft
        0x24t
        -0xct
        -0x5dt
        -0x1ft
        0x5ft
        0x28t
        -0x52t
        -0x4ft
        0x1ft
        0x2at
        0x5et
        -0x5t
        -0xft
        -0x5t
        0x3t
        -0x21t
        -0xat
        0x53t
        -0x69t
        -0x75t
        0x21t
        -0x7et
        -0x48t
        -0x18t
        0x7bt
        0x4ct
        -0x6et
        0x4t
        0x63t
        -0x4dt
        -0x3t
        0x4dt
        -0x1ct
        0x12t
        0x2dt
        0x3at
        -0x14t
        0x16t
        0x28t
        0x2bt
        -0x55t
        0x52t
        -0xdt
        -0x1at
        -0x53t
        0x0t
        -0x12t
        0x6t
        -0x67t
        0x4bt
        0x3t
        -0x1bt
        0x62t
        0x5ct
        0x42t
        -0x72t
        -0x2bt
        -0x71t
        0x68t
        -0x2dt
        -0x27t
        -0x45t
        -0x62t
        0x4bt
        -0x37t
        -0xdt
        0x3et
        -0x78t
        -0xct
        0x6t
        0x5bt
        -0xdt
        0x71t
        -0x18t
        0x19t
        0x13t
        0x1et
        0x5t
        -0x1et
        0x75t
        -0x16t
        0x57t
        -0x50t
        0x76t
        -0x67t
        -0x68t
        0x23t
        0x1bt
        0x2at
        0x7t
        -0x3ct
        -0x40t
        -0x49t
        -0x80t
        -0x31t
        -0x7t
        0x5ct
        -0x70t
        -0x74t
        -0x6et
        -0x26t
        0x44t
        0x28t
        -0x32t
        -0x3ct
        -0x23t
        -0x4at
        0x1t
        0x3ct
        -0x4dt
        0x24t
        -0x20t
        -0x11t
        0x34t
        0x32t
        -0x60t
        0x7et
        0x7ft
        -0x23t
        -0x2at
        -0x6at
        -0x15t
        -0x69t
        0x1dt
        0x7ft
        0x2et
        -0x2ft
        -0x75t
        -0x1t
        -0x26t
        -0x31t
        0x36t
        0x57t
        -0x21t
        -0x4bt
        -0x24t
        0x5ft
        -0xct
        0x58t
        -0xet
        -0x1t
        0x1dt
        -0x29t
        -0x5t
        -0x6at
        0x43t
        -0x3bt
        -0x4t
        -0x2t
        0x30t
        0x1ft
        0x70t
        -0x5ct
        0x1et
        -0x15t
        -0x44t
        0x66t
        0x64t
        -0x1ft
        -0x7t
        0x50t
        0x31t
        0x24t
        0x3at
        0x78t
        -0x2dt
        0x69t
        -0x40t
        -0x28t
        -0x64t
        -0x65t
        0x37t
        -0x56t
        0x66t
        0x4at
        -0x2at
        -0x12t
        0x4dt
        -0x5at
        -0x1ft
        0xat
        -0x21t
        -0x1et
        -0x2at
        -0x17t
        0x6at
        0x1ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerTracedLock;)V
    .registers 10

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/pm/PersonaManagerService$Injector;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PersonaManagerService$Injector;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerTracedLock;Ljava/io/File;Ljava/io/File;)V

    invoke-direct {p0, v0}, Lcom/android/server/pm/PersonaManagerService;-><init>(Lcom/android/server/pm/PersonaManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService$Injector;)V
    .registers 7

    invoke-direct {p0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLauncherLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFirmwareVersion:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedLauncherId:I

    iput v2, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/pm/PersonaManagerService;->mSecureFolderId:I

    iput-boolean v2, p0, Lcom/android/server/pm/PersonaManagerService;->mKALockscreenTimeoutAdminFlag:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mCorePackageUid:Ljava/util/List;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    new-instance v2, Lcom/android/server/pm/PersonaManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PersonaManagerService$1;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mUserSwitchObserver:Lcom/android/server/pm/PersonaManagerService$1;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->containerNames:Ljava/util/HashSet;

    new-instance v2, Lcom/android/server/pm/PersonaManagerService$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/PersonaManagerService$2;-><init>(Lcom/android/server/pm/PersonaManagerService;I)V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mUserReceiver:Lcom/android/server/pm/PersonaManagerService$2;

    new-instance v2, Lcom/android/server/pm/PersonaManagerService$2;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/PersonaManagerService$2;-><init>(Lcom/android/server/pm/PersonaManagerService;I)V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mSetupWizardCompleteReceiver:Lcom/android/server/pm/PersonaManagerService$2;

    new-instance v2, Lcom/android/server/pm/PersonaManagerService$2;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/PersonaManagerService$2;-><init>(Lcom/android/server/pm/PersonaManagerService;I)V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mFingerPrintReceiver:Lcom/android/server/pm/PersonaManagerService$2;

    new-instance v2, Lcom/android/server/pm/PersonaManagerService$2;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/PersonaManagerService$2;-><init>(Lcom/android/server/pm/PersonaManagerService;I)V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageReceiver:Lcom/android/server/pm/PersonaManagerService$2;

    new-instance v2, Lcom/android/server/pm/PersonaManagerService$2;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/android/server/pm/PersonaManagerService$2;-><init>(Lcom/android/server/pm/PersonaManagerService;I)V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mAnalyticsReceiver:Lcom/android/server/pm/PersonaManagerService$2;

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mTrustManager:Landroid/app/trust/ITrustManager;

    new-instance v2, Lcom/android/server/pm/PersonaManagerService$7;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/pm/PersonaManagerService$7;-><init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Handler;I)V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->analyticsObserver:Lcom/android/server/pm/PersonaManagerService$7;

    const-string/jumbo v2, "PersonaManagerService:KnoxForesight"

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->ddmBroadcastReceverMap:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->ddmContentObserverMap:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->usageWatcher:Lcom/android/server/pm/PersonaManagerService$10;

    iget-object v1, p1, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    iget-object v2, p1, Lcom/android/server/pm/PersonaManagerService$Injector;->mPm:Lcom/android/server/pm/PackageManagerService;

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    sput-object p0, Lcom/android/server/pm/PersonaManagerService;->sInstance:Lcom/android/server/pm/PersonaManagerService;

    new-instance v2, Lcom/android/server/knox/KnoxAnalyticsContainer;

    new-instance v3, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;

    invoke-direct {v3, v1, p0}, Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;-><init>(Landroid/content/Context;Lcom/android/server/pm/PersonaManagerService;)V

    invoke-direct {v2, v1, v3}, Lcom/android/server/knox/KnoxAnalyticsContainer;-><init>(Landroid/content/Context;Lcom/android/server/knox/IKnoxAnalyticsContainerImpl;)V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    iget-object v1, p1, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    if-nez v2, :cond_cd

    new-instance v2, Lcom/android/server/knox/ContainerDependencyWrapper;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/knox/ContainerDependencyWrapper;->context:Landroid/content/Context;

    sput-object v2, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    :cond_cd
    sget-object v1, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->containerDependencyWrapper:Lcom/android/server/knox/ContainerDependencyWrapper;

    monitor-enter v0

    :try_start_d2
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/android/server/pm/PersonaManagerService$Injector;->mDataDir:Ljava/io/File;

    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mUsersDir:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "userwithpersonalist.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_f9

    const-string/jumbo v2, "PersonaManagerService"

    const-string/jumbo v3, "No need to create user persona list file from Knox 3.0"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f9

    :catchall_f7
    move-exception p0

    goto :goto_16a

    :cond_f9
    :goto_f9
    const-string/jumbo v2, "PersonaManagerService"

    const-string v3, "<init> adding PersonaPolicyManagerService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/pm/PersonaManagerService$Injector;->getPersonaPolicyManagerService()Lcom/android/server/knox/PersonaPolicyManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    new-instance p1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "PersonaManagerService"

    const/16 v3, 0xa

    invoke-direct {p1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;-><init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    monitor-exit v0
    :try_end_120
    .catchall {:try_start_d2 .. :try_end_120} :catchall_f7

    new-instance p1, Ljava/io/File;

    const-string/jumbo v0, "persona_cache.xml"

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_14e

    :try_start_130
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_142

    const-string/jumbo p1, "PersonaManagerService"

    const-string/jumbo v0, "PMS cache file created "

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14e

    :catch_140
    move-exception p1

    goto :goto_14b

    :cond_142
    const-string/jumbo p1, "PersonaManagerService"

    const-string v0, "Error Creating PMS cache file!!!! "

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_14a} :catch_140

    goto :goto_14e

    :goto_14b
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_14e
    :goto_14e
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_151
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->readPersonaCacheLocked()V

    monitor-exit p1
    :try_end_155
    .catchall {:try_start_151 .. :try_end_155} :catchall_167

    new-instance p1, Lcom/android/server/pm/PersonaManagerService$LocalService;

    invoke-direct {p1, p0}, Lcom/android/server/pm/PersonaManagerService$LocalService;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p0, Lcom/samsung/android/knox/PersonaManagerInternal;

    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    :catchall_167
    move-exception p0

    :try_start_168
    monitor-exit p1
    :try_end_169
    .catchall {:try_start_168 .. :try_end_169} :catchall_167

    throw p0

    :goto_16a
    :try_start_16a
    monitor-exit v0
    :try_end_16b
    .catchall {:try_start_16a .. :try_end_16b} :catchall_f7

    throw p0
.end method

.method public static atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V
    .registers 6

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string/jumbo v1, "PersonaManagerService"

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".crt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_4e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to rename file: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_5d

    const-string p0, "Failed to delete the file"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    return-void
.end method

.method public static varargs checkNullParameter([Ljava/lang/Object;)Z
    .registers 7

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_5
    if-ge v3, v0, :cond_1c

    aget-object v5, p0, v3

    if-nez v5, :cond_17

    const-string/jumbo p0, "Parameter("

    const-string v0, ") is null."

    const-string/jumbo v2, "PersonaManagerService"

    invoke-static {v4, p0, v0, v2}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_17
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_1c
    return v2
.end method

.method public static clearStorageForUser(I)V
    .registers 4

    const-string/jumbo v0, "PersonaManagerService"

    const-string/jumbo v1, "clearStorageForUser "

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v1, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/LockSettingsInternal;->clearStorageForUser(I)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p0

    const-string/jumbo v1, "clearStorageForUser err."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static deletePackageAsUser(ILjava/lang/String;)Z
    .registers 10

    const-string/jumbo v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "deletePackageAsUser request for userid -"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and pkg-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObserver;

    invoke-direct {v5}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    :try_start_22
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v4, -0x1

    const/high16 v7, 0x10000000

    move v6, p0

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    monitor-enter v5
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_36} :catch_5f

    :catch_36
    :goto_36
    :try_start_36
    iget-boolean p0, v5, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObserver;->finished:Z
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_58

    if-nez p0, :cond_5b

    :try_start_3a
    const-string/jumbo p0, "PersonaManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "Waiting in while loop -"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v5, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObserver;->finished:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_57} :catch_36
    .catchall {:try_start_3a .. :try_end_57} :catchall_58

    goto :goto_36

    :catchall_58
    move-exception v0

    move-object p0, v0

    goto :goto_5d

    :cond_5b
    :try_start_5b
    monitor-exit v5

    goto :goto_6a

    :goto_5d
    monitor-exit v5
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_58

    :try_start_5e
    throw p0
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5f} :catch_5f

    :catch_5f
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "PersonaManagerService"

    const-string/jumbo v0, "deletePackage exception -"

    invoke-static {p0, v0, p1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6a
    iget-boolean p0, v5, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObserver;->result:Z

    return p0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_22

    :cond_1e
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_22
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_39

    :cond_35
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_39
    const/4 v2, 0x1

    if-gtz v0, :cond_3d

    move v0, v2

    :cond_3d
    if-gtz v1, :cond_40

    move v1, v2

    :cond_40
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static getAppSeparationConfig()Landroid/os/Bundle;
    .registers 1

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceOwnerPackage()Ljava/lang/String;
    .registers 4

    const-string/jumbo v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    const-string/jumbo v1, "PersonaManagerService"

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    const/4 v3, 0x0

    :try_start_12
    invoke-interface {v0, v3}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_1d

    goto :goto_24

    :catch_1d
    move-exception v0

    const-string/jumbo v3, "getDeviceOwnerPackage exception -"

    invoke-static {v0, v3, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    :goto_24
    sget-boolean v0, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "getDeviceOwnerPackage packageName -"

    invoke-static {v0, v2, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    return-object v2
.end method

.method public static getEncodedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1c

    :cond_7
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :goto_1c
    const-string p0, ""

    return-object p0

    :cond_1f
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    sget-object v1, Lcom/android/server/pm/PersonaManagerService;->sEncV3Key:[[B

    aget-object v1, v1, v0

    array-length v2, p0

    new-array v2, v2, [B

    const/4 v3, 0x0

    :goto_2b
    array-length v4, p0

    if-ge v3, v4, :cond_3c

    aget-byte v4, p0, v3

    array-length v5, v1

    rem-int v5, v3, v5

    aget-byte v5, v1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_3c
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, " #G$E"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getProfileOwnerPackage(I)Ljava/lang/String;
    .registers 4

    const-string/jumbo v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    const-string/jumbo v1, "PersonaManagerService"

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    :try_start_11
    invoke-interface {v0, p0}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_1c

    goto :goto_23

    :catch_1c
    move-exception p0

    const-string/jumbo v0, "getProfileOwnerPackage exception -"

    invoke-static {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    :goto_23
    const-string/jumbo p0, "getProfileOwnerPackage packageName -"

    invoke-static {p0, v2, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z
    .registers 5

    if-nez p0, :cond_3

    goto :goto_3d

    :cond_3
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    return v1

    :cond_d
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getDeviceOwnerPackage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "PersonaManagerService"

    if-eqz v0, :cond_29

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    const-string/jumbo p0, "isAppSeparationIndepdentApp ignoring DO packageName - "

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_29
    const-string/jumbo v0, "com.samsung.android.knox.kpu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string/jumbo v0, "isAppSeparationIndepdentApp ignoring KSP packageName - "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3d
    :goto_3d
    const/4 p0, 0x0

    return p0
.end method

.method public static onNewUserCreated(Landroid/content/pm/UserInfo;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onNewUserCreated: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "PersonaManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    const-class v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " provisioning state:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mCurrentProvisioningState:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    if-nez p0, :cond_42

    const-string/jumbo p0, "null"

    goto :goto_46

    :cond_42
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_46
    const-string v0, "KnoxMUMContainerPolicy"

    invoke-static {v2, p0, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static resetSecureFolderAdmin()V
    .registers 5

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.samsung.knox.securefolder"

    const-string/jumbo v2, "com.samsung.knox.securefolder.containeragent.detector.KnoxDeviceAdminReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "enterprise_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_29

    :try_start_18
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v3
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_24} :catch_25

    goto :goto_2a

    :catch_25
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_29
    const/4 v3, 0x0

    :goto_2a
    if-eqz v3, :cond_50

    const-string/jumbo v3, "PersonaManagerService:FOTA"

    const-string/jumbo v4, "resetSecureFolderAdmin called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_35
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v2

    if-eqz v2, :cond_50

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4, v1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    invoke-interface {v2, v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_4b} :catch_4c

    goto :goto_50

    :catch_4c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_50
    :goto_50
    return-void
.end method


# virtual methods
.method public final CMFALock(I)V
    .registers 4

    const-string v0, "CMFALock"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string/jumbo v0, "PersonaManagerService"

    const-string v1, "CMFALock userId = "

    invoke-static {p1, v1, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_18
    monitor-enter p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_19} :catch_35

    :try_start_19
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTrustManager:Landroid/app/trust/ITrustManager;

    if-nez v0, :cond_2d

    const-string/jumbo v0, "trust"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTrustManager:Landroid/app/trust/ITrustManager;

    goto :goto_2d

    :catchall_2b
    move-exception p1

    goto :goto_37

    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mTrustManager:Landroid/app/trust/ITrustManager;
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_2b

    :try_start_2f
    monitor-exit p0

    const/4 p0, 0x1

    invoke-interface {v0, p1, p0}, Landroid/app/trust/ITrustManager;->setDeviceLockedForUser(IZ)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_34} :catch_35

    goto :goto_3c

    :catch_35
    move-exception p0

    goto :goto_39

    :goto_37
    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_2b

    :try_start_38
    throw p1
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_39} :catch_35

    :goto_39
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public final CMFAUnLock(I)V
    .registers 2

    const-string p1, "CMFAUnLock"

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    const-string/jumbo p0, "PersonaManagerService"

    const-string p1, "CMFAUnLock not support yet."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final addAppPackageNameToAllowList(ILjava/util/List;)V
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    invoke-interface {v0, v2, v1}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    move-result v0

    if-eqz v0, :cond_1a

    const-string/jumbo p0, "PersonaManagerService"

    const-string/jumbo p1, "addAppPackageNameToAllowList failed."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_3b

    return-void

    :cond_1a
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_23
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, v2, p2}, Lcom/android/server/knox/ContainerDependencyWrapper;->addAppPackageNameToAllowList(ILandroid/content/Context;Ljava/util/List;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_31

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_31
    move-exception p1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :catch_3b
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public final appliedPasswordPolicy(I)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    iget-object v2, v2, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->checkNullParameter([Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_50

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_50

    :cond_2c
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->needSetupCredential()Z

    move-result v2

    if-nez v2, :cond_47

    invoke-static {p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->isPwdChangeRequested(I)Z

    move-result p1

    if-nez p1, :cond_47

    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "enable_one_lock_ongoing"

    invoke-static {p1, v2, v4, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-lez p1, :cond_48

    :cond_47
    const/4 v4, 0x1

    :cond_48
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_50
    :goto_50
    return v4
.end method

.method public final bindCoreServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;II)Z
    .registers 21

    move-object/from16 v3, p4

    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    invoke-interface {v0, v2, v1}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    move-result v0

    if-eqz v0, :cond_20

    const-string/jumbo p0, "PersonaManagerService"

    const-string/jumbo v0, "bindCoreServiceAsUser() failed to bind."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1c} :catch_1d

    return v10

    :catch_1d
    move-exception v0

    move-object p0, v0

    goto :goto_7d

    :cond_20
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxCorePackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    move/from16 v9, p7

    :try_start_2f
    invoke-virtual {p0, v3, v0, v9}, Lcom/android/server/pm/PersonaManagerService;->createCrossUserServiceIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_33} :catch_74
    .catchall {:try_start_2f .. :try_end_33} :catchall_6a

    if-nez v0, :cond_3e

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :cond_3e
    :try_start_3e
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    move/from16 v1, p6

    int-to-long v6, v1

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v5, p5

    invoke-interface/range {v0 .. v9}, Landroid/app/IActivityManager;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;JLjava/lang/String;I)I

    move-result v0
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_5e} :catch_74
    .catchall {:try_start_3e .. :try_end_5e} :catchall_6a

    if-eqz v0, :cond_61

    const/4 v10, 0x1

    :cond_61
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :catchall_6a
    move-exception v0

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_74
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :goto_7d
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v10
.end method

.method public final broadcastIntentThroughPersona(Landroid/content/Intent;I)Z
    .registers 9

    const-string/jumbo v0, "PersonaManagerService"

    const-string/jumbo v1, "broadcastIntentThroughPersona is canceled by mContext = "

    const-string/jumbo v2, "broadcastIntentThroughPersona Intent ="

    const-string/jumbo v3, "broadcastIntentThroughPersona"

    invoke-virtual {p0, v3}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_42

    if-nez p1, :cond_2e

    goto :goto_42

    :cond_2e
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_36
    .catchall {:try_start_18 .. :try_end_36} :catchall_40

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_40
    move-exception p1

    goto :goto_65

    :cond_42
    :goto_42
    :try_start_42
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " or intent = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_42 .. :try_end_5b} :catchall_40

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_65
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public final checkCallerPermissionFor(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "PersonaManagerService"

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final clearAttributes(II)Z
    .registers 4

    const-string/jumbo v0, "clearAttributes"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_1b

    const-string/jumbo p0, "user not found "

    const-string/jumbo p2, "PersonaManagerService"

    invoke-static {p1, p0, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerInternal;->clearAttributes(II)Z

    move-result p0

    return p0
.end method

.method public final createCrossUserServiceIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 10

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-object v1, p1

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_57

    iget-object p1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p1, :cond_1d

    goto :goto_57

    :cond_1d
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean p2, p1, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz p2, :cond_40

    const-string/jumbo p2, "android.permission.BIND_DEVICE_ADMIN"

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    goto :goto_40

    :cond_37
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Service must be protected by BIND_DEVICE_ADMIN permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    :goto_40
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v1

    :cond_4a
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Only allow to bind service in "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_57
    :goto_57
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Fail to look up the service: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " or user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not running"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "PersonaManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final deletePkg(ILjava/lang/String;)V
    .registers 6

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string/jumbo p0, "PersonaManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignore deletePkg request for personaId -"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and pkg-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    const-string/jumbo v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "deletePkg request for personaId -"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and pkg-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;

    invoke-direct {v0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    :try_start_45
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p0, p2, v0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->deletePackageAsUserAndPersona(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;I)V

    monitor-enter v0
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4b} :catch_8d

    :goto_4b
    :try_start_4b
    iget-boolean p0, v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;->finished:Z
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_6d

    if-nez p0, :cond_89

    :try_start_4f
    const-string/jumbo p0, "PersonaManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "Waiting in while loop"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, v0, Lcom/android/server/pm/PersonaManagerService$PackageDeleteObs;->finished:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_6c
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_6c} :catch_6f
    .catchall {:try_start_4f .. :try_end_6c} :catchall_6d

    goto :goto_4b

    :catchall_6d
    move-exception p0

    goto :goto_8b

    :catch_6f
    move-exception p0

    :try_start_70
    const-string/jumbo p1, "PersonaManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "deletePkg: InterruptedException = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    :cond_89
    monitor-exit v0

    goto :goto_97

    :goto_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_70 .. :try_end_8c} :catchall_6d

    :try_start_8c
    throw p0
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8d} :catch_8d

    :catch_8d
    move-exception p0

    const-string/jumbo p1, "PersonaManagerService"

    const-string/jumbo p2, "deletePkg exception -"

    invoke-static {p0, p2, p1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_97
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "PersonaManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_19d

    :cond_d
    :try_start_d
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    monitor-enter p1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_20

    :try_start_10
    iget-object p3, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    const-string/jumbo v0, "USER-REMOVED"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    monitor-exit p1

    goto :goto_27

    :catchall_1d
    move-exception p3

    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw p3
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_20} :catch_20

    :catch_20
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo p3, "NA"

    :goto_27
    const-string p1, "Last removed user:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_38
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_45
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_bb

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "approved installers user : #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-nez v3, :cond_77

    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    :cond_77
    sget-object v2, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v2

    const-string/jumbo v3, "mum_container_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, v2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-interface {v3, v4}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->getPackagesFromInstallWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_95
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_b5} :catch_b9
    .catchall {:try_start_38 .. :try_end_b5} :catchall_b6

    goto :goto_95

    :catchall_b6
    move-exception p0

    goto/16 :goto_19e

    :catch_b9
    move-exception p1

    goto :goto_bf

    :cond_bb
    :goto_bb
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c3

    :goto_bf
    :try_start_bf
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_b6

    goto :goto_bb

    :goto_c3
    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result p0

    const-string p3, "App Separation:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "    STATE : "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p0, :cond_eb

    if-nez p1, :cond_e5

    const-string/jumbo p0, "NONE"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_e5
    const-string p0, "ACTIVATED"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f0

    :cond_eb
    const-string p0, "ENABLED"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_f0
    if-eqz p1, :cond_19d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "APP_SEPARATION_OUTSIDE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "APP_SEPARATION_APP_LIST"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "APP_SEPARATION_COEXISTANCE_LIST"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz v2, :cond_142

    move v3, v1

    :goto_112
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_142

    const-string v4, "        "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_112

    :cond_142
    if-eqz p1, :cond_174

    :goto_144
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_174

    const-string v2, "        "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_144

    :cond_174
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "    Outside Option : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    AllowList Packages: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    CoexistenceList Packages: "

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_19d
    :goto_19d
    return-void

    :goto_19e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final enforceAppSeparationCoexistenceAllowListUpdateInternal()V
    .registers 47

    const-string/jumbo v0, "enforceAppSeparationCoexistenceAllowListUpdateInternal packageInfoList size -"

    const-string/jumbo v2, "enforceAppSeparationCoexistenceAllowListUpdateInternal prevCoexistenceAppsSet size - "

    const-string/jumbo v3, "enforceAppSeparationCoexistenceAllowListUpdateInternal coexistenceAppsSet size - "

    const-string/jumbo v4, "enforceAppSeparationCoexistenceAllowListUpdateInternal is called for isOutside - "

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v7

    if-eqz v5, :cond_1c

    const/4 v10, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v10, 0x0

    :goto_1d
    const-string/jumbo v11, "enforceAppSeparationCoexistenceAllowListUpdateInternal sending removedinfo intent. count = "

    const-string/jumbo v12, "com.samsung.android.appseparation.receiver.ProfileStateChangedReceiver"

    const-string/jumbo v13, "com.samsung.android.appseparation"

    const-string/jumbo v14, "app_uninstalled"

    const-string/jumbo v15, "com.samsung.android.knox.action.APP_SEPARATION_ACTION"

    const-string/jumbo v8, "SeparationWhiteListReturn"

    const-string/jumbo v9, "com.samsung.android.knox.intent.action.SEPARATION_ALLOWEDLIST_RETURN"

    move/from16 v17, v10

    const-string/jumbo v10, "coexistList after package: "

    move/from16 v18, v7

    const-string/jumbo v7, "enforceAppSeparationCoexistenceAllowListUpdateInternal after update packageName - "

    move-object/from16 v19, v2

    const-string/jumbo v2, "enforceAppSeparationCoexistenceAllowListUpdateInternal used by createSeparationConfig"

    move-object/from16 v20, v3

    const-string/jumbo v3, "coexistList before package: "

    move-object/from16 v21, v4

    const-string/jumbo v4, "enforceAppSeparationCoexistenceAllowListUpdateInternal before update packageName - "

    move-object/from16 v22, v11

    const-string/jumbo v11, "enforceAppSeparationCoexistenceAllowListUpdateInternal: finally"

    move-object/from16 v23, v12

    const-string/jumbo v12, "enforceAppSeparationCoexistenceAllowListUpdateInternal isOutside - "

    move-object/from16 v24, v13

    const-string v13, "APP_SEPARATION_APP_LIST"

    move-object/from16 v25, v14

    const-string v14, "APP_SEPARATION_OUTSIDE"

    move-object/from16 v26, v15

    const-string v15, "APP_SEPARATION_COEXISTANCE_LIST"

    const-string/jumbo v1, "PersonaManagerService"

    if-nez v6, :cond_191

    :try_start_66
    const-string/jumbo v0, "enforceAppSeparationCoexistenceAllowListUpdateInternal no app separation data found in db"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6c} :catch_172
    .catchall {:try_start_66 .. :try_end_6c} :catchall_14a

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_b1

    const/4 v11, 0x0

    invoke-virtual {v5, v14, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v12, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v2, :cond_9c

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v11, 0x0

    :goto_88
    if-ge v11, v0, :cond_9c

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v11, v11, 0x1

    move/from16 v19, v0

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    invoke-static {v4, v0, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, v19

    goto :goto_88

    :cond_9c
    if-eqz v5, :cond_b4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_a3
    if-ge v2, v0, :cond_b4

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a3

    :cond_b1
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b4
    sput-object v6, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    if-eqz v6, :cond_f6

    const/4 v11, 0x0

    invoke-virtual {v6, v14, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v2, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v12, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v2, :cond_e1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_d3
    if-ge v4, v0, :cond_e1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    invoke-static {v7, v5, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d3

    :cond_e1
    if-eqz v3, :cond_f6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_e8
    if-ge v2, v0, :cond_f6

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Ljava/lang/String;

    invoke-static {v10, v4, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e8

    :cond_f6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v2, p0

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    :try_start_107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object/from16 v3, v26

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v3, v25

    const/4 v11, 0x0

    invoke-virtual {v0, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v2, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_139} :catch_13a

    goto :goto_13e

    :catch_13a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_13e
    iget-object v0, v2, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    if-nez v18, :cond_90c

    :goto_145
    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationCreation()V

    goto/16 :goto_90c

    :catchall_14a
    move-exception v0

    move-object/from16 v27, v22

    move-object/from16 v28, v23

    move-object/from16 v29, v24

    move-object/from16 v30, v25

    move-object/from16 v31, v26

    move-object/from16 v22, v8

    move-object/from16 v8, p0

    move-object/from16 v16, v0

    move-object v8, v10

    move-object/from16 v40, v27

    move-object/from16 v41, v28

    move-object/from16 v42, v29

    move-object/from16 v43, v30

    move-object/from16 v44, v31

    const/4 v0, 0x1

    const/16 v45, 0x0

    move-object v10, v7

    :goto_16a
    move-object v7, v4

    move-object v4, v6

    :goto_16c
    move-object v6, v3

    move-object v3, v2

    move-object/from16 v2, v22

    goto/16 :goto_929

    :catch_172
    move-exception v0

    move-object/from16 v27, v22

    move-object/from16 v28, v23

    move-object/from16 v29, v24

    move-object/from16 v30, v25

    move-object/from16 v31, v26

    move-object/from16 v22, v8

    move-object/from16 v8, p0

    move-object v8, v10

    move-object/from16 v16, v22

    move-object/from16 v22, v27

    const/16 v36, 0x1

    const/16 v39, 0x0

    move-object v10, v7

    :goto_18b
    move-object v7, v4

    move-object v4, v6

    :goto_18d
    move-object v6, v3

    move-object v3, v2

    goto/16 :goto_819

    :cond_191
    move-object/from16 v27, v22

    move-object/from16 v28, v23

    move-object/from16 v29, v24

    move-object/from16 v30, v25

    move-object/from16 v31, v26

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    const/4 v9, 0x0

    move-object/from16 v8, p0

    :try_start_1a4
    invoke-virtual {v6, v14, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v6, v15}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v25

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1b5} :catch_808
    .catchall {:try_start_1a4 .. :try_end_1b5} :catchall_7f7

    if-eqz v5, :cond_1bb

    :try_start_1b7
    invoke-virtual {v5, v15}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v26
    :try_end_1bb
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_1bb} :catch_1d4
    .catchall {:try_start_1b7 .. :try_end_1bb} :catchall_1be

    :cond_1bb
    move-object/from16 v32, v9

    goto :goto_1eb

    :catchall_1be
    move-exception v0

    move-object/from16 v16, v0

    move-object v10, v7

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move-object/from16 v40, v27

    move-object/from16 v41, v28

    move-object/from16 v42, v29

    move-object/from16 v43, v30

    move-object/from16 v44, v31

    const/4 v0, 0x1

    const/16 v45, 0x0

    goto :goto_16a

    :catch_1d4
    move-exception v0

    move-object v10, v7

    move-object/from16 v16, v22

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v24, v29

    move-object/from16 v25, v30

    move-object/from16 v26, v31

    const/16 v36, 0x1

    const/16 v39, 0x0

    goto :goto_18b

    :goto_1eb
    :try_start_1eb
    invoke-virtual {v8}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackages()Ljava/util/Set;

    move-result-object v9

    iput-object v9, v8, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;
    :try_end_1f1
    .catch Ljava/lang/Exception; {:try_start_1eb .. :try_end_1f1} :catch_808
    .catchall {:try_start_1eb .. :try_end_1f1} :catchall_7f7

    if-nez v25, :cond_1f8

    :try_start_1f3
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V
    :try_end_1f8
    .catch Ljava/lang/Exception; {:try_start_1f3 .. :try_end_1f8} :catch_1d4
    .catchall {:try_start_1f3 .. :try_end_1f8} :catchall_1be

    :cond_1f8
    move-object/from16 v9, v25

    move-object/from16 v25, v7

    :try_start_1fc
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_201
    .catch Ljava/lang/Exception; {:try_start_1fc .. :try_end_201} :catch_7df
    .catchall {:try_start_1fc .. :try_end_201} :catchall_7c7

    if-nez v26, :cond_208

    :try_start_203
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    :cond_208
    move-object/from16 v9, v26

    goto :goto_240

    :catchall_20b
    move-exception v0

    move-object/from16 v16, v0

    move-object v7, v4

    move-object v4, v6

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move-object/from16 v10, v25

    move-object/from16 v40, v27

    move-object/from16 v41, v28

    move-object/from16 v42, v29

    move-object/from16 v43, v30

    move-object/from16 v44, v31

    const/4 v0, 0x1

    const/16 v45, 0x0

    goto/16 :goto_16c

    :catch_225
    move-exception v0

    move-object v7, v4

    move-object v4, v6

    move-object/from16 v16, v22

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move-object/from16 v10, v25

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v24, v29

    move-object/from16 v25, v30

    move-object/from16 v26, v31

    const/16 v36, 0x1

    const/16 v39, 0x0

    goto/16 :goto_18d

    :goto_240
    if-nez v32, :cond_249

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V
    :try_end_247
    .catch Ljava/lang/Exception; {:try_start_203 .. :try_end_247} :catch_225
    .catchall {:try_start_203 .. :try_end_247} :catchall_20b

    move-object/from16 v32, v26

    :cond_249
    move-object/from16 v26, v6

    move-object/from16 v6, v32

    move-object/from16 v32, v2

    :try_start_24f
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v9, Ljava/lang/StringBuilder;
    :try_end_25b
    .catch Ljava/lang/Exception; {:try_start_24f .. :try_end_25b} :catch_7ad
    .catchall {:try_start_24f .. :try_end_25b} :catchall_793

    move-object/from16 v33, v3

    move-object/from16 v3, v21

    :try_start_25f
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v9, v20

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v9, v19

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v8, v5, v7, v6}, Lcom/android/server/pm/PersonaManagerService;->getUpdatedPackageInfo(Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/List;

    move-result-object v9

    move-object/from16 v19, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3
    :try_end_2bc
    .catch Ljava/lang/Exception; {:try_start_25f .. :try_end_2bc} :catch_771
    .catchall {:try_start_25f .. :try_end_2bc} :catchall_746

    move-object/from16 v20, v3

    const/4 v3, 0x0

    const/4 v9, 0x1

    :goto_2c0
    :try_start_2c0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_2c4
    .catch Ljava/lang/Exception; {:try_start_2c0 .. :try_end_2c4} :catch_720
    .catchall {:try_start_2c0 .. :try_end_2c4} :catchall_6f0

    if-eqz v0, :cond_606

    :try_start_2c6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move/from16 v21, v10

    move-object v10, v0

    check-cast v10, Landroid/content/pm/PackageInfo;

    invoke-static {v10}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_5f4

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/android/server/pm/PersonaManagerService;->isKeyboardApp(Ljava/lang/String;)Z

    move-result v0
    :try_end_2db
    .catch Ljava/lang/Exception; {:try_start_2c6 .. :try_end_2db} :catch_5f0
    .catchall {:try_start_2c6 .. :try_end_2db} :catchall_5ec

    if-eqz v0, :cond_344

    :try_start_2dd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2e2
    .catch Ljava/lang/Exception; {:try_start_2dd .. :try_end_2e2} :catch_340
    .catchall {:try_start_2dd .. :try_end_2e2} :catchall_33c

    move/from16 v34, v3

    :try_start_2e4
    const-string/jumbo v3, "enforceAppSeparationCoexistenceAllowListUpdateInternal isKeyBoardApp - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f6
    .catch Ljava/lang/Exception; {:try_start_2e4 .. :try_end_2f6} :catch_31c
    .catchall {:try_start_2e4 .. :try_end_2f6} :catchall_2fb

    move/from16 v10, v21

    move/from16 v3, v34

    goto :goto_2c0

    :catchall_2fb
    move-exception v0

    :goto_2fc
    move-object/from16 v16, v0

    move-object v7, v4

    move v0, v9

    move-object/from16 v2, v22

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move-object/from16 v10, v25

    move-object/from16 v4, v26

    move-object/from16 v40, v27

    move-object/from16 v41, v28

    move-object/from16 v42, v29

    move-object/from16 v43, v30

    move-object/from16 v44, v31

    move-object/from16 v3, v32

    move-object/from16 v6, v33

    :goto_318
    move/from16 v45, v34

    goto/16 :goto_929

    :catch_31c
    move-exception v0

    :goto_31d
    move-object v7, v4

    move/from16 v36, v9

    move-object/from16 v16, v22

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move-object/from16 v10, v25

    move-object/from16 v4, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v24, v29

    move-object/from16 v25, v30

    move-object/from16 v26, v31

    move-object/from16 v3, v32

    move-object/from16 v6, v33

    move/from16 v39, v34

    goto/16 :goto_819

    :catchall_33c
    move-exception v0

    move/from16 v34, v3

    goto :goto_2fc

    :catch_340
    move-exception v0

    move/from16 v34, v3

    goto :goto_31d

    :cond_344
    move/from16 v34, v3

    :try_start_346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enforceAppSeparationCoexistenceAllowListUpdateInternal Non system app - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enforceAppSeparationCoexistenceAllowListUpdateInternal coexistenceAppsSet.contains - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enforceAppSeparationCoexistenceAllowListUpdateInternal prevCoexistenceAppsSet.contains - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_393
    .catch Ljava/lang/Exception; {:try_start_346 .. :try_end_393} :catch_5e8
    .catchall {:try_start_346 .. :try_end_393} :catchall_5e4

    if-eqz v5, :cond_39a

    :try_start_395
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_39a
    .catch Ljava/lang/Exception; {:try_start_395 .. :try_end_39a} :catch_31c
    .catchall {:try_start_395 .. :try_end_39a} :catchall_2fb

    :cond_39a
    :try_start_39a
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3a0
    .catch Ljava/lang/Exception; {:try_start_39a .. :try_end_3a0} :catch_5e8
    .catchall {:try_start_39a .. :try_end_3a0} :catchall_5e4

    const-string v3, " in user -"

    if-nez v0, :cond_52b

    :try_start_3a4
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3aa
    .catch Ljava/lang/Exception; {:try_start_3a4 .. :try_end_3aa} :catch_479
    .catchall {:try_start_3a4 .. :try_end_3aa} :catchall_48d

    move/from16 v35, v0

    const-string/jumbo v0, "enforceAppSeparationCoexistenceAllowListUpdateInternal Uninstalling package "

    if-eqz v35, :cond_4bf

    if-eqz v21, :cond_4ae

    if-nez v18, :cond_3c2

    if-nez v18, :cond_3ba

    if-eqz v17, :cond_3ba

    goto :goto_3c2

    :cond_3ba
    move-object/from16 v16, v2

    :goto_3bc
    move-object/from16 v38, v4

    move-object/from16 v37, v6

    goto/16 :goto_487

    :cond_3c2
    :goto_3c2
    :try_start_3c2
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v35
    :try_end_3c6
    .catch Ljava/lang/Exception; {:try_start_3c2 .. :try_end_3c6} :catch_479
    .catchall {:try_start_3c2 .. :try_end_3c6} :catchall_48d

    :goto_3c6
    :try_start_3c6
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_47f

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    move-object/from16 v37, v6

    move-object/from16 v6, v36

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v36
    :try_end_3da
    .catch Ljava/lang/Exception; {:try_start_3c6 .. :try_end_3da} :catch_479
    .catchall {:try_start_3c6 .. :try_end_3da} :catchall_473

    if-eqz v36, :cond_468

    move/from16 v36, v9

    :try_start_3de
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I
    :try_end_3e0
    .catch Ljava/lang/Exception; {:try_start_3de .. :try_end_3e0} :catch_464
    .catchall {:try_start_3de .. :try_end_3e0} :catchall_460

    move-object/from16 v38, v4

    :try_start_3e2
    iget-object v4, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v4}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v6, Landroid/content/pm/UserInfo;->id:I

    iget-object v9, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v9}, Lcom/android/server/pm/PersonaManagerService;->deletePackageAsUser(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_413

    const/4 v9, 0x0

    goto/16 :goto_46d

    :cond_413
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v4
    :try_end_417
    .catch Ljava/lang/Exception; {:try_start_3e2 .. :try_end_417} :catch_441
    .catchall {:try_start_3e2 .. :try_end_417} :catchall_41e

    if-eqz v4, :cond_41b

    add-int/lit8 v34, v34, 0x1

    :cond_41b
    :goto_41b
    move/from16 v9, v36

    goto :goto_46d

    :catchall_41e
    move-exception v0

    :goto_41f
    move-object/from16 v16, v0

    move-object/from16 v2, v22

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move-object/from16 v10, v25

    move-object/from16 v4, v26

    move-object/from16 v40, v27

    move-object/from16 v41, v28

    move-object/from16 v42, v29

    move-object/from16 v43, v30

    move-object/from16 v44, v31

    move-object/from16 v3, v32

    move-object/from16 v6, v33

    move/from16 v45, v34

    move/from16 v0, v36

    :goto_43d
    move-object/from16 v7, v38

    goto/16 :goto_929

    :catch_441
    move-exception v0

    :goto_442
    move-object/from16 v16, v22

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move-object/from16 v10, v25

    move-object/from16 v4, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v24, v29

    move-object/from16 v25, v30

    move-object/from16 v26, v31

    move-object/from16 v3, v32

    move-object/from16 v6, v33

    move/from16 v39, v34

    move-object/from16 v7, v38

    goto/16 :goto_819

    :catchall_460
    move-exception v0

    move-object/from16 v38, v4

    goto :goto_41f

    :catch_464
    move-exception v0

    move-object/from16 v38, v4

    goto :goto_442

    :cond_468
    move-object/from16 v38, v4

    move/from16 v36, v9

    goto :goto_41b

    :goto_46d
    move-object/from16 v6, v37

    move-object/from16 v4, v38

    goto/16 :goto_3c6

    :catchall_473
    move-exception v0

    move-object/from16 v38, v4

    :goto_476
    move/from16 v36, v9

    goto :goto_41f

    :catch_479
    move-exception v0

    move-object/from16 v38, v4

    :goto_47c
    move/from16 v36, v9

    goto :goto_442

    :cond_47f
    move-object/from16 v38, v4

    move-object/from16 v37, v6

    :cond_483
    move/from16 v36, v9

    move-object/from16 v16, v2

    :cond_487
    :goto_487
    move/from16 v2, v18

    move/from16 v3, v34

    goto/16 :goto_5fa

    :catchall_48d
    move-exception v0

    move-object/from16 v38, v4

    :goto_490
    move-object/from16 v16, v0

    :goto_492
    move v0, v9

    move-object/from16 v2, v22

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move-object/from16 v10, v25

    move-object/from16 v4, v26

    move-object/from16 v40, v27

    move-object/from16 v41, v28

    move-object/from16 v42, v29

    move-object/from16 v43, v30

    move-object/from16 v44, v31

    move-object/from16 v3, v32

    move-object/from16 v6, v33

    move/from16 v45, v34

    goto :goto_43d

    :cond_4ae
    move-object/from16 v38, v4

    move-object/from16 v37, v6

    :try_start_4b2
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v8, v0, v4}, Lcom/android/server/pm/PersonaManagerService;->suspendAppsInOwner(Ljava/lang/String;Z)V

    :cond_4b8
    move-object/from16 v16, v2

    goto :goto_487

    :catchall_4bb
    move-exception v0

    goto :goto_490

    :catch_4bd
    move-exception v0

    goto :goto_47c

    :cond_4bf
    move-object/from16 v38, v4

    move-object/from16 v37, v6

    const/4 v4, 0x1

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6
    :try_end_4c8
    .catch Ljava/lang/Exception; {:try_start_4b2 .. :try_end_4c8} :catch_4bd
    .catchall {:try_start_4b2 .. :try_end_4c8} :catchall_4bb

    :goto_4c8
    :try_start_4c8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_483

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Landroid/content/pm/UserInfo;

    move-object/from16 v16, v6

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I
    :try_end_4da
    .catch Ljava/lang/Exception; {:try_start_4c8 .. :try_end_4da} :catch_4bd
    .catchall {:try_start_4c8 .. :try_end_4da} :catchall_528

    if-eqz v6, :cond_4e6

    :try_start_4dc
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v6
    :try_end_4e0
    .catch Ljava/lang/Exception; {:try_start_4dc .. :try_end_4e0} :catch_4bd
    .catchall {:try_start_4dc .. :try_end_4e0} :catchall_4bb

    if-eqz v6, :cond_4e3

    goto :goto_4e6

    :cond_4e3
    move/from16 v36, v9

    goto :goto_522

    :cond_4e6
    :goto_4e6
    :try_start_4e6
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I
    :try_end_4e8
    .catch Ljava/lang/Exception; {:try_start_4e6 .. :try_end_4e8} :catch_4bd
    .catchall {:try_start_4e6 .. :try_end_4e8} :catchall_528

    move/from16 v36, v9

    :try_start_4ea
    iget-object v9, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v6, v9}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_522

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    iget-object v9, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/android/server/pm/PersonaManagerService;->deletePackageAsUser(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_51a

    const/4 v9, 0x0

    goto :goto_524

    :cond_51a
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v4
    :try_end_51e
    .catch Ljava/lang/Exception; {:try_start_4ea .. :try_end_51e} :catch_441
    .catchall {:try_start_4ea .. :try_end_51e} :catchall_41e

    if-eqz v4, :cond_522

    add-int/lit8 v34, v34, 0x1

    :cond_522
    :goto_522
    move/from16 v9, v36

    :goto_524
    move-object/from16 v6, v16

    const/4 v4, 0x1

    goto :goto_4c8

    :catchall_528
    move-exception v0

    goto/16 :goto_476

    :cond_52b
    move-object/from16 v38, v4

    move-object/from16 v37, v6

    :try_start_52f
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b8

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_541

    if-eqz v21, :cond_54b

    :cond_541
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_547
    .catch Ljava/lang/Exception; {:try_start_52f .. :try_end_547} :catch_5dc
    .catchall {:try_start_52f .. :try_end_547} :catchall_5d7

    if-nez v0, :cond_59d

    if-eqz v21, :cond_59d

    :cond_54b
    if-nez v18, :cond_551

    if-nez v18, :cond_4b8

    if-eqz v17, :cond_4b8

    :cond_551
    :try_start_551
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_555
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget-object v6, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v2

    const/4 v2, 0x0

    invoke-virtual {v8, v2, v6}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_59a

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    if-nez v2, :cond_59a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unsuspend package "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58f
    .catch Ljava/lang/Exception; {:try_start_551 .. :try_end_58f} :catch_4bd
    .catchall {:try_start_551 .. :try_end_58f} :catchall_4bb

    :try_start_58f
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Lcom/android/server/pm/PersonaManagerService;->suspendAppsInOwner(Ljava/lang/String;Z)V
    :try_end_595
    .catch Ljava/lang/Exception; {:try_start_58f .. :try_end_595} :catch_596
    .catchall {:try_start_58f .. :try_end_595} :catchall_4bb

    goto :goto_59a

    :catch_596
    move-exception v0

    :try_start_597
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_59a
    .catch Ljava/lang/Exception; {:try_start_597 .. :try_end_59a} :catch_4bd
    .catchall {:try_start_597 .. :try_end_59a} :catchall_4bb

    :cond_59a
    :goto_59a
    move-object/from16 v2, v16

    goto :goto_555

    :cond_59d
    move-object/from16 v16, v2

    if-nez v18, :cond_5a5

    if-nez v18, :cond_487

    if-eqz v17, :cond_487

    :cond_5a5
    :try_start_5a5
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5a9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_487

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget-object v3, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v8, v4, v3}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5d4

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_5c0
    .catch Ljava/lang/Exception; {:try_start_5a5 .. :try_end_5c0} :catch_5dc
    .catchall {:try_start_5a5 .. :try_end_5c0} :catchall_5d7

    if-nez v2, :cond_5d4

    move/from16 v2, v18

    :try_start_5c4
    invoke-virtual {v8, v2, v10}, Lcom/android/server/pm/PersonaManagerService;->installPackageForAppSeparation(ILandroid/content/pm/PackageInfo;)I
    :try_end_5c7
    .catch Ljava/lang/Exception; {:try_start_5c4 .. :try_end_5c7} :catch_5cf
    .catchall {:try_start_5c4 .. :try_end_5c7} :catchall_5c8

    goto :goto_5e1

    :catchall_5c8
    move-exception v0

    move-object/from16 v16, v0

    move/from16 v18, v2

    goto/16 :goto_492

    :catch_5cf
    move-exception v0

    move/from16 v18, v2

    goto/16 :goto_47c

    :cond_5d4
    move/from16 v2, v18

    goto :goto_5e1

    :catchall_5d7
    move-exception v0

    :goto_5d8
    move/from16 v2, v18

    goto/16 :goto_490

    :catch_5dc
    move-exception v0

    :goto_5dd
    move/from16 v2, v18

    goto/16 :goto_47c

    :goto_5e1
    move/from16 v18, v2

    goto :goto_5a9

    :catchall_5e4
    move-exception v0

    :goto_5e5
    move-object/from16 v38, v4

    goto :goto_5d8

    :catch_5e8
    move-exception v0

    :goto_5e9
    move-object/from16 v38, v4

    goto :goto_5dd

    :catchall_5ec
    move-exception v0

    move/from16 v34, v3

    goto :goto_5e5

    :catch_5f0
    move-exception v0

    move/from16 v34, v3

    goto :goto_5e9

    :cond_5f4
    move-object/from16 v16, v2

    move/from16 v34, v3

    goto/16 :goto_3bc

    :goto_5fa
    move/from16 v18, v2

    move-object/from16 v2, v16

    move/from16 v10, v21

    move-object/from16 v6, v37

    move-object/from16 v4, v38

    goto/16 :goto_2c0

    :cond_606
    move/from16 v34, v3

    move-object/from16 v38, v4

    move/from16 v2, v18

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_64f

    const/4 v11, 0x0

    invoke-virtual {v5, v14, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v12, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v3, :cond_638

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_628
    if-ge v5, v0, :cond_638

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    move-object/from16 v7, v38

    invoke-static {v7, v6, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_628

    :cond_638
    if-eqz v4, :cond_654

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_63f
    if-ge v3, v0, :cond_654

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Ljava/lang/String;

    move-object/from16 v6, v33

    invoke-static {v6, v5, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63f

    :cond_64f
    move-object/from16 v3, v32

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_654
    sput-object v26, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    move-object/from16 v4, v26

    const/4 v11, 0x0

    invoke-virtual {v4, v14, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    sget-object v4, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v4, v15}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v12, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v3, :cond_683

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_673
    if-ge v5, v0, :cond_683

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    move-object/from16 v10, v25

    invoke-static {v10, v6, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_673

    :cond_683
    if-eqz v4, :cond_69a

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_68a
    if-ge v3, v0, :cond_69a

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Ljava/lang/String;

    move-object/from16 v6, v24

    invoke-static {v6, v5, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68a

    :cond_69a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object/from16 v3, v23

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v3, v22

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v8, v0}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    :try_start_6ac
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object/from16 v3, v31

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v3, v30

    move/from16 v4, v34

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v3, v28

    move-object/from16 v5, v29

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v27

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v8, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_6df
    .catch Ljava/lang/Exception; {:try_start_6ac .. :try_end_6df} :catch_6e0

    goto :goto_6e4

    :catch_6e0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6e4
    iget-object v0, v8, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    if-nez v2, :cond_90c

    invoke-virtual {v8}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationCreation()V

    goto/16 :goto_90c

    :catchall_6f0
    move-exception v0

    move/from16 v34, v3

    move-object v7, v4

    move/from16 v16, v9

    move-object/from16 v2, v22

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move-object/from16 v10, v25

    move-object/from16 v4, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v24, v29

    move-object/from16 v25, v30

    move-object/from16 v26, v31

    move-object/from16 v3, v32

    move-object/from16 v6, v33

    move/from16 v40, v16

    move-object/from16 v16, v0

    move/from16 v0, v40

    move-object/from16 v40, v22

    move-object/from16 v41, v23

    move-object/from16 v42, v24

    move-object/from16 v43, v25

    move-object/from16 v44, v26

    goto/16 :goto_318

    :catch_720
    move-exception v0

    move/from16 v34, v3

    move-object v7, v4

    move/from16 v16, v9

    move-object/from16 v2, v22

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move-object/from16 v10, v25

    move-object/from16 v4, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v24, v29

    move-object/from16 v25, v30

    move-object/from16 v26, v31

    move-object/from16 v3, v32

    move-object/from16 v6, v33

    move/from16 v36, v16

    move/from16 v39, v34

    move-object/from16 v16, v2

    goto/16 :goto_819

    :catchall_746
    move-exception v0

    move-object v7, v4

    move-object/from16 v2, v22

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move-object/from16 v10, v25

    move-object/from16 v4, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v24, v29

    move-object/from16 v25, v30

    move-object/from16 v26, v31

    move-object/from16 v3, v32

    move-object/from16 v6, v33

    :goto_760
    move-object/from16 v16, v0

    move-object/from16 v40, v22

    move-object/from16 v41, v23

    move-object/from16 v42, v24

    move-object/from16 v43, v25

    move-object/from16 v44, v26

    const/4 v0, 0x1

    const/16 v45, 0x0

    goto/16 :goto_929

    :catch_771
    move-exception v0

    move-object v7, v4

    move-object/from16 v2, v22

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move-object/from16 v10, v25

    move-object/from16 v4, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v24, v29

    move-object/from16 v25, v30

    move-object/from16 v26, v31

    move-object/from16 v3, v32

    move-object/from16 v6, v33

    :goto_78b
    move-object/from16 v16, v2

    const/16 v36, 0x1

    const/16 v39, 0x0

    goto/16 :goto_819

    :catchall_793
    move-exception v0

    move-object v6, v3

    move-object v7, v4

    move-object/from16 v2, v22

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move-object/from16 v10, v25

    move-object/from16 v4, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v24, v29

    move-object/from16 v25, v30

    move-object/from16 v26, v31

    move-object/from16 v3, v32

    goto :goto_760

    :catch_7ad
    move-exception v0

    move-object v6, v3

    move-object v7, v4

    move-object/from16 v2, v22

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move-object/from16 v10, v25

    move-object/from16 v4, v26

    move-object/from16 v22, v27

    move-object/from16 v23, v28

    move-object/from16 v24, v29

    move-object/from16 v25, v30

    move-object/from16 v26, v31

    move-object/from16 v3, v32

    goto :goto_78b

    :catchall_7c7
    move-exception v0

    move-object v7, v4

    move-object v4, v6

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move-object/from16 v10, v25

    move-object/from16 v23, v28

    move-object/from16 v24, v29

    move-object/from16 v25, v30

    move-object/from16 v26, v31

    :goto_7d8
    move-object v6, v3

    move-object v3, v2

    move-object/from16 v2, v22

    move-object/from16 v22, v27

    goto :goto_760

    :catch_7df
    move-exception v0

    move-object v7, v4

    move-object v4, v6

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move-object/from16 v10, v25

    move-object/from16 v23, v28

    move-object/from16 v24, v29

    move-object/from16 v25, v30

    move-object/from16 v26, v31

    :goto_7f0
    move-object v6, v3

    move-object v3, v2

    move-object/from16 v2, v22

    move-object/from16 v22, v27

    goto :goto_78b

    :catchall_7f7
    move-exception v0

    move-object v10, v7

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move-object/from16 v23, v28

    move-object/from16 v24, v29

    move-object/from16 v25, v30

    move-object/from16 v26, v31

    move-object v7, v4

    move-object v4, v6

    goto :goto_7d8

    :catch_808
    move-exception v0

    move-object v10, v7

    move-object/from16 v9, v23

    move-object/from16 v8, v24

    move-object/from16 v23, v28

    move-object/from16 v24, v29

    move-object/from16 v25, v30

    move-object/from16 v26, v31

    move-object v7, v4

    move-object v4, v6

    goto :goto_7f0

    :goto_819
    :try_start_819
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_81e
    .catchall {:try_start_819 .. :try_end_81e} :catchall_925

    move-object/from16 v17, v9

    :try_start_820
    const-string v9, "Exception in enforceAppSeparationCoexistenceAllowListUpdateInternal "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_832
    .catchall {:try_start_820 .. :try_end_832} :catchall_90d

    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_871

    const/4 v11, 0x0

    invoke-virtual {v5, v14, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v12, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v2, :cond_85c

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_84e
    if-ge v5, v0, :cond_85c

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    check-cast v9, Ljava/lang/String;

    invoke-static {v7, v9, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84e

    :cond_85c
    if-eqz v3, :cond_874

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_863
    if-ge v2, v0, :cond_874

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_863

    :cond_871
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_874
    sput-object v4, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    if-eqz v4, :cond_8b6

    const/4 v11, 0x0

    invoke-virtual {v4, v14, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v2, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v3, v15}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v12, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v2, :cond_8a1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_893
    if-ge v4, v0, :cond_8a1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    invoke-static {v10, v5, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_893

    :cond_8a1
    if-eqz v3, :cond_8b6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_8a8
    if-ge v2, v0, :cond_8b6

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Ljava/lang/String;

    invoke-static {v8, v4, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8a8

    :cond_8b6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object/from16 v9, v17

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v2, v16

    const/4 v11, 0x0

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v2, p0

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    :try_start_8cb
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object/from16 v3, v26

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v3, v25

    move/from16 v4, v39

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v3, v23

    move-object/from16 v5, v24

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v22

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v2, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_8fe
    .catch Ljava/lang/Exception; {:try_start_8cb .. :try_end_8fe} :catch_8ff

    goto :goto_903

    :catch_8ff
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_903
    iget-object v0, v2, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    if-nez v18, :cond_90c

    goto/16 :goto_145

    :cond_90c
    :goto_90c
    return-void

    :catchall_90d
    move-exception v0

    move-object/from16 v2, v16

    move-object/from16 v9, v17

    :goto_912
    move-object/from16 v40, v22

    move-object/from16 v41, v23

    move-object/from16 v42, v24

    move-object/from16 v43, v25

    move-object/from16 v44, v26

    move/from16 v34, v39

    move-object/from16 v16, v0

    move/from16 v45, v34

    move/from16 v0, v36

    goto :goto_929

    :catchall_925
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_912

    :goto_929
    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_972

    const/4 v11, 0x0

    invoke-virtual {v5, v14, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v5, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v12, v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v11, :cond_95b

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v17, v0

    const/4 v0, 0x0

    :goto_947
    if-ge v0, v3, :cond_95d

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    add-int/lit8 v0, v0, 0x1

    move/from16 v20, v0

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, v20

    goto :goto_947

    :cond_95b
    move/from16 v17, v0

    :cond_95d
    if-eqz v5, :cond_977

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v11, 0x0

    :goto_964
    if-ge v11, v0, :cond_977

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v11, v11, 0x1

    check-cast v3, Ljava/lang/String;

    invoke-static {v6, v3, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_964

    :cond_972
    move/from16 v17, v0

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_977
    sput-object v4, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    if-eqz v4, :cond_9b8

    const/4 v11, 0x0

    invoke-virtual {v4, v14, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v3, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    sget-object v4, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    invoke-virtual {v4, v15}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v12, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v3, :cond_9a4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v5, v11

    :goto_996
    if-ge v5, v0, :cond_9a4

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    invoke-static {v10, v6, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_996

    :cond_9a4
    if-eqz v4, :cond_9b8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_9aa
    if-ge v11, v0, :cond_9b8

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v11, v11, 0x1

    check-cast v3, Ljava/lang/String;

    invoke-static {v8, v3, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9aa

    :cond_9b8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move/from16 v9, v17

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v2, p0

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PersonaManagerService;->notifyStatusToKspAgent(Landroid/content/Intent;)V

    :try_start_9ca
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object/from16 v3, v44

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v3, v43

    move/from16 v4, v45

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v3, v41

    move-object/from16 v5, v42

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v40

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v2, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_9fd
    .catch Ljava/lang/Exception; {:try_start_9ca .. :try_end_9fd} :catch_9fe

    goto :goto_a02

    :catch_9fe
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a02
    iget-object v0, v2, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-virtual {v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->onSeparatedAppsPolicyUpdated()V

    if-nez v18, :cond_a0c

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationCreation()V

    :cond_a0c
    throw v16
.end method

.method public final enforceSeparatedAppsRemoveInternal()Z
    .registers 12

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "PersonaManagerService"

    const/4 v2, 0x0

    if-nez v0, :cond_11

    const-string/jumbo p0, "enforceSeparatedAppsRemoveInternal return immediately if App Separation has not been set"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_11
    const-string v3, "APP_SEPARATION_OUTSIDE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "APP_SEPARATION_APP_LIST"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_2e

    new-instance v6, Ljava/util/HashSet;

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_33

    :cond_2e
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    :goto_33
    const-string v5, "APP_SEPARATION_COEXISTANCE_LIST"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_45

    new-instance v7, Ljava/util/HashSet;

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_4a

    :cond_45
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    :goto_4a
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    invoke-virtual {p0, v2, v0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackagesAsUser(ILjava/util/Set;)V

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v5, 0x40

    invoke-virtual {v0, v5, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_64
    :goto_64
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    move-result v8

    if-nez v8, :cond_64

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "enforceSeparatedAppsRemoveInternal remove packageName "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v9, v1}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8d

    if-nez v3, :cond_97

    :cond_8d
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_64

    if-nez v3, :cond_64

    :cond_97
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_64

    :cond_9d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    move v6, v2

    move v5, v3

    :cond_a4
    :goto_a4
    if-ge v6, v0, :cond_de

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/server/pm/PersonaManagerService;->isKeyboardApp(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a4

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bb

    goto :goto_a4

    :cond_bb
    invoke-virtual {p0, v2, v8}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a4

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "enforceSeparatedAppsRemoveInternal remove use 0 packageName ? - "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v8}, Lcom/android/server/pm/PersonaManagerService;->deletePackageAsUser(ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a4

    invoke-virtual {p0, v8, v3}, Lcom/android/server/pm/PersonaManagerService;->suspendAppsInOwner(Ljava/lang/String;Z)V

    move v5, v2

    goto :goto_a4

    :cond_de
    :try_start_de
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.knox.action.APP_SEPARATION_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "removed"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.appseparation"

    const-string/jumbo v2, "com.samsung.android.appseparation.receiver.ProfileStateChangedReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_ff} :catch_100

    return v5

    :catch_100
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v5
.end method

.method public final getAdminComponentName(I)Landroid/content/ComponentName;
    .registers 7

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result v3

    if-nez v2, :cond_26

    :try_start_13
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1f} :catch_22
    .catchall {:try_start_13 .. :try_end_1f} :catchall_20

    goto :goto_27

    :catchall_20
    move-exception p1

    goto :goto_4c

    :catch_22
    move-exception v4

    :try_start_23
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_20

    :cond_26
    move v4, v2

    :goto_27
    if-nez v2, :cond_38

    if-nez v4, :cond_38

    if-eqz v3, :cond_2e

    goto :goto_38

    :cond_2e
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0

    :cond_38
    :goto_38
    :try_start_38
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PersonaManagerService$LocalService;->getAdminComponentNameFromEdm(I)Landroid/content/ComponentName;

    move-result-object p1
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_20

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :goto_4c
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public final getAppSeparationId()I
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    iget-object v2, v2, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v4

    if-eqz v4, :cond_1f

    iget v2, v3, Landroid/content/pm/UserInfo;->id:I
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_34

    goto :goto_37

    :catchall_34
    move-exception v2

    goto :goto_40

    :cond_36
    const/4 v2, 0x0

    :goto_37
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_40
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public final getAttributes(I)I
    .registers 3

    const-string/jumbo v0, "getAttributes"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getAttributes(I)I

    move-result p0

    return p0
.end method

.method public final getContainerName(I)Ljava/lang/String;
    .registers 8

    const/4 v0, -0x1

    if-ne p1, v0, :cond_7

    const-string/jumbo p0, "Work profile"

    return-object p0

    :cond_7
    const/4 v0, 0x0

    if-nez p1, :cond_b

    return-object v0

    :cond_b
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/16 v3, -0x3e8

    if-eq p1, v3, :cond_a4

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-eqz v3, :cond_20

    goto/16 :goto_a4

    :cond_20
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    iget-object v3, v3, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-nez v3, :cond_35

    goto/16 :goto_a8

    :cond_35
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v4

    const-string/jumbo v5, "Separated Apps"

    if-eqz v4, :cond_4b

    iget-object v4, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_48

    move-object v4, v5

    goto :goto_4c

    :cond_48
    iget-object v4, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    goto :goto_4c

    :cond_4b
    move-object v4, v0

    :goto_4c
    if-eqz v4, :cond_61

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v4

    if-eqz v4, :cond_82

    iget-object v0, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5e

    move-object v0, v5

    goto :goto_82

    :cond_5e
    iget-object v0, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    goto :goto_82

    :cond_61
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getECName(I)Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getProfileName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6f

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getProfileName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_82

    :cond_6f
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/pm/PersonaManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/android/server/pm/PersonaManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const-string v0, "Core.RESOLVER_WORK_TAB"

    invoke-virtual {v4, v0, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    :cond_82
    :goto_82
    if-nez v0, :cond_86

    iget-object v0, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    :cond_86
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getContainerName return value for container id:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "PersonaManagerService"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    :cond_a4
    :goto_a4
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderName()Ljava/lang/String;

    move-result-object v0

    :goto_a8
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0
.end method

.method public final getContainerOrder(I)I
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    iget-object v2, v2, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_2a

    const-string v2, "KNOX"

    iget-object p1, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_28

    const/4 p1, 0x1

    goto :goto_2b

    :cond_28
    const/4 p1, 0x2

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1
.end method

.method public final getCustomResource(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1, p2}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getCustomResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDualDARProfile()Landroid/os/Bundle;
    .registers 9

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "getDualDARProfile()"

    const-string v1, "DualDARStorageHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1a

    const-string/jumbo v0, "called by system : return true"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    :cond_1a
    const/16 v2, 0x1482

    if-ne v0, v2, :cond_25

    const-string/jumbo v0, "called by KnoxCore : return true"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    :cond_25
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_31

    goto/16 :goto_de

    :cond_31
    const-string/jumbo v4, "isCallerValidPlatformApp "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    :try_start_43
    const-string/jumbo v5, "android"

    invoke-interface {v4, v5, v2, v0}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4a} :catch_da

    if-nez v0, :cond_de

    :goto_4c
    const-string/jumbo v0, "configValue"

    const-string/jumbo v2, "clientAppPackageName"

    const-string/jumbo v4, "clientAppSignature"

    const-string/jumbo v5, "clientAppLocation"

    filled-new-array {v0, v2, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v7, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    const-string p0, "DUAL_DAR_CONFIG"

    invoke-virtual {v7, p0, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_70

    goto :goto_e3

    :cond_70
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_85

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_85

    move v3, v6

    :cond_85
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getDualDARProfile() - isEnableDualDAR "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "package Name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " signature "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " packageLocation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "dualdar-config"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "dualdar-config-client-package"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "dualdar-config-client-signature"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "dualdar-config-client-location"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_da
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_de
    :goto_de
    const-string p0, "Error ! caller not a valid platform app"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e3
    return-object v3
.end method

.method public final getECName(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService$LocalService;->getECName(I)Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFocusedLauncherId()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLauncherLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget p0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedLauncherId:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getFocusedUser()I
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    :try_start_15
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_19} :catch_24
    .catchall {:try_start_15 .. :try_end_19} :catchall_22

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_22
    move-exception v2

    goto :goto_31

    :catch_24
    move-exception v3

    :try_start_25
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_31
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_3a
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3d
    iget p0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedUserId:I

    monitor-exit v0

    return p0

    :catchall_41
    move-exception p0

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_41

    throw p0
.end method

.method public final getFotaVersion()I
    .registers 3

    const-string/jumbo v0, "PersonaManagerService"

    const-string/jumbo v1, "getFotaVersion is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    const-string/jumbo v1, "fotaversion"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_26

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_26

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_27

    :catchall_24
    move-exception p0

    goto :goto_32

    :cond_26
    const/4 p0, -0x1

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_24

    const-string/jumbo v0, "PersonaManagerService"

    const-string/jumbo v1, "version - "

    invoke-static {p0, v1, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return p0

    :goto_32
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_24

    throw p0
.end method

.method public final getIMEPackages()Ljava/util/Set;
    .registers 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackagesAsUser(ILjava/util/Set;)V

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackagesAsUser(ILjava/util/Set;)V

    :cond_12
    return-object v0
.end method

.method public final getIMEPackagesAsUser(ILjava/util/Set;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.view.InputMethod"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x808280

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_79

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string/jumbo v4, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    sget-boolean v3, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    const-string/jumbo v4, "PersonaManagerService"

    if-eqz v3, :cond_43

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getIMEPackages IME PackageName = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v5, v4}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    :try_start_43
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-wide/16 v6, 0x40

    invoke-interface {v3, v5, v6, v7, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4f} :catch_50

    goto :goto_55

    :catch_50
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v3, 0x0

    :goto_55
    if-eqz v3, :cond_76

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-nez v3, :cond_76

    sget-boolean v3, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz v3, :cond_6e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getIMEPackages third party IME PackageName = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v5, v4}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object v3, p2

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_79
    return-void
.end method

.method public final getIPackageManager()Landroid/content/pm/IPackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public final getKnoxForesightService()Lcom/samsung/android/knox/IBasicCommand;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/knox/KnoxForesightService;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/KnoxForesightService;

    move-result-object p0

    return-object p0
.end method

.method public final getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B
    .registers 9

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz p2, :cond_25

    :try_start_d
    const-string/jumbo v4, "com.android.internal.app.ForwardIntentToManagedProfile"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_25

    const-string/jumbo v4, "com.android.internal.app.ForwardIntentToManagedProfile4"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    move p2, v3

    goto :goto_26

    :cond_21
    move p2, v2

    goto :goto_26

    :catchall_23
    move-exception p1

    goto :goto_58

    :cond_25
    const/4 p2, -0x1

    :goto_26
    if-ne p2, v2, :cond_35

    invoke-virtual {p0, p3}, Lcom/android/server/pm/PersonaManagerService;->getKnoxSwitcherIcon(I)[B

    move-result-object p1
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_23

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :cond_35
    :try_start_35
    const-string/jumbo p3, "com.samsung.knox.securefolder"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_23

    if-nez p1, :cond_4b

    if-ne p2, v3, :cond_41

    goto :goto_4b

    :cond_41
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0

    :cond_4b
    :goto_4b
    :try_start_4b
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderIcon()[B

    move-result-object p1
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_23

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :goto_58
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public final getKnoxSwitcherIcon(I)[B
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string/jumbo v1, "custom-container-icon"

    if-eqz p1, :cond_2b

    const/16 v2, -0x2710

    if-eq p1, v2, :cond_2b

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-static {p1, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_4b

    if-eqz v0, :cond_4b

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v2, "knox_icon_upgraded"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    goto :goto_4b

    :cond_2b
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_49

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget p0, v0, Landroid/content/pm/UserInfo;->flags:I

    iget p0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object p1

    goto :goto_4b

    :cond_49
    const/4 v0, 0x0

    move-object p1, v0

    :cond_4b
    :goto_4b
    if-eqz v0, :cond_52

    if-eqz p1, :cond_52

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    :cond_52
    return-object p1
.end method

.method public final getMoveToKnoxMenuList(I)Ljava/util/List;
    .registers 25

    move-object/from16 v1, p0

    move/from16 v2, p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getMoveToKnoxMenuList:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "PersonaManagerService"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xe6

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string/jumbo v0, "not suppored knox version"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2d
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string/jumbo v0, "getMoveToKnoxMenuList() return empty for DO enabled"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_3b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object v6, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    invoke-virtual {v6}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    const-string v7, ""

    if-eqz v6, :cond_6f

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6f

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v9, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v9, v0, :cond_5c

    iget-object v0, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_70

    :cond_6f
    move-object v0, v7

    :goto_70
    if-eqz v0, :cond_7c

    const-string/jumbo v6, "getMoveToKnoxMenuList : calling pkg name : "

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7c
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v8, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    invoke-virtual {v6, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_93

    const-string/jumbo v8, "getMoveToKnoxMenuList : contact pkg name : "

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    if-eqz v6, :cond_9b

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a4

    :cond_9b
    const-string/jumbo v6, "com.samsung.android.dialer"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    :cond_a4
    const-string/jumbo v0, "deprecated feature :: move to contact"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_ab
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getMoveToKnoxMenuList : is WP-C : "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    const/16 v8, 0x3ea

    const-string/jumbo v9, "com.sec.knox.moveto.containerId"

    const-string/jumbo v10, "true"

    const-string/jumbo v11, "com.sec.knox.moveto.containerType"

    const-string/jumbo v12, "com.sec.knox.moveto.name"

    if-nez v0, :cond_157

    if-nez v2, :cond_157

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_157

    const-string/jumbo v0, "isSecureFolderSupported | secure folder is disabled or disabled_user : "

    iget-object v14, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    if-nez v14, :cond_f4

    const-string/jumbo v0, "isSecureFolderSupported | package manager is null"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f2
    move v15, v5

    goto :goto_12f

    :cond_f4
    const-string v15, "2"

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/4 v6, 0x2

    if-ne v15, v6, :cond_ff

    const/4 v15, 0x1

    goto :goto_100

    :cond_ff
    move v15, v5

    :goto_100
    const-string/jumbo v13, "isSecureFolderSupported | secure folder config supported  : "

    invoke-static {v13, v4, v15}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v15, :cond_12f

    :try_start_108
    const-string/jumbo v13, "com.samsung.knox.securefolder"

    invoke-virtual {v14, v13}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v13

    if-eq v13, v6, :cond_114

    const/4 v6, 0x3

    if-ne v13, v6, :cond_12f

    :cond_114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_123} :catch_124

    goto :goto_f2

    :catch_124
    move-exception v0

    const-string/jumbo v6, "isSecureFolderSupported | not found package"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f2

    :cond_12f
    :goto_12f
    if-eqz v15, :cond_157

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v0

    if-nez v0, :cond_157

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v12, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v6, -0x3e8

    invoke-virtual {v0, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "Added permanent item :: Move to Secure Folder"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    goto :goto_158

    :cond_157
    const/4 v0, 0x0

    :goto_158
    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_35d

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_16a

    goto/16 :goto_35d

    :cond_16a
    const-string/jumbo v13, "com.sec.knox.moveto.isSupportMoveTo"

    const-string/jumbo v14, "false"

    if-nez v2, :cond_2e6

    move v7, v5

    move/from16 v16, v7

    move/from16 v17, v16

    const/4 v15, -0x1

    :goto_178
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_363

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v19

    if-eqz v19, :cond_246

    iget-object v2, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v19, v0

    const-string/jumbo v0, "hide_secure_folder_flag"

    invoke-static {v2, v0, v5, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1a6

    const/4 v0, 0x1

    goto :goto_1a7

    :cond_1a6
    move v0, v5

    :goto_1a7
    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v2

    if-eqz v0, :cond_217

    if-eqz v2, :cond_217

    const/4 v5, -0x1

    if-eq v15, v5, :cond_1ea

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v15, v0, :cond_1ea

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Second secure folder detected with id : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v20, v10

    move-object/from16 v0, v19

    const/16 v18, 0x3ea

    goto/16 :goto_2df

    :cond_1ea
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const-string/jumbo v0, "is secure folder"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3ea

    invoke-virtual {v8, v11, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move/from16 v18, v2

    move-object v0, v10

    goto :goto_242

    :cond_217
    const/4 v5, -0x1

    const/16 v18, 0x3ea

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v5, "Id : "

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", Enabled Secure Folder : "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", User Running : "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v19

    const/4 v8, 0x0

    :goto_242
    move-object/from16 v20, v10

    goto/16 :goto_2d7

    :cond_246
    move-object/from16 v19, v0

    const/16 v18, 0x3ea

    const-string/jumbo v0, "is knox"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    :try_start_259
    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_26b
    .catch Ljava/lang/Exception; {:try_start_259 .. :try_end_26b} :catch_26c

    goto :goto_26d

    :catch_26c
    const/4 v0, 0x0

    :goto_26d
    iget-object v2, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v16, :cond_2d2

    if-eqz v0, :cond_2d2

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v2

    if-nez v2, :cond_2d2

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v0

    if-nez v0, :cond_2d2

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v5, "move-file-to-container"

    move-object/from16 v20, v10

    const/4 v10, 0x0

    invoke-static {v0, v5, v10, v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2a0

    move-object/from16 v0, v20

    goto :goto_2a1

    :cond_2a0
    move-object v0, v14

    :goto_2a1
    if-nez v17, :cond_2b5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService;->getContainerName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v12, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2bb

    :cond_2b5
    const-string/jumbo v2, "Workspace"

    invoke-virtual {v8, v12, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2bb
    const/16 v2, 0x3e9

    invoke-virtual {v8, v11, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v8, v9, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v17, v17, 0x1

    const/16 v16, 0x1

    goto :goto_2d7

    :cond_2d2
    move-object/from16 v20, v10

    move-object/from16 v0, v19

    const/4 v8, 0x0

    :goto_2d7
    if-eqz v8, :cond_2df

    invoke-virtual {v8, v13, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2df
    :goto_2df
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v10, v20

    const/4 v5, 0x0

    goto/16 :goto_178

    :cond_2e6
    move-object/from16 v20, v10

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_363

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-eqz v5, :cond_30f

    const-string/jumbo v2, "is secure folder (inside secure folder)"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->getSecureFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3eb

    invoke-virtual {v0, v11, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_30b
    move-object/from16 v10, v20

    :goto_30d
    const/4 v1, 0x0

    goto :goto_353

    :cond_30f
    const-string/jumbo v5, "is knox(inside container)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_31e
    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_325
    .catch Ljava/lang/Exception; {:try_start_31e .. :try_end_325} :catch_325

    :catch_325
    iget-object v6, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonalModeName(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_339

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33c

    :cond_339
    const-string/jumbo v4, "Personal"

    :cond_33c
    invoke-virtual {v0, v12, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x3ec

    invoke-virtual {v0, v11, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "move-file-to-owner"

    const/4 v10, 0x0

    invoke-static {v1, v4, v10, v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_351

    goto :goto_30b

    :cond_351
    move-object v10, v14

    goto :goto_30d

    :goto_353
    invoke-virtual {v0, v9, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v13, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_363

    :cond_35d
    :goto_35d
    const-string/jumbo v0, "PersonaIds list null or empty"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_363
    :goto_363
    return-object v3
.end method

.method public final getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "getPersonaCacheValue"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    const-string/jumbo v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getPersonaCacheValue is called for key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2e
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_38

    throw p0

    :cond_3b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_11
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->personaManager:Lcom/samsung/android/knox/SemPersonaManager;

    return-object p0
.end method

.method public final getPersonaUserHasBeenShutdownBefore(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserHasBeenShutdownBefore:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final getPersonalModeName(I)Ljava/lang/String;
    .registers 6

    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    monitor-enter p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_18

    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {p1, v2}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mPersonalModeLabel:Ljava/lang/String;

    monitor-exit p1

    goto :goto_22

    :catchall_15
    move-exception v2

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    :try_start_17
    throw v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_18} :catch_18

    :catch_18
    const-string/jumbo p1, "PersonaManagerService:FOTA"

    const-string/jumbo v2, "getPersonalModeName unable to getCustomName"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_22
    sget-boolean p1, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz p1, :cond_2f

    const-string/jumbo p1, "PersonaManagerService:FOTA"

    const-string/jumbo v3, "getPersonalModeName name - "

    invoke-static {v3, v2, p1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2
.end method

.method public final getProfileName(I)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService$Injector;->getPersonaPolicyManagerService()Lcom/android/server/knox/PersonaPolicyManagerService;

    move-result-object v2

    monitor-enter v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_1b

    :try_start_10
    invoke-virtual {v2, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mCustomPersonaName:Ljava/lang/String;

    monitor-exit v2

    goto :goto_25

    :catchall_18
    move-exception v3

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_18

    :try_start_1a
    throw v3
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1b} :catch_1b

    :catch_1b
    const-string/jumbo v2, "PersonaManagerService:FOTA"

    const-string/jumbo v3, "getProfileName unable to getCustomName"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_25
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo p0, "PersonaManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getProfileName return value for container id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-static {v0, p1, v3, p0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public final getProfiles(IZ)Ljava/util/List;
    .registers 11

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    invoke-interface {v1, v3, v2}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_13

    if-nez v1, :cond_17

    const/4 v0, 0x1

    goto :goto_17

    :catch_13
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_17
    :goto_17
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_38
    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    new-instance v6, Landroid/content/pm/UserInfo;

    invoke-direct {v6, v5}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v7

    if-eqz v7, :cond_50

    goto :goto_38

    :cond_50
    if-nez p2, :cond_59

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    if-eq v5, p1, :cond_38

    goto :goto_59

    :catchall_57
    move-exception p1

    goto :goto_6d

    :cond_59
    :goto_59
    if-nez v0, :cond_60

    const/4 v5, 0x0

    iput-object v5, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object v5, v6, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    :cond_60
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catchall {:try_start_20 .. :try_end_63} :catchall_57

    goto :goto_38

    :cond_64
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :goto_6d
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public final getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "PersonaPolicyManagerService"

    sget-object v0, Lcom/android/server/knox/PersonaPolicyManagerService;->sContext:Landroid/content/Context;

    const-string/jumbo v1, "getRCPDataPolicy"

    invoke-static {v0, p0, v1}, Lcom/android/server/knox/ContainerDependencyWrapper;->checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1c
    invoke-static {p0, p1, p2}, Lcom/android/server/knox/PersonaPolicyManagerService;->getDataSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_24

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_24
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/knox/PersonaPolicyManagerService;->sContext:Landroid/content/Context;

    const-string/jumbo v1, "PersonaPolicyManagerService"

    const-string/jumbo v2, "getRCPDataPolicyForUser"

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ContainerDependencyWrapper;->checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_43

    :try_start_1c
    iget-object p0, p0, Lcom/android/server/knox/PersonaPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string/jumbo v2, "com.android.systemui"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_2a} :catch_2b

    goto :goto_33

    :catch_2b
    move-exception p0

    const-string/jumbo v2, "Unable to resolve SystemUI\'s UID."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x1

    :goto_33
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne v0, p0, :cond_3a

    goto :goto_43

    :cond_3a
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Only system can call this API. Are you Process.SYSTEM_UID!!"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_43
    :goto_43
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_47
    invoke-static {p1, p2, p3}, Lcom/android/server/knox/PersonaPolicyManagerService;->getDataSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_4f

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_4f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getScreenOffTimeoutLocked(I)I
    .registers 5

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    const/4 v1, -0x1

    const-string/jumbo v2, "knox_screen_off_timeout"

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    goto :goto_1f

    :cond_15
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    :goto_1f
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2c

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide p0

    goto :goto_2e

    :cond_2c
    const-wide/16 p0, 0x0

    :goto_2e
    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p0, v1

    const v2, 0x7fffffff

    if-lez v1, :cond_3a

    move p0, v2

    goto :goto_3b

    :cond_3a
    long-to-int p0, p0

    :goto_3b
    if-lez p0, :cond_48

    if-ge p0, v2, :cond_48

    if-lez v0, :cond_46

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_4a

    :cond_46
    move v0, p0

    goto :goto_4a

    :cond_48
    if-lez v0, :cond_5b

    :goto_4a
    if-lez v0, :cond_52

    const/16 p0, 0x1388

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_52
    const-string/jumbo p0, "getScreenOffTimeoutLocked final: "

    const-string/jumbo p1, "PersonaManagerService"

    invoke-static {v0, p0, p1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5b
    return v0
.end method

.method public final getSecureFolderIcon()[B
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "secure_folder_image_name"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_51

    const-string/jumbo v1, "com.samsung.knox.securefolder"

    if-eqz v0, :cond_25

    :try_start_13
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_25

    :cond_1a
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_3a

    :cond_25
    :goto_25
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x20

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_3a
    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_5f

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_50} :catch_51

    return-object p0

    :catch_51
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in getSecureFolderIcon : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "PersonaManagerService"

    invoke-static {p0, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_5f
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSecureFolderId()I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/PersonaManagerService;->mSecureFolderId:I

    return p0
.end method

.method public final getSecureFolderName()Ljava/lang/String;
    .registers 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string/jumbo v2, "com.samsung.knox.securefolder"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, p0}, Landroid/content/pm/ApplicationInfo;->loadUnsafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_22
    .catchall {:try_start_4 .. :try_end_1c} :catchall_20

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_20
    move-exception p0

    goto :goto_2d

    :catch_22
    move-exception p0

    :try_start_23
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_20

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo p0, "Secure Folder"

    return-object p0

    :goto_2d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getSecureFolderPolicy(Ljava/lang/String;I)Ljava/util/List;
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mSecureFolderPolicies:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    monitor-exit p0

    return-object p1

    :catchall_11
    move-exception p1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public final getSeparatedAppsList()Ljava/util/List;
    .registers 5

    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->cachedTime:Ljava/util/HashMap;

    const-string/jumbo v1, "separatedapps"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x2710

    cmp-long v0, v2, v0

    if-lez v0, :cond_2a

    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

    if-nez v0, :cond_27

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->updateAppsListOnlyPresentInSeparatedApps()V

    :cond_27
    sget-object p0, Lcom/android/server/pm/PersonaManagerService;->mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

    return-object p0

    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->updateAppsListOnlyPresentInSeparatedApps()V

    sget-object p0, Lcom/android/server/pm/PersonaManagerService;->mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

    return-object p0

    :cond_30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->updateAppsListOnlyPresentInSeparatedApps()V

    sget-object p0, Lcom/android/server/pm/PersonaManagerService;->mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

    return-object p0
.end method

.method public final getSeparationConfigfromCache()Landroid/os/Bundle;
    .registers 2

    const-string/jumbo p0, "PersonaManagerService"

    const-string/jumbo v0, "getSeparationConfigfromCache is called"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getSeparationPackageInfo(ILjava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 8

    const-wide/16 v0, 0x40

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p2, v0, v1, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    goto :goto_12

    :catch_d
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v3, v2

    :goto_12
    if-eqz v3, :cond_15

    return-object v3

    :cond_15
    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_22
    if-nez v3, :cond_25

    return-object v2

    :cond_25
    return-object v3
.end method

.method public final getSystemApps()Ljava/util/List;
    .registers 3

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x100000

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_30

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_30
    return-object v0
.end method

.method public final getUCMProfile()Landroid/os/Bundle;
    .registers 9

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "getUCMProfile()"

    const-string/jumbo v1, "UCMStorageHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UCMStorageHelper;->isCallerValidPlatformApp(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_18

    const-string p0, "Error ! caller not a valid platform app"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_18
    const-string/jumbo v0, "configValue"

    const-string/jumbo v3, "clientAppPackageName"

    const-string/jumbo v4, "clientAppSignature"

    const-string/jumbo v5, "clientAppLocation"

    filled-new-array {v0, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v7, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    const-string/jumbo p0, "UCM_CONFIG"

    invoke-virtual {v7, p0, v6, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_3d

    return-object v2

    :cond_3d
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_52

    move v2, v6

    :cond_52
    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getUCMProfile() - isEnableUCM "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", package Name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", signature "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", packageLocation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "ucm-config"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "ucm-config-client-package"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ucm-config-client-signature"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ucm-config-client-location"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final getUpdatedListWithAppSeparation(Ljava/util/List;)Ljava/util/List;
    .registers 5

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSeparatedAppsList()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_12

    :cond_29
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_2d
    return-object p0
.end method

.method public final getUpdatedPackageInfo(Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/List;
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_10

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 p1, 0x40

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x40

    const/4 v5, 0x0

    const-string/jumbo v6, "PersonaManagerService"

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    goto :goto_19

    :cond_32
    const-string/jumbo v7, "getUpdatedPackageInfo Installing prev package1 - "

    invoke-static {v7, v2, v6}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_38
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-interface {v6, v2, v3, v4, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_45
    if-eqz v5, :cond_19

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_4b
    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4f
    :goto_4f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    goto :goto_4f

    :cond_62
    const-string/jumbo v2, "getUpdatedPackageInfo Installing prev package2 - "

    invoke-static {v2, v1, v6}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_68
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, v1, v3, v4, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_70} :catch_71

    goto :goto_76

    :catch_71
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v1, v5

    :goto_76
    if-eqz v1, :cond_4f

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    :cond_7c
    return-object p1
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    :cond_11
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public final getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_e

    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    :cond_e
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public final getWorkspaceName(Landroid/content/pm/UserInfo;Z)Ljava/lang/String;
    .registers 5

    const-string/jumbo p0, "Work Profile"

    if-eqz p1, :cond_17

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "getWorkspaceName return value for container id:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    const-string v0, " : Work Profile"

    const-string/jumbo v1, "PersonaManagerService"

    invoke-static {p1, v0, v1, p2}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_17
    return-object p0
.end method

.method public final hasDdmPermission()Z
    .registers 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_FORESIGHT"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PersonaManagerService;->hasLicensePermission(ILjava/lang/String;)Z

    move-result p0

    const/4 v1, 0x1

    const-string/jumbo v2, "PersonaManagerService"

    if-eqz p0, :cond_18

    const-string/jumbo p0, "hasDdmPermission returns true. the caller has com.samsung.android.knox.permission.KNOX_FORESIGHT"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_18
    const/16 p0, 0x1482

    if-eq p0, v0, :cond_29

    const/16 p0, 0x3e8

    if-ne p0, v0, :cond_21

    goto :goto_29

    :cond_21
    const-string/jumbo p0, "hasDdmPermission returns false. uid : "

    invoke-static {v0, p0, v2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_29
    :goto_29
    const-string/jumbo p0, "hasDdmPermission returns true. uid : "

    invoke-static {v0, p0, v2}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final hasLicensePermission(ILjava/lang/String;)Z
    .registers 11

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    const/4 v4, 0x1

    if-ge v3, v1, :cond_29

    aget-object v5, p1, v3

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    const-string/jumbo v7, "hasLicensePermission : packageName = "

    invoke-static {v7, v5, v6}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5, p2, v0}, Lcom/android/server/pm/PersonaManagerService;->hasPermission(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_26

    move p1, v4

    goto :goto_2a

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_29
    move p1, v2

    :goto_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_2e
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    const-string/jumbo v3, "hasLicensePermission : DO"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getDeviceOwnerPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/pm/PersonaManagerService;->hasPermission(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4c

    move p1, v4

    goto :goto_4c

    :catchall_48
    move-exception p0

    goto :goto_80

    :catch_4a
    move-exception p2

    goto :goto_70

    :cond_4c
    :goto_4c
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_6b

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    const-string/jumbo v2, "hasLicensePermission : PO"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->getProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/pm/PersonaManagerService;->hasPermission(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p2
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_68} :catch_4a
    .catchall {:try_start_2e .. :try_end_68} :catchall_48

    if-eqz p2, :cond_6b

    goto :goto_6c

    :cond_6b
    move v4, p1

    :goto_6c
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_77

    :goto_70
    :try_start_70
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_48

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, p1

    :goto_77
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    const-string/jumbo p1, "hasLicensePermission : "

    invoke-static {p1, p0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v4

    :goto_80
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final hasPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->LOG_FS_TAG:Ljava/lang/String;

    const-string/jumbo v1, "hasPermission packageName "

    const-string v2, " permission "

    const-string v3, " userId "

    invoke-static {v1, p1, v2, p2, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, p3, v0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    if-eqz p1, :cond_1e

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    if-eqz p0, :cond_1e

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public final hideMultiWindows(I)V
    .registers 2

    const-string/jumbo p0, "activity_task"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPersonaActivityHelper:Lcom/android/server/wm/PersonaActivityHelper;

    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    return-void
.end method

.method public final installPackageForAppSeparation(ILandroid/content/pm/PackageInfo;)I
    .registers 14

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v0

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "PersonaManagerService"

    const-string/jumbo v3, "processAppSeparationInstallationInternal Installing package "

    const/4 v4, 0x1

    if-eqz v0, :cond_2a

    if-eqz v1, :cond_2a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, " exist in both mode."

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/PersonaManagerService;->suspendAppsInOwner(Ljava/lang/String;Z)V

    return v4

    :cond_2a
    const-string v1, " in user 0 out return -"

    if-eqz v0, :cond_5d

    :try_start_2e
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lcom/android/server/pm/PersonaManagerService;->suspendAppsInOwner(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget-object v6, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    const/high16 v8, 0x400000

    const/4 v9, 0x0

    move v7, p1

    invoke-interface/range {v5 .. v10}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    move-result v4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catch_5a
    move-exception v0

    move-object p0, v0

    goto :goto_8c

    :cond_5d
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget-object v6, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    const/high16 v8, 0x400000

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    move-result p1
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_6c} :catch_5a

    :try_start_6c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2, v4}, Lcom/android/server/pm/PersonaManagerService;->suspendAppsInOwner(Ljava/lang/String;Z)V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_88} :catch_89

    return p1

    :catch_89
    move-exception v0

    move-object p0, v0

    move v4, p1

    :goto_8c
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v4
.end method

.method public final isAppSeparationApp(Ljava/lang/String;)Z
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkNullParameter([Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string/jumbo v3, "PersonaManagerService"

    if-eqz v1, :cond_19

    const-string/jumbo p0, "isAppSeparationApp null"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodApp(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_27

    const-string/jumbo p0, "isAppSeparationApp IME package name after isInputMethodApp = "

    invoke-static {p0, p1, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_27
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/PersonaManagerService;->getSeparationPackageInfo(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->checkNullParameter([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    if-eqz p0, :cond_40

    goto :goto_65

    :cond_40
    const-string p0, "APP_SEPARATION_OUTSIDE"

    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const-string v1, "APP_SEPARATION_APP_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "APP_SEPARATION_COEXISTANCE_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5b

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    return v4

    :cond_5b
    if-eqz v1, :cond_64

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_64

    xor-int/2addr p0, v4

    :cond_64
    return p0

    :cond_65
    :goto_65
    sget-boolean p0, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz p0, :cond_6f

    const-string/jumbo p0, "isAppSeparationApp Return false due to null or IndependentApp"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    return v2
.end method

.method public final isAppSeparationPresent()Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d} :catch_16
    .catchall {:try_start_9 .. :try_end_d} :catchall_2d

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    :catch_16
    :try_start_16
    const-string/jumbo v2, "PersonaManagerService"

    const-string v3, "Exception in isAppSeparationPresent()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_2d

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v2, 0x0

    :goto_27
    if-nez v2, :cond_2b

    const/4 p0, 0x0

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x1

    :goto_2c
    return p0

    :catchall_2d
    move-exception v2

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public final isContainerCorePackageUID(I)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mCorePackageUid:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isContainerService(I)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    iget-object v2, v2, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2, p1}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxAdminReceiver()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_26} :catch_4f
    .catchall {:try_start_9 .. :try_end_26} :catchall_4d

    const/4 v3, 0x1

    if-eqz v2, :cond_32

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_32
    :try_start_32
    const-string/jumbo v2, "com.samsung.knox.securefolder"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_39} :catch_4f
    .catchall {:try_start_32 .. :try_end_39} :catchall_4d

    if-eqz p1, :cond_44

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_44
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    :goto_46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_56

    :catchall_4d
    move-exception p1

    goto :goto_58

    :catch_4f
    move-exception p1

    :try_start_50
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_4d

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    goto :goto_46

    :goto_56
    const/4 p0, 0x0

    return p0

    :goto_58
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public final isExternalStorageEnabled(I)Z
    .registers 5

    const-string/jumbo p0, "mum_container_policy"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_16

    const-string p0, "ContainerDependencyWrapper"

    const-string p1, "ContainerPolicy Service is not yet ready!!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    :try_start_16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v1, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-interface {p0, v2}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isExternalStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_24

    return p0

    :catch_24
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public final isFOTAUpgrade()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isFotaUpgradeVersionChanged()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final isInSeparatedAppsOnly(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->updateAppsListOnlyPresentInSeparatedApps()V

    :cond_7
    sget-object p0, Lcom/android/server/pm/PersonaManagerService;->mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isInputMethodApp(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodAppAsUser(ILjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const-string/jumbo v3, "PersonaManagerService"

    if-eqz v1, :cond_12

    const-string/jumbo p0, "isInputMethodApp IME package name in DO = "

    invoke-static {p0, p1, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_12
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodAppAsUser(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_25

    const-string/jumbo p0, "isInputMethodApp IME package name in App Separation = "

    invoke-static {p0, p1, v3}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_25
    return v0
.end method

.method public final isInputMethodAppAsUser(ILjava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-wide/16 v1, 0x4

    invoke-interface {p0, p2, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_44

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-nez p0, :cond_12

    goto :goto_44

    :cond_12
    array-length p1, p0

    move v1, v0

    :goto_14
    if-ge v1, p1, :cond_48

    aget-object v2, p0, v1

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v2, :cond_41

    const-string/jumbo v3, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    const-string/jumbo p0, "PersonaManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isAppSeparationApp IME package name = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3d} :catch_3f

    const/4 p0, 0x1

    return p0

    :catch_3f
    move-exception p0

    goto :goto_45

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_44
    :goto_44
    return v0

    :goto_45
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_48
    return v0
.end method

.method public final isKeyboardApp(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    if-eqz p0, :cond_c

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final isKnoxProfileActivePasswordSufficientForParent(I)Z
    .registers 5

    const-string/jumbo v0, "isKnoxProfileActivePasswordSufficientForParent"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_7d

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_7d

    :cond_1e
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_7d

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    if-eqz p0, :cond_29

    goto :goto_7d

    :cond_29
    const-string/jumbo p0, "password_policy"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object p0

    if-nez p0, :cond_37

    goto :goto_7d

    :cond_37
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    :try_start_3c
    invoke-interface {p0, p1, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_70

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumCharacterOccurences(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    if-nez v0, :cond_70

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    if-nez v0, :cond_70

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    if-nez v0, :cond_70

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    if-nez v0, :cond_70

    invoke-interface {p0, p1, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getRequiredPwdPatternRestrictions(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_70

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isMultifactorAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_70

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordHistoryLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result p0

    if-eqz p0, :cond_7d

    goto :goto_70

    :catch_6e
    move-exception p0

    goto :goto_7a

    :cond_70
    :goto_70
    const-string p0, "ContainerDependencyWrapper"

    const-string/jumbo p1, "Not sufficient for knox profile active password for parent"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_78} :catch_6e

    const/4 p0, 0x0

    return p0

    :goto_7a
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_7d
    :goto_7d
    return v1
.end method

.method public final isKnoxWindowExist(III)Z
    .registers 14

    const-string/jumbo p0, "activity_task"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPersonaActivityHelper:Lcom/android/server/wm/PersonaActivityHelper;

    invoke-virtual {p0}, Lcom/android/server/wm/PersonaActivityHelper;->checkKnoxFeatureEnabled()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_6b

    iget-object p2, p0, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-nez p2, :cond_17

    goto :goto_6b

    :cond_17
    iget-object p2, p0, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p2

    :try_start_1f
    iget-object v1, p0, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_27
    if-ltz v1, :cond_61

    iget-object v3, p0, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_5e

    new-instance v4, Lcom/android/server/wm/PersonaActivityHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const-class v5, Lcom/android/server/wm/Task;

    invoke-static {v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v8, v6

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/QuintPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/DisplayArea;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    if-eqz v3, :cond_5e

    monitor-exit p2
    :try_end_57
    .catchall {:try_start_1f .. :try_end_57} :catchall_5b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_5b
    move-exception v0

    move-object p0, v0

    goto :goto_66

    :cond_5e
    add-int/lit8 v1, v1, -0x1

    goto :goto_27

    :cond_61
    :try_start_61
    monitor-exit p2
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_5b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :goto_66
    :try_start_66
    monitor-exit p2
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_5b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_6b
    :goto_6b
    return v0
.end method

.method public final isMoveFilesToContainerAllowed(I)Z
    .registers 3

    const-string/jumbo p1, "PersonaManagerService"

    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_f
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getProfilePolicy()Lcom/samsung/android/knox/profile/ProfilePolicy;

    move-result-object p0

    const-string/jumbo v0, "restriction_property_move_files_to_profile"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/profile/ProfilePolicy;->getRestriction(Ljava/lang/String;)Z

    move-result p0
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_1c} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_1c} :catch_1d

    return p0

    :catch_1d
    const-string/jumbo p0, "isMoveFilesToContainerAllowed : NullPointerException occurred"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :catch_24
    const-string/jumbo p0, "isMoveFilesToContainerAllowed : SecurityException occurred"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    const/4 p0, 0x0

    return p0
.end method

.method public final isMoveFilesToOwnerAllowed(I)Z
    .registers 3

    const-string/jumbo p1, "PersonaManagerService"

    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_f
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getProfilePolicy()Lcom/samsung/android/knox/profile/ProfilePolicy;

    move-result-object p0

    const-string/jumbo v0, "restriction_property_move_files_to_owner"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/profile/ProfilePolicy;->getRestriction(Ljava/lang/String;)Z

    move-result p0
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_1c} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_1c} :catch_1d

    return p0

    :catch_1d
    const-string/jumbo p0, "isMoveFilesToOwnerAllowed : NullPointerException occurred"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :catch_24
    const-string/jumbo p0, "isMoveFilesToOwnerAllowed : SecurityException occurred"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    const/4 p0, 0x0

    return p0
.end method

.method public final isPackageInstalledAsUser(ILjava/lang/String;)Z
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-wide/16 v0, 0x40

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_e

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :catch_e
    move-exception p0

    const-string/jumbo p1, "isPackageInstalledAsUser exception -"

    const-string/jumbo p2, "PersonaManagerService"

    invoke-static {p0, p1, p2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public final isPasswordSufficientAfterKnoxProfileUnification(I)Z
    .registers 6

    const-string/jumbo v0, "isPasswordSufficientAfterKnoxProfileUnification"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/knox/ContainerDependencyWrapper;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v0, "user"

    if-nez p0, :cond_17

    sget-object p0, Lcom/android/server/knox/ContainerDependencyWrapper;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    sput-object p0, Lcom/android/server/knox/ContainerDependencyWrapper;->mUserManager:Landroid/os/UserManager;

    :cond_17
    sget-object p0, Lcom/android/server/knox/ContainerDependencyWrapper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_a9

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_a9

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result p0

    if-nez p0, :cond_2e

    goto/16 :goto_a9

    :cond_2e
    sget-object p0, Lcom/android/server/knox/ContainerDependencyWrapper;->mUserManager:Landroid/os/UserManager;

    if-nez p0, :cond_3c

    sget-object p0, Lcom/android/server/knox/ContainerDependencyWrapper;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    sput-object p0, Lcom/android/server/knox/ContainerDependencyWrapper;->mUserManager:Landroid/os/UserManager;

    :cond_3c
    sget-object p0, Lcom/android/server/knox/ContainerDependencyWrapper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_a9

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    if-eqz p0, :cond_49

    goto :goto_a9

    :cond_49
    :try_start_49
    sget-object p0, Lcom/android/server/knox/ContainerDependencyWrapper;->context:Landroid/content/Context;

    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-nez v0, :cond_56

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    :cond_56
    sget-object p0, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result p0

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    sget-object v2, Lcom/android/server/knox/ContainerDependencyWrapper;->context:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_9c

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result p1

    if-nez p1, :cond_9c

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result p1

    if-nez p1, :cond_9c

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result p1

    if-nez p1, :cond_9c

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result p1

    if-nez p1, :cond_9c

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9c

    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isMultifactorAuthenticationEnabled()Z

    move-result p0

    if-eqz p0, :cond_a9

    goto :goto_9c

    :catch_9a
    move-exception p0

    goto :goto_a6

    :cond_9c
    :goto_9c
    const-string p0, "ContainerDependencyWrapper"

    const-string/jumbo p1, "Not sufficient for current parent password"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_a4} :catch_9a

    const/4 p0, 0x0

    return p0

    :goto_a6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a9
    :goto_a9
    return v1
.end method

.method public final isPossibleAddAppsToContainer(Ljava/lang/String;I)Z
    .registers 9

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 p0, 0x1

    :try_start_5
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_30

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_28} :catch_2d

    if-nez p1, :cond_2b

    goto :goto_30

    :cond_2b
    const/4 p0, 0x0

    return p0

    :catch_2d
    move-exception v0

    move-object p1, v0

    goto :goto_31

    :cond_30
    :goto_30
    return p0

    :goto_31
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return p0
.end method

.method public final isShareClipboardDataToContainerAllowed(I)Z
    .registers 7

    const-string/jumbo v0, "PersonaManagerService"

    const-string/jumbo v1, "inside isshareclipbd data to cnt allowed"

    const-string/jumbo v2, "container mgr object is "

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_19

    return v4

    :cond_19
    :try_start_19
    const-string/jumbo v3, "inside isShareClipboardDataToContainerAllowed method"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_47

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/samsung/android/knox/container/RCPPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/RCPPolicy;->isShareClipboardDataToContainerAllowed()Z

    move-result p0

    goto :goto_48

    :catch_43
    move-exception p0

    goto :goto_58

    :catch_45
    move-exception p0

    goto :goto_6b

    :cond_47
    move p0, v4

    :goto_48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_57} :catch_45
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_57} :catch_43

    return p0

    :goto_58
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isShareClipboardDataToContainer : NullPointerException occurred "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    :goto_6b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isShareClipboardDataToContainer : SecurityException occurred "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7d
    return v4
.end method

.method public final isShareClipboardDataToOwnerAllowed(I)Z
    .registers 5

    const-string/jumbo v0, "PersonaManagerService"

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    return v2

    :cond_13
    :try_start_13
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/samsung/android/knox/container/RCPPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/RCPPolicy;->isShareClipboardDataToOwnerAllowed()Z

    move-result p0
    :try_end_27
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_27} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_27} :catch_29

    return p0

    :cond_28
    return v2

    :catch_29
    const-string/jumbo p0, "allowShareClipboardDataToOwner : NullPointerException occurred"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :catch_30
    const-string/jumbo p0, "allowShareClipboardDataToOwner : SecurityException occurred"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_36
    return v2
.end method

.method public final isUsbDebuggingAllowed()Z
    .registers 7

    const-string/jumbo v0, "PersonaManagerService"

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_d
    new-instance v4, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result v5

    if-nez v5, :cond_2d

    const-string/jumbo v4, "isUsbDebuggingAllowed : EngineeringModeManager is not connected"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_20} :catch_2b
    .catchall {:try_start_d .. :try_end_20} :catchall_29

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_29
    move-exception v0

    goto :goto_66

    :catch_2b
    move-exception v4

    goto :goto_54

    :cond_2d
    const/16 v5, 0xe

    :try_start_2f
    invoke-virtual {v4, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_45

    const-string/jumbo v4, "isUsbDebuggingAllowed : MODE_KEEP_USB_DEBUG_UNDER_KNOX is installed."

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3c} :catch_2b
    .catchall {:try_start_2f .. :try_end_3c} :catchall_29

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_45
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo p0, "isUsbDebuggingAllowed : MODE_KEEP_USB_DEBUG_UNDER_KNOX is not installed."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_54
    :try_start_54
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v4, "isUsbDebuggingAllowed : MODE_KEEP_USB_DEBUG_UNDER_KNOX Exception"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_29

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_66
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final logDpmsKA(Landroid/os/Bundle;)V
    .registers 6

    const-string/jumbo v0, "kB"

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_3e

    const-string/jumbo v3, "userId"

    if-eqz v2, :cond_2b

    :try_start_14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_2b

    :cond_1f
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_36

    :cond_2b
    :goto_2b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_36
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3d} :catch_3e

    return-void

    :catch_3e
    move-exception p0

    const-string/jumbo p1, "logDpmsKA exception -"

    const-string/jumbo v0, "PersonaManagerService"

    invoke-static {p0, p1, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final notifyApplicationChanged(Ljava/lang/String;I)V
    .registers 14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_41

    :try_start_8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    if-nez v0, :cond_25

    new-instance v0, Lcom/android/server/pm/BroadcastHelper;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-direct {v0, v1}, Lcom/android/server/pm/BroadcastHelper;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    :cond_25
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    const-wide/16 v0, 0x0

    invoke-interface {v3, p1, v0, v1, p2}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v7

    const-string/jumbo v9, "notifyAppRestrictionChanged"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3a} :catch_3b

    return-void

    :catch_3b
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_41
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "caller not system"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final notifyStatusToKspAgent(Landroid/content/Intent;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "notifyStatusToKspAgent() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PersonaManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_15
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_APP_SEPARATION"

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final onUserRemoved(I)V
    .registers 13

    const-string v0, "\n"

    const-string/jumbo v1, "onUserRemoved \n"

    const-string v2, "====================\n UID : "

    const-string v3, ""

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy.MM.dd.HH.mm.ss"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2e} :catch_af
    .catchall {:try_start_11 .. :try_end_2e} :catchall_35

    const/4 v9, -0x1

    if-ne p1, v9, :cond_3a

    :try_start_31
    const-string/jumbo v7, "fallbackToSingleUserLP"

    goto :goto_51

    :catchall_35
    move-exception p0

    goto/16 :goto_b5

    :catch_38
    move-exception v9

    goto :goto_4e

    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    if-eqz v9, :cond_51

    const/4 v10, 0x0

    iput-object v10, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object v10, v9, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4d} :catch_38
    .catchall {:try_start_31 .. :try_end_4d} :catchall_35

    goto :goto_51

    :goto_4e
    :try_start_4e
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_af
    .catchall {:try_start_4e .. :try_end_51} :catchall_35

    :cond_51
    :goto_51
    const/16 v9, 0x14

    :try_start_53
    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_57} :catch_58
    .catchall {:try_start_53 .. :try_end_57} :catchall_35

    goto :goto_5c

    :catch_58
    move-exception v9

    :try_start_59
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "PersonaManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_91} :catch_af
    .catchall {:try_start_59 .. :try_end_91} :catchall_35

    :try_start_91
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_a6} :catch_a7
    .catchall {:try_start_91 .. :try_end_a6} :catchall_35

    goto :goto_ab

    :catch_a7
    move-exception p0

    :try_start_a8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ab} :catch_af
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_35

    :goto_ab
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b4

    :catch_af
    move-exception p0

    :try_start_b0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_35

    goto :goto_ab

    :goto_b4
    return-void

    :goto_b5
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final postPwdChangeNotificationForDeviceOwner(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final processAppSeparationCreation()V
    .registers 9

    const-string/jumbo v0, "processAppSeparationCreation"

    const-string/jumbo v1, "PersonaManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v3

    const/4 v4, 0x0

    if-nez v0, :cond_22

    :try_start_19
    const-string/jumbo v0, "processAppSeparationCreation no app separation data found in db"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_20
    move-exception v0

    goto :goto_6b

    :cond_22
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/pm/PersonaManagerService;->getUpdatedPackageInfo(Landroid/os/Bundle;Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodApp(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2b

    if-nez v3, :cond_55

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->suspendAppsInOwner(Ljava/lang/String;Z)V

    goto :goto_2b

    :cond_55
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4, v6}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v6

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3, v7}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v7

    if-eqz v6, :cond_2b

    if-nez v7, :cond_2b

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationInstallationInternal(Ljava/lang/String;)I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_6a} :catch_20

    goto :goto_2b

    :goto_6b
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception in processAppSeparationCreation "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7f
    if-nez v3, :cond_dc

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_dc

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackages()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_94
    if-ge v4, v0, :cond_a5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v5, "processAppSeparationCreation: packageName = "

    invoke-static {v5, v3, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_94

    :cond_a5
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.action.PROVISION_KNOX_PROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.appseparation"

    const-string/jumbo v3, "com.samsung.android.appseparation.receiver.ProvisionReceiver"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "packageNames"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :try_start_c8
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mKnoxAnalyticsContainer:Lcom/android/server/knox/KnoxAnalyticsContainer;

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "APP_SEPARATION_APP_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->logEventActivationForAppSep(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_d7} :catch_d8

    goto :goto_dc

    :catch_d8
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_dc
    :goto_dc
    return-void
.end method

.method public final processAppSeparationInstallation(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->updateAppsListOnlyPresentInSeparatedApps()V

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v1, 0x4a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PersonaManagerService;->suspendAppsInOwner(Ljava/lang/String;Z)V

    return-void

    :cond_2b
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "processAppSeparationInstallation packageName - "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "PersonaManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processAppSeparationInstallationInternal(Ljava/lang/String;)I
    .registers 12

    const-string/jumbo v0, "processAppSeparationInstallationInternal Disable package in Owner space and Install package in PO - "

    const-string/jumbo v1, "processAppSeparationInstallationInternal Non system app - "

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSeparationConfigfromCache()Landroid/os/Bundle;

    move-result-object v2

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->checkNullParameter([Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const-string/jumbo v5, "PersonaManagerService"

    if-eqz v3, :cond_1f

    const-string/jumbo p0, "processAppSeparationInstallationInternal null"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1f
    const-string v3, "APP_SEPARATION_OUTSIDE"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v6, "APP_SEPARATION_APP_LIST"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v6, :cond_33

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_33
    const-string v7, "APP_SEPARATION_COEXISTANCE_LIST"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_40

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_40
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationId()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "processAppSeparationInstallationInternal is called for isOutside - "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", packageName - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6, p1}, Lcom/android/server/pm/PersonaManagerService;->getSeparationPackageInfo(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->checkNullParameter([Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11d

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    move-result v8

    if-eqz v8, :cond_79

    goto/16 :goto_11d

    :cond_79
    const/16 v8, -0x6e

    :try_start_7b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Is in allowlist ? - "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",  wlAppsSet size - "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f1

    if-eqz v3, :cond_b8

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f1

    :cond_b8
    if-nez v3, :cond_c2

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f1

    :cond_c2
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cb

    goto :goto_f1

    :cond_cb
    if-eqz v6, :cond_f0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v6, v0}, Lcom/android/server/pm/PersonaManagerService;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f0

    iget-object p0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, p0}, Lcom/android/server/pm/PersonaManagerService;->deletePackageAsUser(ILjava/lang/String;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "processAppSeparationInstallationInternal deletePackageAsUser result - "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_f0

    return v8

    :cond_f0
    return v4

    :cond_f1
    :goto_f1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6, p1}, Lcom/android/server/pm/PersonaManagerService;->installPackageForAppSeparation(ILandroid/content/pm/PackageInfo;)I

    move-result p0
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_106} :catch_107

    return p0

    :catch_107
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Exception in processAppSeparationAllowListInternal "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v8

    :cond_11d
    :goto_11d
    const-string/jumbo p0, "processAppSeparationInstallationInternal Return false due to null or IndependentApp"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public final readPersonaCacheLocked()V
    .registers 11

    const-string/jumbo v0, "PersonaManagerService"

    const-string/jumbo v1, "readPersonaCacheLocked is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheFile:Ljava/io/File;

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    :try_start_11
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_15} :catch_9b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_15} :catch_8e
    .catchall {:try_start_11 .. :try_end_15} :catchall_8c

    :try_start_15
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_1c
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v2, v6, :cond_27

    if-eq v2, v5, :cond_27

    goto :goto_1c

    :cond_27
    if-eq v2, v6, :cond_3f

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    const-string/jumbo p0, "Unable to read persona cache"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_a5

    goto :goto_88

    :catchall_35
    move-exception p0

    move-object v2, v3

    goto/16 :goto_a6

    :catch_39
    move-exception p0

    move-object v2, v3

    goto :goto_8f

    :catch_3c
    move-exception p0

    move-object v2, v3

    goto :goto_9c

    :cond_3f
    :goto_3f
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v5, :cond_86

    if-ne v2, v6, :cond_3f

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "cache"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x0

    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PersonaCache entry - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_85} :catch_3c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_85} :catch_39
    .catchall {:try_start_15 .. :try_end_85} :catchall_35

    goto :goto_3f

    :cond_86
    if-eqz v3, :cond_a5

    :goto_88
    :try_start_88
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_a5

    return-void

    :catchall_8c
    move-exception p0

    goto :goto_a6

    :catch_8e
    move-exception p0

    :goto_8f
    :try_start_8f
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_95
    .catchall {:try_start_8f .. :try_end_95} :catchall_8c

    if-eqz v2, :cond_a5

    :goto_97
    :try_start_97
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_a5

    goto :goto_a5

    :catch_9b
    move-exception p0

    :goto_9c
    :try_start_9c
    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->atomicFileProcessDamagedFile(Landroid/util/AtomicFile;)V

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a2
    .catchall {:try_start_9c .. :try_end_a2} :catchall_8c

    if-eqz v2, :cond_a5

    goto :goto_97

    :catch_a5
    :cond_a5
    :goto_a5
    return-void

    :goto_a6
    if-eqz v2, :cond_ab

    :try_start_a8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ab

    :catch_ab
    :cond_ab
    throw p0
.end method

.method public final refreshLockTimer(I)V
    .registers 5

    const-string/jumbo v0, "refreshLockTimer"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "RefreshLockTimer for user : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PersonaManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTimeoutLocked(I)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-nez v2, :cond_2e

    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    :cond_2e
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/PowerManagerInternal;->setMaximumScreenOffTimeoutFromKnox(IJ)V

    return-void
.end method

.method public final registerDdmBroadcastReceiver(Landroid/content/IntentFilter;Landroid/net/Uri;I)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    const-string v9, "DDM registerContentObserver uri : "

    const-string/jumbo v10, "ddmBroadcastReceiver:: registerContentObserver "

    const-string v11, "DDM registerReceiverAsUser action : "

    const-string/jumbo v1, "ddmBroadcastReceiver:: registerReceiverAsUser "

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->hasDdmPermission()Z

    move-result v2

    const-string/jumbo v12, "PersonaManagerService"

    if-nez v2, :cond_22

    const-string/jumbo v0, "registerDdmBroadcastReceiver:: permission error."

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    const-string v15, " userId : "

    const/4 v2, 0x0

    if-eqz v4, :cond_9f

    :try_start_2b
    new-instance v3, Lcom/android/server/pm/PersonaManagerService$8;

    invoke-direct {v3, v0, v8}, Lcom/android/server/pm/PersonaManagerService$8;-><init>(Lcom/android/server/pm/PersonaManagerService;I)V

    invoke-virtual {v4}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    if-lez v5, :cond_9f

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService;->ddmBroadcastReceverMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_9f

    const-string/jumbo v6, "com.samsung.android.knox.containercore.ddm.action.FOREGROUND_APP_CHANGED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    invoke-virtual {v0}, Lcom/android/server/pm/PersonaManagerService;->registerUsageStatsWatcher()V

    goto :goto_59

    :catchall_4f
    move-exception v0

    move-wide/from16 v18, v13

    goto/16 :goto_105

    :catch_54
    move-exception v0

    move-wide/from16 v18, v13

    goto/16 :goto_fe

    :cond_59
    :goto_59
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    move v6, v2

    move-object v2, v3

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v8}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_71} :catch_54
    .catchall {:try_start_2b .. :try_end_71} :catchall_4f

    move-object/from16 v16, v5

    const/4 v5, 0x0

    move/from16 v17, v6

    const/4 v6, 0x0

    move-wide/from16 v18, v13

    move-object/from16 v14, v16

    move/from16 v13, v17

    :try_start_7d
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/pm/PersonaManagerService;->ddmBroadcastReceverMap:Ljava/util/HashMap;

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a2

    :catchall_9b
    move-exception v0

    goto :goto_105

    :catch_9d
    move-exception v0

    goto :goto_fe

    :cond_9f
    move-wide/from16 v18, v13

    move v13, v2

    :goto_a2
    if-eqz v7, :cond_109

    new-instance v1, Lcom/android/server/pm/PersonaManagerService$7;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/pm/PersonaManagerService$7;-><init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Handler;I)V

    iget-object v2, v0, Lcom/android/server/pm/PersonaManagerService;->ddmContentObserverMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_109

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v7, v13, v1, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService;->ddmContentObserverMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_fd} :catch_9d
    .catchall {:try_start_7d .. :try_end_fd} :catchall_9b

    goto :goto_109

    :goto_fe
    :try_start_fe
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_101
    .catchall {:try_start_fe .. :try_end_101} :catchall_9b

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_105
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_109
    :goto_109
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final registerPackageReceiver()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_36

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mPackageReceiver:Lcom/android/server/pm/PersonaManagerService$2;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->packageFilter:Landroid/content/IntentFilter;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_36
    return-void
.end method

.method public final registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    .registers 3

    const-string/jumbo v0, "registerSystemPersonaObserver"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mLegacyStateMonitor:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    if-eqz p0, :cond_13

    iget-object p0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mObserverList:Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_13

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public final registerUsageStatsWatcher()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->usageWatcher:Lcom/android/server/pm/PersonaManagerService$10;

    if-nez v0, :cond_37

    new-instance v0, Lcom/android/server/pm/PersonaManagerService$10;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PersonaManagerService$10;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->usageWatcher:Lcom/android/server/pm/PersonaManagerService$10;

    const-string/jumbo v0, "usagestats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "PersonaManagerService"

    if-eqz v0, :cond_2f

    invoke-static {v0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v0

    :try_start_1c
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->usageWatcher:Lcom/android/server/pm/PersonaManagerService$10;

    invoke-interface {v0, v3}, Landroid/app/usage/IUsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception v0

    const-string/jumbo v3, "failed to registerUsageStatsWatcher"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->usageWatcher:Lcom/android/server/pm/PersonaManagerService$10;

    goto :goto_37

    :cond_2f
    const-string/jumbo v0, "failed to get usagestats"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->usageWatcher:Lcom/android/server/pm/PersonaManagerService$10;

    :cond_37
    :goto_37
    return-void
.end method

.method public final resetUCMProfile()I
    .registers 5

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "UCMStorageHelper"

    const-string/jumbo v1, "resetUCMProfile()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UCMStorageHelper;->isCallerValidPlatformApp(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_18

    const-string p0, "Error ! caller not a valid platform app"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_18
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    const-string/jumbo v3, "UCM_CONFIG"

    invoke-virtual {v1, v3, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    if-lez p0, :cond_2f

    const-string/jumbo p0, "resetUCMProfile triggered successfully"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2f
    const-string/jumbo p0, "resetUCMProfile trigger failed"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final sendKnoxForesightBroadcast(Landroid/content/Intent;)Z
    .registers 7

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.knox.containercore.action.FORESIGHT_COMMAND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.android.knox.containercore"

    const-string/jumbo v1, "com.samsung.android.knox.containercore.KnoxForesightCommandReceiver"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_FORESIGHT"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/PersonaManagerService;->hasLicensePermission(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_26
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_30} :catch_36
    .catchall {:try_start_26 .. :try_end_30} :catchall_34

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_34
    move-exception p0

    goto :goto_3e

    :catch_36
    move-exception p0

    :try_start_37
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_34

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_42

    :goto_3e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_42
    :goto_42
    return v0
.end method

.method public final sendProxyMessage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9

    const-string/jumbo v0, "sendProxyMessage"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    const-string/jumbo v0, "PersonaManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendProxyMessage() name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bundle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1f

    const-string/jumbo v2, "null"

    goto :goto_23

    :cond_1f
    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaServiceProxy:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "PersonaManagerService::Proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendProxyMessage() name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bundle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_4b

    const-string/jumbo v2, "null"

    goto :goto_4f

    :cond_4b
    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServiceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5c
    iget-object v1, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_73

    const-string/jumbo p0, "PersonaManagerService::Proxy"

    const-string/jumbo p1, "sendProxyMessage() no container service"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object v2

    :catchall_70
    move-exception p0

    goto/16 :goto_15d

    :cond_73
    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ContainerServiceInfo;

    iget-object v4, v3, Lcom/android/server/ContainerServiceInfo;->category:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    iget v4, v3, Lcom/android/server/ContainerServiceInfo;->userid:I

    if-nez v4, :cond_7d

    invoke-virtual {v3}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/ContainerServiceWrapper;

    goto :goto_a6

    :cond_a5
    move-object p0, v2

    :goto_a6
    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_5c .. :try_end_a7} :catchall_70

    if-eqz p0, :cond_13a

    if-nez p3, :cond_b0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_b0
    const-string/jumbo p1, "knox.container.proxy.EXTRA_CALLING_UID"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "PersonaManagerService::Proxy"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendProxyAgentMessage() Calling UID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "knox.container.proxy.EXTRA_CALLING_PID"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "PersonaManagerService::Proxy"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendProxyAgentMessage() Calling PID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_f6
    iget-object p1, p0, Lcom/android/server/ContainerServiceWrapper;->mContainerService:Lcom/samsung/android/knox/IContainerService;

    if-eqz p1, :cond_125

    invoke-interface {p1, p2, p3}, Lcom/samsung/android/knox/IContainerService;->onMessage(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_fe
    .catch Landroid/os/RemoteException; {:try_start_f6 .. :try_end_fe} :catch_ff

    goto :goto_125

    :catch_ff
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "RemoteException: name:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " action:"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "KnoxService::ContainerServiceWrapper"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_125
    :goto_125
    if-nez v2, :cond_12b

    const-string/jumbo p0, "null"

    goto :goto_136

    :cond_12b
    const-string/jumbo p0, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v2, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_136
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-object v2

    :cond_13a
    const-string/jumbo p0, "PersonaManagerService::Proxy"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "service not found, name - "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p1, "android.intent.extra.RETURN_RESULT"

    const/16 p2, 0x63

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    :goto_15d
    :try_start_15d
    monitor-exit v0
    :try_end_15e
    .catchall {:try_start_15d .. :try_end_15e} :catchall_70

    throw p0
.end method

.method public final sendRequestKeyStatus(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    const-string/jumbo v2, "com.sec.knox.containeragent.klms.licensekey.check"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "container_id"

    invoke-virtual {v3, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "com.samsung.klmsagent"

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_2b

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2b
    move-exception p1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public final setAppSeparationDefaultPolicy(I)V
    .registers 8

    const-string v0, "ContainerDependencyWrapper"

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.appseparation"

    const/16 v3, 0x3e8

    :try_start_9
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-interface {v4, v3, v5}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    move-result v4

    if-nez v4, :cond_20

    const-string/jumbo v4, "setOwnership"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :catch_1e
    move-exception v4

    goto :goto_27

    :cond_20
    const-string/jumbo v4, "setOwnership failed"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_26} :catch_1e

    goto :goto_6e

    :goto_27
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2a
    :try_start_2a
    new-instance v4, Lcom/samsung/android/knox/container/ContainerCreationParams;

    invoke-direct {v4}, Lcom/samsung/android/knox/container/ContainerCreationParams;-><init>()V

    invoke-virtual {v4, v2}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setAdminParam(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setContainerId(I)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setAdminUid(I)V

    const-class v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;

    const-string v2, "KnoxMUMContainerPolicy"

    const-string/jumbo v5, "setAppSeparationOwnership."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$LocalService;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->createContainerInternal(Lcom/samsung/android/knox/container/ContainerCreationParams;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_5a} :catch_5b

    goto :goto_6e

    :catch_5b
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "exception setOwnership"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6e
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    :try_start_70
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-interface {v1, v3, v2}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    move-result v1

    if-nez v1, :cond_87

    const-string/jumbo v1, "applyDefaultPolicyForAppSeparation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    :catch_85
    move-exception v1

    goto :goto_8e

    :cond_87
    const-string/jumbo v1, "applyDefaultPolicyForAppSeparation failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_8d} :catch_85

    goto :goto_cc

    :goto_8e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_91
    :try_start_91
    sget-object v1, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-nez v1, :cond_9c

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    :cond_9c
    sget-object v1, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v1

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v1, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v2, p0, v3}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->enableNFC(ZLandroid/os/Bundle;)Z
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_b8} :catch_b9

    goto :goto_cc

    :catch_b9
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "exception applyDefaultPolicyForAppSeparation"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_cc
    return-void
.end method

.method public final setAttributes(II)Z
    .registers 4

    const-string/jumbo v0, "setAttributes"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_1b

    const-string/jumbo p0, "user not found "

    const-string/jumbo p2, "PersonaManagerService"

    invoke-static {p1, p0, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerInternal;->setAttributes(II)Z

    move-result p0

    return p0
.end method

.method public final setDdmPolicy(Ljava/lang/String;I)Z
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->hasDdmPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    const-string/jumbo p0, "PersonaManagerService"

    const-string/jumbo p1, "setDdmPolicy:: permission error."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_15
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.knox.containercore.ddm.action.DDM_COMMAND"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.samsung.android.knox.containercore"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    const-string/jumbo v4, "file"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3c

    :catchall_32
    move-exception p0

    goto :goto_52

    :catch_34
    move-exception p0

    goto :goto_4b

    :cond_36
    const-string/jumbo v4, "policy"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3c
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_46} :catch_34
    .catchall {:try_start_15 .. :try_end_46} :catchall_32

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :goto_4b
    :try_start_4b
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_32

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_52
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setDualDARProfile(Landroid/os/Bundle;)I
    .registers 9

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "setDualDARProfile called "

    const-string v1, "DualDARStorageHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_DUAL_DAR_INTERNAL"

    const-string/jumbo v2, "dualdar storage denied"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_17

    const/4 p0, -0x1

    return p0

    :cond_17
    const-string/jumbo v0, "dualdar-config-client-package"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string/jumbo v3, "default"

    if-eqz v2, :cond_29

    move-object v0, v3

    goto :goto_2d

    :cond_29
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2d
    const-string/jumbo v2, "dualdar-config-client-signature"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3c

    move-object v2, v3

    goto :goto_40

    :cond_3c
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_40
    const-string/jumbo v4, "dualdar-config-client-location"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4e

    goto :goto_52

    :cond_4e
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_52
    const-string/jumbo p1, "setDualDARProfile() - package Name "

    const-string v4, " signature "

    const-string v5, " location "

    invoke-static {p1, v0, v4, v2, v5}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x1

    const-string/jumbo v5, "configValue"

    const-string/jumbo v6, "clientAppPackageName"

    invoke-static {v4, p1, v5, v6, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "clientAppSignature"

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "clientAppLocation"

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    const-string p0, "DUAL_DAR_CONFIG"

    invoke-virtual {v0, p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    if-eqz p0, :cond_96

    const-string/jumbo p0, "setEnableDualDAR triggered successfully"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    :cond_96
    const-string/jumbo p0, "setEnableDualDAR trigger failed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9c
    const/4 p0, 0x0

    return p0
.end method

.method public final setFocusedLauncherId(I)V
    .registers 5

    const-string/jumbo v0, "setFocusedUser: Focus changed - current uesr id is "

    const-string/jumbo v1, "setFocusedLauncherId"

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusLauncherLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    iput p1, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedLauncherId:I

    const-string/jumbo p1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/pm/PersonaManagerService;->mFocusedLauncherId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_24

    throw p0
.end method

.method public final setPackageSettingInstalled(Ljava/lang/String;ZI)Z
    .registers 5

    const-string/jumbo v0, "setPackageSettingInstalled"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    :try_start_b
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    if-eqz p0, :cond_21

    invoke-virtual {p0, p3, p2}, Lcom/android/server/pm/PackageSetting;->setInstalled(IZ)V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_1f
    move-exception p0

    goto :goto_24

    :cond_21
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_1f

    throw p0
.end method

.method public final setPersonalModeName(ILjava/lang/String;)Z
    .registers 7

    const-string/jumbo p1, "PersonaManagerService:FOTA"

    const/4 v0, 0x0

    :try_start_4
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "setAllowCustomBadgeIcon"

    const-string/jumbo v2, "PersonaPolicyManagerService"

    sget-object v3, Lcom/android/server/knox/PersonaPolicyManagerService;->sContext:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Lcom/android/server/knox/ContainerDependencyWrapper;->checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    iput-object p2, v1, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mPersonalModeLabel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/knox/PersonaPolicyManagerService;->saveSettingsLocked(I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1d} :catch_1e

    goto :goto_24

    :catch_1e
    const-string/jumbo p0, "setPersonalModeName unable to set PersonalModeName"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    sget-boolean p0, Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z

    if-eqz p0, :cond_30

    const-string/jumbo p0, "setPersonalModeName name - "

    const-string v1, " false"

    invoke-static {p0, p2, v1, p1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    return v0
.end method

.method public final setProfileName(ILjava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "setAllowCustomBadgeIcon"

    const-string/jumbo v2, "PersonaPolicyManagerService"

    sget-object v3, Lcom/android/server/knox/PersonaPolicyManagerService;->sContext:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Lcom/android/server/knox/ContainerDependencyWrapper;->checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    iput-object p2, v1, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mCustomPersonaName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/PersonaPolicyManagerService;->saveSettingsLocked(I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1b

    return v0

    :catch_1b
    const-string/jumbo p0, "PersonaManagerService:FOTA"

    const-string/jumbo p1, "setProfileName unable to setProfileName"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "setRCPDataPolicy"

    const-string/jumbo p2, "PersonaPolicyManagerService"

    sget-object v0, Lcom/android/server/knox/PersonaPolicyManagerService;->sContext:Landroid/content/Context;

    invoke-static {v0, p2, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "EDM"

    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_29

    const-string p1, ":"

    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p3, p1, p2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x2

    aget-object p1, p1, v0

    goto :goto_31

    :cond_29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    :goto_31
    monitor-enter p0

    :try_start_32
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_3f

    invoke-virtual {p0, p3}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    monitor-exit p0

    return p2

    :catchall_3d
    move-exception p1

    goto :goto_42

    :cond_3f
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :goto_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_3d

    throw p1
.end method

.method public final setSecureFolderPolicy(Ljava/lang/String;Ljava/util/List;I)Z
    .registers 15

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    invoke-interface {v1, v3, v2}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    move-result v1

    if-eqz v1, :cond_1e

    const-string/jumbo p0, "PersonaManagerService"

    const-string/jumbo p1, "setSecureFolderPolicy failed."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_1b

    return v0

    :catch_1b
    move-exception p0

    goto/16 :goto_14e

    :cond_1e
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaPolicyManagerService:Lcom/android/server/knox/PersonaPolicyManagerService;

    monitor-enter p0

    :try_start_21
    invoke-virtual {p0, p3}, Lcom/android/server/knox/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/knox/PersonaPolicyManagerService$PersonaPolicyData;->mSecureFolderPolicies:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p3}, Lcom/android/server/knox/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_14b

    const/4 p0, 0x1

    if-eqz p2, :cond_14a

    const-string v1, "DisallowPackage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14a

    sget-object p1, Lcom/android/server/knox/PersonaPolicyManagerService;->sContext:Landroid/content/Context;

    const-string v1, "Exception: "

    const-string v2, "ContainerDependencyWrapper"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v4, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-nez v4, :cond_4f

    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    :cond_4f
    sget-object p1, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p1, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result p1

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v4, p1, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    const/4 p1, 0x0

    :try_start_5b
    const-string/jumbo p3, "application_policy"

    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object p3
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_66} :catch_71

    if-nez p3, :cond_6a

    goto/16 :goto_14a

    :cond_6a
    :try_start_6a
    invoke-interface {p3, v4}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppPackageNamesAllBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p1
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_6e} :catch_6f

    goto :goto_7b

    :catch_6f
    move-exception v5

    goto :goto_73

    :catch_71
    move-exception v5

    move-object p3, p1

    :goto_73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_7b
    if-eqz p1, :cond_ae

    move v5, v0

    :goto_7e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_ae

    move v6, v0

    :goto_85
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/application/AppControlInfo;

    iget-object v7, v7, Lcom/samsung/android/knox/application/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_ab

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/application/AppControlInfo;

    iget-object v7, v7, Lcom/samsung/android/knox/application/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_85

    :cond_ab
    add-int/lit8 v5, v5, 0x1

    goto :goto_7e

    :cond_ae
    const-string/jumbo p1, "com.android.vending"

    const-string/jumbo v5, "com.sec.android.app.samsungapps"

    filled-new-array {p1, v5}, [Ljava/lang/String;

    move-result-object p1

    move v5, v0

    :goto_b9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, -0x1

    if-ge v5, v6, :cond_ff

    move v6, v0

    move v8, v6

    :goto_c2
    const/4 v9, 0x2

    if-ge v6, v9, :cond_d5

    aget-object v9, p1, v6

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d2

    move v8, p0

    :cond_d2
    add-int/lit8 v6, v6, 0x1

    goto :goto_c2

    :cond_d5
    if-nez v8, :cond_fc

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ef

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_fc

    :cond_ef
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_fc
    :goto_fc
    add-int/lit8 v5, v5, 0x1

    goto :goto_b9

    :cond_ff
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_107
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_14a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v7, :cond_136

    if-eq v0, p0, :cond_122

    goto :goto_107

    :cond_122
    :try_start_122
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p3, v4, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppPackageNameFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    :try_end_12b
    .catch Landroid/os/RemoteException; {:try_start_122 .. :try_end_12b} :catch_12c

    goto :goto_107

    :catch_12c
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_107

    :cond_136
    :try_start_136
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p3, v4, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppPackageNameToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    :try_end_13f
    .catch Landroid/os/RemoteException; {:try_start_136 .. :try_end_13f} :catch_140

    goto :goto_107

    :catch_140
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_107

    :cond_14a
    :goto_14a
    return p0

    :catchall_14b
    move-exception p1

    :try_start_14c
    monitor-exit p0
    :try_end_14d
    .catchall {:try_start_14c .. :try_end_14d} :catchall_14b

    throw p1

    :goto_14e
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public final setUCMProfile(Landroid/os/Bundle;)I
    .registers 9

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "setUCMProfile called"

    const-string/jumbo v1, "UCMStorageHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_UCM_INTERNAL"

    const-string/jumbo v2, "ucm storage denied"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_17

    goto :goto_3e

    :cond_17
    const-string/jumbo v0, "ucm-config-client-package"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string/jumbo v3, "ucm-config-client-location"

    const-string/jumbo v4, "ucm-config-client-signature"

    if-eqz v2, :cond_40

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40

    :goto_3e
    const/4 p0, -0x1

    return p0

    :cond_40
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "setUCMProfile() - package Name "

    const-string v4, " signature "

    const-string v5, " location "

    invoke-static {v3, v0, v4, v2, v5}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x1

    const-string/jumbo v5, "configValue"

    const-string/jumbo v6, "clientAppPackageName"

    invoke-static {v4, v3, v5, v6, v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "clientAppSignature"

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "clientAppLocation"

    invoke-virtual {v3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {p1, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    const-string/jumbo p0, "UCM_CONFIG"

    invoke-virtual {p1, p0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    if-eqz p0, :cond_91

    const-string/jumbo p0, "setEnableUCM triggered successfully"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    :cond_91
    const-string/jumbo p0, "setEnableUCM trigger failed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_97
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldBlockCommand(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7

    const-string/jumbo v0, "shouldBlockCommand:: isManagedProfile "

    const-string/jumbo v1, "shouldBlockCommand "

    const-string v2, " "

    invoke-static {v1, p1, v2, p2, v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string/jumbo v1, "PersonaManagerService"

    invoke-static {p2, p3, v1}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :try_start_12
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->isAppSeparationPresent()Z

    move-result p2

    if-eqz p2, :cond_4a

    const-string/jumbo p2, "appops"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p0

    const-string/jumbo p1, "shouldBlockCommand:: isAppSeparationPresent "

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_4a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_44} :catch_46

    const/4 p0, 0x1

    return p0

    :catch_46
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4a
    const-string/jumbo p0, "shouldBlockCommand:: return false. "

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final startActivityThroughPersona(Landroid/content/Intent;)Z
    .registers 4

    const-string/jumbo v0, "startActivityThroughPersona"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startActivityThroughPersona Intent ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PersonaManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-eqz p0, :cond_2c

    if-nez p1, :cond_23

    goto :goto_2c

    :cond_23
    :try_start_23
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_26
    .catch Landroid/content/ActivityNotFoundException; {:try_start_23 .. :try_end_26} :catch_28

    const/4 p0, 0x1

    return p0

    :catch_28
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_2c
    :goto_2c
    return v0
.end method

.method public final startCountrySelectionActivity(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/high16 v2, 0x10000000

    if-nez p1, :cond_33

    :try_start_d
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.app.secsetupwizard.NET_TSS_SETUP"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_1d} :catch_22
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1d} :catch_20
    .catchall {:try_start_d .. :try_end_1d} :catchall_1e

    goto :goto_43

    :catchall_1e
    move-exception p1

    goto :goto_53

    :catch_20
    move-exception p1

    goto :goto_4c

    :catch_22
    :try_start_22
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.app.secsetupwizard.TSS_SETUP"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_43

    :cond_33
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.app.secsetupwizard.COUNTRY_SELECTION"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_43} :catch_20
    .catchall {:try_start_22 .. :try_end_43} :catchall_1e

    :goto_43
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    :goto_45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_52

    :goto_4c
    :try_start_4c
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_1e

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    goto :goto_45

    :goto_52
    return-void

    :goto_53
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public final startTermsActivity()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_9
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.app.secsetupwizard.TERMS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_26
    .catchall {:try_start_9 .. :try_end_1b} :catchall_24

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_24
    move-exception v2

    goto :goto_33

    :catch_26
    move-exception v2

    :try_start_27
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_24

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_33
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public final suspendAppsInOwner(Ljava/lang/String;Z)V
    .registers 14

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "suspendAppInOwner is called"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", suspend - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PersonaManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->isInputMethodApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string/jumbo p0, "suspendAppInOwner()"

    const-string p2, ", do not suspend keyboard app- "

    invoke-static {p0, p1, p2, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2c
    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_39

    const-string/jumbo p0, "No appseparation present"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_39
    new-instance v2, Ljava/util/HashSet;

    const-string v3, "APP_SEPARATION_COEXISTANCE_LIST"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_48

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_48
    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    if-eqz p2, :cond_5a

    const-string/jumbo p0, "Package is allowed for both users do not suspend: "

    invoke-static {p0, p1, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5a
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mAPM:Landroid/app/ApplicationPackageManager;

    if-nez v0, :cond_6e

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationPackageManager;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mAPM:Landroid/app/ApplicationPackageManager;

    :cond_6e
    :try_start_6e
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mAPM:Landroid/app/ApplicationPackageManager;

    const-string v7, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/app/ApplicationPackageManager;->setPackagesSuspended([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Ljava/lang/String;)[Ljava/lang/String;

    if-eqz v4, :cond_7e

    const-string/jumbo p2, "Suspend Package:"

    goto :goto_81

    :cond_7e
    const-string/jumbo p2, "Unsuspend Package:"

    :goto_81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    if-nez p2, :cond_b0

    new-instance p2, Lcom/android/server/pm/BroadcastHelper;

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-direct {p2, v0}, Lcom/android/server/pm/BroadcastHelper;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V

    iput-object p2, p0, Lcom/android/server/pm/PersonaManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    :cond_b0
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    const-string/jumbo v9, "suspendAppsInOwner"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    move-object v4, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageChangedBroadcast(Lcom/android/server/pm/Computer;Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_c0} :catch_c1

    return-void

    :catch_c1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final systemReady()V
    .registers 21

    move-object/from16 v1, p0

    const-string/jumbo v0, "systemReady"

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    const-string/jumbo v2, "PersonaManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    new-instance v0, Lcom/android/server/pm/PersonaServiceProxy;

    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServices:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/pm/PersonaServiceProxy;->mContainerServiceLock:Ljava/lang/Object;

    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/android/server/pm/PersonaServiceProxy;->mIsDoEnabled:Z

    new-instance v4, Lcom/android/server/pm/PersonaServiceProxy$2;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/android/server/pm/PersonaServiceProxy$2;-><init>(Lcom/android/server/pm/PersonaServiceProxy;I)V

    iput-object v4, v0, Lcom/android/server/pm/PersonaServiceProxy;->mUserBroadcastReceiver:Lcom/android/server/pm/PersonaServiceProxy$2;

    new-instance v10, Lcom/android/server/pm/PersonaServiceProxy$2;

    const/4 v5, 0x1

    invoke-direct {v10, v0, v5}, Lcom/android/server/pm/PersonaServiceProxy$2;-><init>(Lcom/android/server/pm/PersonaServiceProxy;I)V

    iput-object v10, v0, Lcom/android/server/pm/PersonaServiceProxy;->mPackageBroadcastReceiver:Lcom/android/server/pm/PersonaServiceProxy$2;

    iput-object v3, v0, Lcom/android/server/pm/PersonaServiceProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    iput-object v5, v0, Lcom/android/server/pm/PersonaServiceProxy;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v11, "keyguard"

    invoke-virtual {v3, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    iput-object v5, v0, Lcom/android/server/pm/PersonaServiceProxy;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string/jumbo v5, "trust"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/trust/TrustManager;

    iput-object v5, v0, Lcom/android/server/pm/PersonaServiceProxy;->mTrustManager:Landroid/app/trust/TrustManager;

    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/android/server/pm/PersonaServiceProxy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo v5, "persona"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v5, v0, Lcom/android/server/pm/PersonaServiceProxy;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/pm/PersonaServiceProxy;->mIsDoEnabled:Z

    const-string/jumbo v5, "android.intent.action.USER_STARTED"

    const-string/jumbo v6, "android.intent.action.USER_REMOVED"

    const-string/jumbo v7, "android.intent.action.USER_ADDED"

    invoke-static {v5, v6, v7}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v6

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v6, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "package"

    invoke-virtual {v6, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v12, "com.samsung.android.knox.containercore"

    invoke-virtual {v6, v12, v9}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    move-object v4, v10

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v4, Lcom/android/server/pm/PersonaServiceProxy$1;

    invoke-direct {v4, v0}, Lcom/android/server/pm/PersonaServiceProxy$1;-><init>(Lcom/android/server/pm/PersonaServiceProxy;)V

    invoke-static {v3, v4}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    iput-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaServiceProxy:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Common_SupportPrivateMode"

    invoke-virtual {v0, v3, v9}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_ec

    const-string/jumbo v0, "Quick Switch is supported"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/knox/SeamLessSwitchHandler;

    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v1}, Lcom/android/server/knox/SeamLessSwitchHandler;-><init>(Landroid/content/Context;Lcom/android/server/pm/PersonaManagerService;)V

    iput-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mSeamLessSwitchHandler:Lcom/android/server/knox/SeamLessSwitchHandler;

    :cond_ec
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mSeparationConfiginCache:Landroid/os/Bundle;

    sget-object v0, Lcom/android/server/pm/PersonaManagerService;->cachedTime:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string/jumbo v4, "separatedapps"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/pm/PersonaManagerService$2;

    const/4 v4, 0x5

    invoke-direct {v3, v1, v4}, Lcom/android/server/pm/PersonaManagerService$2;-><init>(Lcom/android/server/pm/PersonaManagerService;I)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    const-string/jumbo v4, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    const-string/jumbo v5, "android.intent.action.USER_STOPPED"

    const-string/jumbo v6, "android.intent.action.USER_UNLOCKED"

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v6, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/server/pm/PersonaManagerService;->mUserReceiver:Lcom/android/server/pm/PersonaManagerService$2;

    invoke-virtual {v6, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_16e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/pm/PersonaManagerService;->mUserSwitchObserver:Lcom/android/server/pm/PersonaManagerService$1;

    invoke-interface {v0, v6, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_177
    .catch Landroid/os/RemoteException; {:try_start_16e .. :try_end_177} :catch_178

    goto :goto_17c

    :catch_178
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_17c
    const-string/jumbo v0, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    const-string/jumbo v6, "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

    invoke-static {v0, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/server/pm/PersonaManagerService;->mSetupWizardCompleteReceiver:Lcom/android/server/pm/PersonaManagerService$2;

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v0, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v6, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v6, "com.samsung.android.intent.action.FINGERPRINT_PASSWORD_UPDATED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v6, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v6, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/server/pm/PersonaManagerService;->mFingerPrintReceiver:Lcom/android/server/pm/PersonaManagerService$2;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v19, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v19}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    invoke-virtual {v1, v9, v9}, Lcom/android/server/pm/PersonaManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    move v6, v9

    move v7, v6

    :goto_1c2
    move-object v8, v0

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_1ea

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    iget-object v10, v1, Lcom/android/server/pm/PersonaManagerService;->mLocalService:Lcom/android/server/pm/PersonaManagerService$LocalService;

    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v10

    if-eqz v10, :cond_1e7

    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v8

    if-nez v8, :cond_1e7

    const/4 v7, 0x1

    :cond_1e7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c2

    :cond_1ea
    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1f2

    if-eqz v7, :cond_1f5

    :cond_1f2
    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->registerPackageReceiver()V

    :cond_1f5
    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN"

    const-string/jumbo v6, "android.intent.action.USER_INFO_CHANGED"

    invoke-static {v3, v4, v0, v5, v6}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    const-string/jumbo v3, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    const-string/jumbo v4, "samsung.knox.intent.action.rcp.MOVEMENT"

    const-string/jumbo v5, "samsung.knox.intent.action.CHANGE_LOCK_TYPE"

    const-string/jumbo v6, "com.samsung.android.knox.profilepolicy.intent.action.update"

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v13, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/server/pm/PersonaManagerService;->mAnalyticsReceiver:Lcom/android/server/pm/PersonaManagerService$2;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v19, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v19}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const-string/jumbo v0, "registerContentObserver - 0"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "knox_screen_off_timeout"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/pm/PersonaManagerService;->analyticsObserver:Lcom/android/server/pm/PersonaManagerService$7;

    const/4 v5, -0x1

    invoke-virtual {v0, v3, v9, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v3, "clearCrossProfileIntentFilters Exception: "

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    :try_start_248
    invoke-interface {v0, v9, v12}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V
    :try_end_24b
    .catch Landroid/os/RemoteException; {:try_start_248 .. :try_end_24b} :catch_257
    .catchall {:try_start_248 .. :try_end_24b} :catchall_254

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    :goto_24d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_26d

    :catchall_254
    move-exception v0

    goto/16 :goto_2e0

    :catch_257
    move-exception v0

    :try_start_258
    const-string/jumbo v6, "PersonaManagerService:FOTA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26a
    .catchall {:try_start_258 .. :try_end_26a} :catchall_254

    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    goto :goto_24d

    :goto_26d
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_288

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v0

    if-eqz v0, :cond_288

    const-string v0, "Device is super locked - start lock screen"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_288
    :try_start_288
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mCorePackageUid:Ljava/util/List;

    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.knox.securefolder"

    invoke-virtual {v3, v4, v9}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2a0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_288 .. :try_end_2a0} :catch_2a1

    goto :goto_2a6

    :catch_2a1
    const-string v0, "Cannot get UID for securefolder"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a6
    :try_start_2a6
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mCorePackageUid:Ljava/util/List;

    iget-object v3, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v12, v9}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2bb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a6 .. :try_end_2bb} :catch_2bc

    goto :goto_2c1

    :catch_2bc
    const-string v0, "Cannot get UID for KnoxCore package"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c1
    :try_start_2c1
    iget-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mCorePackageUid:Ljava/util/List;

    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v3, "com.samsung.android.appseparation"

    invoke-virtual {v1, v3, v9}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2d9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c1 .. :try_end_2d9} :catch_2da

    goto :goto_2df

    :catch_2da
    const-string v0, "Cannot get UID for App separation"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2df
    return-void

    :goto_2e0
    iget-object v1, v1, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final updateAppsListOnlyPresentInSeparatedApps()V
    .registers 11

    const-string v0, ""

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_10
    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_ae

    sget-object v5, Lcom/android/server/pm/PersonaManagerService;->mDeviceOwnerPackage:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    if-eqz v5, :cond_36

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    goto :goto_36

    :catchall_30
    move-exception v0

    goto/16 :goto_c8

    :catch_33
    move-exception v0

    goto/16 :goto_b7

    :cond_36
    :goto_36
    sput-object v0, Lcom/android/server/pm/PersonaManagerService;->mDeviceOwnerPackage:Ljava/lang/String;

    :cond_38
    const-string v0, "APP_SEPARATION_OUTSIDE"

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v6, Ljava/util/HashSet;

    const-string v7, "APP_SEPARATION_APP_LIST"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v7, Ljava/util/HashSet;

    const-string v8, "APP_SEPARATION_COEXISTANCE_LIST"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getSystemApps()Ljava/util/List;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getIMEPackages()Ljava/util/Set;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mImeSet:Ljava/util/Set;

    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v5, v5}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_72
    :goto_72
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ae

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_72

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_72

    invoke-virtual {p0, v8}, Lcom/android/server/pm/PersonaManagerService;->isKeyboardApp(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_72

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eq v0, v9, :cond_72

    sget-object v9, Lcom/android/server/pm/PersonaManagerService;->mDeviceOwnerPackage:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_72

    const-string/jumbo v9, "com.samsung.android.knox.kpu"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_aa

    goto :goto_72

    :cond_aa
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_ad} :catch_33
    .catchall {:try_start_10 .. :try_end_ad} :catchall_30

    goto :goto_72

    :cond_ae
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    :goto_b0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c5

    :goto_b7
    :try_start_b7
    const-string/jumbo v4, "PersonaManagerService"

    const-string v5, "Exception in getSeparatedAppsList"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c2
    .catchall {:try_start_b7 .. :try_end_c2} :catchall_30

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    goto :goto_b0

    :goto_c5
    sput-object v1, Lcom/android/server/pm/PersonaManagerService;->mAppsListOnlyPresentInSeparatedApps:Ljava/util/List;

    return-void

    :goto_c8
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mInjector:Lcom/android/server/pm/PersonaManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const-string/jumbo v0, "updatePersonaCache"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_83

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_83

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_12
    const-string/jumbo v2, "fwversion"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7f

    const-string/jumbo v2, "fotaversion"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_7f

    :cond_25
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_42

    if-nez p2, :cond_42

    const-string/jumbo v0, "PersonaManagerService"

    const-string/jumbo v2, "Remove cache entry request"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    goto :goto_42

    :catchall_40
    move-exception p0

    goto :goto_81

    :cond_42
    :goto_42
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    if-eqz p2, :cond_5a

    const-string/jumbo v0, "PersonaManagerService"

    const-string v2, "Add cache entry request"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    :cond_5a
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    if-eqz p2, :cond_78

    const-string/jumbo v0, "PersonaManagerService"

    const-string/jumbo v2, "update cache entry request"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    :cond_78
    if-eqz v0, :cond_7d

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->writePersonaCacheLocked()V

    :cond_7d
    monitor-exit v1

    goto :goto_83

    :cond_7f
    :goto_7f
    monitor-exit v1

    return v0

    :goto_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_12 .. :try_end_82} :catchall_40

    throw p0

    :cond_83
    :goto_83
    const-string/jumbo p0, "PersonaManagerService"

    const-string/jumbo p1, "updatePersonaCache status - "

    invoke-static {p1, p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public final updateProfileActivityTimeFromKnox(IJ)V
    .registers 5

    const-string/jumbo v0, "updateProfileActivityTimeFromKnox"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-nez v0, :cond_14

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/PersonaManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    :cond_14
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/PowerManagerInternal;->updateProfileActivityTimeFromKnox(IJ)V

    return-void
.end method

.method public final writePersonaCacheLocked()V
    .registers 11

    const-string/jumbo v0, "cache"

    const-string/jumbo v1, "personacache"

    const-string/jumbo v2, "writeUsersWithPersona() is called..."

    const-string/jumbo v3, "PersonaManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/util/AtomicFile;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheFile:Ljava/io/File;

    invoke-direct {v2, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v4, 0x0

    :try_start_17
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1b} :catch_7c

    :try_start_1b
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v8, "utf-8"

    invoke-virtual {v7, v6, v8}, Lcom/android/internal/util/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v4, v6}, Lcom/android/internal/util/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-virtual {v7, v6, v8}, Lcom/android/internal/util/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    invoke-virtual {v7, v4, v1}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService;->mPersonaCacheMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_44
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v9, "volatile."

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_66

    goto :goto_44

    :cond_66
    invoke-virtual {v7, v4, v0}, Lcom/android/internal/util/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v7, v4, v8, v6}, Lcom/android/internal/util/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v7, v4, v0}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_44

    :catch_70
    move-object v4, v5

    goto :goto_7c

    :cond_72
    invoke-virtual {v7, v4, v1}, Lcom/android/internal/util/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v7}, Lcom/android/internal/util/FastXmlSerializer;->endDocument()V

    invoke-virtual {v2, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_7b} :catch_70

    return-void

    :catch_7c
    :goto_7c
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string/jumbo p0, "writePersonaCacheLocked() Error writing persona cache list"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
