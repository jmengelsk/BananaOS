.class public final synthetic Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

.field public final synthetic f$1:Landroid/content/ContentResolver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;Landroid/content/ContentResolver;I)V
    .registers 4

    iput p3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_23a

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v0, "assistant"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mAssistantAppName:Ljava/lang/String;

    return-void

    :pswitch_18  #0x15
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v0, -0x2

    const-string/jumbo v1, "ai_key_disable"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2d

    move v2, v0

    :cond_2d
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAiKeyDisabled:Z

    return-void

    :pswitch_30  #0x14
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v0, "premium_tap_for_watch_face_switch_on_off"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_43

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    :goto_44
    iput-boolean v1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapPremiumWatchOn:Z

    return-void

    :pswitch_47  #0x13
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/4 v0, -0x3

    const-string/jumbo v1, "xcover_top_key_on_lockscreen"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_5e

    move v2, v0

    :cond_5e
    iput-boolean v2, p1, Lcom/android/server/policy/KeyCustomizationManager;->mIsTopKeyOnLockScreen:Z

    return-void

    :pswitch_61  #0x12
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    const/4 v0, -0x3

    const-string/jumbo v1, "active_key_on_lockscreen"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_78

    move v2, v0

    :cond_78
    iput-boolean v2, p1, Lcom/android/server/policy/KeyCustomizationManager;->mIsXCoverKeyOnLockScreen:Z

    return-void

    :pswitch_7b  #0x11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v0, -0x2

    const-string/jumbo v1, "double_tab_to_wake_up"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_90

    move v2, v0

    :cond_90
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUp:Z

    return-void

    :pswitch_93  #0x10
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v0, -0x2

    const-string/jumbo v1, "access_control_volume_button"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v2, :cond_a7

    goto :goto_a8

    :cond_a7
    const/4 v2, 0x0

    :goto_a8
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeKeyBlocked:Z

    return-void

    :pswitch_ab  #0xf
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v0, -0x2

    const-string/jumbo v1, "access_control_power_button"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v2, :cond_bf

    goto :goto_c0

    :cond_bf
    const/4 v2, 0x0

    :goto_c0
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPowerKeyBlocked:Z

    return-void

    :pswitch_c3  #0xe
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v0, -0x2

    const-string/jumbo v1, "skt_phone20_relax_mode"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_d8

    move v2, v0

    :cond_d8
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSktPhoneRelaxMode:Z

    return-void

    :pswitch_db  #0xd
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v0, -0x2

    const-string/jumbo v1, "anykey_mode"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f0

    move v2, v0

    :cond_f0
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAnyKeyMode:Z

    return-void

    :pswitch_f3  #0xc
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v0, -0x2

    const-string/jumbo v1, "screen_off_memo"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_108

    move v2, v0

    :cond_108
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoEnabled:Z

    return-void

    :pswitch_10b  #0xb
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v0, -0x2

    const-string/jumbo v1, "spen_feedback_sound"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_120

    move v2, v0

    :cond_120
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundEnabled:Z

    return-void

    :pswitch_123  #0xa
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v0, -0x2

    const-string/jumbo v1, "access_control_enabled"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_138

    move v2, v0

    :cond_138
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    return-void

    :pswitch_13b  #0x9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v0, -0x2

    const-string/jumbo v1, "pen_attach_detach_vibration"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v2, :cond_14f

    goto :goto_150

    :cond_14f
    const/4 v2, 0x0

    :goto_150
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenVibrationEnabled:Z

    return-void

    :pswitch_153  #0x8
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v0, "navigation_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_167

    const/4 v1, 0x1

    :cond_167
    iput-boolean v1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mGestureNavBarEnabled:Z

    return-void

    :pswitch_16a  #0x7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v0, "show_keyboard_button"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_17d

    goto :goto_17e

    :cond_17d
    const/4 v1, 0x0

    :goto_17e
    iput-boolean v1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mShowKeyboardBtnEnabled:Z

    return-void

    :pswitch_181  #0x6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v0, "navigation_bar_button_to_hide_keyboard"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_194

    goto :goto_195

    :cond_194
    const/4 v1, 0x0

    :goto_195
    iput-boolean v1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mNavBarImeBtnEnabled:Z

    return-void

    :pswitch_198  #0x5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v0, -0x2

    const-string/jumbo v1, "volumekey_mode"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1ad

    move v2, v0

    :cond_1ad
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeUpKeyMode:Z

    return-void

    :pswitch_1b0  #0x4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v0, "premium_watch_switch_onoff"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_1c3  #0x3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v0, -0x2

    const-string/jumbo v1, "issuetracker_logged_in"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1d8

    move v2, v0

    :cond_1d8
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIssueTrackerLoggedIn:Z

    return-void

    :pswitch_1db  #0x2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v0, -0x2

    const-string/jumbo v1, "development_custom_bugreport_writer"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1f0

    move v2, v0

    :cond_1f0
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCustomBugreportWriterEnabled:Z

    return-void

    :pswitch_1f3  #0x1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v1, -0x2

    const-string/jumbo v2, "sip_voice_input_use_side_key"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_208

    move v3, v1

    :cond_208
    iput-boolean v3, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAvailableDictation:Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "updateSetting mIsAvailableDictation="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-boolean p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAvailableDictation:Z

    const-string/jumbo v0, "PhoneWindowManagerExt"

    invoke-static {v0, p0, p1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void

    :pswitch_21d  #0x0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "default_input_method"

    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v0, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    iput-boolean p0, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSamsungKeyboard:Z

    return-void

    nop

    :pswitch_data_23a
    .packed-switch 0x0
        :pswitch_21d  #00000000
        :pswitch_1f3  #00000001
        :pswitch_1db  #00000002
        :pswitch_1c3  #00000003
        :pswitch_1b0  #00000004
        :pswitch_198  #00000005
        :pswitch_181  #00000006
        :pswitch_16a  #00000007
        :pswitch_153  #00000008
        :pswitch_13b  #00000009
        :pswitch_123  #0000000a
        :pswitch_10b  #0000000b
        :pswitch_f3  #0000000c
        :pswitch_db  #0000000d
        :pswitch_c3  #0000000e
        :pswitch_ab  #0000000f
        :pswitch_93  #00000010
        :pswitch_7b  #00000011
        :pswitch_61  #00000012
        :pswitch_47  #00000013
        :pswitch_30  #00000014
        :pswitch_18  #00000015
    .end packed-switch
.end method
