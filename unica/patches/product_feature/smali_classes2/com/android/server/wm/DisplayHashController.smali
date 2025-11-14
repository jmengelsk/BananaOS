.class public final Lcom/android/server/wm/DisplayHashController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDisplayHashAlgorithms:Ljava/util/Map;

.field public final mDisplayHashAlgorithmsLock:Ljava/lang/Object;

.field public mDisplayHashThrottlingEnabled:Z

.field public final mHandler:Lcom/android/server/wm/DisplayHashController$Handler;

.field public mIntervalBetweenRequestMillis:I

.field public final mIntervalBetweenRequestsLock:Ljava/lang/Object;

.field public mLastRequestTimeMs:J

.field public mLastRequestUid:I

.field public final mSalt:[B

.field public mServiceConnection:Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

.field public final mServiceConnectionLock:Ljava/lang/Object;

.field public final mTmpFloat9:[F

.field public final mTmpMatrix:Landroid/graphics/Matrix;

.field public final mTmpRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mServiceConnectionLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mDisplayHashAlgorithmsLock:Ljava/lang/Object;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mTmpFloat9:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mTmpRectF:Landroid/graphics/RectF;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mIntervalBetweenRequestsLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayHashController;->mIntervalBetweenRequestMillis:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayHashController;->mDisplayHashThrottlingEnabled:Z

    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/server/wm/DisplayHashController$Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/wm/DisplayHashController$Handler;-><init>(Lcom/android/server/wm/DisplayHashController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController;->mHandler:Lcom/android/server/wm/DisplayHashController$Handler;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController;->mSalt:[B

    return-void
.end method

.method public static sendDisplayHashError(ILandroid/os/RemoteCallback;)V
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DISPLAY_HASH_ERROR_CODE"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final calculateDisplayHashBoundsLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    if-nez p2, :cond_a

    goto :goto_5c

    :cond_a
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_5c

    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/server/wm/DisplayHashController;->mTmpFloat9:[F

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowState;->getTransformationMatrix([FLandroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/android/server/wm/DisplayHashController;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/server/wm/DisplayHashController;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController;->mTmpRectF:Landroid/graphics/RectF;

    iget p1, p0, Landroid/graphics/RectF;->left:F

    float-to-int p1, p1

    iget v0, p0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iget v1, p0, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-int p0, p0

    invoke-virtual {p3, p1, v0, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p2, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    if-eqz p0, :cond_56

    iget p1, p0, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->scale(F)V

    iget p1, p0, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int p1, p1

    iget p0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int p0, p0

    invoke-virtual {p3, p1, p0}, Landroid/graphics/Rect;->offset(II)V

    :cond_56
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5d

    :goto_5c
    return-void

    :cond_5d
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final connectAndRun(Lcom/android/server/wm/DisplayHashController$Command;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayHashController;->mHandler:Lcom/android/server/wm/DisplayHashController$Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayHashController;->mServiceConnection:Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

    if-nez v1, :cond_3b

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayHashController;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3b

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_34

    :try_start_24
    new-instance v1, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;-><init>(Lcom/android/server/wm/DisplayHashController;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayHashController;->mServiceConnection:Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

    iget-object v6, p0, Lcom/android/server/wm/DisplayHashController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_36

    :try_start_30
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3b

    :catchall_34
    move-exception p0

    goto :goto_65

    :catchall_36
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_3b
    :goto_3b
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController;->mServiceConnection:Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

    if-eqz p0, :cond_63

    iget-object v1, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mRemoteService:Landroid/service/displayhash/IDisplayHashingService;

    if-nez v1, :cond_55

    iget-object v1, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mQueuedCommands:Ljava/util/ArrayList;

    if-nez v1, :cond_4f

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mQueuedCommands:Ljava/util/ArrayList;

    :cond_4f
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mQueuedCommands:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catchall {:try_start_30 .. :try_end_54} :catchall_34

    goto :goto_63

    :cond_55
    :try_start_55
    invoke-interface {p1, v1}, Lcom/android/server/wm/DisplayHashController$Command;->run(Landroid/service/displayhash/IDisplayHashingService;)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_58} :catch_59
    .catchall {:try_start_55 .. :try_end_58} :catchall_34

    goto :goto_63

    :catch_59
    move-exception p0

    :try_start_5a
    const-string/jumbo p1, "exception calling service: "

    const-string/jumbo v1, "WindowManager"

    invoke-static {p1, p0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_63
    :goto_63
    monitor-exit v0

    return-void

    :goto_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_5a .. :try_end_66} :catchall_34

    throw p0
.end method

.method public final getDisplayHashAlgorithms()Ljava/util/Map;
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mDisplayHashAlgorithmsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayHashController;->mDisplayHashAlgorithms:Ljava/util/Map;

    if-eqz v1, :cond_b

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception p0

    goto :goto_4b

    :cond_b
    new-instance v1, Lcom/android/server/wm/DisplayHashController$SyncCommand;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayHashController$SyncCommand;-><init>(Lcom/android/server/wm/DisplayHashController;)V

    new-instance v2, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayHashController$SyncCommand;->run(Ljava/util/function/BiConsumer;)Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayHashController;->mDisplayHashAlgorithms:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/DisplayHashController;->mDisplayHashAlgorithms:Ljava/util/Map;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/service/displayhash/DisplayHashParams;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    :cond_47
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController;->mDisplayHashAlgorithms:Ljava/util/Map;

    monitor-exit v0

    return-object p0

    :goto_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_9

    throw p0
.end method

.method public final getServiceComponentName()Landroid/content/ComponentName;
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WindowManager"

    const/4 v2, 0x0

    if-nez v0, :cond_18

    const-string/jumbo p0, "no external services package!"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_16
    move-object p0, v2

    goto :goto_3f

    :cond_18
    const-string/jumbo v3, "android.service.displayhash.DisplayHashingService"

    invoke-static {v3, v0}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_23
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v5, 0x84

    invoke-virtual {p0, v0, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_70

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_38

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p0, :cond_3f

    :cond_38
    const-string/jumbo p0, "No valid components found."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_3f
    :goto_3f
    if-nez p0, :cond_42

    return-object v2

    :cond_42
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "android.permission.BIND_DISPLAY_HASHING_SERVICE"

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " requires permission android.permission.BIND_DISPLAY_HASHING_SERVICE"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_6f
    return-object v0

    :catchall_70
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
