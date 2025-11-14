.class public final Lcom/android/server/policy/BixbyService;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDefaultComponentName:Landroid/content/ComponentName;

.field public final mOnboardingComponentName:Landroid/content/ComponentName;

.field public final mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/policy/BixbyService;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iput-object p1, p0, Lcom/android/server/policy/BixbyService;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "com.samsung.android.bixby.agent/com.samsung.android.bixby.WinkService"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lcom/android/server/policy/BixbyService;->mDefaultComponentName:Landroid/content/ComponentName;

    const-string/jumbo p1, "com.samsung.android.bixby.agent/com.samsung.android.bixby.BixbyKeyLService"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/android/server/policy/BixbyService;->mOnboardingComponentName:Landroid/content/ComponentName;

    iget-object p1, p2, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 p2, 0x1

    const-string/jumbo v0, "PhoneWindowManager.BixbyService.WakeLock"

    invoke-virtual {p1, p2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/BixbyService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public final getIntent(Lcom/android/server/policy/BixbyService$Params;)Landroid/content/Intent;
    .locals 6

    iget-object v0, p1, Lcom/android/server/policy/BixbyService$Params;->event:Landroid/view/KeyEvent;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-boolean v2, Lcom/samsung/android/rune/InputRune;->PWM_SUPPORT_BIXBY_ONBOARDING_SERVICE:Z

    iget-boolean v3, p1, Lcom/android/server/policy/BixbyService$Params;->longPress:Z

    iget-boolean v4, p1, Lcom/android/server/policy/BixbyService$Params;->doublePress:Z

    if-eqz v2, :cond_1

    if-nez v3, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/BixbyService;->mOnboardingComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/BixbyService;->mDefaultComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    if-eqz v0, :cond_2

    const-string p0, "KEYEVENT"

    invoke-static {v0}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    const/4 p0, 0x1

    iget-boolean v0, p1, Lcom/android/server/policy/BixbyService$Params;->isPowerCombination:Z

    if-eqz v0, :cond_3

    const-string v2, "KEY_COMBINATION"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    const-string v2, "BIXBY_KEY_FW_VERSION"

    const/4 v5, 0x2

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "INTERACTIVE"

    iget-boolean p1, p1, Lcom/android/server/policy/BixbyService$Params;->interactive:Z

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-boolean v2, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_WAKE_UP_BIXBY:Z

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DOUBLE_PRESS:Z

    if-eqz p0, :cond_5

    if-eqz v4, :cond_5

    move p0, v5

    goto :goto_1

    :cond_5
    const/4 p0, -0x1

    :goto_1
    const-string/jumbo v2, "RESULT_BY_POWER"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startBixbyService, keyPressType="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " interactive="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " longPress="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " doublePress="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " isUnlockFP=false isPowerCombination="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BixbyService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final startService(Lcom/android/server/policy/BixbyService$Params;)V
    .locals 7

    const-string v0, "Can not start BixbyService: "

    iget-boolean v1, p1, Lcom/android/server/policy/BixbyService$Params;->showToast:Z

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/policy/BixbyService;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    if-nez v1, :cond_0

    move-object v1, v2

    goto/16 :goto_3

    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SUPPORT_BIXBY_ONBOARDING_SERVICE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/BixbyService;->mOnboardingComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/BixbyService;->mDefaultComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/BixbyService;->mOnboardingComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    move-object v1, v2

    goto :goto_2

    :cond_3
    iget-object v4, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-interface {v5, v1, v4}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    goto :goto_1

    :catch_0
    :cond_4
    invoke-static {v4, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->getApplicationInfoAsUser(ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    iget-object v4, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const v5, 0x1040eeb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-boolean v4, p1, Lcom/android/server/policy/BixbyService$Params;->interactive:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/policy/BixbyService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    :goto_3
    if-nez v1, :cond_e

    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    const-string v4, "BixbyService"

    if-eqz v1, :cond_7

    const-string p0, "Do nothing regarding key event of bixby service. Factory Binary"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->isSecureRemoteLocked()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v5

    if-nez v5, :cond_8

    const-string/jumbo v2, "UserSetup is not completed"

    goto :goto_4

    :cond_8
    iget-object v5, p0, Lcom/android/server/policy/BixbyService;->mDefaultComponentName:Landroid/content/ComponentName;

    if-nez v5, :cond_9

    const-string/jumbo v2, "bixbyComponentName is null"

    goto :goto_4

    :cond_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v2, "Carrier is Locked("

    const-string v3, ")"

    invoke-static {v2, v1, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_a
    iget-object v1, v3, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo v2, "Sim is Locked"

    goto :goto_4

    :cond_b
    const-string/jumbo v1, "ril.domesticOtaStart"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v2, "DomesticOtaStart"

    :cond_c
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string p0, "Do nothing regarding key event of bixby service. reason="

    invoke-static {p0, v2, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    iget-object v1, p0, Lcom/android/server/policy/BixbyService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/BixbyService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/BixbyService;->getIntent(Lcom/android/server/policy/BixbyService$Params;)Landroid/content/Intent;

    move-result-object p1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/android/server/policy/BixbyService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/android/server/policy/BixbyService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_6

    :goto_5
    iget-object p0, p0, Lcom/android/server/policy/BixbyService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    throw p1

    :cond_e
    :goto_6
    return-void
.end method
