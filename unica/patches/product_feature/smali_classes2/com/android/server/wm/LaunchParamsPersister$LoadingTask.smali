.class public final Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final mFutureTask:Ljava/util/concurrent/FutureTask;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/wm/LaunchParamsPersister;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/LaunchParamsPersister;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    iput p2, p0, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->mUserId:I

    new-instance p1, Ljava/util/concurrent/FutureTask;

    invoke-direct {p1, p0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->mFutureTask:Ljava/util/concurrent/FutureTask;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    iget v0, v0, Lcom/android/server/wm/LaunchParamsPersister$LoadingTask;->mUserId:I

    invoke-virtual {v2, v0}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const-string v5, "LaunchParamsPersister"

    if-nez v4, :cond_0

    const-string v1, "Didn\'t find launch param folder for user "

    invoke-static {v0, v1, v5}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v4, Landroid/util/ArraySet;

    iget-object v0, v2, Lcom/android/server/wm/LaunchParamsPersister;->mPackageList:Lcom/android/server/pm/PackageList;

    iget-object v0, v0, Lcom/android/server/pm/PackageList;->mPackageNames:Ljava/util/List;

    invoke-direct {v4, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    new-instance v7, Landroid/util/ArrayMap;

    array-length v0, v6

    invoke-direct {v7, v0}, Landroid/util/ArrayMap;-><init>(I)V

    array-length v8, v6

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_b

    aget-object v11, v6, v10

    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v12

    if-nez v12, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is not a file."

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object/from16 v16, v3

    goto/16 :goto_a

    :cond_1
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, ".xml"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Unexpected params file name: "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x5f

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/16 v15, 0x2d

    const/4 v0, -0x1

    if-eq v14, v0, :cond_5

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    if-eq v14, v0, :cond_3

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v12, v13, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object v11, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    :goto_2
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {v12, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v13, 0x2f

    invoke-virtual {v0, v15, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    if-nez v13, :cond_6

    const-string/jumbo v0, "Unexpected file name: "

    invoke-virtual {v0, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>()V

    invoke-static {v12}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v15

    const/4 v9, 0x1

    if-eq v15, v9, :cond_a

    const/4 v9, 0x3

    if-eq v15, v9, :cond_a

    const/4 v9, 0x2

    if-eq v15, v9, :cond_8

    :goto_4
    const/4 v9, 0x0

    goto :goto_3

    :cond_8
    invoke-interface {v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v15, "launch_params"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v16, v3

    :try_start_2
    const-string/jumbo v3, "Unexpected tag name: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move-object/from16 v3, v16

    goto :goto_4

    :catchall_0
    move-exception v0

    :goto_6
    move-object v3, v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_6

    :cond_9
    move-object/from16 v16, v3

    invoke-virtual {v0, v11, v14}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->restore(Ljava/io/File;Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_5

    :cond_a
    move-object/from16 v16, v3

    invoke-virtual {v7, v13, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {v2, v13, v0}, Lcom/android/server/wm/LaunchParamsPersister;->addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_9

    :goto_7
    :try_start_4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_1
    move-exception v0

    move-object/from16 v16, v3

    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "Failed to restore launch params for "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v16

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;

    invoke-direct {v0, v1}, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;-><init>(Ljava/util/List;)V

    iget-object v1, v2, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    const/4 v9, 0x1

    invoke-virtual {v1, v0, v9}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    :cond_c
    return-object v7
.end method
