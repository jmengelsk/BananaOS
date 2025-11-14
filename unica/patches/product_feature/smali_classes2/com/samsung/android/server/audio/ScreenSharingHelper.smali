.class public final Lcom/samsung/android/server/audio/ScreenSharingHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sInstance:Lcom/samsung/android/server/audio/ScreenSharingHelper;

.field public static sIsWifiDisplayConnected:Z

.field public static sSplitSoundEnabled:Z


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mDisplayVolumeControlChecker:Lcom/samsung/android/server/audio/ScreenSharingHelper$1;

.field public mIsAppCasting:Z

.field public mIsDLNAEnabled:Z

.field public mIsPresentationMode:Z

.field public mIsSupportDisplayVolumeControl:Z

.field public final mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

.field public final mPresentationModeReceiver:Lcom/samsung/android/server/audio/ScreenSharingHelper$3;

.field public mScreenSharingStateResumed:Z

.field public final mSemDeviceStatusListener:Lcom/samsung/android/server/audio/ScreenSharingHelper$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/MediaFocusControl;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsSupportDisplayVolumeControl:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsAppCasting:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    new-instance v1, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;-><init>(Lcom/samsung/android/server/audio/ScreenSharingHelper;)V

    iput-object v1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayVolumeControlChecker:Lcom/samsung/android/server/audio/ScreenSharingHelper$1;

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsPresentationMode:Z

    new-instance v0, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;-><init>(Lcom/samsung/android/server/audio/ScreenSharingHelper;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mSemDeviceStatusListener:Lcom/samsung/android/server/audio/ScreenSharingHelper$2;

    new-instance v0, Lcom/samsung/android/server/audio/ScreenSharingHelper$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/ScreenSharingHelper$3;-><init>(Lcom/samsung/android/server/audio/ScreenSharingHelper;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mPresentationModeReceiver:Lcom/samsung/android/server/audio/ScreenSharingHelper$3;

    iput-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mAudioManager:Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    return-void
.end method


# virtual methods
.method public final setMirroringPolicyParameter(Z)V
    .registers 4

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOIP_VIA_SMART_VIEW:Z

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsPresentationMode:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    if-eqz v0, :cond_d

    :cond_c
    const/4 p1, 0x0

    :cond_d
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MIC_MODE_FOR_QUICK_PANEL_UI:Z

    if-eqz v0, :cond_24

    const-string/jumbo v0, "setMirroringPolicyParameter updateSmartViewState active : "

    const-string v1, "AS.ScreenSharingHelper"

    invoke-static {v0, v1, p1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/server/audio/MicModeManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/MicModeManager;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->updateState(IZ)V

    :cond_24
    if-eqz p1, :cond_2a

    const-string/jumbo p0, "true"

    goto :goto_2d

    :cond_2a
    const-string/jumbo p0, "false"

    :goto_2d
    const-string/jumbo p1, "l_smart_view_mirroring_active="

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    :cond_37
    return-void
.end method

.method public final setSupportDisplayVolumeControl(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsSupportDisplayVolumeControl:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setSupportDisplayVolumeControl : supportDisplayVolumeControl="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsSupportDisplayVolumeControl:Z

    const-string v0, "AS.ScreenSharingHelper"

    invoke-static {v0, p1, p0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method public final updateAppCasting(I)V
    .registers 4

    packed-switch p1, :pswitch_data_1c

    goto :goto_b

    :pswitch_4  #0xfffffc18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsAppCasting:Z

    goto :goto_b

    :pswitch_8  #0xfffffc16, 0xfffffc17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsAppCasting:Z

    :goto_b
    const-string/jumbo v0, "updateAppCasting : deviceType="

    const-string v1, ", mIsAppCasting="

    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsAppCasting:Z

    const-string v0, "AS.ScreenSharingHelper"

    invoke-static {v0, p1, p0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void

    :pswitch_data_1c
    .packed-switch -0x3ea
        :pswitch_8  #fffffc16
        :pswitch_8  #fffffc17
        :pswitch_4  #fffffc18
    .end packed-switch
.end method
