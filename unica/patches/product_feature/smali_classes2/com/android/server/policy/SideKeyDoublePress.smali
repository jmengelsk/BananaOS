.class public abstract Lcom/android/server/policy/SideKeyDoublePress;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;


# direct methods
.method public static getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;
    .registers 10

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_e

    return-object v7

    :cond_e
    sget-object v6, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    if-eqz v6, :cond_31

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_26

    const-string/jumbo v6, "SideKeyDoublePress"

    const-string/jumbo v8, "appName is empty."

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    goto :goto_2c

    :cond_26
    iget-object v6, v6, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mTargetAppName:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_2c
    if-eqz v6, :cond_31

    sget-object p0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    return-object p0

    :cond_31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_d2

    goto :goto_84

    :sswitch_3d
    const-string/jumbo v8, "secureFolder/secureFolder"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_47

    goto :goto_84

    :cond_47
    move v6, v0

    goto :goto_84

    :sswitch_49
    const-string/jumbo v8, "torch/torch"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_53

    goto :goto_84

    :cond_53
    move v6, v1

    goto :goto_84

    :sswitch_55
    const-string/jumbo v8, "wakeBixby_openApps/wakeBixby_openApps"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5f

    goto :goto_84

    :cond_5f
    move v6, v2

    goto :goto_84

    :sswitch_61
    const-string/jumbo v8, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6b

    goto :goto_84

    :cond_6b
    move v6, v3

    goto :goto_84

    :sswitch_6d
    const-string/jumbo v8, "samsungpay://simplepay/sidekey"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_77

    goto :goto_84

    :cond_77
    move v6, v4

    goto :goto_84

    :sswitch_79
    const-string/jumbo v8, "com.samsung.tvmode/com.samsung.tvmode.activity.MainActivity"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_83

    goto :goto_84

    :cond_83
    move v6, v5

    :goto_84
    packed-switch v6, :pswitch_data_ec

    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningApps;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;-><init>(Ljava/lang/String;)V

    iput v4, v0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mAction:I

    sput-object v0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    return-object v0

    :pswitch_91  #0x5
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_DOUBLE_PRESS_SECURE_FOLDER:Z

    if-eqz v0, :cond_9a

    new-instance v7, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;

    invoke-direct {v7, p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;-><init>(Ljava/lang/String;I)V

    :cond_9a
    sput-object v7, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    return-object v7

    :pswitch_9d  #0x4
    sget-boolean v1, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_TORCH:Z

    if-eqz v1, :cond_a6

    new-instance v7, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;

    invoke-direct {v7, p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;-><init>(Ljava/lang/String;I)V

    :cond_a6
    sput-object v7, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    return-object v7

    :pswitch_a9  #0x3
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_SIDE_KEY_WAKE_UP_BIXBY:Z

    if-eqz v0, :cond_b2

    new-instance v7, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;

    invoke-direct {v7, p0, v5}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;-><init>(Ljava/lang/String;I)V

    :cond_b2
    sput-object v7, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    return-object v7

    :pswitch_b5  #0x2
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;

    invoke-direct {v0, p0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    return-object v0

    :pswitch_bd  #0x1
    new-instance v0, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;

    invoke-direct {v0, p0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    return-object v0

    :pswitch_c5  #0x0
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->PWM_POWER_KEY_DOUBLE_PRESS_ATT_TV_MODE:Z

    if-eqz v0, :cond_ce

    new-instance v7, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;

    invoke-direct {v7, p0, v4}, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;-><init>(Ljava/lang/String;I)V

    :cond_ce
    sput-object v7, Lcom/android/server/policy/SideKeyDoublePress;->mBehavior:Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    return-object v7

    nop

    :sswitch_data_d2
    .sparse-switch
        -0x49b8cf78 -> :sswitch_79
        -0x2ed4269d -> :sswitch_6d
        0x5a5f84 -> :sswitch_61
        0x5a741d0f -> :sswitch_55
        0x6a598029 -> :sswitch_49
        0x760519cf -> :sswitch_3d
    .end sparse-switch

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_c5  #00000000
        :pswitch_bd  #00000001
        :pswitch_b5  #00000002
        :pswitch_a9  #00000003
        :pswitch_9d  #00000004
        :pswitch_91  #00000005
    .end packed-switch
.end method

.method public static launch(Lcom/android/server/policy/PhoneWindowManagerExt;Landroid/view/KeyEvent;Z)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    iget-object v0, v0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/16 v1, 0x8

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    if-eqz v0, :cond_a7

    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_16

    goto/16 :goto_a7

    :cond_16
    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    goto :goto_38

    :cond_2c
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    invoke-static {v1}, Lcom/android/server/policy/SideKeyDoublePress;->getBehavior(Ljava/lang/String;)Lcom/android/server/policy/SideKeyDoublePress$Behavior;

    move-result-object v2

    if-nez v2, :cond_3f

    goto :goto_a7

    :cond_3f
    instance-of v1, v2, Lcom/android/server/policy/PhoneWindowManagerExt$OpeningApps;

    if-eqz v1, :cond_48

    iget v0, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    invoke-virtual {v2, v0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->setAction(I)V

    :cond_48
    iput-object p0, v2, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v2, v6, p2}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->preCondition(Landroid/content/Intent;Z)Z

    move-result p0

    if-eqz p0, :cond_51

    goto :goto_a7

    :cond_51
    invoke-virtual {v2, v6}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->updateTargetComponent(Landroid/content/Intent;)V

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_7c

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v0, "show_on_keyguard"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_7c

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "ignoreKeyguardState"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "ignoreUnlock"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_7a
    move-object v7, p0

    goto :goto_81

    :cond_7c
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerExt;->getFillInIntent()Landroid/content/Intent;

    move-result-object p0

    goto :goto_7a

    :goto_81
    invoke-virtual {v2, v7}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->showCoverToast(Landroid/content/Intent;)Z

    move-result v5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "launch, showCoverToast="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "SideKeyDoublePress"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->startTargetApp(Landroid/view/KeyEvent;ZZLandroid/content/Intent;Landroid/content/Intent;)V

    :cond_a7
    :goto_a7
    return-void
.end method
