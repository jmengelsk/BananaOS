.class public final Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;->this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 15

    const-string/jumbo p1, "handleCcmRet. error [-1]"

    const-string/jumbo v0, "handleCcm: Exception "

    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs"

    const-string/jumbo v3, "ucm_delete_applet_lccmscript"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string/jumbo v4, "UcmServiceAppletHelper"

    if-nez v1, :cond_20

    const-string/jumbo p0, "onServiceConnected, but file doesn\'t exist"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    const-string/jumbo v1, "getByteArray read: "

    const-string/jumbo v5, "getAppletDeletionLccmScript"

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v5, :cond_38

    move-object v8, v7

    goto :goto_79

    :cond_38
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v5, v8

    new-array v8, v5, [B

    :try_start_44
    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_53} :catch_6a

    :try_start_53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8, v6, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/EFSProperties;->log(Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_53 .. :try_end_66} :catchall_6c

    :try_start_66
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_79

    :catch_6a
    move-exception v1

    goto :goto_76

    :catchall_6c
    move-exception v1

    :try_start_6d
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_71

    goto :goto_75

    :catchall_71
    move-exception v2

    :try_start_72
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_75
    throw v1
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_76} :catch_6a

    :goto_76
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_79
    if-nez v8, :cond_82

    const-string/jumbo p0, "onServiceConnected, but script is null"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_82
    :try_start_82
    sget v1, Lcom/skms/android/agent/CcmInterface$Stub;->$r8$clinit:I

    if-nez p2, :cond_87

    goto :goto_9f

    :cond_87
    const-string/jumbo v1, "com.skms.android.agent.CcmInterface"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_98

    instance-of v2, v1, Lcom/skms/android/agent/CcmInterface;

    if-eqz v2, :cond_98

    move-object v7, v1

    check-cast v7, Lcom/skms/android/agent/CcmInterface;

    goto :goto_9f

    :cond_98
    new-instance v7, Lcom/skms/android/agent/CcmInterface$Stub$Proxy;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object p2, v7, Lcom/skms/android/agent/CcmInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    :goto_9f
    if-nez v7, :cond_b9

    const-string/jumbo p2, "onServiceConnected, but CcmInterface is null"

    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_82 .. :try_end_a7} :catchall_b7

    iget-object p2, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;->this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    iget-object p2, p2, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b1
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;->this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->retryRunLccmAfterSleep()V

    goto :goto_100

    :catchall_b7
    move-exception p2

    goto :goto_101

    :cond_b9
    :try_start_b9
    array-length p2, v8

    check-cast v7, Lcom/skms/android/agent/CcmInterface$Stub$Proxy;

    invoke-virtual {v7, p2, v8}, Lcom/skms/android/agent/CcmInterface$Stub$Proxy;->handleCcm(I[B)I

    move-result p1
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_c0} :catch_c1
    .catchall {:try_start_b9 .. :try_end_c0} :catchall_b7

    goto :goto_d9

    :catch_c1
    move-exception p2

    :try_start_c2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_d8
    .catchall {:try_start_c2 .. :try_end_d8} :catchall_b7

    const/4 p1, -0x1

    :goto_d9
    iget-object p2, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;->this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    iget-object p2, p2, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    if-nez p1, :cond_f6

    const-string/jumbo p1, "handleCcmRet: clearAppletInfo"

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->clearAppletInfo()V

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;->this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    iput-boolean v6, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mIsLccmScriptRunning:Z

    const-string/jumbo p0, "Running Lccm Script Completed"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_100

    :cond_f6
    const-string/jumbo p2, "handleCcmRet. error ["

    const-string/jumbo v0, "]"

    invoke-static {p1, p2, v0, v4}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b1

    :goto_100
    return-void

    :goto_101
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;->this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper$2;->this$0:Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;

    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/appletmanage/UcmServiceAppletHelper;->retryRunLccmAfterSleep()V

    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
