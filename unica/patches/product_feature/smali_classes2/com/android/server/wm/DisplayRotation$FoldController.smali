.class public final Lcom/android/server/wm/DisplayRotation$FoldController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActivityBoundsUpdateCallback:Lcom/android/server/wm/DisplayRotation$FoldController$1;

.field public final mAllowHalfFoldAutoRotationOverride:Z

.field public mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

.field public final mDisplaySwitchRotationBlockTimeMs:I

.field public mHalfFoldSavedRotation:I

.field public final mHingeAngleRotationBlockTimeMs:I

.field public final mHingeAngleSensorEventListener:Lcom/android/server/wm/DisplayRotation$FoldController$2;

.field public mInHalfFoldTransition:Z

.field public final mIsDisplayAlwaysSeparatingHinge:Z

.field public mLastDisplaySwitchTime:J

.field public mLastHingeAngleEventTime:J

.field public final mMaxHingeAngle:I

.field public final mPauseAutorotationDuringUnfolding:Z

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mShouldDisableRotationSensor:Z

.field public mShouldIgnoreSensorRotation:Z

.field public final mTabletopRotations:Ljava/util/Set;

.field public final synthetic this$0:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayRotation;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    sget-object v0, Lcom/android/server/wm/DeviceStateController$DeviceState;->UNKNOWN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastHingeAngleEventTime:J

    iput-wide v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastDisplaySwitchTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mInHalfFoldTransition:Z

    iget-object v1, p1, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11102bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mAllowHalfFoldAutoRotationOverride:Z

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mTabletopRotations:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10700d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 v3, 0x3

    if-eqz v1, :cond_9e

    array-length v4, v1

    move v5, v0

    :goto_3f
    if-ge v5, v4, :cond_ad

    aget v6, v1, v5

    if-eqz v6, :cond_90

    const/16 v7, 0x5a

    const/4 v8, 0x1

    if-eq v6, v7, :cond_84

    const/16 v7, 0xb4

    if-eq v6, v7, :cond_77

    const/16 v7, 0x10e

    if-eq v6, v7, :cond_6b

    const/4 v7, 0x4

    aget-boolean v7, v2, v7

    if-eqz v7, :cond_9b

    int-to-long v6, v6

    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v10, 0x49e6af899df831b2L  # 1.0360993240422253E48

    invoke-static {v9, v10, v11, v8, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_9b

    :cond_6b
    iget-object v6, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mTabletopRotations:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v6, Landroid/util/ArraySet;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    :cond_77
    iget-object v6, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mTabletopRotations:Ljava/util/Set;

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v6, Landroid/util/ArraySet;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    :cond_84
    iget-object v6, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mTabletopRotations:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v6, Landroid/util/ArraySet;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    :cond_90
    iget-object v6, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mTabletopRotations:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v6, Landroid/util/ArraySet;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_9b
    :goto_9b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    :cond_9e
    aget-boolean v1, v2, v3

    if-eqz v1, :cond_ad

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x4011086c30af3a2fL  # 4.258225212759995

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_ad
    iget-object v1, p1, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mIsDisplayAlwaysSeparatingHinge:Z

    new-instance v1, Lcom/android/server/wm/DisplayRotation$FoldController$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayRotation$FoldController$1;-><init>(Lcom/android/server/wm/DisplayRotation$FoldController;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mActivityBoundsUpdateCallback:Lcom/android/server/wm/DisplayRotation$FoldController$1;

    iget-object v1, p1, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11102c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mPauseAutorotationDuringUnfolding:Z

    if-eqz v1, :cond_129

    iget-object v1, p1, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDisplaySwitchRotationBlockTimeMs:I

    iget-object v1, p1, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e012a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHingeAngleRotationBlockTimeMs:I

    iget-object p1, p1, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x10e012b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mMaxHingeAngle:I

    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    iget-object v1, p1, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_129

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_129

    new-instance v2, Lcom/android/server/wm/DisplayRotation$FoldController$2;

    invoke-direct {v2, p0}, Lcom/android/server/wm/DisplayRotation$FoldController$2;-><init>(Lcom/android/server/wm/DisplayRotation$FoldController;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHingeAngleSensorEventListener:Lcom/android/server/wm/DisplayRotation$FoldController$2;

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotation;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p0, v2, v1, v0, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    :cond_129
    return-void
.end method


# virtual methods
.method public final foldStateChanged(Lcom/android/server/wm/DeviceStateController$DeviceState;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    iget-object v5, v4, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_56

    iget v2, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v6, v2

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    int-to-long v10, v2

    iget v2, v4, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    int-to-long v12, v2

    iget v2, v4, Lcom/android/server/wm/DisplayRotation;->mLastSensorRotation:I

    int-to-long v14, v2

    iget v2, v4, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    move-wide/from16 v16, v6

    int-to-long v6, v2

    iget v2, v4, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    move-object/from16 v18, v4

    int-to-long v3, v2

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    filled-new-array/range {v8 .. v14}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v6, 0x7ad9da1852873806L  # 6.006603503852751E283

    const/16 v4, 0x1551

    invoke-static {v2, v6, v7, v4, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_58

    :cond_56
    move-object/from16 v18, v4

    :goto_58
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    sget-object v3, Lcom/android/server/wm/DeviceStateController$DeviceState;->UNKNOWN:Lcom/android/server/wm/DeviceStateController$DeviceState;

    if-ne v2, v3, :cond_61

    iput-object v1, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    return-void

    :cond_61
    sget-object v3, Lcom/android/server/wm/DeviceStateController$DeviceState;->HALF_FOLDED:Lcom/android/server/wm/DeviceStateController$DeviceState;

    move-object/from16 v4, v18

    iget-object v6, v4, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v7, 0x0

    if-ne v1, v3, :cond_7c

    if-eq v2, v3, :cond_7c

    iget-object v2, v5, Lcom/android/server/wm/DisplayContent;->mRotationReversionController:Lcom/android/server/wm/DisplayRotationReversionController;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayRotationReversionController;->beforeOverrideApplied(I)V

    iget v2, v4, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    iput v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHalfFoldSavedRotation:I

    iput-object v1, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    invoke-virtual {v6, v7, v7}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    goto :goto_84

    :cond_7c
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mInHalfFoldTransition:Z

    iput-object v1, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDeviceState:Lcom/android/server/wm/DeviceStateController$DeviceState;

    invoke-virtual {v6, v7, v7}, Lcom/android/server/wm/WindowManagerService;->updateRotationUnchecked(ZZ)V

    :goto_84
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$FoldController;->mActivityBoundsUpdateCallback:Lcom/android/server/wm/DisplayRotation$FoldController$1;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final updateSensorRotationBlockIfNeeded()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastDisplaySwitchTime:J

    sub-long v3, v1, v3

    iget v5, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mDisplaySwitchRotationBlockTimeMs:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-ltz v3, :cond_1f

    iget-wide v5, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mLastHingeAngleEventTime:J

    sub-long/2addr v1, v5

    iget v3, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mHingeAngleRotationBlockTimeMs:I

    int-to-long v5, v3

    cmp-long v1, v1, v5

    if-gez v1, :cond_1d

    goto :goto_1f

    :cond_1d
    move v1, v4

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v1, 0x1

    :goto_20
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldIgnoreSensorRotation:Z

    if-eq v1, v2, :cond_35

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldIgnoreSensorRotation:Z

    if-nez v1, :cond_35

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldDisableRotationSensor:Z

    if-eqz v1, :cond_32

    iput-boolean v4, p0, Lcom/android/server/wm/DisplayRotation$FoldController;->mShouldDisableRotationSensor:Z

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    return-void

    :cond_32
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    :cond_35
    return-void
.end method
