.class public final Lcom/android/server/wm/DisplayWindowSettings;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayWindowSettingsProvider;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    return-void
.end method


# virtual methods
.method public final applyRotationSettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->setIgnoreOrientationRequest(Z)Z

    goto :goto_1c

    :cond_14
    iget-boolean p0, p1, Lcom/android/server/wm/DisplayContent;->mHasSetIgnoreOrientationRequest:Z

    if-eqz p0, :cond_1c

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->setIgnoreOrientationRequest(Z)Z

    :cond_1c
    :goto_1c
    iget-object p0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    return-void
.end method

.method public final applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, v0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v7

    invoke-static {v2}, Landroid/hardware/display/DisplayManager;->isExternalDesktopDisplay(Landroid/view/DisplayInfo;)Z

    move-result v3

    iget-object v8, v0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    if-eqz v3, :cond_40

    iget-object v3, v8, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget v3, v3, Lcom/android/server/wm/MultiTaskingController;->mExternalDesktopDensity:I

    iput v3, v7, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v4, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v4, 0x384

    const/16 v6, 0x640

    if-lt v5, v6, :cond_30

    if-ge v3, v4, :cond_40

    :cond_30
    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    if-le v3, v2, :cond_38

    move v5, v6

    goto :goto_39

    :cond_38
    move v5, v4

    :goto_39
    iput v5, v7, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    if-ge v3, v2, :cond_3e

    move v4, v6

    :cond_3e
    iput v4, v7, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    :cond_40
    invoke-virtual {v0, v7, v1}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;Lcom/android/server/wm/DisplayContent;)I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eqz v3, :cond_4d

    invoke-virtual {v3, v2}, Lcom/android/server/wm/TaskDisplayArea;->setWindowingMode(I)V

    :cond_4d
    iget-object v2, v7, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    const/4 v9, 0x0

    if-eqz v2, :cond_57

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_58

    :cond_57
    move v2, v9

    :goto_58
    iget-object v3, v7, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    if-eqz v3, :cond_61

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_62

    :cond_61
    move v3, v9

    :goto_62
    iget-object v4, v7, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    if-eqz v4, :cond_6b

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_6c

    :cond_6b
    move v4, v9

    :goto_6c
    iget-object v5, v1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iput v4, v5, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    iget-boolean v4, v5, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/4 v6, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eqz v4, :cond_79

    goto/16 :goto_f6

    :cond_79
    const-string v4, " for "

    const-string/jumbo v12, "WindowManager"

    iget-object v13, v5, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_9d

    if-eq v2, v11, :cond_9d

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "Trying to restore an invalid user rotation mode "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v9

    :cond_9d
    if-ltz v3, :cond_a1

    if-le v3, v10, :cond_ba

    :cond_a1
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "Trying to restore an invalid user rotation "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v9

    :cond_ba
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayRotation;->getDemoUserRotationOverride()I

    move-result v4

    if-nez v4, :cond_c1

    goto :goto_ee

    :cond_c1
    iget-object v12, v13, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v12}, Landroid/view/Display;->getType()I

    move-result v13

    if-eq v13, v6, :cond_ee

    invoke-virtual {v12}, Landroid/view/Display;->getType()I

    move-result v13

    const/4 v14, 0x4

    if-ne v13, v14, :cond_d1

    goto :goto_ee

    :cond_d1
    invoke-virtual {v12}, Landroid/view/Display;->getType()I

    move-result v13

    const/4 v14, 0x5

    if-ne v13, v14, :cond_ed

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayRotation;->getDemoUserRotationPackage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_ed

    invoke-virtual {v12}, Landroid/view/Display;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ed

    goto :goto_ee

    :cond_ed
    move v4, v9

    :cond_ee
    :goto_ee
    if-eqz v4, :cond_f2

    move v3, v4

    move v2, v11

    :cond_f2
    iput v2, v5, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    iput v3, v5, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    :goto_f6
    iget v2, v7, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    if-eqz v2, :cond_fc

    move v2, v11

    goto :goto_fd

    :cond_fc
    move v2, v9

    :goto_fd
    iget v3, v7, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensityRatio:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_106

    move v3, v11

    goto :goto_107

    :cond_106
    move v3, v9

    :goto_107
    iget v4, v7, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    if-eqz v4, :cond_111

    iget v4, v7, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    if-eqz v4, :cond_111

    move v4, v11

    goto :goto_112

    :cond_111
    move v4, v9

    :goto_112
    iget-object v5, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v12, v5, Landroid/view/DisplayInfo;->type:I

    if-eq v12, v6, :cond_121

    if-ne v12, v10, :cond_126

    iget v6, v5, Landroid/view/DisplayInfo;->flags:I

    const/high16 v10, 0x4000000

    and-int/2addr v6, v10

    if-eqz v6, :cond_126

    :cond_121
    iget-boolean v5, v5, Landroid/view/DisplayInfo;->canHostTasks:Z

    if-nez v5, :cond_126

    move v4, v9

    :cond_126
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_MULTI_RESOLUTION_POLICY:Z

    if-eqz v5, :cond_14a

    iget-boolean v5, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v5, :cond_14a

    iget-boolean v5, v8, Lcom/android/server/wm/WindowManagerService;->mSystemReady:Z

    if-nez v5, :cond_14a

    iget-object v5, v1, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getUserPreferredDisplayMode()Landroid/view/Display$Mode;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v6

    if-eqz v5, :cond_14a

    if-eqz v6, :cond_14a

    invoke-virtual {v5, v6}, Landroid/view/Display$Mode;->equalsExceptRefreshRate(Landroid/view/Display$Mode;)Z

    move-result v5

    if-nez v5, :cond_14a

    move v2, v9

    move v4, v2

    :cond_14a
    iput-boolean v2, v1, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    iput-boolean v4, v1, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    iget-object v5, v7, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    if-eqz v5, :cond_157

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_158

    :cond_157
    move v5, v9

    :goto_158
    iput-boolean v5, v1, Lcom/android/server/wm/DisplayContent;->mIgnoreDisplayCutout:Z

    if-eqz v4, :cond_15f

    iget v5, v7, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    goto :goto_161

    :cond_15f
    iget v5, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    :goto_161
    if-eqz v4, :cond_166

    iget v4, v7, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    goto :goto_168

    :cond_166
    iget v4, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    :goto_168
    if-eqz v2, :cond_16d

    iget v2, v7, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    goto :goto_171

    :cond_16d
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInitialDisplayDensity()I

    move-result v2

    :goto_171
    if-eqz v3, :cond_177

    iget v3, v7, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensityRatio:F

    iput v3, v1, Lcom/android/server/wm/DisplayContent;->mForcedDisplayDensityRatio:F

    :cond_177
    move v3, v4

    move v4, v2

    move v2, v5

    iget v5, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    iget v6, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(IIIFF)V

    iget-object v2, v7, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    if-eqz v2, :cond_18a

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_18b

    :cond_18a
    move v2, v9

    :goto_18b
    if-ne v2, v11, :cond_18f

    move v2, v11

    goto :goto_190

    :cond_18f
    move v2, v9

    :goto_190
    iput-boolean v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    iget-object v3, v8, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v4, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v3, v4, v2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayScalingDisabled(IZ)V

    iget-object v2, v7, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    if-eqz v2, :cond_1a2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_1a3

    :cond_1a2
    move v2, v9

    :goto_1a3
    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->flags:I

    and-int/lit16 v3, v3, 0x1000

    if-nez v3, :cond_1b9

    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerServiceExt;->mExtraDisplayPolicy:Lcom/android/server/wm/ExtraDisplayPolicy;

    iget v4, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v3, v4}, Lcom/android/server/wm/ExtraDisplayPolicy;->shouldNotTopDisplay(I)Z

    move-result v3

    if-nez v3, :cond_1b9

    move v3, v11

    goto :goto_1ba

    :cond_1b9
    move v3, v9

    :goto_1ba
    if-eqz v3, :cond_1be

    if-eqz v2, :cond_1bf

    :cond_1be
    move v9, v11

    :cond_1bf
    iput-boolean v9, v1, Lcom/android/server/wm/DisplayContent;->mDontMoveToTop:Z

    if-eqz p2, :cond_1c6

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/DisplayWindowSettings;->applyRotationSettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    :cond_1c6
    return-void
