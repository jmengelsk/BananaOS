.class public final Lcom/android/server/sensorprivacy/AllSensorStateController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sInstance:Lcom/android/server/sensorprivacy/AllSensorStateController;


# instance fields
.field public final mAtomicFile:Landroid/util/AtomicFile;

.field public mEnabled:Z

.field public mListener:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda1;

.field public mListenerHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;


# direct methods
.method public constructor <init>()V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "sensor_privacy.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mAtomicFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_98

    :cond_1e
    const/4 v1, 0x0

    :try_start_1f
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_82
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_23} :catch_82

    :try_start_23
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7c

    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "all-sensor-privacy"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_48

    const-string/jumbo v5, "enabled"

    if-eqz v4, :cond_4a

    :try_start_3e
    iget-boolean v3, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    invoke-static {v2, v5, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    goto :goto_7c

    :catchall_48
    move-exception v2

    goto :goto_84

    :cond_4a
    const-string/jumbo v4, "sensor-privacy"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    iget-boolean v4, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    invoke-static {v2, v5, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v6

    or-int/2addr v4, v6

    iput-boolean v4, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    :cond_5c
    const-string/jumbo v4, "user"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    const-string/jumbo v3, "id"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_78

    iget-boolean v3, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    invoke-static {v2, v5}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    :cond_78
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7b
    .catchall {:try_start_3e .. :try_end_7b} :catchall_48

    goto :goto_27

    :cond_7c
    :goto_7c
    if-eqz v0, :cond_98

    :try_start_7e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7e .. :try_end_81} :catch_82

    return-void

    :catch_82
    move-exception v0

    goto :goto_8f

    :goto_84
    if-eqz v0, :cond_8e

    :try_start_86
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_8e

    :catchall_8a
    move-exception v0

    :try_start_8b
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8e
    :goto_8e
    throw v2
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8f} :catch_82
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8b .. :try_end_8f} :catch_82

    :goto_8f
    const-string v2, "AllSensorStateController"

    const-string v3, "Caught an exception reading the state from storage: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v1, p0, Lcom/android/server/sensorprivacy/AllSensorStateController;->mEnabled:Z

    :cond_98
    :goto_98
    return-void
.end method
