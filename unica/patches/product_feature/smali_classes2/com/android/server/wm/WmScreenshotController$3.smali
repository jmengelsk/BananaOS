.class public final Lcom/android/server/wm/WmScreenshotController$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/wm/WmScreenshotController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WmScreenshotController;I)V
    .registers 3

    iput p2, p0, Lcom/android/server/wm/WmScreenshotController$3;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$3;->this$0:Lcom/android/server/wm/WmScreenshotController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    iget p1, p0, Lcom/android/server/wm/WmScreenshotController$3;->$r8$classId:I

    packed-switch p1, :pswitch_data_186

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "com.samsung.android.capture.ScreenshotExecutor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_120

    const-string/jumbo v0, "capturedOrigin"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string/jumbo v4, "WindowManager"

    const/4 v5, 0x0

    if-eq v6, v1, :cond_dc

    const/4 v1, 0x4

    const-string/jumbo v7, "displayId"

    const/4 v8, 0x2

    const-string/jumbo v9, "Region"

    const-string v10, "Fullscreen"

    const-string/jumbo v11, "type"

    if-eq v6, v1, :cond_bc

    const/4 v1, 0x5

    if-eq v6, v1, :cond_8a

    const/4 v1, 0x6

    if-eq v6, v1, :cond_8c

    const/16 v1, 0x64

    if-eq v6, v1, :cond_49

    const-string p0, "Error. capturedOrigin("

    const-string p1, ") is not supported."

    invoke-static {v6, p0, p1, v4}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_120

    :cond_49
    const-string/jumbo v1, "callingPackageName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const-string p0, "Can not take a screenshot, callingPackageName is empty."

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_120

    :cond_5d
    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_68

    goto :goto_6f

    :cond_68
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6f

    move v3, v8

    :cond_6f
    :goto_6f
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7d

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :cond_7d
    const-string v7, "Custom info, callingPackageName="

    const-string v8, " type="

    const-string v9, " displayId="

    invoke-static {v7, v1, v8, v2, v9}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, p2, v4}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    :goto_8a
    move-object v7, v0

    goto :goto_e4

    :cond_8c
    if-nez v0, :cond_95

    const-string p0, "Error. bundle is null"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_120

    :cond_95
    const-string/jumbo p2, "rect"

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    if-eqz p2, :cond_aa

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a7

    goto :goto_aa

    :cond_a7
    const/16 v3, 0x65

    goto :goto_8a

    :cond_aa
    :goto_aa
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Error. rect is "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_120

    :cond_bc
    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c7

    goto :goto_ce

    :cond_c7
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_de

    move v3, v8

    :goto_ce
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_dc

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :cond_dc
    move-object v7, v2

    goto :goto_e4

    :cond_de
    const-string p0, "Error. extra type was wrong. type="

    invoke-static {p0, v0, v4}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_120

    :goto_e4
    const-string/jumbo p2, "Receive "

    const-string v0, " screenType="

    const-string v1, " direction=1 display="

    invoke-static {v3, p2, p1, v0, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " from="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/WmScreenshotController$3;->this$0:Lcom/android/server/wm/WmScreenshotController;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v6, :pswitch_data_18c

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_117

    :pswitch_104  #0x6
    const-string p2, "FLEX_PANEL"

    goto :goto_117

    :pswitch_107  #0x5
    const-string p2, "BIXBY"

    goto :goto_117

    :pswitch_10a  #0x4
    const-string p2, "DEX"

    goto :goto_117

    :pswitch_10d  #0x3
    const-string/jumbo p2, "QUICK_PANEL"

    goto :goto_117

    :pswitch_111  #0x2
    const-string/jumbo p2, "PALM"

    goto :goto_117

    :pswitch_115  #0x1
    const-string p2, "KEY"

    :goto_117
    invoke-static {p1, p2, v4}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WmScreenshotController$3;->this$0:Lcom/android/server/wm/WmScreenshotController;

    const/4 v4, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WmScreenshotController;->sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V

    :cond_120
    :goto_120
    return-void

    :pswitch_121  #0x0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/WmScreenshotController$3;->this$0:Lcom/android/server/wm/WmScreenshotController;

    iget-object p2, p2, Lcom/android/server/wm/WmScreenshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast p2, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Receive "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isKeyguardLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_151

    goto :goto_185

    :cond_151
    iget-object p2, p0, Lcom/android/server/wm/WmScreenshotController$3;->this$0:Lcom/android/server/wm/WmScreenshotController;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p2, "com.samsung.android.motion.SWEEP_LEFT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_162

    const/4 p1, 0x2

    :goto_160
    move v2, p1

    goto :goto_17a

    :cond_162
    const-string/jumbo p2, "com.samsung.android.motion.SWEEP_RIGHT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16d

    const/4 p1, 0x3

    goto :goto_160

    :cond_16d
    const-string/jumbo p2, "com.samsung.android.motion.SWEEP_FULL_SCREEN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_178

    const/4 p1, 0x1

    goto :goto_160

    :cond_178
    const/4 p1, -0x1

    goto :goto_160

    :goto_17a
    if-lez v2, :cond_185

    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$3;->this$0:Lcom/android/server/wm/WmScreenshotController;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WmScreenshotController;->sendTakeScreenshotRunnable(IIIILandroid/os/Bundle;)V

    :cond_185
    :goto_185
    return-void

    :pswitch_data_186
    .packed-switch 0x0
        :pswitch_121  #00000000
    .end packed-switch

    :pswitch_data_18c
    .packed-switch 0x1
        :pswitch_115  #00000001
        :pswitch_111  #00000002
        :pswitch_10d  #00000003
        :pswitch_10a  #00000004
        :pswitch_107  #00000005
        :pswitch_104  #00000006
    .end packed-switch
.end method
