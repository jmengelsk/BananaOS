.class public Lcom/samsung/android/knoxguard/service/SystemIntentProcessor;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final KEY_URI:Ljava/lang/String; = "uri"

.field public static final TAG:Ljava/lang/String; = "KG.SystemIntentProcessor"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I
    .registers 4

    if-nez p0, :cond_5

    const/16 p0, -0x3e8

    return p0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "err wrapper = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    const-string v2, "KG.SystemIntentProcessor"

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez v0, :cond_1b

    iget p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    return p0

    :cond_1b
    return v0
.end method

.method public static handleBootCompleted(Landroid/content/Context;)V
    .registers 7

    const-string/jumbo v0, "handling boot completed"

    const-string v1, "KG.SystemIntentProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_c

    goto/16 :goto_cd

    :cond_c
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->getStateAndSetToKGSystemProperty()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getTaErrorCode()I

    move-result v2

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isSetupWizardFinished(Landroid/content/Context;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isSetupWizardFinished : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v2}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkTaIntegrity(II)Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;

    move-result-object v2

    iget-boolean v4, v2, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;->isOk:Z

    if-nez v4, :cond_42

    const-string/jumbo v0, "checkTaIntegrity false. Lock device without passcode."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v2, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$TAIntegrityResult;->errorCode:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->getTALockScreenErrorCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->lockSeDevice(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_42
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkAPSerialIntegrity(I)Z

    move-result v2

    if-nez v2, :cond_54

    const-string/jumbo v0, "checkAPSerialIntegrity false. Lock device without passcode."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "1002"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->lockSeDevice(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_54
    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkKGClientIntegrityAndEnableComponentsWithFlag(Landroid/content/Context;IZ)Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;

    move-result-object v2

    iget-boolean v4, v2, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->isOk:Z

    if-eqz v4, :cond_8f

    const-string/jumbo v2, "checkKGClientIntegrity true. "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    if-ne v2, v0, :cond_c4

    if-eqz v3, :cond_7a

    :try_start_68
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->bindAndSetToLockScreen()V

    const-string v2, "KG bindToLockScreen"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_68 .. :try_end_70} :catchall_71

    goto :goto_c4

    :catchall_71
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c4

    :cond_7a
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/samsung/android/knoxguard/service/SystemIntentProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const-wide/32 v3, 0x493e0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c4

    :cond_8f
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isChinaDevice()Z

    move-result v4

    if-eqz v4, :cond_b3

    if-nez v0, :cond_a0

    const-string p0, "Device country is China"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/knoxguard/service/SystemIntentProcessor;->setCheckingStateToKg()V

    return-void

    :cond_a0
    if-eqz v3, :cond_cd

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isStateForEnrolledDevice(I)Z

    move-result v0

    if-eqz v0, :cond_cd

    const-string v0, "China Binary and previously enrolled. Lock device without passcode."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "3040"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->autoLockDevice(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_b3
    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->toErrorCode(Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/samsung/android/knoxguard/service/utils/Utils;->lockSeDevice(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v2, "checkKGClientIntegrity false. Lock device without passcode."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c4
    :goto_c4
    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isStateForEnrolledDevice(I)Z

    move-result v0

    if-eqz v0, :cond_cd

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkSystemUiIntegrity(Landroid/content/Context;)V

    :cond_cd
    :goto_cd
    return-void
.end method

.method public static handlePackageDataCleared(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5

    const-string/jumbo v0, "handling package data cleared"

    const-string v1, "KG.SystemIntentProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3a

    if-nez p0, :cond_d

    goto :goto_3a

    :cond_d
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    const-string/jumbo v0, "com.samsung.android.kgclient"

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAState()I

    move-result p1

    const/4 v0, 0x3

    if-ne v0, p1, :cond_3a

    const-string p1, "3001"

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->lockSeDevice(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "Client data was cleared. Lock device"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    :goto_3a
    return-void
.end method

.method public static handlePackageReplacedOrRemoved(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5

    const-string/jumbo v0, "handling package replaced or removed"

    const-string v1, "KG.SystemIntentProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_69

    if-nez p0, :cond_d

    goto :goto_69

    :cond_d
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_69

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.samsung.android.kgclient"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAState()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkKGClientIntegrityAndEnableComponentsWithFlag(Landroid/content/Context;IZ)Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;

    move-result-object p1

    iget-boolean v0, p1, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;->isOk:Z

    if-eqz v0, :cond_3d

    const-string/jumbo p0, "checkKGClientIntegrity true. Do nothing."

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3d
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->toErrorCode(Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil$IntegritySeResult;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->lockSeDevice(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo p0, "checkKGClientIntegrity false. Lock device without passcode."

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4f
    const-string/jumbo v0, "com.android.systemui"

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_69

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAState()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isStateForEnrolledDevice(I)Z

    move-result p1

    if-eqz p1, :cond_69

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/utils/IntegritySeUtil;->checkSystemUiIntegrity(Landroid/content/Context;)V

    :cond_69
    :goto_69
    return-void
.end method

.method public static handleSetupWizardCompleted(Landroid/content/Context;)V
    .registers 4

    const-string/jumbo v0, "handling setup wizard completed"

    const-string v1, "KG.SystemIntentProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_b

    goto :goto_25

    :cond_b
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAState()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isChinaDevice()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->isStateForEnrolledDevice(I)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "China Binary and previously enrolled. Lock device without passcode."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "3040"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->autoLockDevice(Landroid/content/Context;Ljava/lang/String;)V

    :cond_25
    :goto_25
    return-void
.end method

.method public static handleUserPresent(Landroid/content/Context;)V
    .registers 4

    const-string/jumbo v0, "handling user present"

    const-string v1, "KG.SystemIntentProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_b

    goto :goto_29

    :cond_b
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAState()I

    move-result v0

    const-string/jumbo v2, "Locking device "

    invoke-static {v0, v2, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    if-ne v2, v0, :cond_2a

    :try_start_18
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->bindAndSetToLockScreen()V

    const-string p0, "KG bindToLockScreen"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29
    return-void

    :cond_2a
    const-string v0, "2003"

    invoke-static {p0, v0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->lockSeDevice(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$handleBootCompleted$0()V
    .registers 3

    const-string v0, "KG.SystemIntentProcessor"

    const/4 v1, 0x3

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAState()I

    move-result v2

    if-ne v1, v2, :cond_1a

    :try_start_9
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->bindAndSetToLockScreen()V

    const-string v1, "KG bindToLockScreen"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    return-void
.end method

.method public static setCheckingStateToKg()V
    .registers 4

    const-string/jumbo v0, "setCheckingStateToKg result "

    const-string/jumbo v1, "setCheckingStateToKg"

    const-string v2, "KG.SystemIntentProcessor"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_b
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_userChecking(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/SystemIntentProcessor;->getResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setCheckingStateToKg Exception "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
