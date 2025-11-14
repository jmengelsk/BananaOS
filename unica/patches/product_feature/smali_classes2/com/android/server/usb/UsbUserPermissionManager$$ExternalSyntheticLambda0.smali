.class public final synthetic Lcom/android/server/usb/UsbUserPermissionManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usb/UsbUserPermissionManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbUserPermissionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/UsbUserPermissionManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usb/UsbUserPermissionManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbUserPermissionManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usb/UsbUserPermissionManager;

    iget-object v2, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v3, v0, [Landroid/hardware/usb/DeviceFilter;

    new-array v4, v0, [[I

    new-array v5, v0, [[Z

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v0, :cond_1

    new-instance v8, Landroid/hardware/usb/DeviceFilter;

    iget-object v9, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/usb/DeviceFilter;

    invoke-direct {v8, v9}, Landroid/hardware/usb/DeviceFilter;-><init>(Landroid/hardware/usb/DeviceFilter;)V

    aput-object v8, v3, v7

    iget-object v8, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mDevicePersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    new-array v10, v9, [I

    aput-object v10, v4, v7

    new-array v10, v9, [Z

    aput-object v10, v5, v7

    move v10, v6

    :goto_1
    if-ge v10, v9, :cond_0

    aget-object v11, v4, v7

    invoke-virtual {v8, v10}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v12

    aput v12, v11, v10

    aget-object v11, v5, v7

    invoke-virtual {v8, v10}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v12

    aput-boolean v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    new-array v8, v7, [Landroid/hardware/usb/AccessoryFilter;

    new-array v9, v7, [[I

    new-array v10, v7, [[Z

    move v11, v6

    :goto_2
    if-ge v11, v7, :cond_3

    new-instance v12, Landroid/hardware/usb/AccessoryFilter;

    iget-object v13, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {v12, v13}, Landroid/hardware/usb/AccessoryFilter;-><init>(Landroid/hardware/usb/AccessoryFilter;)V

    aput-object v12, v8, v11

    iget-object v12, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPersistentPermissionMap:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->size()I

    move-result v13

    new-array v14, v13, [I

    aput-object v14, v9, v11

    new-array v14, v13, [Z

    aput-object v14, v10, v11

    move v14, v6

    :goto_3
    if-ge v14, v13, :cond_2

    aget-object v15, v9, v11

    invoke-virtual {v12, v14}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v16

    aput v16, v15, v14

    aget-object v15, v10, v11

    invoke-virtual {v12, v14}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v16

    aput-boolean v16, v15, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    iput-boolean v6, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mIsCopyPermissionsScheduled:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v10, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    monitor-enter v10

    const/4 v2, 0x0

    :try_start_1
    iget-object v11, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v11}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v12, v2, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v13, "permissions"

    invoke-interface {v12, v2, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v13, v6

    :goto_4
    if-ge v13, v0, :cond_5

    aget-object v14, v4, v13

    array-length v14, v14

    move v15, v6

    :goto_5
    if-ge v15, v14, :cond_4

    const-string/jumbo v6, "permission"

    invoke-interface {v12, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "uid"

    aget-object v16, v4, v13

    aget v16, v16, v15

    move/from16 v17, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v2, v6, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "granted"

    aget-object v6, v5, v13

    aget-boolean v6, v6, v15

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v2, v0, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    aget-object v0, v3, v13

    invoke-virtual {v0, v12}, Landroid/hardware/usb/DeviceFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v0, "permission"

    invoke-interface {v12, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v17

    const/4 v6, 0x0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v2, v11

    goto :goto_8

    :cond_4
    move/from16 v17, v0

    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v7, :cond_7

    aget-object v3, v9, v0

    array-length v3, v3

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v3, :cond_6

    const-string/jumbo v6, "permission"

    invoke-interface {v12, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "uid"

    aget-object v13, v9, v0

    aget v13, v13, v4

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v2, v6, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "granted"

    aget-object v13, v5, v0

    aget-boolean v13, v13, v4

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v2, v6, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    aget-object v6, v8, v0

    invoke-virtual {v6, v12}, Landroid/hardware/usb/AccessoryFilter;->write(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v6, "permission"

    invoke-interface {v12, v2, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    const-string/jumbo v0, "permissions"

    invoke-interface {v12, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v12}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v11}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_9

    :catch_1
    move-exception v0

    :goto_8
    :try_start_3
    const-string/jumbo v3, "UsbUserPermissionManager"

    const-string v4, "Failed to write permissions"

    invoke-static {v3, v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_8

    iget-object v0, v1, Lcom/android/server/usb/UsbUserPermissionManager;->mPermissionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_8
    :goto_9
    monitor-exit v10

    return-void

    :goto_a
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :goto_b
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
