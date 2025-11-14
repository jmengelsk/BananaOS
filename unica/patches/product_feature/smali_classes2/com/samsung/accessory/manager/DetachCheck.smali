.class public final Lcom/samsung/accessory/manager/DetachCheck;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAuthStarted:Z

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/DetachCheck;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/accessory/manager/DetachCheck;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getSamsungNfcAdapter()Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;
    .locals 3

    const-string/jumbo v0, "SAccessoryManager_DetachCheck"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/accessory/manager/DetachCheck;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "SamsungNfcAdapter.getDefaultAdapter returns null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/accessory/manager/DetachCheck;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo p0, "retry, SamsungNfcAdapter.getDefaultAdapter returns null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return-object v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public final requestStartTypeS()[B
    .locals 2

    const-string/jumbo v0, "SAccessoryManager_DetachCheck"

    const-string/jumbo v1, "Reqs"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/DetachCheck;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/DetachCheck;->mAuthStarted:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->getSamsungNfcAdapter()Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->startCoverAuth()[B

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final requestStopTypeS()V
    .locals 2

    const-string/jumbo v0, "SAccessoryManager_DetachCheck"

    const-string/jumbo v1, "stopAuth"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/DetachCheck;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/accessory/manager/DetachCheck;->mAuthStarted:Z

    if-nez v1, :cond_0

    const-string/jumbo p0, "SAccessoryManager_DetachCheck"

    const-string v1, "Do not call stopAuth because startAuth is not executed"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/accessory/manager/DetachCheck;->mAuthStarted:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->getSamsungNfcAdapter()Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    move-result-object p0

    if-eqz p0, :cond_1

    :try_start_1
    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->stopCoverAuth()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
