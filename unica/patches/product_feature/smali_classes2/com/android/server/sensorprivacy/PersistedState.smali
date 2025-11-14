.class public final Lcom/android/server/sensorprivacy/PersistedState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAtomicFile:Landroid/util/AtomicFile;

.field public final mStates:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 18

    move-object/from16 v1, p0

    const/4 v2, 0x1

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "sensor_privacy_impl.xml"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, v1, Lcom/android/server/sensorprivacy/PersistedState;->mAtomicFile:Landroid/util/AtomicFile;

    const-string/jumbo v4, "Unknown persistence version: "

    invoke-virtual {v3}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    const-string v5, "Caught an exception reading the state from storage: "

    const-string/jumbo v6, "sensor-privacy"

    const-string/jumbo v7, "PersistedState"

    if-nez v0, :cond_2

    new-instance v8, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, "sensor_privacy.xml"

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v8, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v8}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-static {v9}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_0

    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v8

    goto :goto_2

    :catch_1
    :cond_0
    :goto_0
    move-object v3, v8

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v10, v0

    if-eqz v9, :cond_1

    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v10, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    throw v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    invoke-static {v7, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v8}, Landroid/util/AtomicFile;->delete()V

    :catch_3
    :cond_2
    :goto_3
    invoke-virtual {v3}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v0, :cond_8

    :try_start_5
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v11
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    invoke-static {v11}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v6, "persistence-version"

    invoke-interface {v0, v10, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_3

    new-instance v4, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, v4, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->mIndividualEnabled:Landroid/util/SparseArray;

    invoke-static {v0, v4}, Lcom/android/server/sensorprivacy/PersistedState;->readPVersion0(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion0;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v4, v0

    goto :goto_7

    :cond_3
    const-string/jumbo v12, "version"

    if-ne v6, v2, :cond_4

    :try_start_7
    invoke-interface {v0, v10, v12, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    new-instance v6, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;

    invoke-direct {v6, v4}, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;-><init>(I)V

    invoke-static {v0, v6}, Lcom/android/server/sensorprivacy/PersistedState;->readPVersion1(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion1;)V

    :goto_4
    move-object v4, v6

    goto :goto_5

    :cond_4
    if-ne v6, v9, :cond_5

    invoke-interface {v0, v10, v12, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    new-instance v6, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    invoke-direct {v6, v4}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;-><init>(I)V

    invoke-static {v0, v6}, Lcom/android/server/sensorprivacy/PersistedState;->readPVersion2(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion2;)V

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Deleting."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v7, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v4, v10

    :goto_5
    if-eqz v11, :cond_6

    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_9

    :cond_6
    :goto_6
    move-object v10, v4

    goto :goto_a

    :goto_7
    if-eqz v11, :cond_7

    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    :try_start_a
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_8
    throw v4
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4

    :goto_9
    invoke-static {v7, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    :cond_8
    :goto_a
    if-nez v10, :cond_9

    new-instance v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    invoke-direct {v10, v9}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;-><init>(I)V

    :cond_9
    instance-of v0, v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;

    if-eqz v0, :cond_c

    check-cast v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;

    new-instance v3, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;

    invoke-direct {v3, v2}, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;-><init>(I)V

    new-array v4, v2, [I

    aput v8, v4, v8

    :try_start_b
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    const-string/jumbo v5, "Unable to get users."

    invoke-static {v7, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    move v0, v8

    :goto_c
    array-length v5, v4

    if-ge v0, v5, :cond_b

    aget v5, v4, v0

    move v6, v8

    :goto_d
    iget-object v11, v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->mIndividualEnabled:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v6, v11, :cond_a

    iget-object v11, v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->mIndividualEnabled:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    iget-object v12, v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->mIndividualEnabled:Landroid/util/SparseArray;

    invoke-virtual {v12, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/sensorprivacy/SensorState;

    invoke-virtual {v12}, Lcom/android/server/sensorprivacy/SensorState;->isEnabled()Z

    move-result v12

    iget-object v13, v3, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->mIndividualEnabled:Landroid/util/SparseArray;

    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v13, v5, v14}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    iget-object v14, v3, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->mIndividualEnabled:Landroid/util/SparseArray;

    invoke-virtual {v14, v5, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v14, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {v14, v12}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Z)V

    invoke-virtual {v13, v11, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/2addr v6, v2

    goto :goto_d

    :cond_a
    add-int/2addr v0, v2

    goto :goto_c

    :cond_b
    move-object v10, v3

    :cond_c
    instance-of v0, v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;

    if-eqz v0, :cond_f

    check-cast v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;

    new-instance v0, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    invoke-direct {v0, v9}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;-><init>(I)V

    iget-object v3, v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->mIndividualEnabled:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v5, v8

    :goto_e
    if-ge v5, v4, :cond_e

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    move v11, v8

    :goto_f
    if-ge v11, v10, :cond_d

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/sensorprivacy/SensorState;

    iget v14, v13, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    move-object/from16 v16, v9

    iget-wide v8, v13, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    iget-object v13, v0, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;->mStates:Landroid/util/ArrayMap;

    new-instance v15, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    invoke-direct {v15, v2, v6, v12}, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;-><init>(III)V

    new-instance v12, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iput v14, v12, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    sget-object v14, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    move v14, v2

    move-object/from16 v17, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    invoke-virtual {v13, v15, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v11, v14

    move v2, v14

    move-object/from16 v9, v16

    move-object/from16 v3, v17

    const/4 v8, 0x0

    goto :goto_f

    :cond_d
    move v14, v2

    move-object/from16 v17, v3

    add-int/2addr v5, v14

    const/4 v8, 0x0

    goto :goto_e

    :cond_e
    move-object v10, v0

    :cond_f
    instance-of v0, v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    if-eqz v0, :cond_10

    check-cast v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    iget-object v0, v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;->mStates:Landroid/util/ArrayMap;

    iput-object v0, v1, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    goto :goto_10

    :cond_10
    const-string/jumbo v0, "State not successfully upgraded."

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    :goto_10
    return-void
.end method

.method public static readPVersion0(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion0;)V
    .locals 4

    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "individual-sensor-privacy"

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sensor"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "enabled"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p1, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->mIndividualEnabled:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {v3, v1}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Z)V

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static readPVersion1(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion1;)V
    .locals 7

    :cond_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    const-string/jumbo v0, "user"

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string/jumbo v1, "id"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    :cond_1
    :goto_0
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "individual-sensor-privacy"

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "sensor"

    invoke-interface {p0, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "enabled"

    invoke-interface {p0, v0, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    iget-object v5, p1, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->mIndividualEnabled:Landroid/util/SparseArray;

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    iget-object v6, p1, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->mIndividualEnabled:Landroid/util/SparseArray;

    invoke-virtual {v6, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v6, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {v6, v4}, Lcom/android/server/sensorprivacy/SensorState;-><init>(Z)V

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static readPVersion2(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion2;)V
    .locals 8

    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    const-string/jumbo v0, "sensor-state"

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string/jumbo v1, "toggle-type"

    invoke-interface {p0, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "user-id"

    invoke-interface {p0, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "sensor"

    invoke-interface {p0, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "state-type"

    invoke-interface {p0, v0, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "last-change"

    invoke-interface {p0, v0, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iget-object v0, p1, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;->mStates:Landroid/util/ArrayMap;

    new-instance v7, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;

    invoke-direct {v7, v1, v2, v3}, Lcom/android/server/sensorprivacy/PersistedState$TypeUserSensor;-><init>(III)V

    new-instance v1, Lcom/android/server/sensorprivacy/SensorState;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput v4, v1, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    sget-object v2, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    invoke-virtual {v0, v7, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_1
    return-void
.end method
