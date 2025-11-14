.class public final Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;
.super Landroid/database/ContentObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final VT_CAMERA_SETTING_AUTHORITY_URI:Landroid/net/Uri;


# instance fields
.field public final mAllowedPackageList:Ljava/util/List;

.field public final mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

.field public final mContext:Landroid/content/Context;

.field public final mListMapLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "content://com.samsung.android.vtcamerasettings.VsetInfoProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->VT_CAMERA_SETTING_AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mListMapLock:Ljava/lang/Object;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mAllowedPackageList:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    iput-object p2, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .registers 8

    const-string v0, "\t\tTotal # of allow list: "

    iget-object v1, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mListMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    const-string v2, "\n\tDump of Request Injector Allow List"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mAllowedPackageList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mAllowedPackageList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2a
    if-ge v2, v0, :cond_4b

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2a

    :catchall_49
    move-exception p0

    goto :goto_4d

    :cond_4b
    monitor-exit v1

    return-void

    :goto_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_49

    throw p0
.end method

.method public final onChange(Z)V
    .registers 9

    const-string/jumbo v0, "VtCameraProviderObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "VtCameraProviderObserver.onChange("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "VtCameraProviderObserver.onChange("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mListMapLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_36
    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mAllowedPackageList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_d1

    :try_start_3d
    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->VT_CAMERA_SETTING_AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "AllowedAppInfo"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_53} :catch_d4
    .catchall {:try_start_3d .. :try_end_53} :catchall_d1

    if-eqz v1, :cond_d6

    :try_start_55
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_d6

    :cond_5b
    :goto_5b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_d6

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5b

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_74

    goto :goto_5b

    :cond_74
    const-string/jumbo v3, "VtCameraProviderObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") to allow list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onChange: Adding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") to allow list"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mAllowedPackageList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c3
    .catchall {:try_start_55 .. :try_end_c3} :catchall_c6

    goto :goto_5b

    :goto_c4
    move-object v2, v0

    goto :goto_c8

    :catchall_c6
    move-exception v0

    goto :goto_c4

    :goto_c8
    :try_start_c8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_cc

    goto :goto_d0

    :catchall_cc
    move-exception v0

    :try_start_cd
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d0
    throw v2

    :catchall_d1
    move-exception v0

    move-object p0, v0

    goto :goto_101

    :catch_d4
    move-exception v0

    goto :goto_dc

    :cond_d6
    if-eqz v1, :cond_fc

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_db} :catch_d4
    .catchall {:try_start_cd .. :try_end_db} :catchall_d1

    goto :goto_fc

    :goto_dc
    :try_start_dc
    const-string/jumbo v1, "VtCameraProviderObserver"

    const-string/jumbo v2, "Unable to query from VT Camera setting provider"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v1, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to query from VT Camera setting provider, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    :cond_fc
    :goto_fc
    monitor-exit p1
    :try_end_fd
    .catchall {:try_start_dc .. :try_end_fd} :catchall_d1

    invoke-virtual {p0}, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->updateCameraService()V

    return-void

    :goto_101
    :try_start_101
    monitor-exit p1
    :try_end_102
    .catchall {:try_start_101 .. :try_end_102} :catchall_d1

    throw p0
.end method

.method public final updateCameraService()V
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-nez v0, :cond_30

    add-int/lit8 v0, v2, 0x1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_21

    const-string/jumbo p0, "VtCameraProviderObserver"

    const-string/jumbo v0, "Native camera service not available."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    const-string/jumbo v0, "Native camera service not available."

    invoke-static {p0, v0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    return-void

    :cond_21
    const-wide/16 v2, 0x64

    :try_start_23
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_26

    :catch_26
    iget-object v2, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mCameraServiceWorker:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-virtual {v2}, Lcom/samsung/android/camera/CameraServiceWorker;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v2

    move-object v4, v2

    move v2, v0

    move-object v0, v4

    goto :goto_8

    :cond_30
    iget-object v2, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mListMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_33
    iget-object p0, p0, Lcom/samsung/android/camera/requestinjector/VtCameraProviderObserver;->mAllowedPackageList:Ljava/util/List;

    new-array v1, v1, [Ljava/lang/String;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Landroid/hardware/ICameraService;->updateRequestInjectorAllowedList([Ljava/lang/String;)V

    const-string/jumbo p0, "VtCameraProviderObserver"

    const-string/jumbo v0, "Updating allowed package list for request injector is done"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    const-string/jumbo v0, "Updating allowed package list for request injector is done"

    invoke-static {p0, v0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_53} :catch_56
    .catchall {:try_start_33 .. :try_end_53} :catchall_54

    goto :goto_75

    :catchall_54
    move-exception p0

    goto :goto_77

    :catch_56
    move-exception p0

    :try_start_57
    const-string/jumbo v0, "VtCameraProviderObserver"

    const-string v1, "Fail to update allowed package list for Request Injector"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/samsung/android/camera/Logger$ID;->REQUEST_INJECTOR_SERVICE:Lcom/samsung/android/camera/Logger$ID;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to update allowed package list for Request Injector"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/camera/Logger;->log(Lcom/samsung/android/camera/Logger$ID;Ljava/lang/String;)V

    :goto_75
    monitor-exit v2

    return-void

    :goto_77
    monitor-exit v2
    :try_end_78
    .catchall {:try_start_57 .. :try_end_78} :catchall_54

    throw p0
.end method
