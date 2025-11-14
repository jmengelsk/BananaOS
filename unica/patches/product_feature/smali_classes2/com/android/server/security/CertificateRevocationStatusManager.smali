.class public Lcom/android/server/security/CertificateRevocationStatusManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field static final MAX_OFFLINE_REVOCATION_LIST_AGE_DAYS:I = 0x1e

.field static final NUM_HOURS_BEFORE_NEXT_FETCH:I = 0x18

.field public static final sFileLock:Ljava/lang/Object;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mShouldScheduleJob:Z

.field public final mTestRemoteRevocationListUrl:Ljava/lang/String;

.field public final mTestStoredRevocationListFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/security/CertificateRevocationStatusManager;->sFileLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v0, v1}, Lcom/android/server/security/CertificateRevocationStatusManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mTestRemoteRevocationListUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mTestStoredRevocationListFile:Ljava/io/File;

    iput-boolean p4, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mShouldScheduleJob:Z

    return-void
.end method

.method public static checkRevocationStatus(Lorg/json/JSONObject;Ljava/util/List;)V
    .registers 6

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_24

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_7

    :cond_18
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p1, "Certificate has been revoked: "

    invoke-static {p1, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    return-void
.end method


# virtual methods
.method public final fetchRemoteRevocationListBytes()[B
    .registers 4

    iget-object v0, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mTestRemoteRevocationListUrl:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_12

    :cond_5
    iget-object p0, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1041087

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_12
    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_45

    :try_start_1a
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/net/MalformedURLException; {:try_start_1a .. :try_end_1f} :catch_37

    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    :try_start_23
    invoke-virtual {p0}, Ljava/io/InputStream;->readAllBytes()[B

    move-result-object v0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_2b

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_2b
    move-exception v0

    if-eqz p0, :cond_36

    :try_start_2e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_36

    :catchall_32
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_36
    :goto_36
    throw v0

    :catch_37
    move-exception p0

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v2, "Unable to parse the URL "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_45
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string/jumbo v0, "R.string.vendor_required_attestation_revocation_list_url is empty."

    invoke-direct {p0, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getStoredRevocationList()Lorg/json/JSONObject;
    .registers 6

    iget-object p0, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mTestStoredRevocationListFile:Ljava/io/File;

    if-eqz p0, :cond_5

    goto :goto_11

    :cond_5
    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "certificate_revocation_list.json"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_11
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->minusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {}, Ljava/time/OffsetDateTime;->now()Ljava/time/OffsetDateTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/OffsetDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Ljava/time/LocalDateTime;->ofEpochSecond(JILjava/time/ZoneOffset;)Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    if-nez v0, :cond_6d

    sget-object v0, Lcom/android/server/security/CertificateRevocationStatusManager;->sFileLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3e
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_5f

    :try_start_43
    invoke-virtual {v1}, Ljava/io/FileInputStream;->readAllBytes()[B

    move-result-object p0

    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "entries"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_5a
    .catchall {:try_start_43 .. :try_end_5a} :catchall_61

    :try_start_5a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_5f

    return-object p0

    :catchall_5f
    move-exception p0

    goto :goto_6b

    :catchall_61
    move-exception p0

    :try_start_62
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_6a

    :catchall_66
    move-exception v1

    :try_start_67
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6a
    throw p0

    :goto_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_67 .. :try_end_6c} :catchall_5f

    throw p0

    :cond_6d
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string/jumbo v0, "Offline copy does not exist or has expired."

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final silentlyStoreRevocationList([B)V
    .registers 6

    sget-object v0, Lcom/android/server/security/CertificateRevocationStatusManager;->sFileLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/util/AtomicFile;

    iget-object p0, p0, Lcom/android/server/security/CertificateRevocationStatusManager;->mTestStoredRevocationListFile:Ljava/io/File;

    if-eqz p0, :cond_a

    goto :goto_16

    :cond_a
    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "certificate_revocation_list.json"

    invoke-direct {p0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_16
    invoke-direct {v1, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2c

    :try_start_19
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_30
    .catchall {:try_start_19 .. :try_end_1d} :catchall_2c

    :try_start_1d
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1, p0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    const-string p1, "AVF_CRL"

    const-string/jumbo v2, "Successfully stored revocation list."

    invoke-static {p1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2b} :catch_2e
    .catchall {:try_start_1d .. :try_end_2b} :catchall_2c

    goto :goto_3e

    :catchall_2c
    move-exception p0

    goto :goto_40

    :catch_2e
    move-exception p1

    goto :goto_32

    :catch_30
    move-exception p1

    const/4 p0, 0x0

    :goto_32
    :try_start_32
    const-string v2, "AVF_CRL"

    const-string v3, "Failed to store the certificate revocation list."

    invoke-static {v2, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p0, :cond_3e

    invoke-virtual {v1, p0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_3e
    :goto_3e
    monitor-exit v0

    return-void

    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_32 .. :try_end_41} :catchall_2c

    throw p0
.end method
