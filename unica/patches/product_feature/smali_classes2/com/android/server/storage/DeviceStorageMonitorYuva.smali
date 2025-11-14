.class public final Lcom/android/server/storage/DeviceStorageMonitorYuva;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DATA_PATH:Ljava/io/File;


# instance fields
.field public final isSupported:Z

.field public final mContext:Landroid/content/Context;

.field public mLowUserMemFlag_15:Z

.field public mLowUserMemFlag_20:Z

.field public final mMemLowUserThreshold_15:J

.field public final mMemLowUserThreshold_20:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DATA_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isSupported:Z

    const-string v1, "DeviceStorageMonitorYuva"

    const-string/jumbo v2, "constructor is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mContext:Landroid/content/Context;

    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->getStorageUserMemLowBytes(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_20:J

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->getStorageUserMemLowBytes(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_15:J

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    :try_start_28
    const-string/jumbo v2, "com.samsung.memorysaver"

    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_2f} :catch_30

    goto :goto_31

    :catch_30
    const/4 p1, 0x0

    :goto_31
    if-eqz p1, :cond_3b

    const-string/jumbo p1, "device supports YUVA"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_41

    :cond_3b
    const-string/jumbo p1, "device does not support YUVA"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isSupported:Z

    return-void
.end method


# virtual methods
.method public final getStorageUserMemLowBytes(I)J
    .registers 4

    sget-object p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DATA_PATH:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    int-to-long p0, p1

    mul-long/2addr v0, p0

    const-wide/16 p0, 0x64

    div-long/2addr v0, p0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "user spcific threshold is calculated ->"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceStorageMonitorYuva"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public final sendCancelUserMemLowNotification(I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Intent ACTION_CANCEL_USER_MEM_LOW broadcasting with ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceStorageMonitorYuva"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sm.ACTION_CANCEL_USER_MEM_LOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.memorysaver"

    const-string/jumbo v2, "com.samsung.memorysaver.receiver.StorageStatusReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "PERCENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final sendUserMemLowNotification(I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Intent ACTION_USER_MEM_LOW broadcasting with ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceStorageMonitorYuva"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sm.ACTION_USER_MEM_LOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.memorysaver"

    const-string/jumbo v2, "com.samsung.memorysaver.receiver.StorageStatusReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "PERCENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
