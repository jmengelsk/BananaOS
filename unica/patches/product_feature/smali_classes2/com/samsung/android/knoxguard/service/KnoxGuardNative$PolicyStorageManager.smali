.class public Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static DATA_READ_ERROR:I = -0x3

.field public static FILE_MISSING_CANNOT_CREATE:I = -0x2

.field public static final KGTA_POLICY_PATH:Ljava/lang/String; = "/efs/kgtapolicy"

.field public static PARSING_ERROR:I = -0x4

.field public static STORAGE_ERROR:I = -0x1

.field public static SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "KGTAPolicy"

.field public static final USE_TA_STORAGE:Z = true

.field public static instance:Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;


# instance fields
.field public ans_policy:Ljava/lang/String;

.field public ans_signature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
    .locals 2

    const-class v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->instance:Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    invoke-direct {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->instance:Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->instance:Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized clean()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->cleanState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final cleanState()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;

    return-void
.end method

.method public final constructTheSavingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    if-nez p1, :cond_0

    move-object p1, p0

    :cond_0
    if-nez p2, :cond_1

    move-object p2, p0

    :cond_1
    const-string/jumbo p0, "||"

    invoke-static {p1, p0, p2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final createPolicyFile()V
    .locals 1

    new-instance p0, Ljava/io/File;

    const-string v0, "/efs/kgtapolicy"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "KGTAPolicy"

    const-string/jumbo v0, "create new policy file failed, error or already created"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final declared-synchronized getPolicyRes()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getSignature()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final isFileExists()Z
    .locals 0

    const-string p0, "/efs/kgtapolicy"

    invoke-static {p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final parseDataString(Ljava/lang/String;)I
    .locals 3

    const-string/jumbo v0, "\\|\\|"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object p1, p1, v2

    iput-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;

    return v0

    :cond_1
    :goto_0
    const-string p0, "KGTAPolicy"

    const-string/jumbo p1, "parsing data issue occurred"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->PARSING_ERROR:I

    return p0
.end method

.method public final declared-synchronized readData()I
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->cleanState()V

    const-string v0, "KGTAPolicy"

    const-string/jumbo v1, "use TA to store policy, skipping the EFS..."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, " "

    const-string v1, " "

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->SUCCESS:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized saveData(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->cleanState()V

    const-string p1, "KGTAPolicy"

    const-string/jumbo p2, "use TA to store policy, skipping the EFS..."

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->SUCCESS:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final savetoFileExternal(Ljava/lang/String;)I
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/efs/kgtapolicy"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    :catch_0
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->STORAGE_ERROR:I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-object p0, v0

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_2

    :catch_2
    :goto_0
    :try_start_3
    sget p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->STORAGE_ERROR:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_0

    :try_start_4
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    move p0, p1

    :goto_1
    return p0

    :goto_2
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_1
    throw p0
.end method

.method public final storeDataReady(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;

    return-void
.end method
