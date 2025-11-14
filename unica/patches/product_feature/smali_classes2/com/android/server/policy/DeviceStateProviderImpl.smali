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
    .locals 4

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
    .locals 22

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

    if-ne v6, v8, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
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

    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_e

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

    if-nez v12, :cond_2

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/devicestate/DeviceState;

    const/16 v15, 0xa

    invoke-virtual {v12, v15}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    invoke-virtual {v12, v11, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_2
    move-object/from16 v16, v7

    move/from16 v17, v8

    move/from16 v19, v10

    goto/16 :goto_9

    :cond_1
    iget-object v12, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    invoke-virtual {v12, v11, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    new-instance v15, Landroid/util/ArraySet;

    invoke-direct {v15}, Landroid/util/ArraySet;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v12, Lcom/android/server/policy/devicestate/config/Conditions;->lidSwitch:Lcom/android/server/policy/devicestate/config/LidSwitchCondition;

    if-eqz v4, :cond_4

    new-instance v9, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;

    iget-object v4, v4, Lcom/android/server/policy/devicestate/config/LidSwitchCondition;->open:Ljava/lang/Boolean;

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_3
    invoke-direct {v9, v0, v4}, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;-><init>(Lcom/android/server/policy/DeviceStateProviderImpl;Z)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    iget-object v9, v12, Lcom/android/server/policy/devicestate/config/Conditions;->sensor:Ljava/util/List;

    if-nez v9, :cond_5

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v12, Lcom/android/server/policy/devicestate/config/Conditions;->sensor:Ljava/util/List;

    :cond_5
    iget-object v9, v12, Lcom/android/server/policy/devicestate/config/Conditions;->sensor:Ljava/util/List;

    const/4 v12, 0x0

    :goto_5
    move-object v3, v9

    check-cast v3, Ljava/util/ArrayList;

    move/from16 p3, v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v12, v4, :cond_b

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

    :goto_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_8

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Sensor;

    move-object/from16 v20, v8

    invoke-virtual {v10}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v8

    move/from16 v21, v9

    invoke-virtual {v10}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_7

    if-nez v9, :cond_6

    goto :goto_7

    :cond_6
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_8

    :cond_7
    :goto_7
    add-int/lit8 v9, v21, 0x1

    move-object/from16 v8, v20

    goto :goto_6

    :cond_8
    const/4 v10, 0x0

    :goto_8
    if-nez v10, :cond_9

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

    :goto_9
    move/from16 v10, v19

    const/4 v4, 0x1

    goto :goto_a

    :cond_9
    new-instance v4, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;

    iget-object v7, v3, Lcom/android/server/policy/devicestate/config/SensorCondition;->value:Ljava/util/List;

    if-nez v7, :cond_a

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Lcom/android/server/policy/devicestate/config/SensorCondition;->value:Ljava/util/List;

    :cond_a
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

    goto/16 :goto_5

    :cond_b
    move-object/from16 v16, v7

    move/from16 v17, v8

    move/from16 v19, v10

    or-int v10, v19, p3

    invoke-virtual {v6, v15}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_c

    iget-object v3, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/server/policy/DeviceStateProviderImpl$AndBooleanSupplier;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v2, v7, Lcom/android/server/policy/DeviceStateProviderImpl$AndBooleanSupplier;->mBooleanSuppliers:Ljava/util/List;

    invoke-virtual {v3, v11, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_a

    :cond_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_d

    iget-object v3, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/BooleanSupplier;

    invoke-virtual {v3, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_a

    :cond_d
    iget-object v2, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    invoke-virtual {v2, v11, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_a
    add-int/lit8 v8, v17, 0x1

    move-object/from16 v7, v16

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_e
    move/from16 v19, v10

    if-eqz v19, :cond_f

    const-class v2, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/InputManagerService$LocalService;

    iget-object v2, v2, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/input/InputManagerService;->registerLidSwitchCallbackInternal(Lcom/android/server/input/InputManagerInternal$LidSwitchCallback;)V

    :cond_f
    iget-object v2, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    const/4 v7, 0x0

    :goto_b
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v7, v3, :cond_10

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_10
    const/4 v4, 0x0

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    if-eqz v1, :cond_14

    move v7, v4

    :goto_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_12

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/devicestate/DeviceState;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v1, v0}, Landroid/os/PowerManager;->addThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    goto :goto_d

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_12
    :goto_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_14

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/devicestate/DeviceState;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.os.action.POWER_SAVE_MODE_CHANGED_INTERNAL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/policy/DeviceStateProviderImpl$1;

    invoke-direct {v3, v0, v1}, Lcom/android/server/policy/DeviceStateProviderImpl$1;-><init>(Lcom/android/server/policy/DeviceStateProviderImpl;Landroid/os/PowerManager;)V

    iget-object v0, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_14
    return-void
.end method

.method public static createFromConfig(Landroid/content/Context;Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/DeviceStateProviderImpl;
    .locals 34

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

    if-eqz p1, :cond_1f

    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v24, 0xd

    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v0, v0, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;->mFile:Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v25, 0xc

    :try_start_2
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-static {v6}, Lcom/android/server/policy/devicestate/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/policy/devicestate/config/DeviceStateConfig;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0

    const/16 v26, 0xb

    goto :goto_7

    :catch_0
    move-exception v0

    :goto_0
    const/16 v26, 0xb

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v6, v0

    const/16 v26, 0xb

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v7, v0

    const/16 v26, 0xb

    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_7
    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    :goto_2
    move-object v6, v0

    goto :goto_3

    :catchall_4
    move-exception v0

    const/16 v26, 0xb

    goto :goto_2

    :goto_3
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    :try_start_9
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v6
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    :goto_5
    const/16 v25, 0xc

    goto :goto_0

    :catch_3
    move-exception v0

    const/16 v24, 0xd

    goto :goto_5

    :goto_6
    const-string v5, "Encountered an error while reading device state config"

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_1f

    iget-object v5, v0, Lcom/android/server/policy/devicestate/config/DeviceStateConfig;->deviceState:Ljava/util/List;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/policy/devicestate/config/DeviceStateConfig;->deviceState:Ljava/util/List;

    :cond_0
    iget-object v0, v0, Lcom/android/server/policy/devicestate/config/DeviceStateConfig;->deviceState:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v6, v18

    :goto_8
    if-ge v6, v5, :cond_1f

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/policy/devicestate/config/DeviceState;

    const/16 v27, 0x8

    iget-object v8, v7, Lcom/android/server/policy/devicestate/config/DeviceState;->identifier:Ljava/math/BigInteger;

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    iget-object v9, v7, Lcom/android/server/policy/devicestate/config/DeviceState;->name:Ljava/lang/String;

    if-nez v9, :cond_1

    const-string v9, ""

    :cond_1
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

    if-eqz v12, :cond_16

    iget-object v14, v12, Lcom/android/server/policy/devicestate/config/Properties;->property:Ljava/util/List;

    if-nez v14, :cond_2

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v12, Lcom/android/server/policy/devicestate/config/Properties;->property:Ljava/util/List;

    :cond_2
    iget-object v12, v12, Lcom/android/server/policy/devicestate/config/Properties;->property:Ljava/util/List;

    move/from16 v14, v18

    const/16 v33, 0x2

    :goto_9
    move-object v15, v12

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_17

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :goto_a
    const/4 v15, -0x1

    goto/16 :goto_b

    :sswitch_0
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_FOLDABLE_DISPLAY_CONFIGURATION_OUTER_PRIMARY"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    goto :goto_a

    :cond_3
    const/16 v15, 0x12

    goto/16 :goto_b

    :sswitch_1
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_POLICY_CANCEL_OVERRIDE_REQUESTS"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    goto :goto_a

    :cond_4
    move/from16 v15, v20

    goto/16 :goto_b

    :sswitch_2
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_FEATURE_REAR_DISPLAY"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    goto :goto_a

    :cond_5
    move/from16 v15, v21

    goto/16 :goto_b

    :sswitch_3
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_POLICY_UNSUPPORTED_WHEN_POWER_SAVE_MODE"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    goto :goto_a

    :cond_6
    move/from16 v15, v22

    goto/16 :goto_b

    :sswitch_4
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_HALF_CLOSED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    goto :goto_a

    :cond_7
    move/from16 v15, v23

    goto/16 :goto_b

    :sswitch_5
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_EXTENDED_DEVICE_STATE_EXTERNAL_DISPLAY"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    goto :goto_a

    :cond_8
    move/from16 v15, v24

    goto/16 :goto_b

    :sswitch_6
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_POLICY_AVAILABLE_FOR_APP_REQUEST"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    goto :goto_a

    :cond_9
    move/from16 v15, v25

    goto/16 :goto_b

    :sswitch_7
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_HALF_OPEN"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    goto :goto_a

    :cond_a
    move/from16 v15, v26

    goto/16 :goto_b

    :sswitch_8
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_FOLDABLE_DISPLAY_CONFIGURATION_INNER_PRIMARY"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    goto :goto_a

    :cond_b
    move/from16 v15, v30

    goto/16 :goto_b

    :sswitch_9
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_POWER_CONFIGURATION_TRIGGER_WAKE"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    goto/16 :goto_a

    :cond_c
    move/from16 v15, v31

    goto/16 :goto_b

    :sswitch_a
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_FEATURE_DUAL_DISPLAY_INTERNAL_DEFAULT"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    goto/16 :goto_a

    :cond_d
    move/from16 v15, v27

    goto/16 :goto_b

    :sswitch_b
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_POLICY_CANCEL_WHEN_REQUESTER_NOT_ON_TOP"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e

    goto/16 :goto_a

    :cond_e
    move/from16 v15, v28

    goto :goto_b

    :sswitch_c
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_POLICY_UNSUPPORTED_WHEN_THERMAL_STATUS_CRITICAL"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    goto/16 :goto_a

    :cond_f
    move/from16 v15, v29

    goto :goto_b

    :sswitch_d
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_FEATURE_REAR_DISPLAY_OUTER_DEFAULT"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    goto/16 :goto_a

    :cond_10
    move/from16 v15, v17

    goto :goto_b

    :sswitch_e
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_POWER_CONFIGURATION_TRIGGER_SLEEP"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    goto/16 :goto_a

    :cond_11
    move/from16 v15, v16

    goto :goto_b

    :sswitch_f
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_OPEN"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_12

    goto/16 :goto_a

    :cond_12
    move/from16 v15, v32

    goto :goto_b

    :sswitch_10
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_EMULATED_ONLY"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13

    goto/16 :goto_a

    :cond_13
    move/from16 v15, v33

    goto :goto_b

    :sswitch_11
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_APP_INACCESSIBLE"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14

    goto/16 :goto_a

    :cond_14
    move/from16 v15, v19

    goto :goto_b

    :sswitch_12
    const-string/jumbo v15, "com.android.server.policy.PROPERTY_FOLDABLE_HARDWARE_CONFIGURATION_FOLD_IN_CLOSED"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_15

    goto/16 :goto_a

    :cond_15
    move/from16 v15, v18

    :goto_b
    packed-switch v15, :pswitch_data_0

    invoke-virtual {v13, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :pswitch_0
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :pswitch_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :pswitch_2
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :pswitch_3
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :pswitch_4
    const/16 v4, 0x65

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :pswitch_5
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :pswitch_6
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :pswitch_7
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :pswitch_8
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :pswitch_9
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :pswitch_a
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :pswitch_b
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :pswitch_c
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :pswitch_d
    const/16 v4, 0x3e9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :pswitch_e
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :pswitch_f
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :pswitch_10
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :pswitch_11
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :pswitch_12
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_c
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_9

    :cond_16
    const/16 v33, 0x2

    :cond_17
    iget-object v4, v7, Lcom/android/server/policy/devicestate/config/DeviceState;->flags:Lcom/android/server/policy/devicestate/config/Flags;

    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Lcom/android/server/policy/devicestate/config/Flags;->getFlag()Ljava/util/List;

    move-result-object v4

    move/from16 v12, v18

    :goto_d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-ge v12, v14, :cond_1e

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_1

    :goto_e
    const/4 v15, -0x1

    goto :goto_f

    :sswitch_13
    const-string v15, "FLAG_UNSUPPORTED_WHEN_THERMAL_STATUS_CRITICAL"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_18

    goto :goto_e

    :cond_18
    move/from16 v15, v17

    goto :goto_f

    :sswitch_14
    const-string v15, "FLAG_UNSUPPORTED_WHEN_POWER_SAVE_MODE"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    goto :goto_e

    :cond_19
    move/from16 v15, v16

    goto :goto_f

    :sswitch_15
    const-string v15, "FLAG_CANCEL_WHEN_REQUESTER_NOT_ON_TOP"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1a

    goto :goto_e

    :cond_1a
    move/from16 v15, v32

    goto :goto_f

    :sswitch_16
    const-string v15, "FLAG_CANCEL_OVERRIDE_REQUESTS"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1b

    goto :goto_e

    :cond_1b
    move/from16 v15, v33

    goto :goto_f

    :sswitch_17
    const-string v15, "FLAG_APP_INACCESSIBLE"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1c

    goto :goto_e

    :cond_1c
    move/from16 v15, v19

    goto :goto_f

    :sswitch_18
    const-string v15, "FLAG_EMULATED_ONLY"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1d

    goto :goto_e

    :cond_1d
    move/from16 v15, v18

    :goto_f
    packed-switch v15, :pswitch_data_1

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :pswitch_13
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :pswitch_14
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :pswitch_15
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :pswitch_16
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :pswitch_17
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :pswitch_18
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_10
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_d

    :cond_1e
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

    goto/16 :goto_8

    :cond_1f
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/policy/DeviceStateProviderImpl;->DEFAULT_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    new-instance v0, Lcom/android/server/policy/DeviceStateProviderImpl;

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/DeviceStateProviderImpl;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7a23b2cf -> :sswitch_12
        -0x72bbce1a -> :sswitch_11
        -0x66b0d153 -> :sswitch_10
        -0x61123cb1 -> :sswitch_f
        -0x57ea94e0 -> :sswitch_e
        -0x4e29ef65 -> :sswitch_d
        -0x42b4de97 -> :sswitch_c
        -0x11adf9fc -> :sswitch_b
        -0xb013857 -> :sswitch_a
        -0x2d45be5 -> :sswitch_9
        0x2aae3dfc -> :sswitch_8
        0x3af6fcf1 -> :sswitch_7
        0x3bcf1d05 -> :sswitch_6
        0x411507cc -> :sswitch_5
        0x447da653 -> :sswitch_4
        0x463d0e30 -> :sswitch_3
        0x5b67cf1d -> :sswitch_2
        0x68a96952 -> :sswitch_1
        0x74f81b21 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    :sswitch_data_1
    .sparse-switch
        -0x4445fa39 -> :sswitch_18
        -0x439e3374 -> :sswitch_17
        -0x3ed3563b -> :sswitch_16
        -0x35acdc89 -> :sswitch_15
        0x223e2ba3 -> :sswitch_14
        0x639d1bdc -> :sswitch_13
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public static toSensorValueString(Landroid/hardware/Sensor;Landroid/hardware/SensorEvent;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "null"

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string p1, " : "

    invoke-static {p0, p1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string p2, "  mIsLidOpen = "

    const-string v0, "  mThermalStatus = "

    const-string v1, "  mPowerSaveModeEnabled = "

    const-string v2, "  mLastReportedState = "

    const-string v3, "DeviceStateProviderImpl"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
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

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

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

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v3

    return-void

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notifyDeviceStateChangedIfNeeded()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mOrderedStates:[Landroid/hardware/devicestate/DeviceState;

    array-length v3, v2

    const/4 v4, -0x1

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/function/BooleanSupplier;

    invoke-interface {v3}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    goto :goto_1

    :catch_0
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_1
    if-ne v2, v4, :cond_3

    :try_start_2
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

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

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

    goto :goto_2

    :cond_3
    if-eq v2, v4, :cond_4

    iget v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    if-eq v2, v1, :cond_4

    iput v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    goto :goto_3

    :cond_4
    move v2, v4

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v2, v4, :cond_6

    iget-object p0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz v2, :cond_5

    const/16 v0, 0x2710

    if-gt v2, v0, :cond_5

    iput v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;->mCurrentBaseState:I

    sget-object v0, Lcom/android/server/devicestate/DeviceStateManagerService;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {p0, v2}, Lcom/android/server/devicestate/DeviceStateManagerService;->setBaseState(I)V

    goto :goto_4

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid identifier: "

    invoke-static {v2, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_4
    return-void

    :goto_5
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final notifyLidSwitchChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mIsLidOpen:Ljava/lang/Boolean;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifyDeviceStateChangedIfNeeded()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final notifySupportedStatesChanged(I)V
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mOrderedStates:[Landroid/hardware/devicestate/DeviceState;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ge v6, v4, :cond_4

    aget-object v9, v3, v6

    iget v10, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mThermalStatus:I

    const/4 v11, 0x6

    if-eq v10, v7, :cond_1

    const/4 v7, 0x5

    if-eq v10, v7, :cond_1

    if-eq v10, v11, :cond_1

    move v8, v5

    :cond_1
    if-eqz v8, :cond_2

    invoke-virtual {v9, v11}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v7, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mPowerSaveModeEnabled:Z

    if-eqz v7, :cond_3

    const/4 v7, 0x7

    invoke-virtual {v9, v7}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/devicestate/DeviceState;

    array-length v0, p0

    if-eqz v0, :cond_11

    iget-object v0, v2, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    iget-object v1, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStateIdentifiersLocked()[I

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    move v3, v5

    move v4, v3

    :goto_2
    array-length v6, p0

    if-ge v3, v6, :cond_6

    aget-object v6, p0, v3

    invoke-virtual {v6, v7}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v9

    if-eqz v9, :cond_5

    move v4, v8

    :cond_5
    iget-object v9, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v10

    invoke-virtual {v9, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto/16 :goto_9

    :cond_6
    iget-object p0, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    iput-boolean v4, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequestsAllowed:Z

    if-nez v4, :cond_7

    iget-boolean v3, p0, Lcom/android/server/devicestate/OverrideRequestController;->mStickyRequest:Z

    if-eqz v3, :cond_7

    invoke-virtual {p0, v5}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked(I)V

    :cond_7
    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStateIdentifiersLocked()[I

    move-result-object p0

    invoke-static {v2, p0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_8

    monitor-exit v1

    return-void

    :cond_8
    iget-object v2, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x3

    if-ne p1, v3, :cond_9

    move v3, v8

    goto :goto_3

    :cond_9
    move v3, v5

    :goto_3
    if-ne p1, v7, :cond_a

    const/4 p1, 0x2

    goto :goto_4

    :cond_a
    move p1, v5

    :goto_4
    or-int/2addr p1, v3

    iget-object v3, v2, Lcom/android/server/devicestate/OverrideRequestController;->mBaseStateRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-eqz v3, :cond_d

    iget-object v3, v3, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v3}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v3

    move v4, v5

    :goto_5
    array-length v6, p0

    if-ge v4, v6, :cond_c

    aget v6, p0, v4

    if-ne v6, v3, :cond_b

    move v3, v8

    goto :goto_6

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_c
    move v3, v5

    :goto_6
    if-nez v3, :cond_d

    invoke-virtual {v2, p1}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentBaseStateRequestLocked(I)V

    :cond_d
    iget-object v3, v2, Lcom/android/server/devicestate/OverrideRequestController;->mRequest:Lcom/android/server/devicestate/OverrideRequest;

    if-eqz v3, :cond_10

    iget-object v3, v3, Lcom/android/server/devicestate/OverrideRequest;->mRequestedState:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v3}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v3

    move v4, v5

    :goto_7
    array-length v6, p0

    if-ge v4, v6, :cond_f

    aget v6, p0, v4

    if-ne v6, v3, :cond_e

    move v5, v8

    goto :goto_8

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_f
    :goto_8
    if-nez v5, :cond_10

    invoke-virtual {v2, p1}, Lcom/android/server/devicestate/OverrideRequestController;->cancelCurrentRequestLocked(I)V

    :cond_10
    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyDeviceStateInfoChangedAsync()V

    iget-object p0, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;

    const/4 v2, 0x2

    invoke-direct {p1, v0, v2}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :goto_9
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Supported device states must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_a
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onPowerSaveModeChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mPowerSaveModeEnabled:Z

    if-eq v1, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mPowerSaveModeEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifySupportedStatesChanged(I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifyDeviceStateChangedIfNeeded()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onThermalStatusChanged(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mThermalStatus:I

    iput p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mThermalStatus:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    if-eq p1, v5, :cond_0

    if-eq p1, v4, :cond_0

    if-eq p1, v3, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    move v0, v2

    :cond_1
    if-eq p1, v0, :cond_3

    const-string v0, "DeviceStateProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Updating supported device states due to thermal status change. isThermalStatusCriticalOrAbove: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifySupportedStatesChanged(I)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
