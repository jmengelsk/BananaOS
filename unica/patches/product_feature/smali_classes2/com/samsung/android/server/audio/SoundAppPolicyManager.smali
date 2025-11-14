.class public final Lcom/samsung/android/server/audio/SoundAppPolicyManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sInstance:Lcom/samsung/android/server/audio/SoundAppPolicyManager;


# instance fields
.field public appList:Ljava/util/List;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public mLiveTranslateAllowList:Ljava/util/List;

.field public mLiveTranslateAllowListVersion:I

.field public final mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

.field public mToken:Ljava/lang/String;

.field public mVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/audio/AudioSettingsHelper;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mToken:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mVersion:I

    iput-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->appList:Ljava/util/List;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mLiveTranslateAllowListVersion:I

    iput-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mLiveTranslateAllowList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    iput-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mToken:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/server/audio/SoundAppPolicyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/audio/SoundAppPolicyManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/audio/SoundAppPolicyManager;Landroid/content/Context;)V

    const-wide/16 p0, 0x3c

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v0, p0, p1, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static setBtGameLatencyList(Ljava/util/Hashtable;)V
    .registers 5

    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v1, "l_bt_game_latency"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v3, "bt_game_latency_deny"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_47
    const-string/jumbo p0, "SoundAppPolicyManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final checkAndUpdateAppList()V
    .registers 12

    const-string v0, "APP_LIST_VERSION"

    iget-object v1, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v2, "App list is already latest version. Local version = "

    const-string/jumbo v3, "checkAndUpdateAppList update app list version = "

    const-string/jumbo v4, "SoundAppPolicyManager"

    const-string/jumbo v5, "checkAndUpdateAppList"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :try_start_13
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->getData()V

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getIntValue(ILjava/lang/String;)I

    move-result v7

    iget v8, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mVersion:I

    if-ge v7, v8, :cond_bb

    iget-object v8, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->appList:Ljava/util/List;

    if-eqz v8, :cond_bb

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_bb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->resetAllowedListTable()V

    iget-object v2, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->appList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_47
    if-ge v6, v3, :cond_90

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/samsung/android/server/audio/Data;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "package = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/samsung/android/server/audio/Data;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " categoryName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/samsung/android/server/audio/Data;->categoryName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v7, Lcom/samsung/android/server/audio/Data;->packageName:Ljava/lang/String;

    iget-object v7, v7, Lcom/samsung/android/server/audio/Data;->categoryName:Ljava/lang/String;

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v10, "_package"

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "_category"

    invoke-virtual {v9, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "category_packages"

    invoke-virtual {v1, v7, v9}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->add(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_47

    :catchall_8e
    move-exception v0

    goto :goto_d7

    :cond_90
    iget v2, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mVersion:I

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(ILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getAppList()Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->setBtGameLatencyList(Ljava/util/Hashtable;)V

    sget-object v0, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAndUpdateAppList : Success to update version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    goto :goto_d4

    :cond_bb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " SCPM version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catchall {:try_start_13 .. :try_end_d4} :catchall_8e

    :goto_d4
    iput-object v5, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->appList:Ljava/util/List;

    return-void

    :goto_d7
    iput-object v5, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->appList:Ljava/util/List;

    throw v0
.end method

.method public final checkAndUpdateLiveTranslateList()V
    .registers 10

    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string/jumbo v1, "SoundAppPolicyManager"

    const-string/jumbo v2, "checkAndUpdateLiveTranslateList enforceSkip=false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_c
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->getDataForPolicyCall()Z

    move-result v3

    if-nez v3, :cond_1d

    const-string/jumbo v0, "Skip updating live translate allow list! reason: failed getData"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1b

    iput-object v2, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mLiveTranslateAllowList:Ljava/util/List;

    return-void

    :catchall_1b
    move-exception v0

    goto :goto_7b

    :cond_1d
    :try_start_1d
    iget-object v3, v0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mCallPolicyAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->resetCallPolicyTable()V

    :cond_28
    iget-object v3, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mLiveTranslateAllowList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_31
    if-ge v5, v4, :cond_64

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/samsung/android/server/audio/Data;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "package = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/samsung/android/server/audio/Data;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " categoryName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/samsung/android/server/audio/Data;->categoryName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v6, Lcom/samsung/android/server/audio/Data;->packageName:Ljava/lang/String;

    iget-object v6, v6, Lcom/samsung/android/server/audio/Data;->categoryName:Ljava/lang/String;

    invoke-virtual {v0, v7, v6}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putCallPolicyAllowList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    :cond_64
    const-string v1, "LIVE_TRANSLATE_ALLOW_LIST_VERSION"

    iget v3, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mLiveTranslateAllowListVersion:I

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(ILjava/lang/String;)V

    sget-object v0, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string/jumbo v3, "checkAndUpdateLiveTranslateList : Success to update"

    invoke-direct {v1, v3}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_78
    .catchall {:try_start_1d .. :try_end_78} :catchall_1b

    iput-object v2, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mLiveTranslateAllowList:Ljava/util/List;

    return-void

    :goto_7b
    iput-object v2, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mLiveTranslateAllowList:Ljava/util/List;

    throw v0
.end method

.method public final getData()V
    .registers 10

    const-string/jumbo v0, "SoundAppPolicyManager"

    const-string/jumbo v1, "getData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->register()Z

    move-result v1

    if-nez v1, :cond_1d

    sget-object p0, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string/jumbo v1, "getData : Fail to register, token is null"

    invoke-direct {v0, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return-void

    :cond_1d
    :try_start_1d
    const-string v1, "Audio"

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->getScpmParcelFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-nez v1, :cond_2b

    if-eqz v1, :cond_b7

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2a} :catch_b3

    return-void

    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_96

    if-eqz v2, :cond_a6

    :try_start_31
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_42} :catch_98
    .catchall {:try_start_31 .. :try_end_42} :catchall_96

    :try_start_42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->appList:Ljava/util/List;

    const/4 v2, 0x0

    move v4, v2

    :goto_4b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_92

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v4, :cond_71

    new-instance v7, Lcom/samsung/android/server/audio/Data;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    aget-object v8, v5, v2

    iput-object v8, v7, Lcom/samsung/android/server/audio/Data;->packageName:Ljava/lang/String;

    aget-object v5, v5, v6

    iput-object v5, v7, Lcom/samsung/android/server/audio/Data;->categoryName:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->appList:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :catchall_6f
    move-exception p0

    goto :goto_9a

    :cond_71
    aget-object v4, v5, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mVersion:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getVersion = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_42 .. :try_end_90} :catchall_6f

    move v4, v6

    goto :goto_4b

    :cond_92
    :try_start_92
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_98
    .catchall {:try_start_92 .. :try_end_95} :catchall_96

    goto :goto_a6

    :catchall_96
    move-exception p0

    goto :goto_aa

    :catch_98
    move-exception p0

    goto :goto_a3

    :goto_9a
    :try_start_9a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9e

    goto :goto_a2

    :catchall_9e
    move-exception v0

    :try_start_9f
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a2
    throw p0
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a3} :catch_98
    .catchall {:try_start_9f .. :try_end_a3} :catchall_96

    :goto_a3
    :try_start_a3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_96

    :cond_a6
    :goto_a6
    :try_start_a6
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a9} :catch_b3

    goto :goto_b7

    :goto_aa
    :try_start_aa
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_ae

    goto :goto_b2

    :catchall_ae
    move-exception v0

    :try_start_af
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b2
    throw p0
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b3} :catch_b3

    :catch_b3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b7
    :goto_b7
    return-void
