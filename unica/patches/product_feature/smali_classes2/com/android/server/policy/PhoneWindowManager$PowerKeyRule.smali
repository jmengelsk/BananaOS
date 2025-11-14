.class public final Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;
.super Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    packed-switch p2, :pswitch_data_1e

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/16 p1, 0x1a

    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    return-void

    :pswitch_d  #0x2
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/16 p1, 0x137

    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    return-void

    :pswitch_15  #0x1
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/16 p1, 0x108

    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_15  #00000001
        :pswitch_d  #00000002
    .end packed-switch
.end method

.method private final onPress$com$android$server$policy$PhoneWindowManager$StylusTailButtonRule(JLandroid/view/KeyEvent;I)V
    .registers 5

    return-void
.end method


# virtual methods
.method public getLongPressTimeoutMs()J
    .registers 3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    packed-switch v0, :pswitch_data_1a

    invoke-super {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    move-result-wide v0

    return-wide v0

    :pswitch_a  #0x0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_16

    iget-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    goto :goto_18

    :cond_16
    sget-wide v0, Lcom/android/server/policy/SingleKeyGestureDetector;->sDefaultLongPressTimeout:J

    :goto_18
    return-wide v0

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_a  #00000000
    .end packed-switch
.end method

.method public final getMaxMultiPressCount()I
    .registers 3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    packed-switch v0, :pswitch_data_26

    const/4 p0, 0x2

    return p0

    :pswitch_7  #0x1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    goto :goto_19

    :cond_f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    invoke-virtual {v0}, Lcom/android/server/policy/TalkbackShortcutController;->isTalkBackShortcutGestureEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v1, 0x3

    goto :goto_1e

    :cond_19
    :goto_19
    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    if-eqz p0, :cond_1e

    const/4 v1, 0x2

    :cond_1e
    :goto_1e
    return v1

    :pswitch_1f  #0x0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result p0

    return p0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1f  #00000000
        :pswitch_7  #00000001
    .end packed-switch
.end method

.method public final onKeyUp(IIIIJ)V
    .registers 16

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    packed-switch v0, :pswitch_data_ae

    const/4 p2, 0x1

    if-eq p1, p2, :cond_9

    goto :goto_2d

    :cond_9
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    const/16 p1, 0x137

    filled-new-array {p1}, [I

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mKeyGestureController:Lcom/android/server/input/KeyGestureController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    new-array v2, p1, [J

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v4, 0x21

    const/4 v5, 0x2

    const/4 v6, 0x0

    move v0, p3

    move v3, p4

    invoke-static/range {v0 .. v8}, Lcom/android/server/input/KeyGestureController;->createKeyGestureEvent(I[I[JIIIIILandroid/hardware/input/AppLaunchData;)Landroid/hardware/input/AidlKeyGestureEvent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyGestureController;->handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V

    :goto_2d
    return-void

    :pswitch_2e  #0x1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_96

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p3, p1, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast p3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 p4, -0x1

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0, v0, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->getTasks(IZZI)Ljava/util/List;

    move-result-object p4

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_76

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p3, v1, v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_61
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget v3, p4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-eq v1, v3, :cond_61

    goto :goto_7f

    :cond_74
    :goto_74
    move-object v0, v2

    goto :goto_7f

    :cond_76
    const-string p3, "ActivityTaskManager"

    const-string/jumbo p4, "No running task found!"

    invoke-static {p3, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    :goto_7f
    iput-object v0, p1, Lcom/android/server/policy/PhoneWindowManager;->mBackgroundRecentTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityManager$RecentTaskInfo;

    iput-object v2, p1, Lcom/android/server/policy/PhoneWindowManager;->mFocusedTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityTaskManager$RootTaskInfo;

    iget-boolean p3, p1, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnStemPrimary:Z

    if-eqz p3, :cond_96

    iget p3, p1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    if-ne p3, p2, :cond_96

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    new-instance p2, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda0;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;I)V

    invoke-virtual {p1, p2, p5, p6}, Lcom/android/server/policy/DeferredKeyActionExecutor;->queueKeyAction(Ljava/lang/Runnable;J)V

    :cond_96
    return-void

    :pswitch_97  #0x0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean p0, v0, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnPower:Z

    if-eqz p0, :cond_ad

    const/4 p0, 0x1

    if-ne p1, p0, :cond_ad

    new-instance v5, Landroid/view/KeyEvent;

    const/16 p1, 0x1a

    invoke-direct {v5, p0, p1}, Landroid/view/KeyEvent;-><init>(II)V

    const/4 v3, 0x1

    move v4, p2

    move-wide v1, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mpowerPress(Lcom/android/server/policy/PhoneWindowManager;JIILandroid/view/KeyEvent;)V

    :cond_ad
    return-void

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_97  #00000000
        :pswitch_2e  #00000001
    .end packed-switch
.end method

.method public onLongPress(JLandroid/view/KeyEvent;I)V
    .registers 22

    move-object/from16 v0, p0

    move-wide/from16 v3, p1

    move-object/from16 v1, p3

    const/4 v2, 0x3

    const/4 v5, 0x1

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    packed-switch v6, :pswitch_data_294

    invoke-super/range {p0 .. p4}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onLongPress(JLandroid/view/KeyEvent;I)V

    return-void

    :pswitch_11  #0x1
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    if-ne v6, v5, :cond_1b

    invoke-static {v1, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mstemPrimaryLongPress(Lcom/android/server/policy/PhoneWindowManager;J)V

    goto :goto_25

    :cond_1b
    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    new-instance v5, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2, v3, v4, v0}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;-><init>(IJLjava/lang/Object;)V

    invoke-virtual {v1, v5, v3, v4}, Lcom/android/server/policy/DeferredKeyActionExecutor;->queueKeyAction(Ljava/lang/Runnable;J)V

    :goto_25
    return-void

    :pswitch_26  #0x0
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v7, v6, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    iget-boolean v7, v7, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    const-string/jumbo v8, "PhoneWindowManager"

    if-eqz v7, :cond_3d

    iget-boolean v7, v6, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    if-nez v7, :cond_3d

    const-string/jumbo v0, "Not support long press power when device is not interactive."

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_293

    :cond_3d
    iput-boolean v5, v0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v0

    const-string/jumbo v7, "powerLongPress: eventTime="

    const-string v9, " mLongPressOnPowerBehavior="

    invoke-static {v7, v3, v4, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v6, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " behavior="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v7, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_LONG_PRESS:Z

    const-string v10, "HWB1006"

    const/4 v11, 0x4

    if-eqz v7, :cond_1e8

    iget-object v13, v6, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v14, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/internal/widget/LockPatternUtils;->isKnoxguardLockEnabled(I)Z

    move-result v14

    const-string/jumbo v15, "PhoneWindowManagerExt"

    if-eqz v14, :cond_80

    const-string/jumbo v0, "long press power was blcoked by KnoxguardLockEnabled"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e4

    :cond_80
    sget-boolean v14, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_WAKE_UP_BIXBY:Z

    iget-object v9, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    if-nez v14, :cond_8a

    sget-boolean v16, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DIGITAL_ASSISTANT:Z

    if-eqz v16, :cond_ab

    :cond_8a
    sget-boolean v16, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_POWER_OFF_MENU:Z

    if-nez v16, :cond_ab

    invoke-virtual {v9}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v16

    if-nez v16, :cond_ab

    iget-object v0, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.app.secsetupwizard.POWER_OFF_GUIDE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v0, "startActivity, power off guide"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e4

    :cond_ab
    iget-object v2, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    const/16 v12, 0x1a

    invoke-virtual {v2, v12, v11}, Lcom/android/server/policy/SystemKeyManager;->hasSystemKeyInfo(II)Z

    move-result v2

    if-eqz v2, :cond_bd

    const-string/jumbo v0, "skip long press power, requestedSystemKey"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e4

    :cond_bd
    const/high16 v2, 0x20000000

    and-int v2, p4, v2

    if-eqz v2, :cond_c5

    move v2, v5

    goto :goto_c6

    :cond_c5
    const/4 v2, 0x0

    :goto_c6
    if-eq v0, v5, :cond_1d5

    const-string v11, ")"

    packed-switch v0, :pswitch_data_29c

    const-string v1, "Invalid side key long press info"

    invoke-static {v15, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e8

    :pswitch_d4  #0x67
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DIGITAL_ASSISTANT:Z

    if-eqz v0, :cond_1de

    const/4 v0, 0x0

    invoke-virtual {v13, v12, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->openDictationIfNeeded(IZ)Z

    move-result v0

    if-eqz v0, :cond_e3

    iput-boolean v5, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCallOpenDictation:Z

    goto/16 :goto_1de

    :cond_e3
    invoke-virtual {v9}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerService$2;

    move-result-object v0

    if-eqz v0, :cond_101

    const-string/jumbo v1, "invocation_type"

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_fa

    :try_start_f7
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBar;->startAssist(Landroid/os/Bundle;)V
    :try_end_fa
    .catch Landroid/os/RemoteException; {:try_start_f7 .. :try_end_fa} :catch_fa

    :catch_fa
    :cond_fa
    const-string/jumbo v0, "run digital assistant."

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_107

    :cond_101
    const-string/jumbo v0, "statusBar is null"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_107
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v0, :cond_1de

    iget-object v0, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mAssistantAppName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_116

    const-string v0, "Digital Assistant"

    goto :goto_13f

    :cond_116
    iget-object v0, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mAssistantAppName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "Digital Assistant ("

    if-eqz v0, :cond_134

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13f

    :cond_134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mAssistantAppName:Ljava/lang/String;

    invoke-static {v0, v1, v11}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "powerLongPress packageName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1de

    :pswitch_156  #0x66
    iget-object v2, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    iget-object v9, v2, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/4 v13, 0x4

    invoke-virtual {v9, v13, v12}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v9

    if-nez v9, :cond_169

    const-string/jumbo v1, "powerLongPress, info is null"

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e8

    :cond_169
    iget v0, v9, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    invoke-virtual {v2, v0, v1, v12}, Lcom/android/server/policy/KeyCustomizationManager;->launchLongPressAction(ILandroid/view/KeyEvent;I)Z

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v0, :cond_1de

    iget v0, v9, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    invoke-static {v0}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_17d

    const-string v9, "Knox"

    goto :goto_187

    :cond_17d
    iget v0, v9, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    const/16 v1, 0x7d3

    if-ne v0, v1, :cond_186

    iget-object v9, v9, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    goto :goto_187

    :cond_186
    const/4 v9, 0x0

    :goto_187
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1de

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Customization ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1de

    :pswitch_1a2  #0x65
    if-eqz v14, :cond_1d2

    const/4 v0, 0x0

    invoke-virtual {v13, v12, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->openDictationIfNeeded(IZ)Z

    move-result v0

    if-eqz v0, :cond_1ae

    iput-boolean v5, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCallOpenDictation:Z

    goto :goto_1de

    :cond_1ae
    new-instance v0, Lcom/android/server/policy/BixbyService$Params;

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/BixbyService$Params;-><init>(Landroid/view/KeyEvent;Z)V

    iput-boolean v5, v0, Lcom/android/server/policy/BixbyService$Params;->longPress:Z

    iput-boolean v5, v0, Lcom/android/server/policy/BixbyService$Params;->showToast:Z

    new-instance v1, Lcom/android/server/policy/BixbyService$Params;

    invoke-direct {v1, v0}, Lcom/android/server/policy/BixbyService$Params;-><init>(Lcom/android/server/policy/BixbyService$Params;)V

    iget-object v0, v13, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyService:Lcom/android/server/policy/BixbyService;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/BixbyService;->startService(Lcom/android/server/policy/BixbyService$Params;)V

    const-string/jumbo v0, "run wake Bixby"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v0, :cond_1de

    const-string/jumbo v0, "Wake Bixby"

    invoke-static {v10, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1de

    :cond_1d2
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    goto :goto_1de

    :cond_1d5
    if-eqz v2, :cond_1de

    const-string/jumbo v1, "Side key long press global action"

    invoke-static {v15, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e8

    :cond_1de
    :goto_1de
    const-string/jumbo v0, "consume powerLongPress"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e4
    iput-boolean v5, v6, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    goto/16 :goto_293

    :cond_1e8
    :goto_1e8
    const/16 v1, 0x2713

    if-eq v0, v5, :cond_271

    const/4 v2, 0x2

    if-eq v0, v2, :cond_242

    const/4 v7, 0x3

    if-eq v0, v7, :cond_242

    const/4 v13, 0x4

    if-eq v0, v13, :cond_20e

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1fa

    goto/16 :goto_293

    :cond_1fa
    iput-boolean v5, v6, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    const/16 v0, 0x2712

    const-string/jumbo v1, "Power - Long Press - Go To Assistant"

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IILjava/lang/String;)V

    const/4 v1, -0x2

    const/4 v2, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(IIJLjava/lang/String;)V

    goto/16 :goto_293

    :cond_20e
    move-object v3, v6

    const/4 v2, 0x0

    iput-boolean v5, v3, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    const-string/jumbo v0, "Power - Long Press - Go To Voice Assist"

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IILjava/lang/String;)V

    iget-boolean v0, v3, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    iget-object v1, v3, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const-string/jumbo v2, "android.intent.action.VOICE_ASSIST"

    if-eqz v1, :cond_236

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_236

    iget-object v0, v3, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    if-eqz v0, :cond_293

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->dismissKeyguardToLaunch(Landroid/content/Intent;)V

    goto :goto_293

    :cond_236
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V

    goto :goto_293

    :cond_242
    move-object v3, v6

    sget-boolean v4, Lcom/samsung/android/rune/InputRune;->PWM_KEY_FACTORY_MODE_POLICY:Z

    if-eqz v4, :cond_251

    iget-boolean v4, v3, Lcom/android/server/policy/PhoneWindowManager;->mAcquireInProgress:Z

    if-eqz v4, :cond_251

    const-string v0, "Do not shutdown. Maybe power wake lock is delayed."

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_293

    :cond_251
    iput-boolean v5, v3, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v4

    if-eqz v4, :cond_25a

    goto :goto_293

    :cond_25a
    const-string/jumbo v4, "Power - Long Press - Shut Off"

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6, v4}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IILjava/lang/String;)V

    const-string/jumbo v1, "globalactions"

    invoke-virtual {v3, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    iget-object v1, v3, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    if-ne v0, v2, :cond_26c

    goto :goto_26d

    :cond_26c
    const/4 v5, 0x0

    :goto_26d
    invoke-interface {v1, v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    goto :goto_293

    :cond_271
    move-object v3, v6

    iput-boolean v5, v3, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    const-string/jumbo v0, "Power - Long Press - Global Actions"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IILjava/lang/String;)V

    if-eqz v7, :cond_281

    invoke-virtual {v3, v2}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal(I)V

    goto :goto_284

    :cond_281
    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActions()V

    :goto_284
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz v0, :cond_293

    iget-object v0, v3, Lcom/android/server/policy/PhoneWindowManager;->mExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "Power off menu"

    invoke-static {v10, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    :cond_293
    :goto_293
    return-void

    :pswitch_data_294
    .packed-switch 0x0
        :pswitch_26  #00000000
        :pswitch_11  #00000001
    .end packed-switch

    :pswitch_data_29c
    .packed-switch 0x65
        :pswitch_1a2  #00000065
        :pswitch_156  #00000066
        :pswitch_d4  #00000067
    .end packed-switch
.end method

.method public onMultiPress(JIILandroid/view/KeyEvent;)V
    .registers 7

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    packed-switch v0, :pswitch_data_72

    invoke-super/range {p0 .. p5}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onMultiPress(JIILandroid/view/KeyEvent;)V

    return-void

    :pswitch_9  #0x1
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 p5, 0x3

    if-ne p3, p5, :cond_60

    iget p5, p4, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    const/4 v0, 0x1

    if-ne p5, v0, :cond_60

    iget-object p0, p4, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    iget-object p0, p0, Lcom/android/server/policy/DeferredKeyActionExecutor;->mBuffers:Landroid/util/SparseArray;

    const/16 p1, 0x108

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;

    if-eqz p0, :cond_28

    iget-object p0, p0, Lcom/android/server/policy/DeferredKeyActionExecutor$TimedActionsBuffer;->mActions:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_28
    iget-boolean p0, p4, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnStemPrimary:Z

    if-eqz p0, :cond_5c

    iget p0, p4, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    if-ne p0, v0, :cond_5c

    iget-object p0, p4, Lcom/android/server/policy/PhoneWindowManager;->mFocusedTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityTaskManager$RootTaskInfo;

    if-eqz p0, :cond_5c

    :try_start_34
    iget-object p1, p4, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    iget p0, p0, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3c} :catch_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_3c} :catch_3d

    goto :goto_5c

    :catch_3d
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to start task "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p4, Lcom/android/server/policy/PhoneWindowManager;->mFocusedTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityTaskManager$RootTaskInfo;

    iget p2, p2, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " from recents"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "PhoneWindowManager"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5c
    :goto_5c
    invoke-static {p4, p3}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mstemPrimaryPress(Lcom/android/server/policy/PhoneWindowManager;I)V

    goto :goto_6b

    :cond_60
    iget-object p4, p4, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    new-instance p5, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda5;

    const/4 v0, 0x2

    invoke-direct {p5, p3, v0, p0}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda5;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p4, p5, p1, p2}, Lcom/android/server/policy/DeferredKeyActionExecutor;->queueKeyAction(Ljava/lang/Runnable;J)V

    :goto_6b
    return-void

    :pswitch_6c  #0x0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static/range {p0 .. p5}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mpowerPress(Lcom/android/server/policy/PhoneWindowManager;JIILandroid/view/KeyEvent;)V

    return-void

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_6c  #00000000
        :pswitch_9  #00000001
    .end packed-switch
.end method

.method public final onPress(JLandroid/view/KeyEvent;I)V
    .registers 12

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    packed-switch v0, :pswitch_data_2e

    return-void

    :pswitch_6  #0x1
    iget-object p3, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean p4, p3, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnStemPrimary:Z

    if-eqz p4, :cond_12

    iget p4, p3, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    const/4 v0, 0x1

    if-ne p4, v0, :cond_12

    goto :goto_1d

    :cond_12
    iget-object p3, p3, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    new-instance p4, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;I)V

    invoke-virtual {p3, p4, p1, p2}, Lcom/android/server/policy/DeferredKeyActionExecutor;->queueKeyAction(Ljava/lang/Runnable;J)V

    :goto_1d
    return-void

    :pswitch_1e  #0x0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean p0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnPower:Z

    if-eqz p0, :cond_25

    goto :goto_2c

    :cond_25
    const/4 v4, 0x1

    move-wide v2, p1

    move-object v6, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mpowerPress(Lcom/android/server/policy/PhoneWindowManager;JIILandroid/view/KeyEvent;)V

    :goto_2c
    return-void

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method

.method public onVeryLongPress()V
    .registers 4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    packed-switch v0, :pswitch_data_24

    return-void

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->prepareForPossibleShutdown()V

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    goto :goto_23

    :cond_15
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    const/4 v0, 0x0

    const/16 v1, 0x2713

    const-string/jumbo v2, "Power - Very Long Press - Show Global Actions"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActions()V

    :goto_23
    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public supportLongPress()Z
    .registers 2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    packed-switch v0, :pswitch_data_20

    invoke-super {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportLongPress()Z

    move-result p0

    return p0

    :pswitch_a  #0x1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0

    :pswitch_14  #0x0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_14  #00000000
        :pswitch_a  #00000001
    .end packed-switch
.end method

.method public supportVeryLongPress()Z
    .registers 2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->$r8$classId:I

    packed-switch v0, :pswitch_data_14

    invoke-super {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->supportVeryLongPress()Z

    move-result p0

    return p0

    :pswitch_a  #0x0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_a  #00000000
    .end packed-switch
.end method
