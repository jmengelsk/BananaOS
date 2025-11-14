.class public final Lcom/samsung/android/camera/scpm/ScpmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mIsUnihalSupport:Z

.field public final mScpmCallback:Lcom/samsung/android/camera/scpm/ScpmReceiver$1;

.field public mScpmHelper:Lcom/samsung/android/camera/scpm/ScpmHelper;

.field public final mScpmListManager:Lcom/samsung/android/camera/scpm/ScpmListManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    sput-boolean v0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;Landroid/os/Looper;)V
    .registers 11

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string/jumbo v0, "vendor.camera.unihal.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mIsUnihalSupport:Z

    new-instance v0, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;-><init>(Lcom/samsung/android/camera/scpm/ScpmReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmCallback:Lcom/samsung/android/camera/scpm/ScpmReceiver$1;

    iput-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    iput-object p2, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v5, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/samsung/android/camera/scpm/ScpmListManager;

    invoke-direct {p1}, Lcom/samsung/android/camera/scpm/ScpmListManager;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmListManager:Lcom/samsung/android/camera/scpm/ScpmListManager;

    new-instance p1, Lcom/samsung/android/camera/scpm/ScpmHelper;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/camera/scpm/ScpmHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/camera/scpm/ScpmReceiver$1;)V

    iput-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmHelper:Lcom/samsung/android/camera/scpm/ScpmHelper;

    const-string/jumbo p1, "com.samsung.android.scpm.policy.UPDATE.camera3rdpartylist-1857"

    const-string/jumbo p3, "com.samsung.android.scpm.policy.CLEAR_DATA"

    invoke-static {p1, p3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x2

    move-object v2, p0

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    const-string v0, "\n\tDump of ScpmReceiver list"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->values()[Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_94

    aget-object v3, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n\tPolicy Type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n\tCurrent list : version - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmListManager:Lcom/samsung/android/camera/scpm/ScpmListManager;

    invoke-virtual {v5, v3}, Lcom/samsung/android/camera/scpm/ScpmListManager;->getCurrentVersion(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmListManager:Lcom/samsung/android/camera/scpm/ScpmListManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/camera/scpm/ScpmListManager;->getCurrentPolicyList(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camera/scpm/PolicyListVO;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/samsung/android/camera/scpm/PolicyListVO;->packageName:Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " arg1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/samsung/android/camera/scpm/PolicyListVO;->value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " arg2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/samsung/android/camera/scpm/PolicyListVO;->extra:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_1 .. :try_end_8d} :catchall_8e

    goto :goto_4c

    :catchall_8e
    move-exception p1

    goto :goto_96

    :cond_90
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c

    :cond_94
    monitor-exit p0

    return-void

    :goto_96
    :try_start_96
    monitor-exit p0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_8e

    throw p1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 14

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27e

    const/4 v2, 0x0

    const-wide/16 v3, 0x8

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v0, v6, :cond_19a

    if-eq v0, v5, :cond_91

    const/4 v2, 0x4

    if-eq v0, v2, :cond_21

    const-string p0, "CameraService/ScpmReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SCPMReceiver error, invalid message: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p1, p0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return v1

    :cond_21
    iget-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmListManager:Lcom/samsung/android/camera/scpm/ScpmListManager;

    if-eqz v0, :cond_28b

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v0, Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_28b

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->values()[Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_28b

    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmListManager:Lcom/samsung/android/camera/scpm/ScpmListManager;

    invoke-static {}, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->values()[Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    move-result-object v2

    iget p1, p1, Landroid/os/Message;->arg1:I

    aget-object p1, v2, p1

    const-string/jumbo v2, "updatePolicy "

    const-string/jumbo v3, "updatePolicy "

    monitor-enter p0

    :try_start_47
    const-string v4, "CameraService/ScpmListManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/scpm/ScpmListManager;->getCurrentPolicy(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)Lcom/samsung/android/camera/scpm/ScpmList;

    move-result-object v3

    iget-object v4, v3, Lcom/samsung/android/camera/scpm/ScpmList;->mType:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    sget-object v5, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->CAMERA_COMPATIBILITY:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    if-ne v4, v5, :cond_68

    invoke-virtual {p0}, Lcom/samsung/android/camera/scpm/ScpmListManager;->clearCameraCompatibility()V
    :try_end_65
    .catchall {:try_start_47 .. :try_end_65} :catchall_66

    goto :goto_68

    :catchall_66
    move-exception p1

    goto :goto_8f

    :cond_68
    :goto_68
    :try_start_68
    invoke-static {v0}, Lcom/samsung/android/camera/scpm/ScpmListManager;->getJsonObject(Landroid/os/ParcelFileDescriptor;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/camera/scpm/ScpmListManager;->parseAndUpdateData(Lorg/json/JSONObject;Lcom/samsung/android/camera/scpm/ScpmList;)V

    iget-object v0, v3, Lcom/samsung/android/camera/scpm/ScpmList;->mType:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    if-ne v0, v5, :cond_8c

    invoke-virtual {p0}, Lcom/samsung/android/camera/scpm/ScpmListManager;->setCameraCompatibility()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_76} :catch_77
    .catchall {:try_start_68 .. :try_end_76} :catchall_66

    goto :goto_8c

    :catch_77
    move-exception v0

    :try_start_78
    const-string v3, "CameraService/ScpmListManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/scpm/ScpmListManager;->loadDefaultScpmList(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)V
    :try_end_8c
    .catchall {:try_start_78 .. :try_end_8c} :catchall_66

    :cond_8c
    :goto_8c
    monitor-exit p0

    goto/16 :goto_28b

    :goto_8f
    :try_start_8f
    monitor-exit p0
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_66

    throw p1

    :cond_91
    iget-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmHelper:Lcom/samsung/android/camera/scpm/ScpmHelper;

    if-eqz p1, :cond_28b

    iget-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmListManager:Lcom/samsung/android/camera/scpm/ScpmListManager;

    iget-object p1, p1, Lcom/samsung/android/camera/scpm/ScpmListManager;->mCurrentPolicyList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9d
    :goto_9d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/scpm/ScpmList;

    iget-object v5, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmHelper:Lcom/samsung/android/camera/scpm/ScpmHelper;

    const-string/jumbo v6, "cannot get new policy : "

    iget-object v7, v5, Lcom/samsung/android/camera/scpm/ScpmHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.scpm.policy"

    invoke-virtual {v7, v9, v8}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;

    move-result-object v7

    if-eqz v7, :cond_c3

    move v7, v1

    goto :goto_c4

    :cond_c3
    move v7, v2

    :goto_c4
    const-string v8, "CameraService/ScpmHelper"

    if-nez v7, :cond_cf

    const-string/jumbo v0, "getSCPMPolicy - SCPM is not available"

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    :cond_cf
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "content://com.samsung.android.scpm.policy/"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v5, Lcom/samsung/android/camera/scpm/ScpmHelper;->mToken:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/samsung/android/camera/scpm/ScpmList;->mConfigurationName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    sget-boolean v9, Lcom/samsung/android/camera/scpm/ScpmHelper;->DEBUG:Z

    if-eqz v9, :cond_104

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "uri: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_104
    :try_start_104
    iget-object v9, v5, Lcom/samsung/android/camera/scpm/ScpmHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "r"

    invoke-virtual {v9, v7, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9
    :try_end_111
    .catch Ljava/io/FileNotFoundException; {:try_start_104 .. :try_end_111} :catch_16c
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_111} :catch_16a

    if-nez v9, :cond_158

    :try_start_113
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v10, "token"

    iget-object v11, v5, Lcom/samsung/android/camera/scpm/ScpmHelper;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v5, Lcom/samsung/android/camera/scpm/ScpmHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "getLastError"

    const-string/jumbo v11, "android"

    invoke-virtual {v5, v7, v10, v11, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v5, "rcode"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v7, "rmsg"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_163

    :catchall_156
    move-exception v0

    goto :goto_16e

    :cond_158
    iget-object v5, v5, Lcom/samsung/android/camera/scpm/ScpmHelper;->mScpmCallback:Lcom/samsung/android/camera/scpm/ScpmReceiver$1;

    iget-object v0, v0, Lcom/samsung/android/camera/scpm/ScpmList;->mType:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;->onListReceived(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;Landroid/os/ParcelFileDescriptor;)V
    :try_end_163
    .catchall {:try_start_113 .. :try_end_163} :catchall_156

    :goto_163
    if-eqz v9, :cond_9d

    :try_start_165
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_168
    .catch Ljava/io/FileNotFoundException; {:try_start_165 .. :try_end_168} :catch_16c
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_168} :catch_16a

    goto/16 :goto_9d

    :catch_16a
    move-exception v0

    goto :goto_179

    :catch_16c
    move-exception v0

    goto :goto_190

    :goto_16e
    if-eqz v9, :cond_178

    :try_start_170
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_173
    .catchall {:try_start_170 .. :try_end_173} :catchall_174

    goto :goto_178

    :catchall_174
    move-exception v5

    :try_start_175
    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_178
    :goto_178
    throw v0
    :try_end_179
    .catch Ljava/io/FileNotFoundException; {:try_start_175 .. :try_end_179} :catch_16c
    .catch Ljava/lang/Exception; {:try_start_175 .. :try_end_179} :catch_16a

    :goto_179
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getSCPMPolicy fail because of exception! "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9d

    :goto_190
    const-string v5, "File not found!"

    invoke-static {v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_9d

    :cond_19a
    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmHelper:Lcom/samsung/android/camera/scpm/ScpmHelper;

    if-eqz p0, :cond_28b

    const-string/jumbo p1, "android"

    const-string/jumbo v0, "failed to register: rcode = "

    const-string/jumbo v7, "register success : rcode = "

    const-string/jumbo v8, "registerScpm"

    const-string v9, "CameraService/ScpmHelper"

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/camera/scpm/ScpmHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.scpm.policy"

    invoke-virtual {v8, v4, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_1c3

    move v2, v1

    :cond_1c3
    iget-object v3, p0, Lcom/samsung/android/camera/scpm/ScpmHelper;->mScpmCallback:Lcom/samsung/android/camera/scpm/ScpmReceiver$1;

    if-nez v2, :cond_1d2

    const-string/jumbo p0, "registerScpm - SCPM is not available"

    invoke-static {v9, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v6}, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;->onRegistered(I)V

    goto/16 :goto_28b

    :cond_1d2
    :try_start_1d2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "packageName"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "appId"

    const-string/jumbo v6, "k0fpqpbykt"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "version"

    sget-object v6, Lcom/samsung/android/camera/scpm/ScpmHelper;->APP_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "receiverPackageName"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/camera/scpm/ScpmHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "content://com.samsung.android.scpm.policy/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string/jumbo v8, "register"

    invoke-virtual {v4, v6, v8, p1, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_28b

    const-string/jumbo v2, "result"

    const/4 v4, -0x1

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v6, "token"

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/camera/scpm/ScpmHelper;->mToken:Ljava/lang/String;

    const-string/jumbo p0, "rcode"

    invoke-virtual {p1, p0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    const-string/jumbo v4, "rmsg"

    const-string v6, ""

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_22c
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_22c} :catch_249

    const-string v4, ", rmsg = "

    if-ne v2, v1, :cond_24b

    :try_start_230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v1}, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;->onRegistered(I)V

    goto :goto_28b

    :catch_249
    move-exception p0

    goto :goto_264

    :cond_24b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v5}, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;->onRegistered(I)V
    :try_end_263
    .catch Ljava/lang/Exception; {:try_start_230 .. :try_end_263} :catch_249

    goto :goto_28b

    :goto_264
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "cannot register package : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v5}, Lcom/samsung/android/camera/scpm/ScpmReceiver$1;->onRegistered(I)V

    goto :goto_28b

    :cond_27e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v0, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    if-eqz v2, :cond_28b

    check-cast v0, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/camera/scpm/ScpmReceiver;->notifyParamChangeRetryLocked(ILcom/samsung/android/camera/scpm/ScpmList$PolicyType;)V

    :cond_28b
    :goto_28b
    return v1
.end method

.method public final notifyParamChange(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)Z
    .registers 14

    iget-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmListManager:Lcom/samsung/android/camera/scpm/ScpmListManager;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/scpm/ScpmListManager;->getCurrentPolicy(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)Lcom/samsung/android/camera/scpm/ScpmList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camera/scpm/ScpmListManager$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/camera/scpm/ScpmListManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1a5

    monitor-exit v0

    const/4 v0, 0x1

    if-nez v1, :cond_3f

    const-string p0, "CameraService/ScpmReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyParamChange : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is no need to sync"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3f
    iget-object v1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {v1}, Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_49

    return v2

    :cond_49
    const-string v3, "CameraService/ScpmReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "notifyParamChange : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mIsUnihalSupport = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mIsUnihalSupport:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CameraService/ScpmReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CurrentVersion : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmListManager:Lcom/samsung/android/camera/scpm/ScpmListManager;

    invoke-virtual {v5, p1}, Lcom/samsung/android/camera/scpm/ScpmListManager;->getCurrentVersion(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " DefaultVersion :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmListManager:Lcom/samsung/android/camera/scpm/ScpmListManager;

    invoke-virtual {v5, p1}, Lcom/samsung/android/camera/scpm/ScpmListManager;->getDefaultVersion(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmListManager:Lcom/samsung/android/camera/scpm/ScpmListManager;

    invoke-virtual {v3, p1}, Lcom/samsung/android/camera/scpm/ScpmListManager;->getCurrentPolicyList(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :try_start_9e
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a2
    :goto_a2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/camera/scpm/PolicyListVO;

    iget-object v8, v7, Lcom/samsung/android/camera/scpm/PolicyListVO;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pkgNameHint="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/samsung/android/camera/scpm/PolicyListVO;->value:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mIsUnihalSupport:Z

    if-eqz v9, :cond_fb

    sget-object v9, Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;->CAMERA_3RD_PARTY:Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;

    if-ne v9, p1, :cond_fb

    iget-object v9, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmListManager:Lcom/samsung/android/camera/scpm/ScpmListManager;

    invoke-virtual {v9, p1}, Lcom/samsung/android/camera/scpm/ScpmListManager;->getCurrentVersion(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmListManager:Lcom/samsung/android/camera/scpm/ScpmListManager;

    invoke-virtual {v10, p1}, Lcom/samsung/android/camera/scpm/ScpmListManager;->getDefaultVersion(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_fb

    const-string/jumbo v9, "downloaded=true;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_fb

    :catch_f2
    move-exception p0

    goto/16 :goto_180

    :catch_f5
    move-exception p0

    goto/16 :goto_189

    :catch_f8
    move-exception p0

    goto/16 :goto_19d

    :cond_fb
    :goto_fb
    iget-object v9, v7, Lcom/samsung/android/camera/scpm/PolicyListVO;->extra:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_11f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "extra="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/samsung/android/camera/scpm/PolicyListVO;->extra:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v9, Lcom/samsung/android/camera/scpm/ScpmReceiver;->DEBUG:Z

    if-eqz v9, :cond_a2

    const-string v9, "CameraService/ScpmReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "notifyParamChange : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcom/samsung/android/camera/scpm/PolicyListVO;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a2

    :cond_14d
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    new-array p1, v2, [Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-interface {v1, p0, p1, v4}, Landroid/hardware/ICameraService;->notifyPkgListParamChange(I[Ljava/lang/String;[Ljava/lang/String;)V

    const-string p0, "CameraService/ScpmReceiver"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyParamChange : size is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17f
    .catch Landroid/os/RemoteException; {:try_start_9e .. :try_end_17f} :catch_f8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9e .. :try_end_17f} :catch_f5
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_17f} :catch_f2

    return v0

    :goto_180
    const-string p1, "CameraService/ScpmReceiver"

    const-string/jumbo v0, "Unknown exception occur "

    invoke-static {p0, v0, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :goto_189
    const-string p1, "CameraService/ScpmReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not parse package name "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :goto_19d
    const-string p1, "CameraService/ScpmReceiver"

    const-string v0, "Could not notify vision param change, remote exception: "

    invoke-static {v0, p0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    return v2

    :catchall_1a5
    move-exception p0

    :try_start_1a6
    monitor-exit v0
    :try_end_1a7
    .catchall {:try_start_1a6 .. :try_end_1a7} :catchall_1a5

    throw p0
.end method

.method public final declared-synchronized notifyParamChangeRetryLocked(ILcom/samsung/android/camera/scpm/ScpmList$PolicyType;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/camera/scpm/ScpmReceiver;->notifyParamChange(Lcom/samsung/android/camera/scpm/ScpmList$PolicyType;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_23

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move p1, v1

    :cond_9
    if-gtz p1, :cond_d

    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    const-string v0, "CameraService/ScpmReceiver"

    const-string v2, "Could not notify camera service of device state change, retrying..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    invoke-virtual {v0, v2, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x14

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_23

    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "com.samsung.android.scpm.policy.UPDATE.camera3rdpartylist-1857"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "CameraService/ScpmReceiver"

    if-eqz p2, :cond_1c

    const-string/jumbo p1, "SCPM update broadcast received!"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1c
    const-string/jumbo p2, "com.samsung.android.scpm.policy.CLEAR_DATA"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    const-string/jumbo p1, "SCPM clear broadcast received, policy updated 1 min later!"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/samsung/android/camera/scpm/ScpmHelper;

    iget-object p2, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmCallback:Lcom/samsung/android/camera/scpm/ScpmReceiver$1;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/camera/scpm/ScpmHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/camera/scpm/ScpmReceiver$1;)V

    iput-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mScpmHelper:Lcom/samsung/android/camera/scpm/ScpmHelper;

    iget-object p1, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/camera/scpm/ScpmReceiver;->mHandler:Landroid/os/Handler;

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_44
    return-void
.end method
