.class public final Lcom/android/server/spay/TAController;
.super Landroid/spay/ITAController$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public SET_QSEE_SECURE_UI:Z

.field public mContext:Landroid/content/Context;

.field public mNative:Lcom/android/server/spay/PaymentTZNative;

.field public mTAId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    return-void
.end method

.method public static makeSysCallInternal(I)Z
    .registers 10

    const-string v0, "Error writting \""

    const-string v1, "/sys/class/mstldo/mst_drv/transmit"

    const-string v2, "1"

    const-string v3, "0"

    const-string v4, "/dev/mst_ctrl"

    const-string v5, "/sys/devices/system/sec_os_ctrl/migrate_os"

    const/4 v6, 0x0

    const-string/jumbo v7, "PaymentManagerService"

    packed-switch p0, :pswitch_data_c6

    const-string/jumbo v0, "UNKNOWN Command ID: "

    invoke-static {p0, v0, v7}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v6

    :pswitch_1a  #0x6
    const-string v2, "L0"

    :goto_1c
    move-object v1, v5

    goto :goto_26

    :pswitch_1e  #0x5
    const-string/jumbo v2, "b0"

    goto :goto_1c

    :pswitch_22  #0x4
    move-object v2, v3

    :pswitch_23  #0x3
    move-object v1, v4

    goto :goto_26

    :pswitch_25  #0x2
    move-object v2, v3

    :goto_26
    :pswitch_26  #0x1
    sget-boolean p0, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz p0, :cond_44

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Writting \""

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" to -> "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    const/4 p0, 0x0

    :try_start_45
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileWriter;

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_53} :catch_7e
    .catchall {:try_start_45 .. :try_end_53} :catchall_7a

    :try_start_53
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_58} :catch_75
    .catchall {:try_start_53 .. :try_end_58} :catchall_71

    :try_start_58
    invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_6f
    .catchall {:try_start_58 .. :try_end_5b} :catchall_6d

    :try_start_5b
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_63

    :catch_5f
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_63
    :try_start_63
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_6b

    :catch_67
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_6b
    const/4 p0, 0x1

    return p0

    :catchall_6d
    move-exception p0

    goto :goto_b1

    :catch_6f
    move-exception p0

    goto :goto_82

    :catchall_71
    move-exception v0

    move-object v3, p0

    :goto_73
    move-object p0, v0

    goto :goto_b1

    :catch_75
    move-exception v3

    move-object v8, v3

    move-object v3, p0

    move-object p0, v8

    goto :goto_82

    :catchall_7a
    move-exception v0

    move-object v3, p0

    move-object v4, v3

    goto :goto_73

    :catch_7e
    move-exception v3

    move-object v4, p0

    move-object p0, v3

    move-object v3, v4

    :goto_82
    :try_start_82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" to file -> "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9c
    .catchall {:try_start_82 .. :try_end_9c} :catchall_6d

    if-eqz v3, :cond_a6

    :try_start_9e
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a2

    goto :goto_a6

    :catch_a2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a6
    :goto_a6
    if-eqz v4, :cond_b0

    :try_start_a8
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ac

    goto :goto_b0

    :catch_ac
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_b0
    :goto_b0
    return v6

    :goto_b1
    if-eqz v3, :cond_bb

    :try_start_b3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b7

    goto :goto_bb

    :catch_b7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_bb
    :goto_bb
    if-eqz v4, :cond_c5

    :try_start_bd
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c1

    goto :goto_c5

    :catch_c1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_c5
    :goto_c5
    throw p0

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_26  #00000001
        :pswitch_25  #00000002
        :pswitch_23  #00000003
        :pswitch_22  #00000004
        :pswitch_1e  #00000005
        :pswitch_1a  #00000006
    .end packed-switch
.end method


