.class public final Lcom/samsung/android/server/audio/ScreenSharingHelper$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/hardware/display/SemDeviceStatusListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/ScreenSharingHelper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    return-void
.end method


# virtual methods
.method public final onConnectionStatusChanged(I)V
    .registers 2

    return-void
.end method

.method public final onDlnaConnectionStatusChanged(Z)V
    .registers 2

    return-void
.end method

.method public final onQosLevelChanged(I)V
    .registers 2

    return-void
.end method

.method public final onScreenSharingStatusChanged(I)V
    .registers 13

    const/4 v0, 0x6

    if-ne p1, v0, :cond_10

    iget-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    iget-boolean v0, p1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsSupportDisplayVolumeControl:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    iput-boolean v1, p1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z

    :cond_c
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setMirroringPolicyParameter(Z)V

    goto :goto_5a

    :cond_10
    const/4 v0, 0x7

    if-ne p1, v0, :cond_5a

    iget-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    iget-boolean v0, p1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsSupportDisplayVolumeControl:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    iput-boolean v1, p1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z

    :cond_1c
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setMirroringPolicyParameter(Z)V

    sget-boolean p1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sSplitSoundEnabled:Z

    if-eqz p1, :cond_5a

    sput-boolean v1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sSplitSoundEnabled:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "l_smart_view_split_sound_enable="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->sSplitSoundEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    iget-object v0, p1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    iget-object p1, v0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    if-eqz p1, :cond_5a

    iget-object v1, p1, Lcom/android/server/audio/FocusRequester;->mAttributes:Landroid/media/AudioAttributes;

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundCb:Landroid/os/IBinder;

    iget v8, p1, Lcom/android/server/audio/FocusRequester;->mSdkTarget:I

    const/4 v10, -0x1

    iget v2, p1, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/audio/FocusRequester;->mPackageName:Ljava/lang/String;

    iget v7, p1, Lcom/android/server/audio/FocusRequester;->mGrantFlags:I

    const/4 v9, 0x1

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/audio/MediaFocusControl;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;IIZI)I

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    iput-object p1, v0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundCb:Landroid/os/IBinder;

    :cond_5a
    :goto_5a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onScreenSharingStatusChanged, status = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mScreenSharingStateResumed:Z

    const-string v0, "AS.ScreenSharingHelper"

    invoke-static {v0, p1, p0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void
.end method
