.class public final Lcom/android/server/usb/UsbAlsaManager$1;
.super Landroid/os/FileObserver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbAlsaManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbAlsaManager;Ljava/io/File;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager$1;->this$0:Lcom/android/server/usb/UsbAlsaManager;

    const/16 p1, 0x300

    invoke-direct {p0, p2, p1}, Landroid/os/FileObserver;-><init>(Ljava/io/File;I)V

    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .registers 7

    const/16 v0, 0x100

    const/4 v1, -0x1

    if-eq p1, v0, :cond_27

    const/16 v0, 0x200

    if-eq p1, v0, :cond_a

    goto :goto_4e

    :cond_a
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager$1;->this$0:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/server/usb/UsbAlsaManager;->getCardNumberFromAlsaFilePath(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_16

    goto :goto_4e

    :cond_16
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_19
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_24

    throw p0

    :cond_27
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager$1;->this$0:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "Adding ALSA device card="

    const-string/jumbo v0, "UsbAlsaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "alsaFileAdded("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/server/usb/UsbAlsaManager;->getCardNumberFromAlsaFilePath(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v1, :cond_4f

    :goto_4e
    return-void

    :cond_4f
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_52
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_81

    const-string/jumbo v1, "UsbAlsaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_81

    :catchall_7f
    move-exception p0

    goto :goto_83

    :cond_81
    :goto_81
    monitor-exit v0

    return-void

    :goto_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_52 .. :try_end_84} :catchall_7f

    throw p0
.end method
