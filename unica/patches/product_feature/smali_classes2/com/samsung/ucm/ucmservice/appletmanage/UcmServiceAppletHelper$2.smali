.class public final Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;->this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 12

    const-string/jumbo p1, "handleCcmRet. error [-1]"

    const-string/jumbo v0, "handleCcm: Exception "

    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs"

    const-string/jumbo v3, "ucm_delete_applet_lccmscript"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string/jumbo v4, "UcmServiceAppletHelper"

    if-nez v1, :cond_0

    const-string/jumbo p0, "onServiceConnected, but file doesn\'t exist"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, "getByteArray read: "

    const-string/jumbo v5, "getAppletDeletionLccmScript"

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v5, :cond_1

    move-object v8, v7

    goto :goto_2

    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v5, v8

    new-array v8, v5, [B

    :try_start_0
    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8, v6, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    if-nez v8, :cond_2

    const-string/jumbo p0, "onServiceConnected, but script is null"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_5
    sget v1, Lcom/skms/android/agent/CcmInterface$Stub;->$r8$clinit:I

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    const-string/jumbo v1, "com.skms.android.agent.CcmInterface"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v2, v1, Lcom/skms/android/agent/CcmInterface;

    if-eqz v2, :cond_4

    move-object v7, v1

    check-cast v7, Lcom/skms/android/agent/CcmInterface;

    goto :goto_3

    :cond_4
    new-instance v7, Lcom/skms/android/agent/CcmInterface$Stub$Proxy;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object p2, v7, Lcom/skms/android/agent/CcmInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    :goto_3
    if-nez v7, :cond_5

    const-string/jumbo p2, "onServiceConnected, but CcmInterface is null"

    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object p2, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;->this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    iget-object p2, p2, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;->this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->retryRunLccmAfterSleep()V

    goto :goto_6

    :catchall_2
    move-exception p2

    goto :goto_7

    :cond_5
    :try_start_6
    array-length p2, v8

    check-cast v7, Lcom/skms/android/agent/CcmInterface$Stub$Proxy;

    invoke-virtual {v7, p2, v8}, Lcom/skms/android/agent/CcmInterface$Stub$Proxy;->handleCcm(I[B)I

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catch_1
    move-exception p2

    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/4 p1, -0x1

    :goto_5
    iget-object p2, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;->this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    iget-object p2, p2, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    if-nez p1, :cond_6

    const-string/jumbo p1, "handleCcmRet: clearAppletInfo"

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->clearAppletInfo()V

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;->this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    iput-boolean v6, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mIsLccmScriptRunning:Z

    const-string/jumbo p0, "Running Lccm Script Completed"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_6
    const-string/jumbo p2, "handleCcmRet. error ["

    const-string/jumbo v0, "]"

    invoke-static {p1, p2, v0, v4}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :goto_6
    return-void

    :goto_7
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;->this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;->this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->retryRunLccmAfterSleep()V

    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
