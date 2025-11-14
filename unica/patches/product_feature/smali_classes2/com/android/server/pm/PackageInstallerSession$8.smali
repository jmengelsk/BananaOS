.class public final Lcom/android/server/pm/PackageInstallerSession$8;
.super Landroid/content/pm/IDataLoaderStatusListener$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;

.field public final synthetic val$addedFiles:Ljava/util/List;

.field public final synthetic val$manualStartAndDestroy:Z

.field public final synthetic val$params:Landroid/content/pm/DataLoaderParams;

.field public final synthetic val$removedFiles:Ljava/util/List;

.field public final synthetic val$systemDataLoader:Z


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;ZZLjava/util/List;Landroid/content/pm/DataLoaderParams;Ljava/util/List;)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$systemDataLoader:Z

    iput-boolean p3, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$manualStartAndDestroy:Z

    iput-object p4, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$addedFiles:Ljava/util/List;

    iput-object p5, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$params:Landroid/content/pm/DataLoaderParams;

    iput-object p6, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$removedFiles:Ljava/util/List;

    invoke-direct {p0}, Landroid/content/pm/IDataLoaderStatusListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStatusChanged(II)V
    .registers 9

    if-eqz p2, :cond_13e

    const/4 v0, 0x1

    if-eq p2, v0, :cond_13e

    const/4 v1, 0x5

    if-eq p2, v1, :cond_13e

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-boolean v2, v2, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v2, :cond_11e

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-boolean v2, v2, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    if-eqz v2, :cond_16

    goto/16 :goto_11e

    :cond_16
    const/4 v2, -0x1

    const/16 v3, -0x14

    packed-switch p2, :pswitch_data_140

    :pswitch_1c  #0x5
    goto/16 :goto_13e

    :pswitch_1e  #0x9
    :try_start_1e
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const-string p2, "DataLoader reported unrecoverable failure."

    invoke-direct {p1, v3, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    :catch_26
    move-exception p1

    goto/16 :goto_f4

    :catch_29
    move-exception p1

    goto/16 :goto_108

    :pswitch_2c  #0x8
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object p2, p1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getRemoteStatusReceiver()Landroid/content/IntentSender;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget v3, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string v4, "DataLoader unavailable"

    invoke-static {v3, p2, p1, v4}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$smsendPendingStreaming(ILandroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V

    return-void

    :pswitch_3e  #0x7
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iput-boolean v0, p2, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const-string v4, "Failed to prepare image."

    iget-object p2, p2, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v1, v3, v2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    iget-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$manualStartAndDestroy:Z

    if-eqz p2, :cond_13e

    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/pm/IDataLoader;->destroy(I)V

    return-void

    :pswitch_5d  #0x6
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iput-boolean v0, p2, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result p2

    if-eqz p2, :cond_7f

    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v3, p2, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result p2

    invoke-virtual {v3, p2}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8a

    :cond_7f
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object p2, p2, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :goto_8a
    iget-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$manualStartAndDestroy:Z

    if-eqz p2, :cond_13e

    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/pm/IDataLoader;->destroy(I)V

    return-void

    :pswitch_98  #0x4
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;

    move-result-object p2

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$addedFiles:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/pm/InstallationFileParcel;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/InstallationFileParcel;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$removedFiles:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-interface {p2, p1, v3, v4}, Landroid/content/pm/IDataLoader;->prepareImage(I[Landroid/content/pm/InstallationFileParcel;[Ljava/lang/String;)V

    return-void

    :pswitch_c2  #0x3
    iget-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$manualStartAndDestroy:Z

    if-eqz p2, :cond_13e

    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/pm/IDataLoader;->start(I)V

    return-void

    :pswitch_d0  #0x2
    iget-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$manualStartAndDestroy:Z

    if-eqz p2, :cond_13e

    new-instance p2, Landroid/content/pm/FileSystemControlParcel;

    invoke-direct {p2}, Landroid/content/pm/FileSystemControlParcel;-><init>()V

    new-instance v3, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$addedFiles:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;-><init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;)V

    iput-object v3, p2, Landroid/content/pm/FileSystemControlParcel;->callback:Landroid/content/pm/IPackageInstallerSessionFileSystemConnector;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v3, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$params:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v4}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v4

    invoke-interface {v3, p1, v4, p2, p0}, Landroid/content/pm/IDataLoader;->create(ILandroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/FileSystemControlParcel;Landroid/content/pm/IDataLoaderStatusListener;)V
    :try_end_f3
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1e .. :try_end_f3} :catch_29
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_f3} :catch_26

    return-void

    :goto_f4
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v0, p2, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageInstallerSession;->getRemoteStatusReceiver()Landroid/content/IntentSender;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$smsendPendingStreaming(ILandroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V

    goto :goto_13e

    :goto_108
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iput-boolean v0, p2, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iget p2, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {p1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_13e

    :cond_11e
    :goto_11e
    const/16 p1, 0x9

    if-eq p2, p1, :cond_123

    goto :goto_13e

    :cond_123
    iget-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession$8;->val$systemDataLoader:Z

    if-eqz p1, :cond_13e

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_134

    goto :goto_13e

    :cond_134
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13e
    :goto_13e
    return-void

    nop

    :pswitch_data_140
    .packed-switch 0x2
        :pswitch_d0  #00000002
        :pswitch_c2  #00000003
        :pswitch_98  #00000004
        :pswitch_1c  #00000005
        :pswitch_5d  #00000006
        :pswitch_3e  #00000007
        :pswitch_2c  #00000008
        :pswitch_1e  #00000009
    .end packed-switch
.end method
