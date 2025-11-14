.class public final Lcom/samsung/android/server/continuity/PreconditionObserver;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final FEATURE_CONTINUITY:I

.field public static final SAMSUNG_ACCOUNT_TYPE:Ljava/lang/String;


# instance fields
.field public final URI_CONTINUITY:Landroid/net/Uri;

.field public final URI_HW_SHARING:Landroid/net/Uri;

.field public final URI_MULTI_CONTROL:Landroid/net/Uri;

.field public final URI_VIDEO_CALL_CONTINUITY:Landroid/net/Uri;

.field public final mAccountChangeReceiver:Lcom/samsung/android/server/continuity/PreconditionObserver$1;

.field public final mAutoSwitchSettingHelper:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

.field public final mContext:Landroid/content/Context;

.field public mCurrentAccount:Landroid/accounts/Account;

.field public mIsAddedAccountListener:Z

.field public mIsPkgObserverRegistered:Z

.field public mListener:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;

.field public final mOnAccountsUpdateListener:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda0;

.field public final mPkgReceiver:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;

.field public mRegisterSettingsObserver:Z

.field public final mSettingObserver:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;

.field public mState:I

.field public mUserId:I


# direct methods
.method public static -$$Nest$mnotifyReplacedPackage(Lcom/samsung/android/server/continuity/PreconditionObserver;Z)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mListener:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->meetConditions()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPackageReplaced - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "[MCF_DS_SYS]_McfDsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeMessage(I)V

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeAndSendMessageDelayed(IJ)V

    return-void

    :cond_1
    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeAndSendMessageDelayed(IJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static -$$Nest$msetInstalledFlag(Lcom/samsung/android/server/continuity/PreconditionObserver;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "com.samsung.android.scloud"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "[MCF_DS_SYS]_PreconditionObserver"

    if-eqz v0, :cond_0

    const-string/jumbo p1, "setInstalledFlag - Scloud"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xf0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setFlag(I)V

    return-void

    :cond_0
    const-string/jumbo v0, "com.samsung.android.mcfds"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "setInstalledFlag - MCFDS"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xf00

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setFlag(I)V

    :cond_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/server/continuity/common/Utils;->isWatch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/server/continuity/sem/SemWrapper;->SEM_ALL:Landroid/os/UserHandle;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_MCF_SUPPORT_CONTINUITY"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    sput v0, Lcom/samsung/android/server/continuity/PreconditionObserver;->FEATURE_CONTINUITY:I

    invoke-static {}, Lcom/samsung/android/server/continuity/common/Utils;->isWatch()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "com.samsung.android.wearable.samsungaccount"

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "com.osp.app.signin"

    :goto_1
    sput-object v0, Lcom/samsung/android/server/continuity/PreconditionObserver;->SAMSUNG_ACCOUNT_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x2710

    iput v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    new-instance v0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;-><init>(Lcom/samsung/android/server/continuity/PreconditionObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mSettingObserver:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;

    new-instance v0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;-><init>(Lcom/samsung/android/server/continuity/PreconditionObserver;)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mPkgReceiver:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$2;

    new-instance v0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/continuity/PreconditionObserver;)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mOnAccountsUpdateListener:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    new-instance v1, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/continuity/PreconditionObserver;)V

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda1;)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mAutoSwitchSettingHelper:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    invoke-static {}, Lcom/samsung/android/server/continuity/common/Utils;->isWatch()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "mcf_watch_continuity"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->URI_CONTINUITY:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "mcf_continuity"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->URI_CONTINUITY:Landroid/net/Uri;

    :goto_0
    const-string/jumbo p1, "multi_control_enabled"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->URI_MULTI_CONTROL:Landroid/net/Uri;

    const-string/jumbo p1, "vcc_continuity"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->URI_VIDEO_CALL_CONTINUITY:Landroid/net/Uri;

    const-string/jumbo p1, "hwrs_service"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->URI_HW_SHARING:Landroid/net/Uri;

    new-instance p1, Lcom/samsung/android/server/continuity/PreconditionObserver$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/continuity/PreconditionObserver$1;-><init>(Lcom/samsung/android/server/continuity/PreconditionObserver;)V

    iput-object p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mAccountChangeReceiver:Lcom/samsung/android/server/continuity/PreconditionObserver$1;

    return-void
.end method