# virtual methods
.method public final checkCertInfo(Ljava/util/List;)Landroid/spay/CertInfo;
    .registers 6

    const-string/jumbo p0, "checkCertInfo"

    invoke-static {p0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz p0, :cond_13

    const-string/jumbo p0, "PaymentManagerService"

    const-string/jumbo v0, "TAController::checkCertInfo: Lets fetch them if exist"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    new-instance p0, Landroid/spay/CertInfo;

    invoke-direct {p0}, Landroid/spay/CertInfo;-><init>()V

    const/4 v0, 0x0

    :goto_19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/spay/Utils;->readFile(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, p0, Landroid/spay/CertInfo;->mCerts:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_31
    return-object p0
.end method

.method public final clearDeviceCertificates(Ljava/lang/String;)Z
    .registers 3

    const-string/jumbo p0, "clearDeviceCertificates"

    invoke-static {p0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "TAController::clearDeviceCertificates: Deleting the device certificates for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "PaymentManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/spay/Utils;->deleteDirectory(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public final loadTA(Landroid/os/ParcelFileDescriptor;JJ)Z
    .registers 13

    const-string/jumbo v0, "TA fd="

    monitor-enter p0

    :try_start_4
    const-string/jumbo v1, "loadTA"

    invoke-static {v1}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v1, :cond_1b

    const-string/jumbo v2, "PaymentManagerService"

    const-string/jumbo v3, "TAController::loadTA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :catchall_18
    move-exception v0

    move-object p1, v0

    goto :goto_69

    :cond_1b
    :goto_1b
    if-nez p1, :cond_20

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_20
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    if-eqz v1, :cond_48

    const-string/jumbo v1, "PaymentManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " offset="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " size="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_4 .. :try_end_48} :catchall_18

    :cond_48
    :try_start_48
    iget-object v0, p0, Lcom/android/server/spay/TAController;->mNative:Lcom/android/server/spay/PaymentTZNative;

    iget-object v1, p0, Lcom/android/server/spay/TAController;->mContext:Landroid/content/Context;

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/spay/PaymentTZNative;->loadTA(Landroid/content/Context;IJJ)Z

    move-result p2
    :try_end_52
    .catchall {:try_start_48 .. :try_end_52} :catchall_5d

    :try_start_52
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56
    .catchall {:try_start_52 .. :try_end_55} :catchall_18

    goto :goto_5b

    :catch_56
    move-exception v0

    move-object p1, v0

    :try_start_58
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_18

    return p2

    :catchall_5d
    move-exception v0

    move-object p2, v0

    :try_start_5f
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63
    .catchall {:try_start_5f .. :try_end_62} :catchall_18

    goto :goto_68

    :catch_63
    move-exception v0

    move-object p1, v0

    :try_start_65
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_68
    throw p2

    :goto_69
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_65 .. :try_end_6a} :catchall_18

    throw p1
.end method

.method public final makeSystemCall(I)Z
    .registers 10

    const-string/jumbo p0, "makeSystemCall: Successful, end time : "

    const-string/jumbo v0, "makesystemcall - start time: "

    sget-boolean v1, Lcom/android/server/spay/TAController;->DEBUG:Z

    const-string/jumbo v2, "PaymentManagerService"

    if-eqz v1, :cond_13

    const-string/jumbo v3, "entered makeSystemCall in TAController - System Server process"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const-string/jumbo v3, "makeSystemCall"

    invoke-static {v3}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, " ms"

    if-eqz v1, :cond_37

    :try_start_1e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    :catch_35
    move-exception p0

    goto :goto_5e

    :cond_37
    :goto_37
    invoke-static {p1}, Lcom/android/server/spay/TAController;->makeSysCallInternal(I)Z

    move-result p1

    if-nez p1, :cond_44

    const-string/jumbo p0, "makeSystemCall: failed to make system call"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_44
    if-eqz v1, :cond_5c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_5c} :catch_35

    :cond_5c
    const/4 p0, 0x1

    return p0

    :goto_5e
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v3
.end method

.method public final processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;
    .registers 5

    const-string/jumbo v0, "TAController::processTACommand: request = "

    invoke-virtual {p0}, Landroid/spay/ITAController$Stub;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_54

    monitor-enter p0

    :try_start_a
    const-string/jumbo v1, "processTACommand"

    invoke-static {v1}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v1, :cond_3d

    const-string/jumbo v1, "PaymentManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; request.mCommandId = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/spay/TACommandRequest;->mCommandId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; this.mTAId = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/spay/TAController;->mTAId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    :catchall_3b
    move-exception p1

    goto :goto_52

    :cond_3d
    :goto_3d
    iget v0, p1, Landroid/spay/TACommandRequest;->mCommandId:I

    const v1, 0x90190

    if-ne v0, v1, :cond_47

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    :cond_47
    iget-object v0, p0, Lcom/android/server/spay/TAController;->mNative:Lcom/android/server/spay/PaymentTZNative;

    invoke-virtual {v0, p1}, Lcom/android/server/spay/PaymentTZNative;->processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    monitor-exit p0

    return-object p1

    :goto_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_a .. :try_end_53} :catchall_3b

    throw p1

    :cond_54
    const-string/jumbo p0, "PaymentManagerService"

    const-string/jumbo p1, "binder for cmd is died"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final unloadTA()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "unloadTA"

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v0, :cond_17

    const-string/jumbo v0, "PaymentManagerService"

    const-string/jumbo v1, "TAController::unloadTA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :catchall_15
    move-exception v0

    goto :goto_21

    :cond_17
    :goto_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    iget-object v0, p0, Lcom/android/server/spay/TAController;->mNative:Lcom/android/server/spay/PaymentTZNative;

    invoke-virtual {v0}, Lcom/android/server/spay/PaymentTZNative;->unloadTA()V

    monitor-exit p0

    return-void

    :goto_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_15

    throw v0
.end method
