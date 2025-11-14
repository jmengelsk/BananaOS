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
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
    .registers 2

    const-class v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->instance:Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    if-nez v1, :cond_11

    new-instance v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    invoke-direct {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;-><init>()V

    sput-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->instance:Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    goto :goto_11

    :catchall_f
    move-exception v1

    goto :goto_15

    :cond_11
    :goto_11
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->instance:Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_f

    monitor-exit v0

    return-object v1

    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_f

    throw v1
.end method


# virtual methods
.method public final declared-synchronized clean()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->cleanState()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public final cleanState()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;

    return-void
.end method

.method public final constructTheSavingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string p0, ""

    if-nez p1, :cond_5

    move-object p1, p0

    :cond_5
    if-nez p2, :cond_8

    move-object p2, p0

    :cond_8
    const-string/jumbo p0, "||"

    invoke-static {p1, p0, p2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final createPolicyFile()V
    .registers 2

    new-instance p0, Ljava/io/File;

    const-string v0, "/efs/kgtapolicy"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_7
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_b

    return-void

    :catch_b
    const-string p0, "KGTAPolicy"

    const-string/jumbo v0, "create new policy file failed, error or already created"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final declared-synchronized getPolicyRes()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final declared-synchronized getSignature()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final isFileExists()Z
    .registers 1

    const-string p0, "/efs/kgtapolicy"

    invoke-static {p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final parseDataString(Ljava/lang/String;)I
    .registers 5

    const-string/jumbo v0, "\\|\\|"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1a

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    goto :goto_1a

    :cond_f
    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object p1, p1, v2

    iput-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;

    return v0

    :cond_1a
    :goto_1a
    const-string p0, "KGTAPolicy"

    const-string/jumbo p1, "parsing data issue occurred"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->PARSING_ERROR:I

    return p0
.end method

.method public final declared-synchronized readData()I
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->cleanState()V

    const-string v0, "KGTAPolicy"

    const-string/jumbo v1, "use TA to store policy, skipping the EFS..."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, " "

    const-string v1, " "

    iput-object v0, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;

    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->SUCCESS:I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return v0

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public final declared-synchronized saveData(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->cleanState()V

    const-string p1, "KGTAPolicy"

    const-string/jumbo p2, "use TA to store policy, skipping the EFS..."

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->SUCCESS:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return p1

    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public final savetoFileExternal(Ljava/lang/String;)I
    .registers 5

    const/4 p0, 0x0

    :try_start_1
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    const-string v2, "/efs/kgtapolicy"

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_20
    .catchall {:try_start_1 .. :try_end_d} :catchall_1c

    :try_start_d
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_1a
    .catchall {:try_start_d .. :try_end_10} :catchall_18

    const/4 p0, 0x0

    :try_start_11
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_15

    return p0

    :catch_15
    sget p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->STORAGE_ERROR:I

    goto :goto_28

    :catchall_18
    move-exception p0

    goto :goto_29

    :catch_1a
    move-object p0, v0

    goto :goto_20

    :catchall_1c
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_29

    :catch_20
    :goto_20
    :try_start_20
    sget p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->STORAGE_ERROR:I
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_1c

    if-eqz p0, :cond_27

    :try_start_24
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_15

    :cond_27
    move p0, p1

    :goto_28
    return p0

    :goto_29
    if-eqz v0, :cond_2e

    :try_start_2b
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2e

    :catch_2e
    :cond_2e
    throw p0
.end method

.method public final storeDataReady(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_policy:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->ans_signature:Ljava/lang/String;

    return-void
.end method