.method public static isSupported(I)Z
    .locals 1

    sget v0, Lcom/samsung/android/server/continuity/PreconditionObserver;->FEATURE_CONTINUITY:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    and-int/2addr v0, p0

    if-ne v0, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportedContinuity()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupported(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final checkAccountUpdated()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object v0

    const-string/jumbo v1, "[MCF_DS_SYS]_PreconditionObserver"

    if-eqz v0, :cond_0

    sget-boolean v2, Lcom/samsung/android/server/continuity/common/Utils;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "checkAccountUpdated - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v4

    goto :goto_1

    :cond_1
    if-nez v2, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v4

    :goto_1
    if-nez v2, :cond_4

    const-string/jumbo p0, "checkAccountUpdated - is not changed"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iput-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mCurrentAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/samsung/android/server/continuity/common/Utils;->isHighPowerConsumptionChipset()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setContinuitySetting(I)V

    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isEnableSettings()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->updateSettings(Z)V

    :cond_5
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setFlag(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setContinuitySetting(I)V

    iget v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    and-int/lit8 v0, v0, -0x10

    iput v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    :goto_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->notifyChanged(I)V

    return-void
.end method

.method public final getSamsungAccount()Landroid/accounts/Account;
    .locals 5

    const-string/jumbo v0, "[MCF_DS_SYS]_PreconditionObserver"

    const-string/jumbo v1, "getSamsungAccount - "

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    iget p0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    invoke-direct {v4, p0}, Landroid/os/UserHandle;-><init>(I)V

    sget-object p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->SAMSUNG_ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v3, p0, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v3, p0

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-object v2, p0, v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "getSamsungAccount - IllegalStateException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    sget-boolean p0, Lcom/samsung/android/server/continuity/common/Utils;->DEBUG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v2
.end method

.method public final isEnableSettings()Z
    .locals 8

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mAutoSwitchSettingHelper:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    iget-boolean v0, v0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->mIsAutoSwitchModeEnabled:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/samsung/android/server/continuity/common/Utils;->isWatch()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupportedContinuity()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "mcf_watch_continuity"

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isEnableSettings(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move v3, v2

    goto :goto_2

    :cond_1
    move v3, v1

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupportedContinuity()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "mcf_continuity"

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isEnableSettings(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :goto_2
    invoke-static {}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupportedContinuity()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "multi_control_enabled"

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isEnableSettings(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    invoke-static {}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupportedContinuity()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "vcc_continuity"

    invoke-virtual {p0, v5}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isEnableSettings(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v2

    goto :goto_4

    :cond_4
    move v5, v1

    :goto_4
    invoke-static {}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupportedContinuity()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "hwrs_service"

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isEnableSettings(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    move p0, v2

    goto :goto_5

    :cond_5
    move p0, v1

    :goto_5
    const-string/jumbo v6, "isEnableSettings - "

    const-string v7, ", "

    invoke-static {v6, v0, v7, v3, v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v6, v4, v7, v5, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v7, "[MCF_DS_SYS]_PreconditionObserver"

    invoke-static {v7, v6, p0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    if-nez v0, :cond_7

    if-nez v3, :cond_7

    if-nez v4, :cond_7

    if-nez v5, :cond_7

    if-eqz p0, :cond_6

    goto :goto_6

    :cond_6
    return v1

    :cond_7
    :goto_6
    return v2
.end method

.method public final isEnableSettings(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    sget-object v2, Lcom/samsung/android/server/continuity/sem/SemWrapper;->SEM_ALL:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0, p0}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isEnableSettings - "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "[MCF_DS_SYS]_PreconditionObserver"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final meetConditions()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "meetConditions - state : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[MCF_DS_SYS]_PreconditionObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    const v0, 0xffff

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final notifyChanged(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mListener:Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;

    if-eqz v0, :cond_3

    iget p0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    iget-object v0, v0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    iget-object v1, v0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-virtual {v1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->meetConditions()Z

    move-result v1

    iget-boolean v2, v0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onChanged - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    const-string v4, ", "

    invoke-static {v2, v3, v4, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v3, "[MCF_DS_SYS]_McfDsManager"

    invoke-static {v2, p1, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iput-boolean v1, v0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeMessage(I)V

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, v4}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->sendMessageDelayed(IIJ)V

    return-void

    :cond_1
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeMessage(I)V

    and-int/lit16 p0, p0, 0xf00

    if-lez p0, :cond_2

    const-wide/16 p0, 0xbb8

    invoke-virtual {v0, v3, p0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeAndSendMessageDelayed(IJ)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->unbindMcf()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onChangeSettings(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isEnableSettings()Z

    move-result v0

    iget v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    const v2, 0xf000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/continuity/PreconditionObserver;->updateSettings(Z)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->notifyChanged(I)V

    return-void
.end method

.method public final setContinuitySetting(I)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/server/continuity/PreconditionObserver;->isSupportedContinuity()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "setContinuitySetting : "

    const-string/jumbo v1, "[MCF_DS_SYS]_PreconditionObserver"

    invoke-static {p1, v0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mUserId:I

    sget-object v2, Lcom/samsung/android/server/continuity/sem/SemWrapper;->SEM_ALL:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "mcf_continuity"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->semPutIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.samsung.android.mcfds.LOG_SAMSUNG_ANALYTICS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "type"

    const-string/jumbo v1, "event"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "screenId"

    const-string v1, "101"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "eventId"

    const-string v1, "10100"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "detail"

    const-string/jumbo v1, "auto"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.mcfds"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final setFlag(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    return-void
.end method

.method public final updateSettings(Z)V
    .locals 2

    const-string/jumbo v0, "updateSettings - "

    const-string/jumbo v1, "[MCF_DS_SYS]_PreconditionObserver"

    invoke-static {v0, v1, p1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    const p1, 0xf000

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->setFlag(I)V

    return-void

    :cond_0
    iget p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    const v0, -0xf001

    and-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/server/continuity/PreconditionObserver;->mState:I

    return-void
.end method
