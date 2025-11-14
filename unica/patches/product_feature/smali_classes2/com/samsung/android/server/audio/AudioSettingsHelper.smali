.class public final Lcom/samsung/android/server/audio/AudioSettingsHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sInstance:Lcom/samsung/android/server/audio/AudioSettingsHelper;


# instance fields
.field public mCallPolicyAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mContext:Landroid/content/Context;

.field public final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field public mSoundAppPolicyAllowAppList:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    new-instance v5, Lcom/samsung/android/server/audio/AudioSettingsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    const/16 v4, 0xe

    const-string/jumbo v2, "audioservice_sec.db"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    iput-object v1, v0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p0, v0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mSoundAppPolicyAllowAppList:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-boolean p0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOIP_LIVE_TRANSLATE:Z

    if-eqz p0, :cond_2a

    new-instance p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p0, v0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mCallPolicyAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_2a
    return-void
.end method

.method public static destroy()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->sInstance:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/AudioSettingsHelper;
    .registers 3

    const-class v0, Lcom/samsung/android/server/audio/AudioSettingsHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->sInstance:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    if-nez v1, :cond_11

    new-instance v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->sInstance:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_15

    :cond_11
    :goto_11
    sget-object p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->sInstance:Lcom/samsung/android/server/audio/AudioSettingsHelper;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object p0

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw p0
.end method


