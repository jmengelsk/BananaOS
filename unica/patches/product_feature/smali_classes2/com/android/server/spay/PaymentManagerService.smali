.class public final Lcom/android/server/spay/PaymentManagerService;
.super Landroid/spay/IPaymentManager$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final COUNTRYISO_CODE:Ljava/lang/String;

.field public static final DEBUG:Z

.field public static volatile hasDisabledApplicationUninstallation:Z

.field public static mContext:Landroid/content/Context;


# instance fields
.field public final mRegisteredFWKClientMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.product_ship"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    const-string/jumbo v0, "ro.csc.countryiso_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/spay/PaymentManagerService;->COUNTRYISO_CODE:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/spay/PaymentManagerService;->hasDisabledApplicationUninstallation:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 14

    invoke-direct {p0}, Landroid/spay/IPaymentManager$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClientMap:Ljava/util/Map;

    sget-boolean p0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    const-string/jumbo v0, "PaymentManagerService"

    if-eqz p0, :cond_17

    const-string/jumbo p0, "PaymentManagerService() called"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    sput-object p1, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.spayfw"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string/jumbo v3, "com.samsung.android.spay"

    invoke-virtual {p0, v3, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string/jumbo v4, "com.samsung.android.spaymini"

    invoke-virtual {p0, v4, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string/jumbo v5, "com.samsung.android.samsungpay.gear"

    invoke-virtual {p0, v5, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string/jumbo v6, "com.samsung.android.rajaampat"

    invoke-virtual {p0, v6, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const/16 v7, 0x3e8

    invoke-virtual {p0, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    new-instance v7, Lcom/android/server/spay/UpdateReceiver;

    invoke-direct {v7}, Lcom/android/server/spay/UpdateReceiver;-><init>()V

    sget-object v8, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v7, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo p0, "com.samsung.android.app.stubupdater"

    const-string/jumbo v7, "spay state = "

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x1

    :try_start_69
    invoke-virtual {v8, p0, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    if-nez v10, :cond_70

    goto :goto_ab

    :cond_70
    invoke-virtual {v8, v3, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    if-nez v10, :cond_77

    goto :goto_ab

    :cond_77
    invoke-virtual {v8, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, p0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", updater state = "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    if-eq p0, v7, :cond_ab

    if-eq v10, v7, :cond_ab

    invoke-virtual {v8, v3, v7, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_9e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_69 .. :try_end_9e} :catch_9f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_69 .. :try_end_9e} :catch_a1

    goto :goto_ab

    :catch_9f
    move-exception p0

    goto :goto_a8

    :catch_a1
    const-string/jumbo p0, "updater /spay app is not installed"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    :goto_a8
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_ab
    :goto_ab
    invoke-static {p1, v3, v9}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-static {p1, v1, v9}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-static {p1, v4, v9}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-static {p1, v5, v9}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-static {p1, v6, v9}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static checkCallerPermissionFor(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v3, "PaymentManagerService"

    invoke-static {v1, v2, v0, v3, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo p0, "PaymentManagerService() - Valid Caller"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Security Exception Occurred while pid["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "] with uid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "] trying to access methodName ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "] in [PaymentManagerService] service"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "PaymentManagerService() - Invalid Caller"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method


# virtual methods
.method public final getMeasurementFile()[B
    .registers 1

    const-string/jumbo p0, "getMeasurementFile"

    invoke-static {p0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    const-string p0, "/system/tima_measurement_info"

    invoke-static {p0}, Lcom/android/server/spay/Utils;->readFile(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public final registerSPayFW(Landroid/spay/PaymentTZServiceConfig;)Landroid/spay/PaymentTZServiceCommnInfo;
    .registers 19

    move-object/from16 v1, p0

    const-string/jumbo v0, "registerSPayFW"

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    sget-object v2, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    const-string/jumbo v5, "PaymentManagerService"

    const/4 v6, 0x0

    if-eqz v3, :cond_40

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, v4, :cond_2d

    iget-object v2, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_46

    :cond_40
    const-string v2, "Error: am.getRunningAppProcesses() is null"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    move-object v2, v6

    :goto_46
    if-nez v2, :cond_51

    const-string v2, "Error: can\'t find processname for PID"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :cond_51
    move-object v5, v2

    const-string/jumbo v2, "PaymentManagerService"

    const-string v3, "Inside registerSPayFW, uid: "

    const-string v7, ", pid: "

    const-string v8, ", package: "

    invoke-static {v0, v4, v3, v7, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v5, v2}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClientMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    iget-object v0, v1, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClientMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    iget v2, v0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mPid:I

    if-eq v4, v2, :cond_89

    const-string/jumbo v2, "PaymentManagerService"

    const-string/jumbo v3, "Registered Client Died. Need to Rebind"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

    invoke-virtual {v0}, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;->deleteClient()V

    goto :goto_92

    :cond_89
    const-string/jumbo v0, "PaymentManagerService"

    const-string v1, "Error: Framework App is already registered. Re-Registration not allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_92
    :goto_92
    new-instance v3, Landroid/spay/PaymentTZServiceCommnInfo;

    invoke-direct {v3}, Landroid/spay/PaymentTZServiceCommnInfo;-><init>()V

    const/16 v0, 0x9

    iput v0, v3, Landroid/spay/PaymentTZServiceCommnInfo;->mServiceVersion:I

    move-object/from16 v2, p1

    iget-object v0, v2, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_134

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    new-instance v7, Lcom/android/server/spay/TAController;

    sget-object v8, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/spay/PaymentTZServiceConfig$TAConfig;

    invoke-direct {v7}, Landroid/spay/ITAController$Stub;-><init>()V

    const/4 v11, 0x0

    iput-boolean v11, v7, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    sget-boolean v12, Lcom/android/server/spay/TAController;->DEBUG:Z

    const-string/jumbo v13, "PaymentManagerService"

    if-eqz v12, :cond_ec

    const-string/jumbo v12, "TAController constructor: taId = "

    const-string v14, "; maxSendCmdSize = "

    invoke-static {v9, v12, v14}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, v10, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxSendCmdSize:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "; maxRecvRespSize = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v10, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxRecvRespSize:I

    invoke-static {v12, v14, v13}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_ec
    iput-object v8, v7, Lcom/android/server/spay/TAController;->mContext:Landroid/content/Context;

    iput v9, v7, Lcom/android/server/spay/TAController;->mTAId:I

    new-instance v8, Lcom/android/server/spay/PaymentTZNative;

    iget-object v12, v10, Landroid/spay/PaymentTZServiceConfig$TAConfig;->taTechnology:Ljava/lang/String;

    iget-object v14, v10, Landroid/spay/PaymentTZServiceConfig$TAConfig;->rootName:Ljava/lang/String;

    iget-object v15, v10, Landroid/spay/PaymentTZServiceConfig$TAConfig;->processName:Ljava/lang/String;

    iget v11, v10, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxSendCmdSize:I

    iget v10, v10, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxRecvRespSize:I

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    sget-boolean v16, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    if-eqz v16, :cond_10c

    move-object/from16 v16, v0

    const-string/jumbo v0, "PaymentTZNative constructor: taId = "

    invoke-static {v9, v0, v13}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_10e

    :cond_10c
    move-object/from16 v16, v0

    :goto_10e
    iput v9, v8, Lcom/android/server/spay/PaymentTZNative;->mTAId:I

    const-wide/16 v0, 0x0

    iput-wide v0, v8, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    iput v11, v8, Lcom/android/server/spay/PaymentTZNative;->mSendBufSize:I

    iput v10, v8, Lcom/android/server/spay/PaymentTZNative;->mRecvBufSize:I

    iput-object v12, v8, Lcom/android/server/spay/PaymentTZNative;->mTATechnology:Ljava/lang/String;

    iput-object v14, v8, Lcom/android/server/spay/PaymentTZNative;->mRootName:Ljava/lang/String;

    iput-object v15, v8, Lcom/android/server/spay/PaymentTZNative;->mProcessName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    iput-object v8, v7, Lcom/android/server/spay/TAController;->mNative:Lcom/android/server/spay/PaymentTZNative;

    iget-object v0, v3, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto/16 :goto_a7

    :cond_134
    const-string v0, "KR"

    sget-object v1, Lcom/android/server/spay/PaymentManagerService;->COUNTRYISO_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_169

    sget-boolean v0, Lcom/android/server/spay/PaymentManagerService;->hasDisabledApplicationUninstallation:Z

    if-nez v0, :cond_169

    monitor-enter p0

    :try_start_143
    sget-boolean v0, Lcom/android/server/spay/PaymentManagerService;->hasDisabledApplicationUninstallation:Z

    if-nez v0, :cond_165

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    new-instance v6, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    sget-object v7, Lcom/android/server/spay/PaymentManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getApplicationPolicy()Lcom/samsung/android/knox/application/ApplicationPolicy;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.android.spayfw"

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/spay/PaymentManagerService;->hasDisabledApplicationUninstallation:Z

    goto :goto_165

    :catchall_163
    move-exception v0

    goto :goto_167

    :cond_165
    :goto_165
    monitor-exit p0

    goto :goto_169

    :goto_167
    monitor-exit p0
    :try_end_168
    .catchall {:try_start_143 .. :try_end_168} :catchall_163

    throw v0

    :cond_169
    :goto_169
    new-instance v0, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;-><init>(Lcom/android/server/spay/PaymentManagerService;Landroid/spay/PaymentTZServiceConfig;Landroid/spay/PaymentTZServiceCommnInfo;ILjava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClientMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "PaymentManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "callingApp: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is registed, current size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClientMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method