.end method

.method public final clearForcedSize(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_5

    goto :goto_34

    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object p2, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object p2

    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    if-eqz v0, :cond_34

    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    if-nez v0, :cond_1c

    goto :goto_34

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    const-string v1, "(DisplayWindowSettings)"

    invoke-static {p2, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_35

    :cond_34
    :goto_34
    return-void

    :cond_35
    :goto_35
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedSize(Lcom/android/server/wm/DisplayContent;II)V

    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mMultiResolutionController:Lcom/android/server/wm/MultiResolutionController;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "clearForcedSize: OldSize="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiResolutionController;->updateDefaultDisplaySizeDensityChangedReason(Ljava/lang/String;)V

    return-void
.end method

.method public final getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;Lcom/android/server/wm/DisplayContent;)I
    .registers 5

    iget p1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x5

    if-ne p1, v0, :cond_e

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-nez v1, :cond_e

    goto :goto_2f

    :cond_e
    if-eqz p1, :cond_11

    return p1

    :cond_11
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz p1, :cond_22

    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService;->mIsPc:Z

    if-nez p0, :cond_21

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->isPublicSecondaryDisplayWithDesktopModeForceEnabled()Z

    move-result p0

    if-eqz p0, :cond_22

    :cond_21
    return v0

    :cond_22
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_2f

    :cond_2d
    if-ne p0, v0, :cond_30

    :goto_2f
    const/4 p0, 0x1

    :cond_30
    return p0
.end method

.method public final onDisplayRemoved(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider;->mOverrideSettings:Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->getIdentifier(Landroid/view/DisplayInfo;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/lang/Object;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_2e

    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$WritableSettings;->mVirtualDisplayIdentifiers:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/lang/Object;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_2f

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    :goto_2f
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettingsProvider$FileData;->mSettings:Ljava/lang/Object;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setForcedDensity(IILandroid/view/DisplayInfo;)V
    .registers 7

    iget v0, p3, Landroid/view/DisplayInfo;->displayId:I

    if-nez v0, :cond_1b

    if-nez p1, :cond_9

    const-string v0, ""

    goto :goto_d

    :cond_9
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "display_density_forced"

    invoke-static {v1, v2, v0, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_1b
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object p2

    iput p1, p2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    invoke-virtual {p0, p3, p2}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    return-void
.end method

.method public final setForcedSize(Lcom/android/server/wm/DisplayContent;II)V
    .registers 7

    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_2e

    if-eqz p2, :cond_1e

    if-nez p3, :cond_9

    goto :goto_1e

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1e
    :goto_1e
    const-string v0, ""

    :goto_20
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "display_size_forced"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2e
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v0

    iput p2, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    iput p3, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    return-void
.end method

.method public final setShouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 8

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->shouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-eq p2, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iget-object v1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    sget-object v1, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_CONTENT_MODE_MANAGEMENT:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v2

    if-eqz v2, :cond_75

    iget-boolean v2, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v2, :cond_75

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v2

    if-nez v2, :cond_75

    if-nez v0, :cond_2f

    goto :goto_75

    :cond_2f
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v1

    if-nez v1, :cond_43

    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "mHasNavigationBar shouldn\'t be updated when the flag is off."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    iget-object v1, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v2, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v2, :cond_4a

    goto :goto_50

    :cond_4a
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isSystemDecorationsSupported()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    :goto_50
    if-eqz p2, :cond_5d

    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const-string/jumbo p2, "setShouldShowSystemDecorsLocked"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->startSystemDecorations(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V

    return-void

    :cond_5d
    iget-object p0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object p1, p0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object p2, p0, Lcom/android/server/wm/DisplayPolicy;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mDisplayNotificationController:Lcom/android/server/wm/DisplayWindowListenerController;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchDesktopModeEligibleChanged(I)V

    new-instance p2, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, p0}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda11;-><init>(IILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHandler:Lcom/android/server/wm/DisplayPolicy$PolicyHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_75
    :goto_75
    return-void
.end method

.method public final shouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;)Z
    .registers 4

    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isRemoteAppDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    :cond_15
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettingsProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    if-eqz p0, :cond_26

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_26
    return v1
.end method
