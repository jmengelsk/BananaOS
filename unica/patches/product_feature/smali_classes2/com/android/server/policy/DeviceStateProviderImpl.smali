.class public final Lcom/android/server/policy/DeviceStateProviderImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/util/Dumpable;
.implements Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/os/PowerManager$OnThermalStatusChangedListener;


# static fields
.field static final DEFAULT_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

.field public static final FALSE_BOOLEAN_SUPPLIER:Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;

.field public static final TRUE_BOOLEAN_SUPPLIER:Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIsLidOpen:Ljava/lang/Boolean;

.field public mLastReportedState:I

.field public final mLatestSensorEvent:Ljava/util/Map;

.field public mListener:Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

.field public final mLock:Ljava/lang/Object;

.field public final mOrderedStates:[Landroid/hardware/devicestate/DeviceState;

.field public mPowerSaveModeEnabled:Z

.field public final mStateConditions:Landroid/util/SparseArray;

.field public mThermalStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/android/server/policy/DeviceStateProviderImpl;->TRUE_BOOLEAN_SUPPLIER:Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/android/server/policy/DeviceStateProviderImpl;->FALSE_BOOLEAN_SUPPLIER:Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;

    new-instance v0, Landroid/hardware/devicestate/DeviceState;

    new-instance v1, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    const/4 v2, 0x0

    const-string v3, "DEFAULT"

    invoke-direct {v1, v2, v3}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->build()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/devicestate/DeviceState;-><init>(Landroid/hardware/devicestate/DeviceState$Configuration;)V

    sput-object v0, Lcom/android/server/policy/DeviceStateProviderImpl;->DEFAULT_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mThermalStatus:I

    move-object/from16 v5, p2

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object/from16 v7, p3

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v6, v8, :cond_39

    const/4 v6, 0x1

    goto :goto_3a

    :cond_39
    move v6, v4

    :goto_3a
    const-string/jumbo v8, "Number of device states must be equal to the number of device state conditions."

    invoke-static {v6, v8}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object v1, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/hardware/devicestate/DeviceState;

    new-instance v8, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda2;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-static {v8}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v8

    invoke-static {v6, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iput-object v6, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mOrderedStates:[Landroid/hardware/devicestate/DeviceState;

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    move v8, v4

    move v10, v8

    :goto_63
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_1ba

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v11}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v11

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/policy/devicestate/config/Conditions;

    sget-object v13, Lcom/android/server/policy/DeviceStateProviderImpl;->TRUE_BOOLEAN_SUPPLIER:Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;

    sget-object v14, Lcom/android/server/policy/DeviceStateProviderImpl;->FALSE_BOOLEAN_SUPPLIER:Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;

    if-nez v12, :cond_a0

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/devicestate/DeviceState;

    const/16 v15, 0xa

    invoke-virtual {v12, v15}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v12

    if-eqz v12, :cond_9a

    iget-object v12, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    invoke-virtual {v12, v11, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_92
    move-object/from16 v16, v7

    move/from16 v17, v8

    move/from16 v19, v10

    goto/16 :goto_150

    :cond_9a
    iget-object v12, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    invoke-virtual {v12, v11, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_92

    :cond_a0
    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v12, Lcom/android/server/policy/devicestate/config/Conditions;->lidSwitch:Lcom/android/server/policy/devicestate/config/LidSwitchCondition;

    if-eqz v4, :cond_c2

    new-instance v9, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;

    iget-object v4, v4, Lcom/android/server/policy/devicestate/config/LidSwitchCondition;->open:Ljava/lang/Boolean;

    if-nez v4, :cond_b6

    const/4 v4, 0x0

    goto :goto_ba

    :cond_b6
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_ba
    invoke-direct {v9, v0, v4}, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;-><init>(Lcom/android/server/policy/DeviceStateProviderImpl;Z)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_c3

    :cond_c2
    const/4 v4, 0x0

    :goto_c3
    iget-object v9, v12, Lcom/android/server/policy/devicestate/config/Conditions;->sensor:Ljava/util/List;

    if-nez v9, :cond_ce

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v12, Lcom/android/server/policy/devicestate/config/Conditions;->sensor:Ljava/util/List;

    :cond_ce
    iget-object v9, v12, Lcom/android/server/policy/devicestate/config/Conditions;->sensor:Ljava/util/List;

    const/4 v12, 0x0

    :goto_d1
    move-object v3, v9

    check-cast v3, Ljava/util/ArrayList;

    move/from16 p3, v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v12, v4, :cond_17a

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/devicestate/config/SensorCondition;

    iget-object v4, v3, Lcom/android/server/policy/devicestate/config/SensorCondition;->type:Ljava/lang/String;

    move-object/from16 v16, v7

    iget-object v7, v3, Lcom/android/server/policy/devicestate/config/SensorCondition;->name:Ljava/lang/String;

    move/from16 v17, v8

    iget-object v8, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mContext:Landroid/content/Context;

    move-object/from16 v18, v9

    const-class v9, Landroid/hardware/SensorManager;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/SensorManager;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v8

    move/from16 v19, v10

    const/4 v9, 0x0

    :goto_fe
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_12d

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Sensor;

    move-object/from16 v20, v8

    invoke-virtual {v10}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v8

    move/from16 v21, v9

    invoke-virtual {v10}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_128

    if-nez v9, :cond_11b

    goto :goto_128

    :cond_11b
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_128

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_128

    goto :goto_12e

    :cond_128
    :goto_128
    add-int/lit8 v9, v21, 0x1

    move-object/from16 v8, v20

    goto :goto_fe

    :cond_12d
    const/4 v10, 0x0

    :goto_12e
    if-nez v10, :cond_154

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to find Sensor with type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceStateProviderImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    invoke-virtual {v2, v11, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_150
    move/from16 v10, v19

    const/4 v4, 0x1

    goto :goto_1b1

    :cond_154
    new-instance v4, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;

    iget-object v7, v3, Lcom/android/server/policy/devicestate/config/SensorCondition;->value:Ljava/util/List;

    if-nez v7, :cond_161

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Lcom/android/server/policy/devicestate/config/SensorCondition;->value:Ljava/util/List;

    :cond_161
    iget-object v3, v3, Lcom/android/server/policy/devicestate/config/SensorCondition;->value:Ljava/util/List;

    invoke-direct {v4, v0, v10, v3}, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;-><init>(Lcom/android/server/policy/DeviceStateProviderImpl;Landroid/hardware/Sensor;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move/from16 v4, p3

    move-object/from16 v7, v16

    move/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v10, v19

    goto/16 :goto_d1

    :cond_17a
    move-object/from16 v16, v7

    move/from16 v17, v8

    move/from16 v19, v10

    or-int v10, v19, p3

    invoke-virtual {v6, v15}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_199

    iget-object v3, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/server/policy/DeviceStateProviderImpl$AndBooleanSupplier;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v2, v7, Lcom/android/server/policy/DeviceStateProviderImpl$AndBooleanSupplier;->mBooleanSuppliers:Ljava/util/List;

    invoke-virtual {v3, v11, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1b1

    :cond_199
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1ac

    iget-object v3, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/BooleanSupplier;

    invoke-virtual {v3, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1b1

    :cond_1ac
    iget-object v2, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    invoke-virtual {v2, v11, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1b1
    add-int/lit8 v8, v17, 0x1

    move-object/from16 v7, v16

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    goto/16 :goto_63

    :cond_1ba
    move/from16 v19, v10

    if-eqz v19, :cond_1cb

    const-class v2, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$LocalService;

    iget-object v2, v2, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/input/InputManagerService;->registerLidSwitchCallbackInternal(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V

    :cond_1cb
    iget-object v2, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    const/4 v7, 0x0

    :goto_1d6
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v7, v3, :cond_1e9

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1d6

    :cond_1e9
    const/4 v4, 0x0

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    if-eqz v1, :cond_238

    move v7, v4

    :goto_1f5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_20f

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/devicestate/DeviceState;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_20c

    invoke-virtual {v1, v0}, Landroid/os/PowerManager;->addThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    goto :goto_20f

    :cond_20c
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f5

    :cond_20f
    :goto_20f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_238

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/devicestate/DeviceState;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_235

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.os.action.POWER_SAVE_MODE_CHANGED_INTERNAL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/policy/DeviceStateProviderImpl$1;

    invoke-direct {v3, v0, v1}, Lcom/android/server/policy/DeviceStateProviderImpl$1;-><init>(Lcom/android/server/policy/DeviceStateProviderImpl;Landroid/os/PowerManager;)V

    iget-object v0, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_235
    add-int/lit8 v4, v4, 0x1

    goto :goto_20f

    :cond_238
    return-void
.end method

.method public static createFromConfig(Landroid/content/Context;Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/DeviceStateProviderImpl;
    .registers 36

    const/16 v16, 0x4

    const/16 v17, 0x5

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x11

    const-string v1, "DeviceStateProviderImpl"

    const/16 v21, 0x10

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v22, 0xf

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/16 v23, 0xe

    if-eqz p1, :cond_371

    :try_start_1e
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_22} :catch_6b
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_1e .. :try_end_22} :catch_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_22} :catch_6b

    const/16 v24, 0xd

    :try_start_24
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v0, v0, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;->mFile:Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2b} :catch_67
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_24 .. :try_end_2b} :catch_67
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_24 .. :try_end_2b} :catch_67

    const/16 v25, 0xc

    :try_start_2d
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_58

    :try_start_32
    invoke-static {v6}, Lcom/android/server/policy/devicestate/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/policy/devicestate/config/DeviceStateConfig;

    move-result-object v0
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_48

    :try_start_36
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_43

    :try_start_39
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3f
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_39 .. :try_end_3c} :catch_3f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39 .. :try_end_3c} :catch_3f

    const/16 v26, 0xb

    goto :goto_75

    :catch_3f
    move-exception v0

    :goto_40
    const/16 v26, 0xb

    goto :goto_6f

    :catchall_43
    move-exception v0

    move-object v6, v0

    const/16 v26, 0xb

    goto :goto_5c

    :catchall_48
    move-exception v0

    move-object v7, v0

    const/16 v26, 0xb

    :try_start_4c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_54

    :catchall_50
    move-exception v0

    :try_start_51
    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_54
    throw v7
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception v0

    :goto_56
    move-object v6, v0

    goto :goto_5c

    :catchall_58
    move-exception v0

    const/16 v26, 0xb

    goto :goto_56

    :goto_5c
    :try_start_5c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_60

    goto :goto_64

    :catchall_60
    move-exception v0

    :try_start_61
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_64
    throw v6
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_65} :catch_65
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_61 .. :try_end_65} :catch_65
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_61 .. :try_end_65} :catch_65

    :catch_65
    move-exception v0

    goto :goto_6f

    :catch_67
    move-exception v0

    :goto_68
    const/16 v25, 0xc

    goto :goto_40

    :catch_6b
    move-exception v0

    const/16 v24, 0xd

    goto :goto_68

    :goto_6f
    const-string v5, "Encountered an error while reading device state config"

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_75
    if-eqz v0, :cond_371

    iget-object v5, v0, Lcom/android/server/policy/devicestate/config/DeviceStateConfig;->deviceState:Ljava/util/List;

    if-nez v5, :cond_82

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/policy/devicestate/config/DeviceStateConfig;->deviceState:Ljava/util/List;

    :cond_82
    iget-object v0, v0, Lcom/android/server/policy/devicestate/config/DeviceStateConfig;->deviceState:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v6, v18

    :goto_8c
    if-ge v6, v5, :cond_371

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/policy/devicestate/config/DeviceState;

    const/16 v27, 0x8

    iget-object v8, v7, Lcom/android/server/policy/devicestate/config/DeviceState;->identifier:Ljava/math/BigInteger;

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    iget-object v9, v7, Lcom/android/server/policy/devicestate/config/DeviceState;->name:Ljava/lang/String;

    if-nez v9, :cond_a4

    const-string v9, ""

    :cond_a4
    const/16 v28, 0x7

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    const/16 v29, 0x6

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    const/16 v30, 0xa

    iget-object v12, v7, Lcom/android/server/policy/devicestate/config/DeviceState;->properties:Lcom/android/server/policy/devicestate/config/Properties;

    const/16 v31, 0x9

    const-string/jumbo v13, "Parsed unknown flag with name: "

    const/16 v32, 0x3

    if-eqz v12, :cond_2a8

    iget-object v14, v12, Lcom/android/server/policy/devicestate/config/Properties;->property:Ljava/util/List;

    if-nez v14, :cond_ca

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v12, Lcom/android/server/policy/devicestate/config/Properties;->property:Ljava/util/List;

    :cond_ca
    iget-object v12, v12, Lcom/android/server/policy/devicestate/config/Properties;->property:Ljava/util/List;

    move/from16 v14, v18

    const/16 v33, 0x2

    :goto_d0
    move-object v15, v12

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_2aa

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_388

    :goto_e9
    const/4 v15, -0x1

    goto/16 :goto_1f7

    :sswitch_ec
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_FOLDABLE_DISPLAY_CONFIGURATION_OUTER_PRIMARY"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f6

    goto :goto_e9

    :cond_f6
    const/16 v15, 0x12

    goto/16 :goto_1f7

    :sswitch_fa
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_POLICY_CANCEL_OVERRIDE_REQUESTS"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_104

    goto :goto_e9

    :cond_104
    move/from16 v15, v20

    goto/16 :goto_1f7

    :sswitch_108
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_FEATURE_REAR_DISPLAY"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_112

    goto :goto_e9

    :cond_112
    move/from16 v15, v21

    goto/16 :goto_1f7

    :sswitch_116
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_POLICY_UNSUPPORTED_WHEN_POWER_SAVE_MODE"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_120

    goto :goto_e9

    :cond_120
    move/from16 v15, v22

    goto/16 :goto_1f7

    :sswitch_124
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_HALF_CLOSED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_12e

    goto :goto_e9

    :cond_12e
    move/from16 v15, v23

    goto/16 :goto_1f7

    :sswitch_132
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_EXTENDED_DEVICE_STATE_EXTERNAL_DISPLAY"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13c

    goto :goto_e9

    :cond_13c
    move/from16 v15, v24

    goto/16 :goto_1f7

    :sswitch_140
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_POLICY_AVAILABLE_FOR_APP_REQUEST"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14a

    goto :goto_e9

    :cond_14a
    move/from16 v15, v25

    goto/16 :goto_1f7

    :sswitch_14e
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_HALF_OPEN"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_158

    goto :goto_e9

    :cond_158
    move/from16 v15, v26

    goto/16 :goto_1f7

    :sswitch_15c
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_FOLDABLE_DISPLAY_CONFIGURATION_INNER_PRIMARY"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_166

    goto :goto_e9

    :cond_166
    move/from16 v15, v30

    goto/16 :goto_1f7

    :sswitch_16a
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_POWER_CONFIGURATION_TRIGGER_WAKE"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_175

    goto/16 :goto_e9

    :cond_175
    move/from16 v15, v31

    goto/16 :goto_1f7

    :sswitch_179
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_FEATURE_DUAL_DISPLAY_INTERNAL_DEFAULT"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_184

    goto/16 :goto_e9

    :cond_184
    move/from16 v15, v27

    goto/16 :goto_1f7

    :sswitch_188
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_POLICY_CANCEL_WHEN_REQUESTER_NOT_ON_TOP"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_193

    goto/16 :goto_e9

    :cond_193
    move/from16 v15, v28

    goto :goto_1f7

    :sswitch_196
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_POLICY_UNSUPPORTED_WHEN_THERMAL_STATUS_CRITICAL"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1a1

    goto/16 :goto_e9

    :cond_1a1
    move/from16 v15, v29

    goto :goto_1f7

    :sswitch_1a4
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_FEATURE_REAR_DISPLAY_OUTER_DEFAULT"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1af

    goto/16 :goto_e9

    :cond_1af
    move/from16 v15, v17

    goto :goto_1f7

    :sswitch_1b2
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_POWER_CONFIGURATION_TRIGGER_SLEEP"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1bd

    goto/16 :goto_e9

    :cond_1bd
    move/from16 v15, v16

    goto :goto_1f7

    :sswitch_1c0
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_OPEN"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1cb

    goto/16 :goto_e9

    :cond_1cb
    move/from16 v15, v32

    goto :goto_1f7

    :sswitch_1ce
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_EMULATED_ONLY"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1d9

    goto/16 :goto_e9

    :cond_1d9
    move/from16 v15, v33

    goto :goto_1f7

    :sswitch_1dc
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_APP_INACCESSIBLE"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1e7

    goto/16 :goto_e9

    :cond_1e7
    move/from16 v15, v19

    goto :goto_1f7

    :sswitch_1ea
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_CLOSED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1f5

    goto/16 :goto_e9

    :cond_1f5
    move/from16 v15, v18

    :goto_1f7
    packed-switch v15, :pswitch_data_3d6

    invoke-virtual {v13, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a4

    :pswitch_203  #0x12
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2a4

    :pswitch_20c  #0x11
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2a4

    :pswitch_215  #0x10
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2a4

    :pswitch_21e  #0xf
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2a4

    :pswitch_227  #0xe
    const/16 v4, 0x65

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2a4

    :pswitch_232  #0xd
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2a4

    :pswitch_23b  #0xc
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2a4

    :pswitch_243  #0xb
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2a4

    :pswitch_24b  #0xa
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2a4

    :pswitch_253  #0x9
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2a4

    :pswitch_25b  #0x8
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2a4

    :pswitch_263  #0x7
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2a4

    :pswitch_26b  #0x6
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2a4

    :pswitch_273  #0x5
    const/16 v4, 0x3e9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2a4

    :pswitch_27d  #0x4
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2a4

    :pswitch_285  #0x3
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2a4

    :pswitch_28d  #0x2
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2a4

    :pswitch_295  #0x1
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2a4

    :pswitch_29d  #0x0
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2a4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_d0

    :cond_2a8
    const/16 v33, 0x2

    :cond_2aa
    iget-object v4, v7, Lcom/android/server/policy/devicestate/config/DeviceState;->flags:Lcom/android/server/policy/devicestate/config/Flags;

    if-eqz v4, :cond_351

    invoke-virtual {v4}, Lcom/android/server/policy/devicestate/config/Flags;->getFlag()Ljava/util/List;

    move-result-object v4

    move/from16 v12, v18

    :goto_2b4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-ge v12, v14, :cond_351

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_400

    :goto_2ca
    const/4 v15, -0x1

    goto :goto_313

    :sswitch_2cc
    const-string v15, "FLAG_UNSUPPORTED_WHEN_THERMAL_STATUS_CRITICAL"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2d5

    goto :goto_2ca

    :cond_2d5
    move/from16 v15, v17

    goto :goto_313

    :sswitch_2d8
    const-string v15, "FLAG_UNSUPPORTED_WHEN_POWER_SAVE_MODE"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2e1

    goto :goto_2ca

    :cond_2e1
    move/from16 v15, v16

    goto :goto_313

    :sswitch_2e4
    const-string v15, "FLAG_CANCEL_WHEN_REQUESTER_NOT_ON_TOP"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2ed

    goto :goto_2ca

    :cond_2ed
    move/from16 v15, v32

    goto :goto_313

    :sswitch_2f0
    const-string v15, "FLAG_CANCEL_OVERRIDE_REQUESTS"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2f9

    goto :goto_2ca

    :cond_2f9
    move/from16 v15, v33

    goto :goto_313

    :sswitch_2fc
    const-string v15, "FLAG_APP_INACCESSIBLE"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_305

    goto :goto_2ca

    :cond_305
    move/from16 v15, v19

    goto :goto_313

    :sswitch_308
    const-string v15, "FLAG_EMULATED_ONLY"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_311

    goto :goto_2ca

    :cond_311
    move/from16 v15, v18

    :goto_313
    packed-switch v15, :pswitch_data_41a

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34d

    :pswitch_31e  #0x5
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_34d

    :pswitch_326  #0x4
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_34d

    :pswitch_32e  #0x3
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_34d

    :pswitch_336  #0x2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_34d

    :pswitch_33e  #0x1
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_34d

    :pswitch_346  #0x0
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_34d
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2b4

    :cond_351
    new-instance v4, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    invoke-direct {v4, v8, v9}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v10}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->setSystemProperties(Ljava/util/Set;)Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->setPhysicalProperties(Ljava/util/Set;)Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->build()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object v4

    new-instance v8, Landroid/hardware/devicestate/DeviceState;

    invoke-direct {v8, v4}, Landroid/hardware/devicestate/DeviceState;-><init>(Landroid/hardware/devicestate/DeviceState$Configuration;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v7, Lcom/android/server/policy/devicestate/config/DeviceState;->conditions:Lcom/android/server/policy/devicestate/config/Conditions;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8c

    :cond_371
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_380

    sget-object v0, Lcom/android/server/policy/DeviceStateProviderImpl;->DEFAULT_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_380
    new-instance v0, Lcom/android/server/policy/DeviceStateProviderImpl;

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/DeviceStateProviderImpl;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    return-object v0

    :sswitch_data_388
    .sparse-switch
        -0x7a23b2cf -> :sswitch_1ea
        -0x72bbce1a -> :sswitch_1dc
        -0x66b0d153 -> :sswitch_1ce
        -0x61123cb1 -> :sswitch_1c0
        -0x57ea94e0 -> :sswitch_1b2
        -0x4e29ef65 -> :sswitch_1a4
        -0x42b4de97 -> :sswitch_196
        -0x11adf9fc -> :sswitch_188
        -0xb013857 -> :sswitch_179
        -0x2d45be5 -> :sswitch_16a
        0x2aae3dfc -> :sswitch_15c
        0x3af6fcf1 -> :sswitch_14e
        0x3bcf1d05 -> :sswitch_140
        0x411507cc -> :sswitch_132
        0x447da653 -> :sswitch_124
        0x463d0e30 -> :sswitch_116
        0x5b67cf1d -> :sswitch_108
        0x68a96952 -> :sswitch_fa
        0x74f81b21 -> :sswitch_ec
    .end sparse-switch

    :pswitch_data_3d6
    .packed-switch 0x0
        :pswitch_29d  #00000000
        :pswitch_295  #00000001
        :pswitch_28d  #00000002
        :pswitch_285  #00000003
        :pswitch_27d  #00000004
        :pswitch_273  #00000005
        :pswitch_26b  #00000006
        :pswitch_263  #00000007
        :pswitch_25b  #00000008
        :pswitch_253  #00000009
        :pswitch_24b  #0000000a
        :pswitch_243  #0000000b
        :pswitch_23b  #0000000c
        :pswitch_232  #0000000d
        :pswitch_227  #0000000e
        :pswitch_21e  #0000000f
        :pswitch_215  #00000010
        :pswitch_20c  #00000011
        :pswitch_203  #00000012
    .end packed-switch

    :sswitch_data_400
    .sparse-switch
        -0x4445fa39 -> :sswitch_308
        -0x439e3374 -> :sswitch_2fc
        -0x3ed3563b -> :sswitch_2f0
        -0x35acdc89 -> :sswitch_2e4
        0x223e2ba3 -> :sswitch_2d8
        0x639d1bdc -> :sswitch_2cc
    .end sparse-switch

    :pswitch_data_41a
    .packed-switch 0x0
        :pswitch_346  #00000000
        :pswitch_33e  #00000001
        :pswitch_336  #00000002
        :pswitch_32e  #00000003
        :pswitch_326  #00000004
        :pswitch_31e  #00000005
    .end packed-switch
.end method

.method public static toSensorValueString(Landroid/hardware/Sensor;Landroid/hardware/SensorEvent;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "null"

    if-nez p0, :cond_7

    move-object p0, v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_b
    if-nez p1, :cond_e

    goto :goto_14

    :cond_e
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    :goto_14
    const-string p1, " : "

    invoke-static {p0, p1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    const-string p2, "  mIsLidOpen = "

    const-string v0, "  mThermalStatus = "

    const-string v1, "  mPowerSaveModeEnabled = "

    const-string v2, "  mLastReportedState = "

    const-string v3, "DeviceStateProviderImpl"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mPowerSaveModeEnabled:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mThermalStatus:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mIsLidOpen:Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  Sensor values:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    check-cast p2, Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_65
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/android/server/policy/DeviceStateProviderImpl;->toSensorValueString(Landroid/hardware/Sensor;Landroid/hardware/SensorEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_65

    :catchall_94
    move-exception p0

    goto :goto_98

    :cond_96
    monitor-exit v3

    return-void

    :goto_98
    monitor-exit v3
    :try_end_99
    .catchall {:try_start_10 .. :try_end_99} :catchall_94

    throw p0
.end method

.method public final notifyDeviceStateChangedIfNeeded()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

    if-nez v1, :cond_c

    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto/16 :goto_97

    :cond_c
    const/4 v1, 0x0

    :goto_d
    iget-object v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mOrderedStates:[Landroid/hardware/devicestate/DeviceState;

    array-length v3, v2

    const/4 v4, -0x1

    if-ge v1, v3, :cond_2b

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_9

    :try_start_19
    iget-object v3, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/function/BooleanSupplier;

    invoke-interface {v3}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v3
    :try_end_25
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_25} :catch_28
    .catchall {:try_start_19 .. :try_end_25} :catchall_9

    if-eqz v3, :cond_28

    goto :goto_2c

    :catch_28
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_2b
    move v2, v4

    :goto_2c
    if-ne v2, v4, :cond_68

    :try_start_2e
    const-string v1, "DeviceStateProviderImpl"

    const-string/jumbo v3, "No declared device states match any of the required conditions."

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "Sensor values:"

    const-string v3, "DeviceStateProviderImpl"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    iget-object v6, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    check-cast v6, Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/SensorEvent;

    invoke-static {v5, v6}, Lcom/android/server/policy/DeviceStateProviderImpl;->toSensorValueString(Landroid/hardware/Sensor;Landroid/hardware/SensorEvent;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    :cond_68
    if-eq v2, v4, :cond_71

    iget v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    if-eq v2, v1, :cond_71

    iput v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    goto :goto_72

    :cond_71
    move v2, v4

    :goto_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_2e .. :try_end_73} :catchall_9

    if-eq v2, v4, :cond_96

    iget-object p0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz v2, :cond_8a

    const/16 v0, 0x2710

    if-gt v2, v0, :cond_8a

    iput v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;->mCurrentBaseState:I

    sget-object v0, Lcom/android/server/devicestate/DeviceStateManagerService;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {p0, v2}, Lcom/android/server/devicestate/DeviceStateManagerService;->setBaseState(I)V

    goto :goto_96

    :cond_8a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid identifier: "

    invoke-static {v2, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_96
    :goto_96
    return-void

    :goto_97
    :try_start_97
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_9

    throw p0
.end method

.method public final notifyLidSwitchChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mIsLidOpen:Ljava/lang/Boolean;

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-virtual {p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifyDeviceStateChangedIfNeeded()V

    return-void

    :catchall_e
    move-exception p0

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final notifySupportedStatesChanged(I)V
    .registers 14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

    if-nez v2, :cond_11

    monitor-exit v1

    return-void

    :catchall_e
    move-exception p0

    goto/16 :goto_fe

    :cond_11
    iget-object v3, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mOrderedStates:[Landroid/hardware/devicestate/DeviceState;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_16
    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ge v6, v4, :cond_42

    aget-object v9, v3, v6

    iget v10, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mThermalStatus:I

    const/4 v11, 0x6

    if-eq v10, v7, :cond_27

    const/4 v7, 0x5

    if-eq v10, v7, :cond_27

    if-eq v10, v11, :cond_27

    move v8, v5

    :cond_27
    if-eqz v8, :cond_30

    invoke-virtual {v9, v11}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v7

    if-eqz v7, :cond_30

    goto :goto_3f

    :cond_30
    iget-boolean v7, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mPowerSaveModeEnabled:Z

    if-eqz v7, :cond_3c

    const/4 v7, 0x7

    invoke-virtual {v9, v7}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v7

    if-eqz v7, :cond_3c

    goto :goto_3f

    :cond_3c
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/devicestate/DeviceState;

    array-length v0, p0

    if-eqz v0, :cond_f5

    iget-object v0, v2, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    iget-object v1, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_57
    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStateIdentifiersLocked()[I

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    move v3, v5

    move v4, v3

    :goto_62
    array-length v6, p0

    if-ge v3, v6, :cond_7d

    aget-object v6, p0, v3

    invoke-virtual {v6, v7}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v9

    if-eqz v9, :cond_6e

    move v4, v8

    :cond_6e
    iget-object v9, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v10

    invoke-virtual {v9, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    :catchall_7a
    move-exception p0

    goto/16 :goto_f3

    :cond_7d
    iget-object p0, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    iput-boolean v4, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequestsAllowed:Z

    if-nez v4, :cond_8a

    iget-boolean v3, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequest:Z

    if-eqz v3, :cond_8a

    invoke-virtual {p0, v5}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked(I)V

    :cond_8a
    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStateIdentifiersLocked()[I

    move-result-object p0

    invoke-static {v2, p0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_96

    monitor-exit v1

    return-void

    :cond_96
    iget-object v2, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x3

    if-ne p1, v3, :cond_a0

    move v3, v8

    goto :goto_a1

    :cond_a0
    move v3, v5

    :goto_a1
    if-ne p1, v7, :cond_a5

    const/4 p1, 0x2

    goto :goto_a6

    :cond_a5
    move p1, v5

    :goto_a6
    or-int/2addr p1, v3

    iget-object v3, v2, Lcom/android/server/devicestate/OverrideRequestController;->mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-eqz v3, :cond_c4

    iget-object v3, v3, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v3}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v3

    move v4, v5

    :goto_b2
    array-length v6, p0

    if-ge v4, v6, :cond_be

    aget v6, p0, v4

    if-ne v6, v3, :cond_bb

    move v3, v8

    goto :goto_bf

    :cond_bb
    add-int/lit8 v4, v4, 0x1

    goto :goto_b2

    :cond_be
    move v3, v5

    :goto_bf
    if-nez v3, :cond_c4

    invoke-virtual {v2, p1}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentBaseStateRequestLocked(I)V

    :cond_c4
    iget-object v3, v2, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-eqz v3, :cond_e0

    iget-object v3, v3, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v3}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v3

    move v4, v5

    :goto_cf
    array-length v6, p0

    if-ge v4, v6, :cond_db

    aget v6, p0, v4

    if-ne v6, v3, :cond_d8

    move v5, v8

    goto :goto_db

    :cond_d8
    add-int/lit8 v4, v4, 0x1

    goto :goto_cf

    :cond_db
    :goto_db
    if-nez v5, :cond_e0

    invoke-virtual {v2, p1}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked(I)V

    :cond_e0
    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyDeviceStateInfoChangedAsync()V

    iget-object p0, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;

    const/4 v2, 0x2

    invoke-direct {p1, v0, v2}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :goto_f3
    monitor-exit v1
    :try_end_f4
    .catchall {:try_start_57 .. :try_end_f4} :catchall_7a

    throw p0

    :cond_f5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Supported device states must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_fe
    :try_start_fe
    monitor-exit v1
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_e

    throw p0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onPowerSaveModeChanged(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mPowerSaveModeEnabled:Z

    if-eq v1, p1, :cond_14

    iput-boolean p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mPowerSaveModeEnabled:Z

    if-eqz p1, :cond_d

    const/4 p1, 0x4

    goto :goto_e

    :cond_d
    const/4 p1, 0x5

    :goto_e
    invoke-virtual {p0, p1}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifySupportedStatesChanged(I)V

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_16

    :cond_14
    :goto_14
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_12

    throw p0
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    invoke-virtual {p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifyDeviceStateChangedIfNeeded()V

    return-void

    :catchall_11
    move-exception p0

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final onThermalStatusChanged(I)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mThermalStatus:I

    iput p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mThermalStatus:I

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_3c

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    if-eq p1, v5, :cond_15

    if-eq p1, v4, :cond_15

    if-eq p1, v3, :cond_15

    move p1, v2

    goto :goto_16

    :cond_15
    move p1, v0

    :goto_16
    if-eq v1, v5, :cond_1d

    if-eq v1, v4, :cond_1d

    if-eq v1, v3, :cond_1d

    move v0, v2

    :cond_1d
    if-eq p1, v0, :cond_3b

    const-string v0, "DeviceStateProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Updating supported device states due to thermal status change. isThermalStatusCriticalOrAbove: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_37

    const/4 p1, 0x3

    goto :goto_38

    :cond_37
    const/4 p1, 0x2

    :goto_38
    invoke-virtual {p0, p1}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifySupportedStatesChanged(I)V

    :cond_3b
    return-void

    :catchall_3c
    move-exception p0

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p0
.end method
