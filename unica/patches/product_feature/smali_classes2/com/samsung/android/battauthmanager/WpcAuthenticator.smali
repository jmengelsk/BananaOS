.class public final Lcom/samsung/android/battauthmanager/WpcAuthenticator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public certChainHash:[B

.field public final certChainList:Ljava/util/ArrayList;

.field public final mAuthWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

.field public final mQiCertificateValidator:Lcom/samsung/android/battauthmanager/QiCertificateValidator;

.field public final mWpcAuthHandler:Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

.field public productPublicKey:[B

.field public requestChallenge:[B

.field public status:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

.field public wholeCertChainLength:I


# direct methods
.method public static -$$Nest$msetAuthPass(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Z)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v2, v1, [B

    aput-byte v1, v2, v0

    new-array v1, v1, [B

    const/4 v3, 0x2

    aput-byte v3, v1, v0

    iget-object v3, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    const-string v4, "BattAuthManager_WpcAuthenticator"

    if-eqz p1, :cond_8

    invoke-virtual {v3, v2}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->writeDataToBattMisc([B)I

    const-string v1, "/efs/Battery/qi_digests/cached_digests"

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainHash:[B

    invoke-virtual {v2, v3}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->productPublicKey:[B

    invoke-virtual {v2, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-array v5, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v5}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-nez v5, :cond_0

    new-array v5, v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v2, v5}, Ljava/nio/file/Files;->createFile(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    const-string/jumbo v5, "saveDigest, created empty file"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_7

    :cond_0
    :goto_0
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v2, v5}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_2
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/16 v6, 0x64

    if-le p0, v6, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v3, p0, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    const-string/jumbo p0, "saveDigest, trimming lines"

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-static {v2}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {v2, p0, v0}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_4
    if-eqz p0, :cond_5

    :try_start_4
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5
    const/16 p0, 0x1b0

    :try_start_5
    invoke-static {v1, p0}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    const/16 p0, 0x3e8

    invoke-static {v1, p0, p0}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_8

    :catch_1
    move-exception p0

    const-string/jumbo v0, "setPermission: ErrnoException"

    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :goto_3
    if-eqz p0, :cond_6

    :try_start_6
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_5
    if-eqz v5, :cond_7

    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    throw p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :goto_7
    const-string/jumbo v0, "saveDigest"

    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :cond_8
    invoke-virtual {v3, v1}, Lcom/samsung/android/battauthmanager/BattAuthHelper;->writeDataToBattMisc([B)I

    :goto_8
    const-string/jumbo p0, "setAuthPass, result : "

    invoke-static {p0, v4, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->certChainHash:[B

    iput-object v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->productPublicKey:[B

    iput-object v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->requestChallenge:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->wholeCertChainLength:I

    sget-object v1, Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;->STATUS_NONE:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    iput-object v1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->status:Lcom/samsung/android/battauthmanager/WpcAuthenticator$AuthStatus;

    new-instance v1, Lcom/samsung/android/battauthmanager/BattAuthHelper;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mBattAuthHelper:Lcom/samsung/android/battauthmanager/BattAuthHelper;

    new-instance v1, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;-><init>(Lcom/samsung/android/battauthmanager/WpcAuthenticator;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mWpcAuthHandler:Lcom/samsung/android/battauthmanager/WpcAuthenticator$WpcAuthHandler;

    new-instance p2, Lcom/samsung/android/battauthmanager/QiCertificateValidator;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mQiCertificateValidator:Lcom/samsung/android/battauthmanager/QiCertificateValidator;

    new-instance p2, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-direct {p2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;

    invoke-direct {v1, p0}, Lcom/samsung/android/battauthmanager/WpcAuthenticator$BatteryEventReceiver;-><init>(Lcom/samsung/android/battauthmanager/WpcAuthenticator;)V

    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    const-string v1, "BattAuthManager_WpcAuthenticator"

    invoke-virtual {p1, p2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/battauthmanager/WpcAuthenticator;->mAuthWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method public static byteArrayToString([B)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length v1, p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "len("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02X "

    const/4 v5, 0x1

    invoke-static {v4, v3, v0, v2, v5}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string/jumbo p0, "null"

    return-object p0
.end method

.method public static removeDigests()V
    .locals 4

    const-string v0, "BattAuthManager_WpcAuthenticator"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "/efs/Battery/qi_digests/"

    invoke-static {v2, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    :try_start_0
    new-instance v2, Lcom/samsung/android/battauthmanager/WpcAuthenticator$1;

    invoke-direct {v2, v1}, Lcom/samsung/android/battauthmanager/WpcAuthenticator$1;-><init>(Ljava/nio/file/Path;)V

    invoke-static {v1, v2}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    const-string/jumbo v1, "removeDigests"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to delete removeDigests: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