# virtual methods
.method public final add(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 4

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "add error "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "AudioService.DB"

    invoke-static {p0, p1, p2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public final checkAppCategory(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mSoundAppPolicyAllowAppList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mSoundAppPolicyAllowAppList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/server/audio/AudioSettingsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/server/audio/AudioSettingsHelper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public final enableSyncParentSound()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-nez v0, :cond_e

    goto :goto_44

    :cond_e
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "sync_parent_sounds"

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x1

    invoke-static {p0, v0, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    return-void

    :catch_3c
    move-exception p0

    const-string v0, "AudioService.DB"

    const-string v1, "Enable sync sound error "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_44
    :goto_44
    return-void
.end method

.method public final getAppList()Ljava/util/Hashtable;
    .registers 11

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mSoundAppPolicyAllowAppList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_67

    :try_start_d
    iget-object v2, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "category_packages"

    const-string/jumbo v0, "_package"

    const-string/jumbo v4, "_category"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_25} :catch_4d

    :try_start_25
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_49

    :cond_2b
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mSoundAppPolicyAllowAppList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_43
    .catchall {:try_start_25 .. :try_end_43} :catchall_46

    if-nez v0, :cond_2b

    goto :goto_49

    :catchall_46
    move-exception v0

    move-object v3, v0

    goto :goto_4f

    :cond_49
    :goto_49
    :try_start_49
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_67

    :catch_4d
    move-exception v0

    goto :goto_5a

    :goto_4f
    if-eqz v2, :cond_59

    :try_start_51
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_59

    :catchall_55
    move-exception v0

    :try_start_56
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_59
    :goto_59
    throw v3
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5a} :catch_4d

    :goto_5a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getAllSoundAppPolicyAllowAppList error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "AudioService.DB"

    invoke-static {v0, v2, v3}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_67
    :goto_67
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mSoundAppPolicyAllowAppList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d

    :cond_85
    return-object v1
.end method

.method public final getInt(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I
    .registers 13

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_23

    :try_start_d
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1f

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p4
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_1c

    goto :goto_1f

    :catchall_1c
    move-exception v0

    move-object p1, v0

    goto :goto_26

    :cond_1f
    :goto_1f
    :try_start_1f
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_23

    return p4

    :catch_23
    move-exception v0

    move-object p0, v0

    goto :goto_32

    :goto_26
    if-eqz p0, :cond_31

    :try_start_28
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_31

    :catchall_2c
    move-exception v0

    move-object p0, v0

    :try_start_2e
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_31
    :goto_31
    throw p1
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_32} :catch_23

    :goto_32
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "getInt error "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "AudioService.DB"

    invoke-static {p0, p1, p2}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return p4
.end method

.method public final getIntValue(ILjava/lang/String;)I
    .registers 5

    const-string/jumbo v0, "_key=\'"

    const-string v1, "\'"

    invoke-static {v0, p2, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "_key"

    const-string/jumbo v1, "_value"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "audio_settings"

    invoke-virtual {p0, v1, v0, p2, p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInt(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getPackageList()Ljava/util/Hashtable;
    .registers 11

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    :try_start_5
    iget-object v2, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "selectedpkg"

    const-string/jumbo p0, "_uid"

    const-string/jumbo v0, "_package"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_42

    :try_start_1d
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_23
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_38
    .catchall {:try_start_1d .. :try_end_38} :catchall_3b

    if-nez v0, :cond_23

    goto :goto_3e

    :catchall_3b
    move-exception v0

    move-object v2, v0

    goto :goto_45

    :cond_3e
    :goto_3e
    :try_start_3e
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_42

    return-object v1

    :catch_42
    move-exception v0

    move-object p0, v0

    goto :goto_51

    :goto_45
    if-eqz p0, :cond_50

    :try_start_47
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_50

    :catchall_4b
    move-exception v0

    move-object p0, v0

    :try_start_4d
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_50
    :goto_50
    throw v2
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_51} :catch_42

    :goto_51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getPackageList error "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "AudioService.DB"

    invoke-static {p0, v0, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v1
.end method

.method public final initSystemVibration(ILjava/lang/String;)V
    .registers 12

    const-string/jumbo v0, "content://settings/system/"

    const-string/jumbo v1, "initSystemVibration error "

    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 p0, 0x1

    const/4 v8, 0x0

    :try_start_e
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_5a

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5a

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string/jumbo v0, "value"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string/jumbo v0, "package"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    const-string/jumbo v3, "com.android.providers.settings"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_51} :catch_58
    .catchall {:try_start_e .. :try_end_51} :catchall_55

    if-nez v0, :cond_5a

    const/4 p0, 0x0

    goto :goto_5a

    :catchall_55
    move-exception v0

    move-object p0, v0

    goto :goto_7f

    :catch_58
    move-exception v0

    goto :goto_60

    :cond_5a
    :goto_5a
    if-eqz v8, :cond_78

    :goto_5c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_78

    :goto_60
    :try_start_60
    const-string v3, "AudioService.DB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_60 .. :try_end_75} :catchall_55

    if-eqz v8, :cond_78

    goto :goto_5c

    :cond_78
    :goto_78
    if-eqz p0, :cond_7e

    const/4 p0, -0x2

    invoke-static {v2, p2, p1, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_7e
    return-void

    :goto_7f
    if-eqz v8, :cond_84

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_84
    throw p0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    :try_start_0
    const-string p0, "CREATE TABLE audio_settings (_id INTEGER PRIMARY KEY AUTOINCREMENT, _key TEXT UNIQUE, _value INTEGER);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE device_addr (_id INTEGER PRIMARY KEY AUTOINCREMENT, _addr TEXT UNIQUE, _index INTEGER);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE app_volume (_id INTEGER PRIMARY KEY AUTOINCREMENT, _uid INTEGER UNIQUE, _index INTEGER);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE selectedpkg (_id INTEGER PRIMARY KEY AUTOINCREMENT, _uid INTERGER, _package TEXT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE category_packages (_id INTEGER PRIMARY KEY AUTOINCREMENT, _package TEXT,_category TEXT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE call_policy_category_packages (_id INTEGER PRIMARY KEY AUTOINCREMENT, _package TEXT,_category TEXT);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p0

    const-string p1, "AudioService.DB"

    const-string v0, "Create DB Create failed "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "onDowngrade error "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "AudioService.DB"

    invoke-static {p0, p1, p2}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    const-string/jumbo v3, "sync_vibration_with_notification"

    const-string/jumbo v4, "adjust_media_volume_only"

    const-string/jumbo v5, "volumelimit_secure_password"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Upgrading settings database from version "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AudioService.DB"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    const/4 v8, 0x2

    if-ne v0, v6, :cond_40

    :try_start_31
    const-string v0, "DROP TABLE IF EXISTS category_packages"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE selectedpkg (_id INTEGER PRIMARY KEY AUTOINCREMENT, _uid INTEGER, _package TEXT);"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move v0, v8

    goto :goto_40

    :catch_3d
    move-exception v0

    goto/16 :goto_221

    :cond_40
    :goto_40
    const/4 v9, 0x3

    if-ne v0, v8, :cond_49

    const-string v0, "CREATE TABLE category_packages (_id INTEGER PRIMARY KEY AUTOINCREMENT, _package TEXT,_category TEXT);"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move v0, v9

    :cond_49
    const/4 v10, 0x4

    if-ne v0, v9, :cond_53

    const-string/jumbo v0, "delete from device_addr"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move v0, v10

    :cond_53
    const/4 v9, 0x5

    if-ne v0, v10, :cond_57

    move v0, v9

    :cond_57
    const/4 v11, 0x6

    const/4 v12, 0x0

    if-ne v0, v9, :cond_73

    iget-object v0, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v9, -0x2

    const/4 v13, -0x1

    invoke-static {v0, v4, v13, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v13, :cond_72

    iget-object v0, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v12, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_72} :catch_3d

    :cond_72
    move v0, v11

    :cond_73
    const/4 v4, 0x7

    const-string/jumbo v9, "update audio_settings set _value = 0 where _key = \'APP_LIST_VERSION\'"

    if-ne v0, v11, :cond_7d

    :try_start_79
    invoke-virtual {v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move v0, v4

    :cond_7d
    const/16 v11, 0x8

    if-ne v0, v4, :cond_85

    invoke-virtual {v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->enableSyncParentSound()V

    move v0, v11

    :cond_85
    const/16 v4, 0x9

    if-ne v0, v11, :cond_c5

    iget-object v0, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "vibrator"

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_c4

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v11

    if-eqz v11, :cond_c4

    invoke-virtual {v0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result v0

    if-ne v0, v6, :cond_c4

    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    if-eqz v0, :cond_ac

    const-string/jumbo v0, "haptic_feedback_enabled"

    invoke-virtual {v1, v6, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->initSystemVibration(ILjava/lang/String;)V

    :cond_ac
    const-string/jumbo v0, "sip_key_feedback_vibration"

    invoke-virtual {v1, v12, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->initSystemVibration(ILjava/lang/String;)V

    const-string/jumbo v0, "dialing_keypad_vibrate"

    invoke-virtual {v1, v6, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->initSystemVibration(ILjava/lang/String;)V

    const-string/jumbo v0, "navigation_gestures_vibrate"

    invoke-virtual {v1, v6, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->initSystemVibration(ILjava/lang/String;)V

    const-string/jumbo v0, "VIB_FEEDBACK_MAGNITUDE"

    invoke-virtual {v1, v6, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->initSystemVibration(ILjava/lang/String;)V

    :cond_c4
    move v0, v4

    :cond_c5
    const/16 v11, 0xa

    if-ne v0, v4, :cond_15f

    iget-object v0, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_15e

    const-string/jumbo v4, "encrypt_password"
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_de} :catch_3d

    :try_start_de
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string/jumbo v14, "SHA-1"

    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    const/16 v14, 0x10

    invoke-static {v4, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    const-string v14, "AES/ECB/PKCS5PADDING"

    invoke-static {v14}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v14

    new-instance v15, Ljavax/crypto/spec/SecretKeySpec;

    const-string v10, "AES"

    invoke-direct {v15, v4, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v14, v8, v15}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v4, Ljava/lang/String;

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-direct {v4, v0, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string/jumbo v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v4, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    const-string v4, "%064x"

    new-instance v10, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v10, v6, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_140
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_de .. :try_end_140} :catch_141
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_de .. :try_end_140} :catch_141
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_de .. :try_end_140} :catch_141
    .catch Ljavax/crypto/BadPaddingException; {:try_start_de .. :try_end_140} :catch_141
    .catch Ljava/security/InvalidKeyException; {:try_start_de .. :try_end_140} :catch_141
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_140} :catch_3d

    goto :goto_15e

    :catch_141
    move-exception v0

    :try_start_142
    const-string v4, "Change of volume limiter pin encryption failed. Pin is initialized."

    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, ""

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "volumelimit_set_password"

    invoke-static {v0, v4, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_15e
    :goto_15e
    move v0, v11

    :cond_15f
    const/16 v4, 0xb

    if-ne v0, v11, :cond_164

    move v0, v4

    :cond_164
    const/16 v5, 0xc

    if-ne v0, v4, :cond_207

    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ACH:Z

    if-eqz v0, :cond_206

    const/16 v0, 0x100

    const/16 v4, 0x80

    filled-new-array {v6, v4, v8, v0}, [I

    move-result-object v4

    const-string/jumbo v0, "ringtone_CONSTANT_PATH"

    const-string/jumbo v6, "ringtone_2_CONSTANT_PATH"

    const-string/jumbo v8, "notification_sound_CONSTANT_PATH"

    const-string/jumbo v10, "notification_sound_2_CONSTANT_PATH"

    filled-new-array {v0, v6, v8, v10}, [Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "sync_vibration_with_ringtone"

    const-string/jumbo v8, "sync_vibration_with_ringtone_2"

    filled-new-array {v0, v8, v3, v3}, [Ljava/lang/String;

    move-result-object v3

    move v10, v12

    const/4 v8, 0x4

    :goto_190
    if-ge v10, v8, :cond_206

    iget-object v0, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    aget v11, v4, v10

    invoke-static {v0, v11}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RingtoneManager;->isInternalRingtoneUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1ac

    iget-object v0, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    aget-object v11, v3, v10

    invoke-static {v0, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_1ab} :catch_3d

    goto :goto_203

    :cond_1ac
    :try_start_1ac
    iget-object v0, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    aget-object v11, v6, v10

    iget-object v13, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getUserId()I

    move-result v13

    invoke-static {v0, v11, v13}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v11, "path"

    invoke-virtual {v0, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v11, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/media/AudioManager;->hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_203

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v6, v10

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " has not haptic channels"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    aget-object v11, v3, v10

    invoke-static {v0, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_1fb} :catch_1fc

    goto :goto_203

    :catch_1fc
    move-exception v0

    :try_start_1fd
    const-string/jumbo v11, "Uri error "

    invoke-static {v7, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_203
    :goto_203
    add-int/lit8 v10, v10, 0x1

    goto :goto_190

    :cond_206
    move v0, v5

    :cond_207
    const/16 v1, 0xd

    if-ne v0, v5, :cond_219

    const-string v0, "DELETE FROM selectedpkg"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DELETE FROM category_packages"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move v0, v1

    :cond_219
    if-ne v0, v1, :cond_22c

    const-string v0, "CREATE TABLE IF NOT EXISTS call_policy_category_packages (_id INTEGER PRIMARY KEY AUTOINCREMENT, _package TEXT,_category TEXT);"

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_220
    .catch Ljava/lang/Exception; {:try_start_1fd .. :try_end_220} :catch_3d

    goto :goto_22c

    :goto_221
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onUpgrade error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v7}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_22c
    :goto_22c
    return-void
.end method

.method public final putCallPolicyAllowList(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "_package"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "_category"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "call_policy_category_packages"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->add(Ljava/lang/String;Landroid/content/ContentValues;)V

    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mCallPolicyAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final remove(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    return p0

    :catch_8
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "remove error "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "AudioService.DB"

    invoke-static {p0, p1, p2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final removeValue(Ljava/lang/String;)I
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "_key=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "audio_settings"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->remove(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final resetAllowedListTable()V
    .registers 5

    const-string/jumbo v0, "resetAllowedListTable error "

    const-wide/16 v1, 0x100

    const-string/jumbo v3, "resetAllowedListTable"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_b
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "delete from category_packages"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mSoundAppPolicyAllowAppList:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1a} :catch_1e
    .catchall {:try_start_b .. :try_end_1a} :catchall_38

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catch_1e
    move-exception p0

    :try_start_1f
    const-string v1, "AudioService.DB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_38

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_38
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final resetCallPolicyTable()V
    .registers 5

    const-string/jumbo v0, "resetCallPolicyTable error "

    const-wide/16 v1, 0x100

    const-string/jumbo v3, "resetCallPolicyTable"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_b
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "delete from call_policy_category_packages"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mCallPolicyAllowList:Ljava/util/concurrent/CopyOnWriteArrayList;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1a} :catch_1e
    .catchall {:try_start_b .. :try_end_1a} :catchall_38

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catch_1e
    move-exception p0

    :try_start_1f
    const-string v1, "AudioService.DB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_38

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_38
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final set(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    if-gtz p3, :cond_1d

    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "set error "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "AudioService.DB"

    invoke-static {p0, p1, p2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public final setIntValue(ILjava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "_key"

    invoke-static {v0, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "_value"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "_key=\'"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "audio_settings"

    invoke-virtual {p0, v0, p2, p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->set(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
