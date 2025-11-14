.class public Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final CLIENT2_INTEGRITY_COMPONENT_ERROR_ADMIN_RECEIVER:I = 0x40

.field public static final CLIENT2_INTEGRITY_COMPONENT_ERROR_ALARM_SERVICE:I = 0x400

.field public static final CLIENT2_INTEGRITY_COMPONENT_ERROR_KG_EVENT_SERVICE:I = 0x200

.field public static final CLIENT2_INTEGRITY_COMPONENT_ERROR_KG_PROVIDER:I = 0x800

.field public static final CLIENT2_INTEGRITY_COMPONENT_ERROR_SELFUPDATE_RECEIVER:I = 0x100

.field public static final CLIENT2_INTEGRITY_COMPONENT_ERROR_SYSTEM_INTENT_RECEIVER:I = 0x80

.field public static final CLIENT_INTEGRITY_BASE2:I = 0x1001

.field public static final CLIENT_INTEGRITY_ERROR_ENABLED:I = 0x4

.field public static final CLIENT_INTEGRITY_ERROR_INVALID_VERSION:I = 0x8

.field public static final CLIENT_INTEGRITY_ERROR_SIGNATURE:I = 0x2

.field public static final KG2_STARTED_VERSION_CODE:J = 0x11e1a300L

.field public static final TAG:Ljava/lang/String; = "KG.IntegritySeUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAPSerialIntegrity(I)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSingleOtpBitFusedAndStateIsNotCompleted(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->isAPSerialValid()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static checkComponentsAndEnableComponentWithFlag(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;Z)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->isKGComponentsEnabled(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;)Z

    move-result v0

    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceMode()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string v0, "Enabling components due to maintenance mode"

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->enableComponents(Landroid/content/Context;)V

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->isKGComponentsEnabled(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static checkKGClientIntegrity(Landroid/content/Context;I)Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkKGClientIntegrityAndEnableComponentsWithFlag(Landroid/content/Context;IZ)Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;

    move-result-object p0

    return-object p0
.end method

.method public static checkKGClientIntegrityAndEnableComponent(Landroid/content/Context;I)Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkKGClientIntegrityAndEnableComponentsWithFlag(Landroid/content/Context;IZ)Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;

    move-result-object p0

    return-object p0
.end method

.method public static checkKGClientIntegrityAndEnableComponentsWithFlag(Landroid/content/Context;IZ)Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;
    .locals 11

    const-string/jumbo v0, "isComponentEnabled : "

    const-string/jumbo v1, "isValidVersion : "

    const-string/jumbo v2, "isEnabled : "

    const-string/jumbo v3, "isSystemApp : "

    const-string/jumbo v4, "checkSignatures : "

    sget-object v5, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkKGClientIntegrity()"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "kgState() : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;

    invoke-direct {v6}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;-><init>()V

    const/4 v7, 0x4

    if-ne v7, p1, :cond_0

    const-string/jumbo p0, "checkKGClientIntegrity() KG_STATE_COMPLETED. Do nothing."

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    iput-boolean p0, v6, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->isOk:Z

    return-object v6

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkSignatures(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->isSystemApp(Landroid/content/Context;)Z

    move-result v7

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->isEnabled(Landroid/content/Context;)Z

    move-result v8

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->isValidVersion(Landroid/content/Context;)Z

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, v6, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->validSignature:Z

    iput-boolean v8, v6, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabled:Z

    iput-boolean v9, v6, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->validVersion:Z

    invoke-static {p0, v6, p2}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkComponentsAndEnableComponentWithFlag(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;Z)Z

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_1

    const-string/jumbo v0, "kgclient is invalid. makes client disable"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->disableClient(Landroid/content/Context;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    and-int p0, p1, v8

    and-int/2addr p0, v9

    and-int/2addr p0, p2

    iput-boolean p0, v6, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->isOk:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :goto_1
    sget-object p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

.method public static checkSignatures(Landroid/content/Context;)Z
    .locals 6

    const-string/jumbo v0, "com.samsung.android.kgclient"

    const-string/jumbo v1, "pkgInfo : "

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    const/16 v3, 0x40

    :try_start_0
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "KG Client signature doesn\'t match with platform."

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p0, "KG Client signature match with platform."

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :goto_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkKGClientIntegrity Exception. "

    invoke-static {p0, v1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static checkSystemUiIntegrity(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkSystemUiIntegrity()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->testSystemUiCorrupted(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->powerOff(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public static checkTaIntegrity(II)Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;
    .locals 3

    new-instance v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;

    invoke-direct {v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isOtpBitFusedWithActive()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSingleOtpBitFusedAndStateIsNotCompleted(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v2, v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;->isOk:Z

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->isTaErrorCode(I)Z

    move-result p0

    if-eqz p0, :cond_2

    iput p1, v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;->errorCode:I

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;->isOk:Z

    return-object v0

    :cond_2
    iput-boolean v2, v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;->isOk:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    sget-object p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkTaIntegrity Exception. "

    invoke-static {p0, v1, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static disableClient(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "PackageManager is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "disable kgclient"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.samsung.android.kgclient"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "disable exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public static enableAppOpIfNotAllowed(Landroid/content/pm/PackageInfo;Landroid/app/AppOpsManager;I)V
    .locals 3

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v1, "com.samsung.android.kgclient"

    invoke-virtual {p1, p2, v0, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "allow "

    invoke-static {p2, v2, v0}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p0, v1, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static enableComponent(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6

    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v0, "com.samsung.android.kgclient"

    invoke-direct {v1, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceMode()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string p1, "IPackageManager is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;IIILjava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "PackageManager is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1, p1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "enableComponent Exception. "

    invoke-static {p0, p2, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static enableComponents(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "enableComponents()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->getActiveUserId()I

    move-result v0

    const-string/jumbo v1, "com.samsung.android.kgclient.agent.KGDeviceAdminReceiver"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->enableComponent(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v1, "com.samsung.android.kgclient.receiver.SystemIntentReceiver"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->enableComponent(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v1, "com.samsung.android.kgclient.selfupdate.SelfupdateReceiver"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->enableComponent(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v1, "com.samsung.android.kgclient.events.KGEventService"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->enableComponent(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v1, "com.samsung.android.kgclient.alarm.AlarmService"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->enableComponent(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v1, "com.samsung.android.kgclient.provider.KGProvider"

    invoke-static {p0, v1, v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->enableComponent(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static getActiveUserId()I
    .locals 5

    const-string/jumbo v0, "user id is "

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "semGetCurrentUser error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static getClientVersionCode(Landroid/content/Context;J)J
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "PackageManager is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p1

    :cond_0
    :try_start_0
    const-string/jumbo v0, "com.samsung.android.kgclient"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Client Notfound : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-wide p1
.end method

.method public static getFailedIntegrityResult(Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->validSignature:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "SIGNATURE,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabled:Z

    if-nez v1, :cond_1

    const-string v1, "ENABLED,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->validVersion:Z

    if-nez v1, :cond_2

    const-string/jumbo v1, "VERSION,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAdminReceiver:Z

    if-nez v1, :cond_3

    const-string v1, "KGDeviceAdminReceiver,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSystemIntentReceiver:Z

    if-nez v1, :cond_4

    const-string/jumbo v1, "SystemIntentReceiver,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSelfUpdateReceiver:Z

    if-nez v1, :cond_5

    const-string/jumbo v1, "SelfUpdateReceiver,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKgEventService:Z

    if-nez v1, :cond_6

    const-string v1, "KgEventService,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAlarmService:Z

    if-nez v1, :cond_7

    const-string v1, "AlarmService,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-boolean p0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKGProvider:Z

    if-nez p0, :cond_8

    const-string p0, "KGProvider,"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTALockScreenErrorCode(I)Ljava/lang/String;
    .locals 2

    const/16 v0, -0x3ee

    if-eq p0, v0, :cond_2

    const/16 v0, 0x201

    if-eq p0, v0, :cond_1

    const/16 v0, 0x207

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "not listed code : "

    invoke-static {p0, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "1004"

    return-object p0

    :cond_1
    const-string p0, "1003"

    return-object p0

    :cond_2
    const-string p0, "1001"

    return-object p0
.end method

.method public static hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/pm/ComponentInfo;",
            ">([TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    iget-object v4, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/content/pm/ComponentInfo;->isEnabled()Z

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isAPSerialValid()Z
    .locals 3

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getTAInfo(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getStringResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "[a-fA-F0-9]{32}"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isAPSerialValid - "

    invoke-static {v2, v1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "com.samsung.android.kgclient"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isEnabled NameNotFoundException : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isKGComponentsEnabled(Landroid/content/Context;Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceMode()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v2, "com.samsung.android.kgclient"

    if-eqz v1, :cond_1

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string v1, "IPackageManager is null"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->getActiveUserId()I

    move-result v1

    const-wide/16 v3, 0xe

    invoke-interface {p0, v2, v3, v4, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PackageManager is null"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const/16 v1, 0xe

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    :goto_0
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    const-string/jumbo v3, "com.samsung.android.kgclient.agent.KGDeviceAdminReceiver"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAdminReceiver:Z

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    const-string/jumbo v3, "com.samsung.android.kgclient.receiver.SystemIntentReceiver"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSystemIntentReceiver:Z

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    const-string/jumbo v3, "com.samsung.android.kgclient.selfupdate.SelfupdateReceiver"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSelfUpdateReceiver:Z

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    const-string/jumbo v3, "com.samsung.android.kgclient.events.KGEventService"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKgEventService:Z

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    const-string/jumbo v3, "com.samsung.android.kgclient.alarm.AlarmService"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAlarmService:Z

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    const-string/jumbo v1, "com.samsung.android.kgclient.provider.KGProvider"

    invoke-static {p0, v2, v1}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->hasEnabledComponent([Landroid/content/pm/ComponentInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKGProvider:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isKGComponentsEnabled error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/AndroidException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAdminReceiver:Z

    if-eqz p0, :cond_3

    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSystemIntentReceiver:Z

    if-eqz p0, :cond_3

    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSelfUpdateReceiver:Z

    if-eqz p0, :cond_3

    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKgEventService:Z

    if-eqz p0, :cond_3

    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAlarmService:Z

    if-eqz p0, :cond_3

    iget-boolean p0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKGProvider:Z

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static isSystemApp(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "com.samsung.android.kgclient"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    return v1

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isSystemApp NameNotFoundException : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public static isTaErrorCode(I)Z
    .locals 1

    const/16 v0, 0x201

    if-eq v0, p0, :cond_1

    const/16 v0, 0x207

    if-eq v0, p0, :cond_1

    const/16 v0, -0x3ee

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidVersion(Landroid/content/Context;)Z
    .locals 4

    const-wide/32 v0, 0x11e1a300

    invoke-static {p0, v0, v1}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->getClientVersionCode(Landroid/content/Context;J)J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setInitialState(Landroid/content/Context;ILandroid/app/AppOpsManager$OnOpChangedInternalListener;)V
    .locals 9

    const-string/jumbo v0, "com.samsung.android.kgclient"

    sget-object v1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setInitialState, state : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "device_policy"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    if-nez v2, :cond_0

    const-string p0, "DPM is not available"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkSignatures(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string p0, "KGClient is malicious, it will be locked"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x4

    if-eq v1, p1, :cond_5

    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-interface {v6, v0, v5}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6, v0, v4, v5}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    sget-object v6, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception - unhide "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v7, v6}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_0
    new-instance v5, Landroid/content/ComponentName;

    const-string/jumbo v6, "com.samsung.android.kgclient.agent.KGDeviceAdminReceiver"

    invoke-direct {v5, v0, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x2

    if-eq v6, p1, :cond_4

    const/4 v6, 0x3

    if-ne v6, p1, :cond_3

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-virtual {v2, v5, v4}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v2, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setInitialState call edm admin api for adding edm services!!!"

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2, v5, v4}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :goto_2
    sget-object v5, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "com.samsung.android.kgclientsetActiveAdmin"

    invoke-static {v2, v6, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    const-string/jumbo v2, "ro.boot.kg.bit"

    const-string v5, "FF"

    invoke-static {v2, v5}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getStringSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "01"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "11"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    move v2, v4

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v2, 0x1

    :goto_5
    if-nez v5, :cond_8

    if-eqz v2, :cond_9

    if-eq v1, p1, :cond_9

    :cond_8
    :try_start_3
    const-string/jumbo p1, "appops"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/knoxguard/service/utils/Constants;->PROTECTED_APP_OPS_LIST:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, p0, v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->enableAppOpIfNotAllowed(Landroid/content/pm/PackageInfo;Landroid/app/AppOpsManager;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error - appOps : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void

    :catch_2
    move-exception p0

    sget-object p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Client Notfound : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static testSystemUiCorrupted(Landroid/content/Context;)I
    .locals 9

    const-string/jumbo p0, "com.android.systemui"

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v7, 0x0

    if-nez v1, :cond_0

    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "PackageManager is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-interface {v1, p0, v2, v3, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    const/4 v8, 0x1

    :try_start_1
    const-string/jumbo v2, "com.android.systemui"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    move v8, v7

    goto :goto_1

    :catch_1
    move-exception v0

    move v8, v7

    :goto_0
    sget-object v2, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "testSystemUiCorrupted : Exception in checking enabled value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    :try_start_2
    invoke-interface {v1, p0, v7}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    or-int/lit8 v8, v8, 0x2

    invoke-interface {v1, p0, v7, v7}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object p0, v0

    sget-object v0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "testSystemUiCorrupted : Exception in checking hidden value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_2
    sget-object p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "testSystemUiCorrupted: "

    invoke-static {v8, v0, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v8
.end method

.method public static toErrorCode(Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->validSignature:Z

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/lit16 v1, v1, 0x1001

    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabled:Z

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    :goto_1
    or-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->validVersion:Z

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    :goto_2
    or-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAdminReceiver:Z

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_3

    :cond_4
    const/16 v2, 0x40

    :goto_3
    or-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSystemIntentReceiver:Z

    if-eqz v2, :cond_5

    move v2, v0

    goto :goto_4

    :cond_5
    const/16 v2, 0x80

    :goto_4
    or-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledSelfUpdateReceiver:Z

    if-eqz v2, :cond_6

    move v2, v0

    goto :goto_5

    :cond_6
    const/16 v2, 0x100

    :goto_5
    or-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKgEventService:Z

    if-eqz v2, :cond_7

    move v2, v0

    goto :goto_6

    :cond_7
    const/16 v2, 0x200

    :goto_6
    or-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledAlarmService:Z

    if-eqz v2, :cond_8

    move v2, v0

    goto :goto_7

    :cond_8
    const/16 v2, 0x400

    :goto_7
    or-int/2addr v1, v2

    iget-boolean p0, p0, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->enabledKGProvider:Z

    if-eqz p0, :cond_9

    goto :goto_8

    :cond_9
    const/16 v0, 0x800

    :goto_8
    or-int p0, v1, v0

    return p0
.end method