.end method

.method public final getDataForPolicyCall()Z
    .registers 9

    const-string/jumbo v0, "SoundAppPolicyManager"

    const-string/jumbo v1, "getData(POLOCY_CALL)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->register()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1e

    sget-object p0, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string/jumbo v1, "getData(POLOCY_CALL) : Fail to register, token is null"

    invoke-direct {v0, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return v2

    :cond_1e
    const/4 v1, 0x1

    const/4 v3, 0x0

    :try_start_20
    const-string/jumbo v4, "voip-live-translate-allow-list-a7f6"

    invoke-virtual {p0, v4}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->getScpmParcelFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_a7
    .catchall {:try_start_20 .. :try_end_27} :catchall_96

    if-nez v3, :cond_2f

    if-eqz v3, :cond_2e

    :try_start_2b
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2e

    :catch_2e
    :cond_2e
    return v2

    :cond_2f
    :try_start_2f
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_a7
    .catchall {:try_start_2f .. :try_end_33} :catchall_96

    if-eqz v4, :cond_a9

    :try_start_35
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3f} :catch_98
    .catchall {:try_start_35 .. :try_end_3f} :catchall_96

    :try_start_3f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mLiveTranslateAllowList:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4b
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_57

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_54
    .catchall {:try_start_3f .. :try_end_54} :catchall_55

    goto :goto_4b

    :catchall_55
    move-exception p0

    goto :goto_9a

    :cond_57
    :try_start_57
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "voip_allow_list"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    :goto_67
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_89

    new-instance v6, Lcom/samsung/android/server/audio/Data;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/server/audio/Data;->packageName:Ljava/lang/String;

    const-string/jumbo v7, "voip_live_translate_allow"

    iput-object v7, v6, Lcom/samsung/android/server/audio/Data;->categoryName:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mLiveTranslateAllowList:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    :catch_87
    move-exception p0

    goto :goto_8c

    :cond_89
    iput v1, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mLiveTranslateAllowListVersion:I
    :try_end_8b
    .catch Lorg/json/JSONException; {:try_start_57 .. :try_end_8b} :catch_87
    .catchall {:try_start_57 .. :try_end_8b} :catchall_55

    goto :goto_92

    :goto_8c
    :try_start_8c
    const-string/jumbo v2, "getDataForPolicyCall: Failed to parse json string."

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_92
    .catchall {:try_start_8c .. :try_end_92} :catchall_55

    :goto_92
    :try_start_92
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_98
    .catchall {:try_start_92 .. :try_end_95} :catchall_96

    goto :goto_a9

    :catchall_96
    move-exception p0

    goto :goto_b4

    :catch_98
    move-exception p0

    goto :goto_a3

    :goto_9a
    :try_start_9a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9e

    goto :goto_a2

    :catchall_9e
    move-exception v0

    :try_start_9f
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a2
    throw p0
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a3} :catch_98
    .catchall {:try_start_9f .. :try_end_a3} :catchall_96

    :goto_a3
    :try_start_a3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a6} :catch_a7
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_96

    goto :goto_a9

    :catch_a7
    move-exception p0

    goto :goto_ad

    :cond_a9
    :goto_a9
    :try_start_a9
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_b3

    goto :goto_b3

    :goto_ad
    :try_start_ad
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_96

    if-eqz v3, :cond_b3

    goto :goto_a9

    :catch_b3
    :cond_b3
    :goto_b3
    return v1

    :goto_b4
    if-eqz v3, :cond_b9

    :try_start_b6
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_b9

    :catch_b9
    :cond_b9
    throw p0
