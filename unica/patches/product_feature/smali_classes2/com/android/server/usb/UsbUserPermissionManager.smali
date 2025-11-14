.class public final Lcom/android/server/usb/UsbUserPermissionManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAccessoryPermissionMap:Landroid/util/ArrayMap;

.field public final mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

.field public final mContext:Landroid/content/Context;

.field public final mDevicePermissionMap:Landroid/util/ArrayMap;

.field public final mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

.field public final mDisablePermissionDialogs:Z

.field public mIsCopyPermissionsScheduled:Z

.field public final mLock:Ljava/lang/Object;

.field public final mPermissionsFile:Landroid/util/AtomicFile;

.field public final mSensorPrivacyMgrInternal:Landroid/hardware/SensorPrivacyManagerInternal;

.field public final mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

.field public final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbUserSettingsManager;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUser:Landroid/os/UserHandle;

    iput-object p2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

    const-class p2, Landroid/hardware/SensorPrivacyManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorPrivacyManagerInternal;

    iput-object p2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mSensorPrivacyMgrInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110147

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDisablePermissionDialogs:Z

    new-instance p1, Landroid/util/AtomicFile;

    new-instance p2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "usb_permissions.xml"

    invoke-direct {p2, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v1, "usb-permissions"

    invoke-direct {p1, p2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    monitor-enter v0

    :try_start_62
    invoke-virtual {p0}, Lcom/android/server/usb/UsbUserPermissionManager;->readPermissionsLocked()V

    monitor-exit v0

    return-void

    :catchall_67
    move-exception p0

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_67

    throw p0
.end method


# virtual methods
.method public final checkPermission(Landroid/hardware/usb/UsbAccessory;II)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;II)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "User has not given "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " permission to accessory "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)V
    .registers 8

    const-string/jumbo v0, "checkPermission: device="

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result p3

    if-nez p3, :cond_7b

    iget-object p3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_c
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    if-nez p0, :cond_26

    const-string/jumbo p0, "UsbUserPermissionManager"

    const-string/jumbo v0, "checkPermission: uidList is null"

    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    :catchall_24
    move-exception p0

    goto :goto_79

    :cond_26
    const-string/jumbo v1, "UsbUserPermissionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " uidList="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", For uid("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "):"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5c
    monitor-exit p3
    :try_end_5d
    .catchall {:try_start_c .. :try_end_5d} :catchall_24

    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p3, "User has not given "

    const-string v0, "/"

    const-string v1, " permission to access device "

    invoke-static {p4, p3, v0, p2, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_79
    :try_start_79
    monitor-exit p3
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_24

    throw p0

    :cond_7b
    return-void
.end method

.method public final dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "user_permissions"

    const-wide v3, 0x20b00000001L

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_13
    const-string/jumbo v5, "user_id"

    iget-object v6, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    const-wide v7, 0x10500000001L

    invoke-virtual {v1, v5, v7, v8, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    iget-object v5, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v9, 0x0

    :goto_2b
    const-wide v10, 0x20500000002L

    const-wide v12, 0x10900000001L

    const-wide v14, 0x20b00000002L

    if-ge v9, v5, :cond_7b

    iget-object v6, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v7, "device_permissions"

    invoke-virtual {v1, v7, v14, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v7

    const-string/jumbo v14, "device_name"

    invoke-virtual {v1, v14, v12, v13, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_5e
    if-ge v13, v12, :cond_70

    const-string/jumbo v14, "uids"

    invoke-virtual {v6, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v1, v14, v10, v11, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_5e

    :catchall_6d
    move-exception v0

    goto/16 :goto_1d9

    :cond_70
    invoke-virtual {v1, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v9, v9, 0x1

    const-wide v7, 0x10500000001L

    goto :goto_2b

    :cond_7b
    iget-object v5, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_82
    if-ge v6, v5, :cond_d3

    iget-object v7, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/UsbAccessory;

    const-string/jumbo v8, "accessory_permissions"

    const-wide v14, 0x20b00000003L

    invoke-virtual {v1, v8, v14, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v8

    const-string/jumbo v14, "accessory_description"

    invoke-virtual {v7}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v14, v12, v13, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_af
    if-ge v15, v14, :cond_c3

    const-string/jumbo v12, "uids"

    invoke-virtual {v7, v15}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v1, v12, v10, v11, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    add-int/lit8 v15, v15, 0x1

    const-wide v12, 0x10900000001L

    goto :goto_af

    :cond_c3
    invoke-virtual {v1, v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v6, v6, 0x1

    const-wide v12, 0x10900000001L

    const-wide v14, 0x20b00000002L

    goto :goto_82

    :cond_d3
    iget-object v5, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_da
    const-wide v9, 0x10b00000001L

    if-ge v6, v5, :cond_14e

    iget-object v11, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/usb/DeviceFilter;

    const-string/jumbo v12, "device_persistent_permissions"

    const-wide v13, 0x20b00000004L

    invoke-virtual {v1, v12, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v12

    const-string/jumbo v14, "device"

    invoke-virtual {v11, v1, v14, v9, v10}, Landroid/hardware/usb/DeviceFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    iget-object v9, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseBooleanArray;

    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_108
    if-ge v11, v10, :cond_142

    const-string/jumbo v14, "uid_permission"

    const-wide v7, 0x20b00000002L

    invoke-virtual {v1, v14, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v14

    const-string/jumbo v7, "uid"

    invoke-virtual {v9, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    move/from16 v16, v5

    move/from16 v17, v6

    const-wide v5, 0x10500000001L

    invoke-virtual {v1, v7, v5, v6, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string/jumbo v5, "is_granted"

    invoke-virtual {v9, v11}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    const-wide v7, 0x10800000002L

    invoke-virtual {v1, v5, v7, v8, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    invoke-virtual {v1, v14, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v16

    move/from16 v6, v17

    goto :goto_108

    :cond_142
    move/from16 v16, v5

    move/from16 v17, v6

    invoke-virtual {v1, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v6, v17, 0x1

    move/from16 v5, v16

    goto :goto_da

    :cond_14e
    iget-object v5, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_155
    if-ge v6, v5, :cond_1d4

    iget-object v7, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/AccessoryFilter;

    const-string/jumbo v8, "accessory_persistent_permissions"

    const-wide v11, 0x20b00000005L

    invoke-virtual {v1, v8, v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v11

    const-string/jumbo v8, "accessory"

    invoke-virtual {v7, v1, v8, v9, v10}, Landroid/hardware/usb/AccessoryFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    iget-object v7, v0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    const/4 v13, 0x0

    :goto_17e
    if-ge v13, v8, :cond_1bd

    const-string/jumbo v14, "uid_permission"

    const-wide v9, 0x20b00000002L

    invoke-virtual {v1, v14, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v14

    const-string/jumbo v9, "uid"

    invoke-virtual {v7, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v10

    move/from16 v18, v5

    move/from16 v19, v6

    const-wide v5, 0x10500000001L

    invoke-virtual {v1, v9, v5, v6, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string/jumbo v9, "is_granted"

    invoke-virtual {v7, v13}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10

    const-wide v5, 0x10800000002L

    invoke-virtual {v1, v9, v5, v6, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    invoke-virtual {v1, v14, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v18

    move/from16 v6, v19

    const-wide v9, 0x10b00000001L

    goto :goto_17e

    :cond_1bd
    move/from16 v18, v5

    move/from16 v19, v6

    const-wide v5, 0x10800000002L

    invoke-virtual {v1, v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v7, v19, 0x1

    move v6, v7

    move/from16 v5, v18

    const-wide v9, 0x10b00000001L

    goto :goto_155

    :cond_1d4
    monitor-exit v4
    :try_end_1d5
    .catchall {:try_start_13 .. :try_end_1d5} :catchall_6d

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void

    :goto_1d9
    :try_start_1d9
    monitor-exit v4
    :try_end_1da
    .catchall {:try_start_1d9 .. :try_end_1da} :catchall_6d

    throw v0
.end method

.method public final grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    if-nez v1, :cond_24

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_29

    :cond_24
    :goto_24
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    monitor-exit v0

    return-void

    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_22

    throw p0
.end method

.method public final grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const-string/jumbo v0, "UsbUserPermissionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "grantDevicePermission: device="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " For uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2d
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    if-nez v2, :cond_49

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iget-object v4, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    :catchall_47
    move-exception p0

    goto :goto_75

    :cond_49
    :goto_49
    invoke-virtual {v2, p2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    if-nez p0, :cond_64

    const-string/jumbo p0, "UsbUserPermissionManager"

    const-string/jumbo p1, "grantDevicePermission: uidList is null"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    :cond_64
    invoke-virtual {p0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_73

    const-string/jumbo p0, "UsbUserPermissionManager"

    const-string/jumbo p1, "grantDevicePermission: uidList put error"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    :goto_73
    monitor-exit v0

    return-void

    :goto_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_2d .. :try_end_76} :catchall_47

    throw p0
.end method

.method public final hasPermission(Landroid/hardware/usb/UsbAccessory;II)Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v2, 0x3e8

    if-eq p3, v2, :cond_50

    :try_start_11
    iget-boolean v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDisablePermissionDialogs:Z

    if-nez v2, :cond_50

    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MANAGE_USB"

    invoke-virtual {v2, v3, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p2

    if-nez p2, :cond_21

    goto :goto_50

    :cond_21
    new-instance p2, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {p2, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/SparseBooleanArray;

    if-eqz p2, :cond_3e

    invoke-virtual {p2, p3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_3e

    invoke-virtual {p2, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_3c
    move-exception p0

    goto :goto_53

    :cond_3e
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    if-nez p0, :cond_4a

    monitor-exit v0

    return v1

    :cond_4a
    invoke-virtual {p0, p3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_50
    :goto_50
    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :goto_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_11 .. :try_end_54} :catchall_3c

    throw p0
.end method

.method public final hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z
    .registers 9

    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getHasVideoCapture()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mSensorPrivacyMgrInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p0, p3, p4, p2}, Lcom/android/server/usb/UsbUserPermissionManager;->isCameraPermissionGranted(IILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_24

    :cond_23
    return v1

    :cond_24
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getHasAudioCapture()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_38

    iget-object p2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mSensorPrivacyMgrInternal:Landroid/hardware/SensorPrivacyManagerInternal;

    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p2, v0, p3}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    move-result p2

    if-eqz p2, :cond_38

    return v1

    :cond_38
    iget-object p2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/16 v0, 0x3e8

    if-eq p4, v0, :cond_77

    :try_start_3f
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDisablePermissionDialogs:Z

    if-eqz v0, :cond_44

    goto :goto_77

    :cond_44
    new-instance p3, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {p3, p1}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseBooleanArray;

    if-eqz p3, :cond_61

    invoke-virtual {p3, p4}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_61

    invoke-virtual {p3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p0

    monitor-exit p2

    return p0

    :catchall_5f
    move-exception p0

    goto :goto_79

    :cond_61
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    if-nez p0, :cond_71

    monitor-exit p2

    return v1

    :cond_71
    invoke-virtual {p0, p4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit p2

    return p0

    :cond_77
    :goto_77
    monitor-exit p2

    return p3

    :goto_79
    monitor-exit p2
    :try_end_7a
    .catchall {:try_start_3f .. :try_end_7a} :catchall_5f

    throw p0
.end method

.method public final isCameraPermissionGranted(IILjava/lang/String;)Z
    .registers 9

    const-string/jumbo v0, "UsbUserPermissionManager"

    const-string/jumbo v1, "Package "

    const/4 v2, 0x0

    :try_start_7
    iget-object v3, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v4, p2, :cond_2d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match caller\'s uid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2d
    iget p3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_2f} :catch_47

    const/16 v1, 0x1c

    if-lt p3, v1, :cond_45

    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "android.permission.CAMERA"

    invoke-virtual {p0, p3, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    const/4 p1, -0x1

    if-ne p1, p0, :cond_45

    const-string p0, "Camera permission required for USB video class devices"

    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_45
    const/4 p0, 0x1

    return p0

    :catch_47
    const-string/jumbo p0, "Package not found, likely due to invalid package name!"

    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final readPermission(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7

    const-string/jumbo v0, "UsbUserPermissionManager"

    :try_start_3
    const-string/jumbo v1, "uid"

    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_a} :catch_a8

    const/4 v2, 0x0

    const-string/jumbo v3, "granted"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9e

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    goto :goto_9e

    :cond_2d
    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    const-string/jumbo v2, "usb-device"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-static {p1}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_5d

    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void

    :cond_5d
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void

    :cond_6b
    const-string/jumbo v2, "usb-accessory"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    invoke-static {p1}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_90

    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void

    :cond_90
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_9d
    return-void

    :cond_9e
    :goto_9e
    const-string/jumbo p0, "error reading usb permission granted state"

    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void

    :catch_a8
    move-exception p0

    const-string/jumbo v1, "error reading usb permission uid"

    invoke-static {v0, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public final readPermissionsLocked()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    :try_start_a
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_10} :catch_56
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_3b

    :try_start_10
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_17
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_35

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "permission"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbUserPermissionManager;->readPermission(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_17

    :catchall_2f
    move-exception v1

    goto :goto_3d

    :cond_31
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_2f

    goto :goto_17

    :cond_35
    if-eqz v0, :cond_56

    :try_start_37
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_3a} :catch_56
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3b

    return-void

    :catch_3b
    move-exception v0

    goto :goto_48

    :goto_3d
    if-eqz v0, :cond_47

    :try_start_3f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception v0

    :try_start_44
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_47
    :goto_47
    throw v1
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_48} :catch_56
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_48} :catch_3b

    :goto_48
    const-string/jumbo v1, "UsbUserPermissionManager"

    const-string/jumbo v2, "error reading usb permissions file, deleting to start fresh"

    invoke-static {v1, v2, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    :catch_56
    :cond_56
    return-void
.end method

.method public final requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;II)V
    .registers 20

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v0, p4

    move/from16 v7, p5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "requestPermission: accessory="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UsbUserPermissionManager"

    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v0, v7}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;II)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5c

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "accessory"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v3, "permission"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_56
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p0, v1, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_5b
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_56 .. :try_end_5b} :catch_5b

    :catch_5b
    return-void

    :cond_5c
    iget-object v4, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_61
    iget-object v0, v4, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v8, 0x81

    invoke-virtual {v0, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;
    :try_end_6b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_61 .. :try_end_6b} :catch_6d

    :goto_6b
    move-object v8, v0

    goto :goto_6f

    :catch_6d
    const/4 v0, 0x0

    goto :goto_6b

    :goto_6f
    if-eqz v8, :cond_db

    array-length v9, v8

    move v10, v1

    :goto_73
    if-ge v10, v9, :cond_db

    aget-object v11, v8, v10

    :try_start_77
    iget-object v0, v4, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v12, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v11, v0, v12}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    if-nez v12, :cond_8a

    if-eqz v12, :cond_d8

    :cond_84
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_87} :catch_88

    goto :goto_d8

    :catch_88
    move-exception v0

    goto :goto_bf

    :cond_8a
    :try_start_8a
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_8d
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    if-eq v0, v2, :cond_84

    const-string/jumbo v0, "usb-accessory"

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-static {v12}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/usb/AccessoryFilter;->matches(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v0
    :try_end_a8
    .catchall {:try_start_8a .. :try_end_a8} :catchall_af

    if-eqz v0, :cond_b2

    :try_start_aa
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ad} :catch_88

    move v4, v2

    goto :goto_dc

    :catchall_af
    move-exception v0

    move-object v13, v0

    goto :goto_b6

    :cond_b2
    :try_start_b2
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_af

    goto :goto_8d

    :goto_b6
    :try_start_b6
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_ba

    goto :goto_be

    :catchall_ba
    move-exception v0

    :try_start_bb
    invoke-virtual {v13, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_be
    throw v13
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_bf} :catch_88

    :goto_bf
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Unable to load component info "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "UsbUserSettingsManager"

    invoke-static {v12, v11, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d8
    :goto_d8
    add-int/lit8 v10, v10, 0x1

    goto :goto_73

    :cond_db
    move v4, v1

    :goto_dc
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public final requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;II)V
    .registers 20

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v1, p4

    move/from16 v7, p5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "requestPermission: device="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " packageName="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pi="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " pid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "UsbUserPermissionManager"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_84

    :try_start_4e
    invoke-interface {v0, v7, p1, v5}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isUsbDevicePermittedForPackage(ILandroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    const-string v0, "Allowed by MDM policy"

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_59} :catch_71

    invoke-virtual {p0, p1, v5, v1, v7}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_84

    const-string/jumbo v0, "Policy forcely granted usb device permission for package="

    const-string v4, "("

    const-string v8, ")"

    invoke-static {v7, v0, v5, v4, v8}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v7}, Lcom/android/server/usb/UsbUserPermissionManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    goto :goto_84

    :catch_71
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "isUsbDevicePermittedForPackageByMdm "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84
    :goto_84
    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/PersonaServiceHelper;->shouldBlockUsbHostMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8d

    goto :goto_c3

    :cond_8d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v5, v1, v7}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result v3

    const/4 v4, 0x1

    const-string/jumbo v8, "permission"

    const-string/jumbo v9, "device"

    const/4 v10, 0x0

    if-eqz v3, :cond_ac

    invoke-virtual {v0, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_a6
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p0, v10, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_ab
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_a6 .. :try_end_ab} :catch_c3

    goto :goto_c3

    :cond_ac
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getHasVideoCapture()Z

    move-result v3

    if-eqz v3, :cond_c4

    invoke-virtual {p0, v1, v7, v5}, Lcom/android/server/usb/UsbUserPermissionManager;->isCameraPermissionGranted(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c4

    invoke-virtual {v0, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v0, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_be
    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p0, v10, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_c3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_be .. :try_end_c3} :catch_c3

    :catch_c3
    :goto_c3
    return-void

    :cond_c4
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUsbUserSettingsManager:Lcom/android/server/usb/UsbUserSettingsManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_c9
    iget-object v0, v1, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x81

    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;
    :try_end_d3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c9 .. :try_end_d3} :catch_d5

    :goto_d3
    move-object v3, v0

    goto :goto_d7

    :catch_d5
    const/4 v0, 0x0

    goto :goto_d3

    :goto_d7
    if-eqz v3, :cond_142

    array-length v8, v3

    move v9, v10

    :goto_db
    if-ge v9, v8, :cond_142

    aget-object v11, v3, v9

    :try_start_df
    iget-object v0, v1, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v12, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v11, v0, v12}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    if-nez v12, :cond_f2

    if-eqz v12, :cond_13f

    :cond_ec
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_ef} :catch_f0

    goto :goto_13f

    :catch_f0
    move-exception v0

    goto :goto_126

    :cond_f2
    :try_start_f2
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_f5
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    if-eq v0, v4, :cond_ec

    const-string/jumbo v0, "usb-device"

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_119

    invoke-static {v12}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/usb/DeviceFilter;->matches(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0
    :try_end_110
    .catchall {:try_start_f2 .. :try_end_110} :catchall_116

    if-eqz v0, :cond_119

    :try_start_112
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_115} :catch_f0

    goto :goto_143

    :catchall_116
    move-exception v0

    move-object v13, v0

    goto :goto_11d

    :cond_119
    :try_start_119
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_11c
    .catchall {:try_start_119 .. :try_end_11c} :catchall_116

    goto :goto_f5

    :goto_11d
    :try_start_11d
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_120
    .catchall {:try_start_11d .. :try_end_120} :catchall_121

    goto :goto_125

    :catchall_121
    move-exception v0

    :try_start_122
    invoke-virtual {v13, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_125
    throw v13
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_126} :catch_f0

    :goto_126
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Unable to load component info "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "UsbUserSettingsManager"

    invoke-static {v12, v11, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13f
    :goto_13f
    add-int/lit8 v9, v9, 0x1

    goto :goto_db

    :cond_142
    move v4, v10

    :goto_143
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public final requestPermissionDialog(Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;ZLjava/lang/String;Landroid/app/PendingIntent;I)V
    .registers 12

    const-string v0, " not found"

    const-string/jumbo v1, "package "

    :try_start_5
    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_12} :catch_af
    .catchall {:try_start_5 .. :try_end_12} :catchall_ad

    const-string/jumbo v3, "UsbUserPermissionManager"

    if-ne v2, p6, :cond_79

    iget-object v0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_1d
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_2d

    const-string/jumbo p2, "device"

    invoke-virtual {v4, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_33

    :catchall_2b
    move-exception p0

    goto :goto_75

    :cond_2d
    const-string/jumbo p1, "accessory"

    invoke-virtual {v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_33
    const-string/jumbo p1, "android.intent.extra.INTENT"

    invoke-virtual {v4, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo p1, "android.intent.extra.UID"

    invoke-virtual {v4, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "android.hardware.usb.extra.CAN_BE_DEFAULT"

    invoke-virtual {v4, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p1, "android.hardware.usb.extra.PACKAGE"

    invoke-virtual {v4, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10403e8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v4, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_67
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1d .. :try_end_67} :catch_6b
    .catchall {:try_start_1d .. :try_end_67} :catchall_2b

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_6b
    :try_start_6b
    const-string/jumbo p0, "unable to start UsbPermissionActivity"

    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_6b .. :try_end_71} :catchall_2b

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_75
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_79
    :try_start_79
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match caller\'s uid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "180104273"

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, ""

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x534e4554

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_a3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_79 .. :try_end_a3} :catch_af
    .catchall {:try_start_79 .. :try_end_a3} :catchall_ad

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1, p4, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_ad
    move-exception p0

    throw p0

    :catch_af
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1, p4, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setAccessoryPersistentPermission(Landroid/hardware/usb/UsbAccessory;IZ)V
    .registers 7

    new-instance v0, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/UsbAccessory;)V

    iget-object p1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_8
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_1f

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_4a

    :cond_1f
    :goto_1f
    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    const/4 v2, 0x1

    if-ltz v0, :cond_33

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p2

    if-eq p2, p3, :cond_2e

    move p2, v2

    goto :goto_2f

    :cond_2e
    const/4 p2, 0x0

    :goto_2f
    invoke-virtual {v1, v0, p3}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    goto :goto_37

    :cond_33
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move p2, v2

    :goto_37
    if-eqz p2, :cond_48

    iget-boolean p2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    if-eqz p2, :cond_3e

    goto :goto_48

    :cond_3e
    iput-boolean v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    new-instance p2, Lcom/android/server/usb/UsbUserPermissionManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/usb/UsbUserPermissionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usb/UsbUserPermissionManager;)V

    invoke-static {p2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_48
    :goto_48
    monitor-exit p1

    return-void

    :goto_4a
    monitor-exit p1
    :try_end_4b
    .catchall {:try_start_8 .. :try_end_4b} :catchall_1d

    throw p0
.end method

.method public final setDevicePersistentPermission(Landroid/hardware/usb/UsbDevice;IZ)V
    .registers 7

    new-instance v0, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v0, p1}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/UsbDevice;)V

    iget-object p1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_8
    iget-object v1, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_1f

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_4a

    :cond_1f
    :goto_1f
    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    const/4 v2, 0x1

    if-ltz v0, :cond_33

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p2

    if-eq p2, p3, :cond_2e

    move p2, v2

    goto :goto_2f

    :cond_2e
    const/4 p2, 0x0

    :goto_2f
    invoke-virtual {v1, v0, p3}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    goto :goto_37

    :cond_33
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move p2, v2

    :goto_37
    if-eqz p2, :cond_48

    iget-boolean p2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    if-eqz p2, :cond_3e

    goto :goto_48

    :cond_3e
    iput-boolean v2, p0, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    new-instance p2, Lcom/android/server/usb/UsbUserPermissionManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/usb/UsbUserPermissionManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usb/UsbUserPermissionManager;)V

    invoke-static {p2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_48
    :goto_48
    monitor-exit p1

    return-void

    :goto_4a
    monitor-exit p1
    :try_end_4b
    .catchall {:try_start_8 .. :try_end_4b} :catchall_1d

    throw p0
.end method
