.class public final Lcom/android/server/notification/NotificationBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mNm:Lcom/android/server/notification/NotificationManagerInternal;

.field public final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "NotifBackupHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationBackupHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    const-string/jumbo v0, "notifications"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/notification/NotificationBackupHelper;->mUserId:I

    const-class p1, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationManagerInternal;

    iput-object p1, p0, Lcom/android/server/notification/NotificationBackupHelper;->mNm:Lcom/android/server/notification/NotificationManagerInternal;

    return-void
.end method


# virtual methods
.method public final applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 6

    sget-boolean v0, Lcom/android/server/notification/NotificationBackupHelper;->DEBUG:Z

    const-string/jumbo v1, "NotifBackupHelper"

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Got restore of "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const-string/jumbo v0, "notifications"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    :try_start_21
    const-string/jumbo p1, "notification"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    iget p0, p0, Lcom/android/server/notification/NotificationBackupHelper;->mUserId:I

    invoke-interface {p1, p2, p0}, Landroid/app/INotificationManager;->applyRestore([BI)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_31} :catch_32

    return-void

    :catch_32
    move-exception p0

    const-string p1, "Couldn\'t communicate with notification manager"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_38
    return-void
.end method

.method public final getBackupPayload(Ljava/lang/String;)[B
    .registers 4

    const-string/jumbo v0, "notifications"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_25

    :try_start_a
    const-string/jumbo p1, "notification"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    iget p0, p0, Lcom/android/server/notification/NotificationBackupHelper;->mUserId:I

    invoke-interface {p1, p0}, Landroid/app/INotificationManager;->getBackupPayload(I)[B

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    move-exception p0

    const-string/jumbo p1, "NotifBackupHelper"

    const-string v1, "Couldn\'t communicate with notification manager"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_25
    return-object v0
.end method
