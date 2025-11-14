.class public final Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;
.super Landroid/os/IDumpstateListener$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static sNextId:I


# instance fields
.field public final mCaller:Landroid/util/Pair;

.field public final mConsentGranted:Z

.field public mDone:Z

.field public final mDs:Landroid/os/IDumpstate;

.field public final mId:I

.field public final mIsDeferredReport:Z

.field public final mKeepBugreportOnRetrieval:Z

.field public final mListener:Landroid/os/IDumpstateListener;

.field public mProgress:I

.field public final mReportFinishedFile:Z

.field public final synthetic this$0:Lcom/android/server/os/BugreportManagerServiceImpl;


# direct methods
.method public static -$$Nest$mdump(Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "DumpstateListener:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "  id: %d\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mCaller:Landroid/util/Pair;

    invoke-static {v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->callerToString(Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "  caller: %s\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-boolean v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mReportFinishedFile:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "  reports finished file: %b\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mProgress:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "  progress: %d\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-boolean p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDone:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "  done: %b\n"

    invoke-virtual {p1, v0, p0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/os/BugreportManagerServiceImpl;Landroid/os/IDumpstateListener;Landroid/os/IDumpstate;Landroid/util/Pair;ZZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    invoke-direct {p0}, Landroid/os/IDumpstateListener$Stub;-><init>()V

    sget p1, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->sNextId:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->sNextId:I

    iput p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mId:I

    iput-object p2, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    iput-object p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDs:Landroid/os/IDumpstate;

    iput-object p4, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mCaller:Landroid/util/Pair;

    iput-boolean p5, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mReportFinishedFile:Z

    iput-boolean p6, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mKeepBugreportOnRetrieval:Z

    iput-boolean p7, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mConsentGranted:Z

    iput-boolean p8, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mIsDeferredReport:Z

    :try_start_0
    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "BugreportManagerService"

    const-string/jumbo p2, "Unable to register Death Recipient for IDumpstate"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDone:Z

    if-nez v1, :cond_0

    const-string v1, "BugreportManagerService"

    const-string v2, "IDumpstate likely crashed. Notifying listener"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/os/IDumpstateListener;->onError(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDs:Landroid/os/IDumpstate;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final onError(I)V
    .locals 4

    const-string v0, "ErroCode: "

    const-string v1, "BugreportManagerService"

    const-string/jumbo v2, "onError(): %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    iget-object v1, v1, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->releaseItselfLocked()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->reportFinishedLocked(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    invoke-interface {p0, p1}, Landroid/os/IDumpstateListener;->onError(I)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onFinished(Ljava/lang/String;)V
    .locals 8

    const-string v0, "File: "

    const-string v1, "BugreportManagerService"

    const-string/jumbo v2, "onFinished(): %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    iget-object v1, v1, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->releaseItselfLocked()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->reportFinishedLocked(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-boolean v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mReportFinishedFile:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mCaller:Landroid/util/Pair;

    iget-boolean v2, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mKeepBugreportOnRetrieval:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->addBugreportMapping(Landroid/util/Pair;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v2, v0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFilesToPersist:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->writeBugreportDataLocked()V

    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportFileManager:Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;

    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mCaller:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mConsentGranted:Z

    iget-boolean v3, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mIsDeferredReport:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "Previous consent from package: "

    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v5, :cond_2

    goto :goto_4

    :cond_2
    iget-object v5, v0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    if-eqz v2, :cond_3

    :try_start_2
    iget-object v0, v0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mConsentGranted:Ljava/util/Map;

    new-instance v2, Landroid/util/Pair;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_3
    if-nez v3, :cond_5

    iget-object v2, v0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mConsentGranted:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v0, "BugreportManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " shouldhave been logged."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_4

    :cond_4
    iget-object v2, v0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mConsentGranted:Ljava/util/Map;

    new-instance v3, Landroid/util/Pair;

    iget-object v0, v0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mConsentGranted:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    invoke-interface {p0, p1}, Landroid/os/IDumpstateListener;->onFinished(Ljava/lang/String;)V

    return-void

    :goto_5
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public final onProgress(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mProgress:I

    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    invoke-interface {p0, p1}, Landroid/os/IDumpstateListener;->onProgress(I)V

    return-void
.end method

.method public final onScreenshotTaken(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    invoke-interface {p0, p1}, Landroid/os/IDumpstateListener;->onScreenshotTaken(Z)V

    return-void
.end method

.method public final onUiIntensiveBugreportDumpsFinished()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mListener:Landroid/os/IDumpstateListener;

    invoke-interface {p0}, Landroid/os/IDumpstateListener;->onUiIntensiveBugreportDumpsFinished()V

    return-void
.end method

.method public final releaseItselfLocked()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mDone:Z

    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    iget-object v1, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mCurrentDumpstateListener:Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    if-ne v1, p0, :cond_0

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mCurrentDumpstateListener:Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "releaseItselfLocked(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is finished, but current listener is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mCurrentDumpstateListener:Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BugreportManagerService"

    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final reportFinishedLocked(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->this$0:Lcom/android/server/os/BugreportManagerServiceImpl;

    iget v1, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mNumberFinishedBugreports:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mNumberFinishedBugreports:I

    iget-object v0, v0, Lcom/android/server/os/BugreportManagerServiceImpl;->mFinishedBugreports:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Caller: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mCaller:Landroid/util/Pair;

    invoke-static {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->callerToString(Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DumpstateListener[id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;->mProgress:I

    const-string/jumbo v1, "]"

    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
