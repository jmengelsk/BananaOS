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
    .locals 0

    iput p3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

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

    :pswitch_0
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

    if-ne p0, v0, :cond_0

    move v2, v0

    :cond_0
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAiKeyDisabled:Z

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v0, "premium_tap_for_watch_face_switch_on_off"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapPremiumWatchOn:Z

    return-void

    :pswitch_2
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

    if-ne p0, v0, :cond_2

    move v2, v0

    :cond_2
    iput-boolean v2, p1, Lcom/android/server/policy/KeyCustomizationManager;->mIsTopKeyOnLockScreen:Z

    return-void

    :pswitch_3
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

    if-ne p0, v0, :cond_3

    move v2, v0

    :cond_3
    iput-boolean v2, p1, Lcom/android/server/policy/KeyCustomizationManager;->mIsXCoverKeyOnLockScreen:Z

    return-void

    :pswitch_4
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

    if-ne p0, v0, :cond_4

    move v2, v0

    :cond_4
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsDoubleTapToWakeUp:Z

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v0, -0x2

    const-string/jumbo v1, "access_control_volume_button"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeKeyBlocked:Z

    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v0, -0x2

    const-string/jumbo v1, "access_control_power_button"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsPowerKeyBlocked:Z

    return-void

    :pswitch_7
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

    if-ne p0, v0, :cond_7

    move v2, v0

    :cond_7
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSktPhoneRelaxMode:Z

    return-void

    :pswitch_8
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

    if-ne p0, v0, :cond_8

    move v2, v0

    :cond_8
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAnyKeyMode:Z

    return-void

    :pswitch_9
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

    if-ne p0, v0, :cond_9

    move v2, v0

    :cond_9
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mScreenOffMemoEnabled:Z

    return-void

    :pswitch_a
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

    if-ne p0, v0, :cond_a

    move v2, v0

    :cond_a
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenSoundEnabled:Z

    return-void

    :pswitch_b
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

    if-ne p0, v0, :cond_b

    move v2, v0

    :cond_b
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsInteractionControlEnabled:Z

    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v0, -0x2

    const-string/jumbo v1, "pen_attach_detach_vibration"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v2, :cond_c

    goto :goto_3

    :cond_c
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPenVibrationEnabled:Z

    return-void

    :pswitch_d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v0, "navigation_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_d

    const/4 v1, 0x1

    :cond_d
    iput-boolean v1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mGestureNavBarEnabled:Z

    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v0, "show_keyboard_button"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_e

    goto :goto_4

    :cond_e
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mShowKeyboardBtnEnabled:Z

    return-void

    :pswitch_f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v0, "navigation_bar_button_to_hide_keyboard"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_f

    goto :goto_5

    :cond_f
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mNavBarImeBtnEnabled:Z

    return-void

    :pswitch_10
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

    if-ne p0, v0, :cond_10

    move v2, v0

    :cond_10
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsVolumeUpKeyMode:Z

    return-void

    :pswitch_11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string/jumbo v0, "premium_watch_switch_onoff"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_12
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

    if-ne p0, v0, :cond_11

    move v2, v0

    :cond_11
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIssueTrackerLoggedIn:Z

    return-void

    :pswitch_13
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

    if-ne p0, v0, :cond_12

    move v2, v0

    :cond_12
    iput-boolean v2, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsCustomBugreportWriterEnabled:Z

    return-void

    :pswitch_14
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

    if-ne p0, v1, :cond_13

    move v3, v1

    :cond_13
    iput-boolean v3, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAvailableDictation:Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "updateSetting mIsAvailableDictation="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/android/server/policy/PhoneWindowManagerExt$SettingsObserver;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-boolean p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsAvailableDictation:Z

    const-string/jumbo v0, "PhoneWindowManagerExt"

    invoke-static {v0, p0, p1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void

    :pswitch_15
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

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
