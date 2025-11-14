.class public final Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;
.super Lcom/android/server/policy/KeyboardShortcutManager$Behavior;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;->$r8$classId:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    const-string/jumbo p1, "android.settings.SETTINGS"

    const/high16 p2, 0x4000000

    invoke-static {p2, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;->$r8$classId:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;->$r8$classId:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    iput-object p3, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mIntent:Landroid/content/Intent;

    const-string/jumbo p0, "from_keyboard_shortcut"

    const-string/jumbo p1, "true"

    invoke-virtual {p3, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public preCondition()Z
    .locals 4

    iget v0, p0, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;->$r8$classId:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->preCondition()Z

    move-result p0

    return p0

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "KeyboardShortcutManager"

    if-eqz v0, :cond_0

    const-string p0, "GameBooster is not launched on keyguard"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string/jumbo v0, "com.samsung.android.game.gametools"

    const/16 v3, 0x80

    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "Feature.External.Action"

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "togglemenu"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v1, p0

    goto :goto_0

    :catch_0
    const-string p0, "GameBooster not installed"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :sswitch_1
    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getAIPackages()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "KeyboardShortcutManager"

    if-eqz v0, :cond_1

    const-string p0, "AI hot key is not supported."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAiKeyDisabled:Z

    if-eqz v0, :cond_2

    const-string p0, "AI key is disabled (cmd + o)"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->externalKeyboardPolicy()Z

    move-result v1

    :goto_1
    return v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method

.method public startTargetApp(I)V
    .locals 4

    iget v0, p0, Lcom/android/server/policy/KeyboardShortcutManager$AIBehavior;->$r8$classId:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->startTargetApp(I)V

    return-void

    :sswitch_0
    const-string p1, "KeyboardShortcutManager"

    const-string/jumbo v0, "send broadcast game booster toggle menu"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mIntent:Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object p1, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatusBarManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    return-void

    :sswitch_1
    const-string p1, "KeyboardShortcutManager"

    const-string/jumbo v0, "start AI function"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.AI_ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "from_keyboard_shortcut"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getPreferredActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getVisibleAiTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    const-string/jumbo v3, "PKBD0069"

    if-eqz v2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "remove taskId "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {p0, v0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    iget p1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {p0, p1}, Landroid/app/IActivityTaskManager;->removeTask(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "2"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-class v2, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->startAIActivity(ILandroid/content/Intent;)V

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->startAIActivity(ILandroid/content/Intent;)V

    :goto_2
    sget-boolean p0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz p0, :cond_6

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-class p1, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "1"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_5
    const-string p0, "0"

    :goto_3
    invoke-static {v3, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method
