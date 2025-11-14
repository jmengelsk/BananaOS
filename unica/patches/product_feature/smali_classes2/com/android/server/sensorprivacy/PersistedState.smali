.class public final Lcom/android/server/sensorprivacy/PersistedState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAtomicFile:Landroid/util/AtomicFile;

.field public final mStates:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .registers 19

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

    if-nez v0, :cond_74

    new-instance v8, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, "sensor_privacy.xml"

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v8, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v8}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_74

    :try_start_48
    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v9
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4c} :catch_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_48 .. :try_end_4c} :catch_74

    :try_start_4c
    invoke-static {v9}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_5e

    if-eqz v9, :cond_5c

    :try_start_55
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_55 .. :try_end_58} :catch_5c

    goto :goto_5c

    :catch_59
    move-exception v0

    move-object v3, v8

    goto :goto_6e

    :catch_5c
    :cond_5c
    :goto_5c
    move-object v3, v8

    goto :goto_74

    :catchall_5e
    move-exception v0

    move-object v10, v0

    if-eqz v9, :cond_6d

    :try_start_62
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_6d

    :catchall_66
    move-exception v0

    :try_start_67
    invoke-virtual {v10, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6d

    :catch_6b
    move-exception v0

    goto :goto_6e

    :cond_6d
    :goto_6d
    throw v10
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6e} :catch_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_67 .. :try_end_6e} :catch_74

    :goto_6e
    invoke-static {v7, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v8}, Landroid/util/AtomicFile;->delete()V

    :catch_74
    :cond_74
    :goto_74
    invoke-virtual {v3}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v0, :cond_fe

    :try_start_7d
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v11
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_81} :catch_e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7d .. :try_end_81} :catch_e9
    .catch Ljava/lang/RuntimeException; {:try_start_7d .. :try_end_81} :catch_e9

    :try_start_81
    invoke-static {v11}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const-string/jumbo v6, "persistence-version"

    invoke-interface {v0, v10, v6, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_a4

    new-instance v4, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, v4, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->mIndividualEnabled:Landroid/util/SparseArray;

    invoke-static {v0, v4}, Lcom/android/server/sensorprivacy/PersistedState;->readPVersion0(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion0;)V
    :try_end_a0
    .catchall {:try_start_81 .. :try_end_a0} :catchall_a1

    goto :goto_e3

    :catchall_a1
    move-exception v0

    move-object v4, v0

    goto :goto_ed

    :cond_a4
    const-string/jumbo v12, "version"

    if-ne v6, v2, :cond_b7

    :try_start_a9
    invoke-interface {v0, v10, v12, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    new-instance v6, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;

    invoke-direct {v6, v4}, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;-><init>(I)V

    invoke-static {v0, v6}, Lcom/android/server/sensorprivacy/PersistedState;->readPVersion1(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion1;)V

    :goto_b5
    move-object v4, v6

    goto :goto_e3

    :cond_b7
    if-ne v6, v9, :cond_c6

    invoke-interface {v0, v10, v12, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    new-instance v6, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    invoke-direct {v6, v4}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;-><init>(I)V

    invoke-static {v0, v6}, Lcom/android/server/sensorprivacy/PersistedState;->readPVersion2(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion2;)V

    goto :goto_b5

    :cond_c6
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
    :try_end_e2
    .catchall {:try_start_a9 .. :try_end_e2} :catchall_a1

    move-object v4, v10

    :goto_e3
    if-eqz v11, :cond_eb

    :try_start_e5
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e5 .. :try_end_e8} :catch_e9
    .catch Ljava/lang/RuntimeException; {:try_start_e5 .. :try_end_e8} :catch_e9

    goto :goto_eb

    :catch_e9
    move-exception v0

    goto :goto_f8

    :cond_eb
    :goto_eb
    move-object v10, v4

    goto :goto_fe

    :goto_ed
    if-eqz v11, :cond_f7

    :try_start_ef
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_f2
    .catchall {:try_start_ef .. :try_end_f2} :catchall_f3

    goto :goto_f7

    :catchall_f3
    move-exception v0

    :try_start_f4
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f7
    :goto_f7
    throw v4
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f8} :catch_e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f4 .. :try_end_f8} :catch_e9
    .catch Ljava/lang/RuntimeException; {:try_start_f4 .. :try_end_f8} :catch_e9

    :goto_f8
    invoke-static {v7, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    :cond_fe
    :goto_fe
    if-nez v10, :cond_105

    new-instance v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    invoke-direct {v10, v9}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;-><init>(I)V

    :cond_105
    instance-of v0, v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;

    if-eqz v0, :cond_168

    check-cast v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;

    new-instance v3, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;

    invoke-direct {v3, v2}, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;-><init>(I)V

    new-array v4, v2, [I

    aput v8, v4, v8

    :try_start_114
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v4
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_120} :catch_121

    goto :goto_128

    :catch_121
    move-exception v0

    const-string/jumbo v5, "Unable to get users."

    invoke-static {v7, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_128
    move v0, v8

    :goto_129
    array-length v5, v4

    if-ge v0, v5, :cond_167

    aget v5, v4, v0

    move v6, v8

    :goto_12f
    iget-object v11, v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion0;->mIndividualEnabled:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v6, v11, :cond_165

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

    goto :goto_12f

    :cond_165
    add-int/2addr v0, v2

    goto :goto_129

    :cond_167
    move-object v10, v3

    :cond_168
    instance-of v0, v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;

    if-eqz v0, :cond_1cc

    check-cast v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;

    new-instance v0, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    invoke-direct {v0, v9}, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;-><init>(I)V

    iget-object v3, v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion1;->mIndividualEnabled:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v5, v8

    :goto_17a
    if-ge v5, v4, :cond_1cb

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    move v11, v8

    :goto_18b
    if-ge v11, v10, :cond_1c5

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

    goto :goto_18b

    :cond_1c5
    move v14, v2

    move-object/from16 v17, v3

    add-int/2addr v5, v14

    const/4 v8, 0x0

    goto :goto_17a

    :cond_1cb
    move-object v10, v0

    :cond_1cc
    instance-of v0, v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    if-eqz v0, :cond_1d7

    check-cast v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;

    iget-object v0, v10, Lcom/android/server/sensorprivacy/PersistedState$PVersion2;->mStates:Landroid/util/ArrayMap;

    iput-object v0, v1, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    goto :goto_1e4

    :cond_1d7
    const-string/jumbo v0, "State not successfully upgraded."

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/sensorprivacy/PersistedState;->mStates:Landroid/util/ArrayMap;

    :goto_1e4
    return-void
.end method

.method public static readPVersion0(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion0;)V
    .registers 6

    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_3
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_37

    const-string/jumbo v0, "individual-sensor-privacy"

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

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

    goto :goto_3

    :cond_33
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    :cond_37
    return-void
.end method

.method public static readPVersion1(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion1;)V
    .registers 9

    :cond_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5f

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

    :cond_23
    :goto_23
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "individual-sensor-privacy"

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

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

    goto :goto_23

    :cond_5f
    return-void
.end method

.method public static readPVersion2(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/sensorprivacy/PersistedState$PVersion2;)V
    .registers 10

    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5d

    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    const-string/jumbo v0, "sensor-state"

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

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

    :cond_59
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_5d
    return-void
.end method
