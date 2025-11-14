.class public final Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

.field public final mDisplayRotationCompatPolicySummary:Ljava/lang/String;

.field public final mFromRotation:I

.field public final mHalfFoldSavedRotation:I

.field public final mIgnoreOrientationRequest:Z

.field public final mInHalfFoldTransition:Z

.field public final mLastOrientationSource:Ljava/lang/String;

.field public final mNonDefaultRequestingTaskDisplayArea:Ljava/lang/String;

.field public final mRotationReversionSlots:[Z

.field public final mSensorRotation:I

.field public final mSourceOrientation:I

.field public final mTimestamp:J

.field public final mToRotation:I

.field public final mUserRotation:I

.field public final mUserRotationMode:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayRotation;II)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mTimestamp:J

    iput p2, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mFromRotation:I

    iput p3, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mToRotation:I

    iget p2, p1, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    iput p2, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mUserRotation:I

    iget p2, p1, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    iput p2, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mUserRotationMode:I

    iget-object p2, p1, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    const/4 p3, -0x2

    if-eqz p2, :cond_1

    iget-boolean p2, p2, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p1, Lcom/android/server/wm/DisplayRotation;->mLastSensorRotation:I

    goto :goto_1

    :cond_1
    :goto_0
    move p2, p3

    :goto_1
    iput p2, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mSensorRotation:I

    iget-object p2, p1, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mIgnoreOrientationRequest:Z

    iget-object v0, p2, Lcom/android/server/wm/DisplayContent;->mOrientationRequestingTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string/jumbo v0, "none"

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-eq v0, v2, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mNonDefaultRequestingTaskDisplayArea:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mLastOrientationSource:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getOverrideOrientation()I

    move-result v0

    :goto_3
    iput v0, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mSourceOrientation:I

    goto :goto_4

    :cond_5
    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mLastOrientationSource:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mSourceOrientation:I

    :goto_4
    iget-object p1, p1, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz p1, :cond_6

    iget p3, p1, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    iput p3, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mHalfFoldSavedRotation:I

    iget-boolean p3, p1, Lcom/android/server/wm/DisplayRotation$FoldController;->mInHalfFoldTransition:Z

    iput-boolean p3, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mInHalfFoldTransition:Z

    iget-object p1, p1, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    goto :goto_5

    :cond_6
    iput p3, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mHalfFoldSavedRotation:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mInHalfFoldTransition:Z

    sget-object p1, Lcom/android/server/wm/DeviceStateController$DeviceState;->UNKNOWN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    :goto_5
    iget-object p1, p2, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    iget-object p1, p1, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForDisplay()Z

    move-result p3

    const-string v0, " }"

    if-eqz p3, :cond_8

    iget-object p3, p1, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " mLastReportedOrientation="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mLastReportedOrientation:I

    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " topActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_7

    const-string/jumbo v3, "null"

    goto :goto_6

    :cond_7
    iget-object v3, p3, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    :goto_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isTreatmentEnabledForActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "mCameraStateMonitor="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v3, " CameraIdPackageNameBiMapping="

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "{ mPackageToCameraIdMap="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/android/server/wm/DisplayRotationCompatPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    iget-object v4, v4, Lcom/android/server/wm/CameraStateMonitor;->mCameraIdPackageBiMapping:Lcom/android/server/wm/CameraIdPackageNameBiMapping;

    iget-object v4, v4, Lcom/android/server/wm/CameraIdPackageNameBiMapping;->mPackageToCameraIdMap:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_7

    :cond_8
    const-string p3, ""

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DisplayRotationCompatPolicy{ isTreatmentEnabledForDisplay="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotationCompatPolicy;->isTreatmentEnabledForDisplay()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_9
    move-object p1, v1

    :goto_8
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mDisplayRotationCompatPolicySummary:Ljava/lang/String;

    iget-object p1, p2, Lcom/android/server/wm/DisplayContent;->mRotationReversionController:Lcom/android/server/wm/DisplayRotationReversionController;

    iget-object p2, p1, Lcom/android/server/wm/DisplayRotationReversionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p3, p2, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    iget-object p3, p3, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationCompatPolicy:Lcom/android/server/wm/DisplayRotationCompatPolicy;

    if-eqz p3, :cond_a

    goto :goto_9

    :cond_a
    iget-object p3, p2, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget-object p3, p3, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-nez p3, :cond_b

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result p2

    if-eqz p2, :cond_c

    :cond_b
    :goto_9
    iget-object p1, p1, Lcom/android/server/wm/DisplayRotationReversionController;->mSlots:[Z

    invoke-virtual {p1}, [Z->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [Z

    :cond_c
    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->mRotationReversionSlots:[Z

    return-void
.end method