.end method

.method public final getScpmParcelFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7

    const-string/jumbo v0, "getScpmParcelFile, code="

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "content://com.samsung.android.scpm.policy/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    :try_start_21
    iget-object v2, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "r"

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-nez v2, :cond_85

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "token"

    iget-object v4, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mToken:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "getLastError"

    iget-object p0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "android"

    invoke-virtual {p0, p1, v3, v4, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_57

    sget-object p0, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    new-instance p1, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string/jumbo v0, "getScpmFileDescriptor : bundle is null"

    invoke-direct {p1, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return-object v1

    :catch_55
    move-exception p0

    goto :goto_86

    :cond_57
    sget-object p1, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "rcode"

    const/4 v4, -0x1

    invoke-virtual {p0, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", msg="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "rmsg"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_84} :catch_55

    return-object v1

    :cond_85
    return-object v2

    :goto_86
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object p0, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    new-instance p1, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string/jumbo v0, "getScpmParcelFile : Fail to update"

    invoke-direct {p1, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return-object v1
.end method

.method public final loadDefaultAllowedPackageList(ILjava/lang/String;)V
    .registers 9

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_2d

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "_package"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "_category"

    invoke-virtual {v4, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "category_packages"

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->add(Ljava/lang/String;Landroid/content/ContentValues;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2d
    return-void
.end method

.method public final register()Z
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mToken:Ljava/lang/String;

    if-eqz v0, :cond_6

    goto/16 :goto_94

    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageName"

    const-string/jumbo v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "appId"

    const-string/jumbo v3, "ifdzefg1lz"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "version"

    sget-object v3, Lcom/samsung/android/server/audio/ScpmConsumerInfo;->VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "receiverPackageName"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/server/audio/ScpmApiContract;->URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "register"

    invoke-virtual {v3, v1, v4, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_47

    sget-object p0, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string/jumbo v2, "register : Fail to register, bundle is null"

    invoke-direct {v0, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return v1

    :cond_47
    const-string/jumbo v2, "token"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mToken:Ljava/lang/String;

    sget-object v2, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Register, result="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "result"

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "rcode"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "rmsg"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    iget-object p0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mToken:Ljava/lang/String;

    if-eqz p0, :cond_96

    :goto_94
    const/4 p0, 0x1

    return p0

    :cond_96
    return v1
.end method
