.class public final Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;
.super Lcom/android/server/policy/SideKeyDoublePress$Behavior;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;->$r8$classId:I

    invoke-direct {p0, p1}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doublePressLaunchPolicy(Z)Z
    .registers 3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;->$r8$classId:I

    packed-switch v0, :pswitch_data_1e

    :pswitch_5  #0x1, 0x3
    invoke-super {p0, p1}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->doublePressLaunchPolicy(Z)Z

    move-result p0

    return p0

    :pswitch_a  #0x4
    invoke-super {p0, p1}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->doublePressLaunchPolicy(Z)Z

    move-result p0

    return p0

    :pswitch_f  #0x2
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/16 p1, 0x1a

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->doublePressLaunchPolicy(I)Z

    move-result p0

    return p0

    :pswitch_18  #0x0
    invoke-super {p0, p1}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->doublePressLaunchPolicy(Z)Z

    move-result p0

    return p0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_18  #00000000
        :pswitch_5  #00000001
        :pswitch_f  #00000002
        :pswitch_5  #00000003
        :pswitch_a  #00000004
    .end packed-switch
.end method

.method public getAction()I
    .registers 2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;->$r8$classId:I

    packed-switch v0, :pswitch_data_12

    invoke-super {p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->getAction()I

    move-result p0

    return p0

    :pswitch_a  #0x3
    const/4 p0, 0x1

    return p0

    :pswitch_c  #0x2
    const/4 p0, 0x1

    return p0

    :pswitch_e  #0x1
    const/4 p0, 0x1

    return p0

    :pswitch_10  #0x0
    const/4 p0, 0x3

    return p0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_e  #00000001
        :pswitch_c  #00000002
        :pswitch_a  #00000003
    .end packed-switch
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;->$r8$classId:I

    packed-switch v0, :pswitch_data_20

    invoke-super {p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :pswitch_a  #0x3
    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mTargetAppName:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p0, 0x10200000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_20
    .packed-switch 0x3
        :pswitch_a  #00000003
    .end packed-switch
.end method

.method public showCoverToast(Landroid/content/Intent;)Z
    .registers 3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;->$r8$classId:I

    packed-switch v0, :pswitch_data_34

    invoke-super {p0, p1}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->showCoverToast(Landroid/content/Intent;)Z

    move-result p0

    return p0

    :pswitch_a  #0x3
    sget-boolean p0, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    if-eqz p0, :cond_2d

    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object p0

    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_2d

    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    packed-switch p0, :pswitch_data_3e

    goto :goto_2d

    :pswitch_1c  #0xf, 0x10, 0x11
    const-string/jumbo p0, "showCoverToast"

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p0, "PhoneWindowManagerExt"

    const-string/jumbo p1, "neededShowCoverToast for cover"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    :goto_2e
    return v0

    :pswitch_2f  #0x2
    const/4 p0, 0x0

    return p0

    :pswitch_31  #0x1
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_31  #00000001
        :pswitch_2f  #00000002
        :pswitch_a  #00000003
    .end packed-switch

    :pswitch_data_3e
    .packed-switch 0xf
        :pswitch_1c  #0000000f
        :pswitch_1c  #00000010
        :pswitch_1c  #00000011
    .end packed-switch
.end method

.method public final startTargetApp(Landroid/view/KeyEvent;ZZLandroid/content/Intent;Landroid/content/Intent;)V
    .registers 15

    const/4 v0, 0x1

    const/16 v1, 0x1a

    const-string v2, "HWB1002"

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;->$r8$classId:I

    packed-switch v3, :pswitch_data_186

    iget-object p1, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->onFlashlightKeyPressed(I)V

    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz p1, :cond_1d

    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "Flashlight"

    invoke-static {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    return-void

    :pswitch_1e  #0x4
    iget-object p1, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    sget-boolean p2, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPressedAltAI:Z

    iget-object p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    const-string/jumbo p3, "persona"

    if-nez p2, :cond_35

    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/PersonaManagerService;

    iput-object p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    :cond_35
    iget-object p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    if-nez p2, :cond_3a

    goto :goto_90

    :cond_3a
    iget-object p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isMinimalBatteryUseMode(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_60

    iget-object p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result p2

    if-lez p2, :cond_4b

    goto :goto_60

    :cond_4b
    new-instance p2, Landroid/content/Intent;

    const-string/jumbo p3, "com.sec.knox.securefolder.CREATE_SECURE_FOLDER"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p3, 0x10000000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object p3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_90

    :cond_60
    :goto_60
    iget-object p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    if-nez p2, :cond_70

    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/PersonaManagerService;

    iput-object p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    :cond_70
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p2

    const-string p3, "CscFeature_Common_SupportPrivateMode"

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_83

    goto :goto_90

    :cond_83
    iget-object p2, p1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    const/16 p3, 0x5a

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iget-object p1, p1, Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_90
    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz p1, :cond_9f

    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "Quick switch to Secure Folder"

    invoke-static {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9f
    return-void

    :pswitch_a0  #0x3
    if-eqz p3, :cond_bb

    const-string/jumbo p1, "ignoreUnlock"

    invoke-virtual {p5, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/high16 v6, 0xc000000

    move-object v5, p4

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, p2, p5}, Lcom/android/server/policy/PhoneWindowManagerExt;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_c5

    :cond_bb
    move-object v5, p4

    iget-object p1, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v5, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_c5
    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz p1, :cond_d4

    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "Pay with Samsung Pay"

    invoke-static {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d4
    return-void

    :pswitch_d5  #0x2
    iget-object p1, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->launchPowerDoublePressCamera()V

    iget-object p1, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p1, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendBroadcastDoubleClick(I)V

    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz p1, :cond_ee

    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "Quick launch camera"

    invoke-static {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ee
    return-void

    :pswitch_ef  #0x1
    iget-object p1, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    sget-boolean p2, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPressedAltAI:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p2, "PhoneWindowManagerExt"

    const-string/jumbo p3, "launch double press tv mode"

    invoke-static {p2, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCameraRunning()Z

    move-result p3

    if-eqz p3, :cond_106

    goto :goto_154

    :cond_106
    iget-object p3, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    iget-object p3, p3, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/16 p4, 0x8

    invoke-virtual {p3, p4, v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p3

    if-nez p3, :cond_113

    goto :goto_154

    :cond_113
    iget p4, p3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    const/16 p5, 0x7d2

    if-eq p4, p5, :cond_124

    const/16 p5, 0x450

    if-eq p4, p5, :cond_124

    const-string/jumbo p1, "launchDoublePressPowerTvMode: keyCustomizationInfo ID: "

    invoke-static {p4, p1, p2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_154

    :cond_124
    iget-object p2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p2, p2, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_14b

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo p4, "afterKeyguardGone"

    invoke-virtual {p2, p4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/high16 v6, 0xc000000

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_154

    :cond_14b
    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    iget-object p2, p3, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    sget-object p3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_154
    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz p1, :cond_163

    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "TV mode"

    invoke-static {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    :cond_163
    return-void

    :pswitch_164  #0x0
    iget-object p3, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p3, p3, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyService:Lcom/android/server/policy/BixbyService;

    new-instance p4, Lcom/android/server/policy/BixbyService$Params;

    invoke-direct {p4, p1, p2}, Lcom/android/server/policy/BixbyService$Params;-><init>(Landroid/view/KeyEvent;Z)V

    iput-boolean v0, p4, Lcom/android/server/policy/BixbyService$Params;->doublePress:Z

    new-instance p1, Lcom/android/server/policy/BixbyService$Params;

    invoke-direct {p1, p4}, Lcom/android/server/policy/BixbyService$Params;-><init>(Lcom/android/server/policy/BixbyService$Params;)V

    invoke-virtual {p3, p1}, Lcom/android/server/policy/BixbyService;->startService(Lcom/android/server/policy/BixbyService$Params;)V

    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->PWM_KEY_SA_LOGGING:Z

    if-eqz p1, :cond_185

    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "Bixby"

    invoke-static {v2, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    :cond_185
    return-void

    :pswitch_data_186
    .packed-switch 0x0
        :pswitch_164  #00000000
        :pswitch_ef  #00000001
        :pswitch_d5  #00000002
        :pswitch_a0  #00000003
        :pswitch_1e  #00000004
    .end packed-switch
.end method

.method public updateTargetComponent(Landroid/content/Intent;)V
    .registers 3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;->$r8$classId:I

    packed-switch v0, :pswitch_data_26

    return-void

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mTargetAppName:Ljava/lang/String;

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-void

    :pswitch_10  #0x1
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mTargetAppName:Ljava/lang/String;

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-void

    :pswitch_1a  #0x0
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyService:Lcom/android/server/policy/BixbyService;

    iget-object p0, p0, Lcom/android/server/policy/BixbyService;->mDefaultComponentName:Landroid/content/ComponentName;

    if-eqz p0, :cond_25

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_25
    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1a  #00000000
        :pswitch_10  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
