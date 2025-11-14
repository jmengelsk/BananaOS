.class public final Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;
.super Ljava/lang/Thread;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    const-string p1, "BlocklistReader"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    const-string p1, "BlocklistUpdater"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    iget-object v2, v1, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mKey:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->$r8$clinit:I

    monitor-exit v0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    iput-object v1, v2, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;

    sget v1, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->$r8$clinit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    const-string/jumbo v3, "journal"

    const-string v4, ""

    iget-object v2, v2, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;

    invoke-static {v3, v4, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mPath:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, v3

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, v3

    goto :goto_0

    :catchall_2
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_0
    :try_start_4
    const-string/jumbo v2, "SAccessoryManager_CertBlocklister"

    const-string v3, "Failed to write list"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_1
    sget-object p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->mCertBlocklistListener:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    if-eqz p0, :cond_1

    new-instance v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$2;-><init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverAuthHandler:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :goto_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :cond_1
    :goto_3
    monitor-exit v0

    :goto_4
    return-void

    :goto_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;

    monitor-enter v0

    :try_start_6
    sget v1, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->$r8$clinit:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$1;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    sget-object v1, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->PUBKEY_PATH:Ljava/lang/String;

    invoke-static {v1}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->mBlocklist:Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception p0

    goto :goto_7

    :catch_2
    move-exception p0

    :try_start_8
    const-string/jumbo v1, "SAccessoryManager_CertBlocklister"

    const-string v2, "Failed to read list"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_3
    const-string/jumbo p0, "SAccessoryManager_CertBlocklister"

    const-string v1, "File does not exist"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    sget p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->$r8$clinit:I

    monitor-exit v0

    return-void

    :goto_7
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
