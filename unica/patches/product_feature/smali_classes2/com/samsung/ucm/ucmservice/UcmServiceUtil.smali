.class public abstract Lcom/samsung/ucm/ucmservice/UcmServiceUtil;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# direct methods
.method public static isOrganizationOwnedProfile(Landroid/content/Context;)Z
    .registers 2

    const-string/jumbo v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result p0

    return p0
.end method

.method public static readIntFromFile(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_23
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_14

    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_16

    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_12} :catch_23
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_14

    move-object v0, p0

    goto :goto_23

    :catch_14
    move-exception p0

    goto :goto_20

    :catchall_16
    move-exception p0

    :try_start_17
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v1

    :try_start_1c
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1f
    throw p0
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_20} :catch_23
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_20} :catch_14

    :goto_20
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :catch_23
    :goto_23
    :try_start_23
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_27
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_27} :catch_28
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_27} :catch_28

    return p0

    :catch_28
    const/4 p0, 0x0

    return p0
.end method

.method public static saveDataToFile(Ljava/lang/String;[B)Z
    .registers 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs/tz_esecomm"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    const-string v0, "/efs/sec_efs/tz_esecomm/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->saveDataToFile$1(Ljava/lang/String;[B)Z

    move-result p0

    return p0
.end method

.method public static saveDataToFile$1(Ljava/lang/String;[B)Z
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const-string/jumbo v1, "UcmServiceUtil"

    if-eqz p0, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_1a

    const-string/jumbo p0, "failed to delete the existing file"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :try_start_1a
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_27

    :try_start_1f
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_29

    :try_start_22
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_27

    const/4 p0, 0x1

    return p0

    :catch_27
    move-exception p0

    goto :goto_33

    :catchall_29
    move-exception p1

    :try_start_2a
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception p0

    :try_start_2f
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_32
    throw p1
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_33} :catch_27

    :goto_33
    const-string/jumbo p1, "saveDataToFile. write. IOException."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 p0, 0x0

    return p0
.end method

.method public static updateUserIdForWpcSystemAndVpnProcess(Landroid/content/Context;II)I
    .registers 3

    if-nez p1, :cond_23

    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->isOrganizationOwnedProfile(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_23

    :cond_9
    const/16 p0, 0x3e8

    if-eq p2, p0, :cond_11

    const/16 p0, 0x3f8

    if-ne p2, p0, :cond_23

    :cond_11
    const-string/jumbo p0, "UcmServiceUtil"

    const-string/jumbo p1, "updateUserIdForWpcSystemAndVpnProcess. uid is SYSTEM or VPN. update!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->$r8$clinit:I

    sget-object p0, Lcom/android/server/enterprise/EnterpriseService;->sEdmsInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->getOrganizationOwnedProfileUserId()I

    move-result p0

    return p0

    :cond_23
    :goto_23
    return p1
.end method
