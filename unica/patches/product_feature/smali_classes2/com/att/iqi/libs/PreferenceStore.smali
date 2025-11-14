.class public Lcom/att/iqi/libs/PreferenceStore;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field private static final IQI_PREF_FILE:Ljava/lang/String; = "att_prefs.xml"

.field public static final PREF_BRIDGE_LIBRARY_PATH:Ljava/lang/String; = "bridge_path"

.field public static final PREF_DISABLE_MCC_MNC_VALIDATION:Ljava/lang/String; = "disable_mcc_mnc_validation"

.field public static final PREF_LOGS_ENABLED:Ljava/lang/String; = "log_enabled"

.field public static final PREF_SERVICE_STATE:Ljava/lang/String; = "service_state"

.field public static final SERVICE_STATE_OFF:I = 0x0

.field public static final SERVICE_STATE_ON:I = 0x1

.field private static final mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/att/iqi/libs/PreferenceStore;

.field private static final sPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPreferenceChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferenceFile:Ljava/io/File;


# direct methods
.method public static synthetic $r8$lambda$7U5R21GqGWWpvmbnz-E82HWb64g(Lcom/att/iqi/libs/PreferenceStore;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore;->lambda$setString$2(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9bCT-eyTtSVDy9lg4YAsns_wav0(Lorg/w3c/dom/NodeList;)Ljava/util/Iterator;
    .registers 1

    invoke-static {p0}, Lcom/att/iqi/libs/PreferenceStore;->lambda$iterable$4(Lorg/w3c/dom/NodeList;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MAo0EmtvXoxTtgWq7hvlScebVqU(Lcom/att/iqi/libs/PreferenceStore;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore;->lambda$setBoolean$0(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$NJFCB3HkcFTxbb3a7-OfJhD3HGU(Lcom/att/iqi/libs/PreferenceStore;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore;->lambda$setInteger$1(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$n9HppiQQ15P9dhS4EjhC_sEI53M(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/att/iqi/libs/PreferenceStore;->lambda$broadcastPreferenceChange$3(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v2, "disable_mcc_mnc_validation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "log_enabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "service_state"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "bridge_path"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceChangeListeners:Ljava/util/List;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "system"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "att_prefs.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceFile:Ljava/io/File;

    invoke-direct {p0}, Lcom/att/iqi/libs/PreferenceStore;->loadPrefsFromFileLocked()V

    return-void
.end method

.method private broadcastPreferenceChange(Ljava/lang/String;)V
    .registers 5

    iget-object p0, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceChangeListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;

    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1}, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda1;-><init>(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_1f
    return-void
.end method

.method private createPrefStoreLocked()Z
    .registers 14

    const-string/jumbo v0, "string"

    const-string/jumbo v1, "int"

    const-string/jumbo v2, "false"

    const-string/jumbo v3, "map"

    const-string v4, "Error occurred while closing output stream"

    const-string/jumbo v5, "value"

    const-string/jumbo v6, "boolean"

    const-string/jumbo v7, "name"

    const/4 v8, 0x0

    :try_start_18
    iget-object v9, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    move-result v9

    if-nez v9, :cond_29

    const-string p0, "Failed to create prefs file!"

    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    return v8

    :catch_26
    move-exception p0

    goto/16 :goto_bb

    :cond_29
    new-instance v9, Ljava/io/FileOutputStream;

    iget-object p0, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceFile:Ljava/io/File;

    invoke-direct {v9, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_30} :catch_26

    :try_start_30
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    const-string/jumbo v10, "UTF-8"

    invoke-interface {p0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v11, 0x0

    invoke-interface {p0, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v12, 0x1

    invoke-interface {p0, v10, v12}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    invoke-interface {p0, v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "prefs"

    invoke-interface {p0, v11, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "disable_mcc_mnc_validation"

    invoke-interface {p0, v11, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v11, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "log_enabled"

    invoke-interface {p0, v11, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v11, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v11, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "service_state"

    invoke-interface {p0, v11, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "1"

    invoke-interface {p0, v11, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v11, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "bridge_path"

    invoke-interface {p0, v11, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_99
    .catchall {:try_start_30 .. :try_end_99} :catchall_a2

    :try_start_99
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_9d

    return v12

    :catch_9d
    move-exception p0

    invoke-static {v4, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v12

    :catchall_a2
    move-exception p0

    :try_start_a3
    const-string v0, "Exception thrown while creating pref file"

    invoke-static {v0, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a8
    .catchall {:try_start_a3 .. :try_end_a8} :catchall_b1

    :try_start_a8
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ab} :catch_ac

    goto :goto_b0

    :catch_ac
    move-exception p0

    invoke-static {v4, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b0
    return v8

    :catchall_b1
    move-exception p0

    :try_start_b2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_b6

    goto :goto_ba

    :catch_b6
    move-exception v0

    invoke-static {v4, v0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_ba
    throw p0

    :goto_bb
    const-string/jumbo v0, "Unable to open stream to write prefs"

    invoke-static {v0, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v8
.end method

.method public static getInstance()Lcom/att/iqi/libs/PreferenceStore;
    .registers 2

    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/att/iqi/libs/PreferenceStore;->sInstance:Lcom/att/iqi/libs/PreferenceStore;

    if-nez v1, :cond_11

    new-instance v1, Lcom/att/iqi/libs/PreferenceStore;

    invoke-direct {v1}, Lcom/att/iqi/libs/PreferenceStore;-><init>()V

    sput-object v1, Lcom/att/iqi/libs/PreferenceStore;->sInstance:Lcom/att/iqi/libs/PreferenceStore;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    :cond_11
    :goto_11
    sget-object v1, Lcom/att/iqi/libs/PreferenceStore;->sInstance:Lcom/att/iqi/libs/PreferenceStore;

    monitor-exit v0

    return-object v1

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_f

    throw v1
.end method

.method private static iterable(Lorg/w3c/dom/NodeList;)Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda3;-><init>(Lorg/w3c/dom/NodeList;)V

    return-object v0
.end method

.method private static synthetic lambda$broadcastPreferenceChange$3(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;Ljava/lang/String;)V
    .registers 2

    invoke-interface {p0, p1}, Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;->onPreferenceChanged(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$iterable$4(Lorg/w3c/dom/NodeList;)Ljava/util/Iterator;
    .registers 3

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda5;-><init>(Lorg/w3c/dom/NodeList;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setBoolean$0(Ljava/lang/String;Z)V
    .registers 3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore;->updatePreference(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setInteger$1(Ljava/lang/String;I)V
    .registers 3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore;->updatePreference(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setString$2(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore;->updatePreference(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private loadPrefsFromFileLocked()V
    .registers 15

    const-string v0, "Error while closing input stream"

    iget-object v1, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-direct {p0}, Lcom/att/iqi/libs/PreferenceStore;->createPrefStoreLocked()Z

    move-result v1

    if-nez v1, :cond_17

    const-string/jumbo p0, "Unable to load prefs from file, using defaults from memory"

    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    return-void

    :cond_17
    :try_start_17
    new-instance v1, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceFile:Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_15f

    :try_start_1e
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p0

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2e} :catch_63
    .catchall {:try_start_1e .. :try_end_2e} :catchall_60

    move-object v4, v2

    move-object v5, v4

    :goto_30
    const/4 v6, 0x1

    if-eq v3, v6, :cond_144

    const-string/jumbo v7, "name"

    const/4 v8, 0x0

    const-string/jumbo v9, "bridge_path"

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eq v3, v11, :cond_a4

    if-eq v3, v10, :cond_66

    const/4 v7, 0x4

    if-eq v3, v7, :cond_45

    goto/16 :goto_bb

    :cond_45
    :try_start_45
    invoke-static {v4, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_bb

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_bb

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0xa

    if-ne v3, v7, :cond_bb

    const-string v5, ""

    goto :goto_bb

    :catchall_60
    move-exception p0

    goto/16 :goto_156

    :catch_63
    move-exception p0

    goto/16 :goto_14d

    :cond_66
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_bb

    invoke-interface {p0, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "int"

    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9c

    const-string/jumbo v7, "boolean"

    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_83

    goto :goto_9c

    :cond_83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found unknown type in prefs, ignoring "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_30

    :cond_9c
    :goto_9c
    const-string/jumbo v3, "value"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_bb

    :cond_a4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v12, "string"

    invoke-static {v3, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_bb

    invoke-interface {p0, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto/16 :goto_30

    :cond_bb
    :goto_bb
    if-eqz v4, :cond_13e

    if-eqz v5, :cond_13e

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v3
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_c3} :catch_63
    .catchall {:try_start_45 .. :try_end_c3} :catchall_60

    const-string/jumbo v7, "log_enabled"

    const-string/jumbo v12, "service_state"

    const-string/jumbo v13, "disable_mcc_mnc_validation"

    sparse-switch v3, :sswitch_data_168

    goto :goto_ef

    :sswitch_d0
    :try_start_d0
    invoke-virtual {v4, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ef

    move v8, v10

    goto :goto_f0

    :sswitch_d8
    invoke-virtual {v4, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ef

    move v8, v6

    goto :goto_f0

    :sswitch_e0
    invoke-virtual {v4, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ef

    goto :goto_f0

    :sswitch_e7
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ef

    move v8, v11

    goto :goto_f0

    :cond_ef
    :goto_ef
    const/4 v8, -0x1

    :goto_f0
    if-eqz v8, :cond_12f

    if-eq v8, v6, :cond_121

    if-eq v8, v11, :cond_113

    if-eq v8, v10, :cond_10d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found invalid preference, ignoring "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    goto :goto_13c

    :cond_10d
    sget-object v3, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    invoke-interface {v3, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13c

    :cond_113
    sget-object v3, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13c

    :cond_121
    sget-object v3, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13c

    :cond_12f
    sget-object v3, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_13c
    move-object v4, v2

    move-object v5, v4

    :cond_13e
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_142} :catch_63
    .catchall {:try_start_d0 .. :try_end_142} :catchall_60

    goto/16 :goto_30

    :cond_144
    :try_start_144
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_147} :catch_148

    return-void

    :catch_148
    move-exception p0

    invoke-static {v0, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_155

    :goto_14d
    :try_start_14d
    const-string v2, "Failed to load prefs values"

    invoke-static {v2, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_152
    .catchall {:try_start_14d .. :try_end_152} :catchall_60

    :try_start_152
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_155} :catch_148

    :goto_155
    return-void

    :goto_156
    :try_start_156
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_159} :catch_15a

    goto :goto_15e

    :catch_15a
    move-exception v1

    invoke-static {v0, v1}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_15e
    throw p0

    :catch_15f
    move-exception p0

    const-string/jumbo v0, "Unable to open stream to load prefs"

    invoke-static {v0, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    nop

    :sswitch_data_168
    .sparse-switch
        -0x6f84aeba -> :sswitch_e7
        -0x66b9ad79 -> :sswitch_e0
        0x1e56bd9f -> :sswitch_d8
        0x26b2471b -> :sswitch_d0
    .end sparse-switch
.end method

.method private updatePreference(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10

    const-string/jumbo v0, "Tried to write an unsupported preference type "

    const-string/jumbo v1, "Unable to persist preference "

    :try_start_6
    sget-object v2, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_130

    :try_start_9
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_24

    const-string/jumbo v0, "boolean"

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_20

    const-string/jumbo v3, "true"

    goto :goto_3a

    :catchall_1d
    move-exception p0

    goto/16 :goto_12e

    :cond_20
    const-string/jumbo v3, "false"

    goto :goto_3a

    :cond_24
    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_30

    const-string/jumbo v0, "int"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3a

    :cond_30
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_119

    const-string/jumbo v0, "string"

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    :goto_3a
    iget-object v4, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_61

    invoke-direct {p0}, Lcom/att/iqi/libs/PreferenceStore;->createPrefStoreLocked()Z

    move-result v4

    if-nez v4, :cond_61

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in storage!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/att/iqi/libs/PreferenceStore;->broadcastPreferenceChange(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_61
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceFile:Ljava/io/File;

    invoke-virtual {v1, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/libs/PreferenceStore;->iterable(Lorg/w3c/dom/NodeList;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_fd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string/jumbo v6, "name"

    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found pref "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string/jumbo v5, "value"

    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_c1

    invoke-interface {v0, v3}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    goto :goto_c4

    :cond_c1
    invoke-interface {v4, v3}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    :goto_c4
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    iget-object v4, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    new-instance v4, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v4, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v0, v4, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Pref file updated ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "] ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/att/iqi/libs/PreferenceStore;->broadcastPreferenceChange(Ljava/lang/String;)V

    goto :goto_117

    :cond_fd
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "Preference "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was not found!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    :goto_117
    monitor-exit v2

    return-void

    :cond_119
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :goto_12e
    monitor-exit v2
    :try_end_12f
    .catchall {:try_start_9 .. :try_end_12f} :catchall_1d

    :try_start_12f
    throw p0
    :try_end_130
    .catchall {:try_start_12f .. :try_end_130} :catchall_130

    :catchall_130
    move-exception p0

    const-string p1, "An exception was thrown while trying to update preference"

    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    sget-object p0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_e

    goto :goto_12

    :cond_e
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :goto_12
    monitor-exit p0

    return p2

    :catchall_14
    move-exception p1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public getInteger(Ljava/lang/String;I)I
    .registers 4

    sget-object p0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_e

    goto :goto_12

    :cond_e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_12
    monitor-exit p0

    return p2

    :catchall_14
    move-exception p1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    sget-object p0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_e

    goto :goto_f

    :cond_e
    move-object p2, p1

    :goto_f
    monitor-exit p0

    return-object p2

    :catchall_11
    move-exception p1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public registerPreferenceChangeListener(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;)V
    .registers 2

    iget-object p0, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .registers 6

    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/att/iqi/libs/PreferenceStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eq p2, v2, :cond_28

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda0;-><init>(Lcom/att/iqi/libs/PreferenceStore;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_2a

    :cond_28
    :goto_28
    monitor-exit v0

    return-void

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_26

    throw p0
.end method

.method public setInteger(Ljava/lang/String;I)V
    .registers 6

    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v2}, Lcom/att/iqi/libs/PreferenceStore;->getInteger(Ljava/lang/String;I)I

    move-result v2

    if-eq p2, v2, :cond_28

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda2;-><init>(Lcom/att/iqi/libs/PreferenceStore;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_2a

    :cond_28
    :goto_28
    monitor-exit v0

    return-void

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_26

    throw p0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/att/iqi/libs/PreferenceStore;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/att/iqi/libs/PreferenceStore;->sPreferences:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/att/iqi/libs/PreferenceStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, p2}, Lcom/att/iqi/libs/PreferenceStore$$ExternalSyntheticLambda4;-><init>(Lcom/att/iqi/libs/PreferenceStore;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_2a

    :cond_28
    :goto_28
    monitor-exit v0

    return-void

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_26

    throw p0
.end method

.method public unregisterPreferenceChangeListener(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;)V
    .registers 2

    iget-object p0, p0, Lcom/att/iqi/libs/PreferenceStore;->mPreferenceChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
