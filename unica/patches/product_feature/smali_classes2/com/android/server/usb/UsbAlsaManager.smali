.class public final Lcom/android/server/usb/UsbAlsaManager;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static final IS_MULTI_MODE:Z

.field public static final sDeviceDenylist:Ljava/util/List;


# instance fields
.field public isBundleRemovedDone:Z

.field public final mAlsaCards:Ljava/util/HashSet;

.field public final mAlsaDevices:Ljava/util/ArrayList;

.field public final mAlsaObserver:Lcom/android/server/usb/UsbAlsaManager$1;

.field public final mAttachedDevices:Ljava/util/HashMap;

.field public mAudioService:Landroid/media/IAudioService;

.field public final mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

.field public final mContext:Landroid/content/Context;

.field public final mHasMidiFeature:Z

.field public final mMidiDevices:Ljava/util/HashMap;

.field public mPeripheralMidiDevice:Lcom/android/server/usb/UsbAlsaMidiDevice;

.field public mSelectedBundleDevice:Lcom/android/server/usb/UsbAlsaDevice;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string/jumbo v0, "ro.audio.multi_usb_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usb/UsbAlsaManager;->IS_MULTI_MODE:Z

    new-instance v0, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;

    const/16 v1, 0x5c4

    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;-><init>(I)V

    new-instance v1, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;

    const/16 v2, 0x9cc

    invoke-direct {v1, v2}, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;-><init>(I)V

    new-instance v2, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;

    const/16 v3, 0xce6

    invoke-direct {v2, v3}, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;-><init>(I)V

    filled-new-array {v0, v1, v2}, [Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbAlsaManager;->sDeviceDenylist:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-direct {v0}, Lcom/android/internal/alsa/AlsaCardsParser;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAttachedDevices:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedBundleDevice:Lcom/android/server/usb/UsbAlsaDevice;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/usb/UsbAlsaManager;->isBundleRemovedDone:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbAlsaMidiDevice;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/usb/UsbAlsaManager$1;

    new-instance v1, Ljava/io/File;

    const-string v2, "/dev/snd/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/UsbAlsaManager$1;-><init>(Lcom/android/server/usb/UsbAlsaManager;Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaObserver:Lcom/android/server/usb/UsbAlsaManager$1;

    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string/jumbo v0, "android.software.midi"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    return-void
.end method

.method public static getCardNumberFromAlsaFilePath(Ljava/lang/String;)I
    .registers 5

    const-string/jumbo v0, "pcmC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    const-string/jumbo v2, "UsbAlsaManager"

    if-eqz v0, :cond_21

    const-string/jumbo v0, "p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_2a

    :cond_17
    const-string/jumbo v0, "c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_2a

    :cond_21
    const-string/jumbo v0, "midiC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    :goto_2a
    const/16 v0, 0x43

    :try_start_2c
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v3, 0x44

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_40} :catch_41

    return p0

    :catch_41
    move-exception v0

    const-string v3, "Could not parse ALSA file name "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unknown type file("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") added."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isDeviceDenylisted(III)Z
    .registers 6

    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->sDeviceDenylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x54c

    if-ne v2, p0, :cond_6

    iget v1, v1, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;->mProductId:I

    if-ne v1, p1, :cond_6

    const/4 p0, 0x1

    and-int p1, p0, p2

    if-eqz p1, :cond_23

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final addDeviceToAttachedDevicesMap(ILcom/android/server/usb/UsbAlsaDevice;)V
    .registers 6

    if-nez p1, :cond_17

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Ignore caching device as the type is NONE, device="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "UsbAlsaManager"

    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAttachedDevices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAttachedDevices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAttachedDevices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/Stack;

    :cond_40
    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final declared-synchronized deselectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V
    .registers 5

    const-string/jumbo v0, "deselectAlsaDevice() selectedDevice "

    monitor-enter p0

    :try_start_4
    const-string/jumbo v1, "UsbAlsaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_23

    :try_start_17
    invoke-virtual {p1}, Lcom/android/server/usb/UsbAlsaDevice;->stopOutput()V

    invoke-virtual {p1}, Lcom/android/server/usb/UsbAlsaDevice;->stopInput()V
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_20

    :try_start_1d
    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_23

    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit p1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    :try_start_22
    throw v0

    :catchall_23
    move-exception p1

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public final deselectCurrentDevice(I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "deselectCurrentDevice():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UsbAlsaManager"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_18

    goto :goto_52

    :cond_18
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAttachedDevices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Stack;

    if-eqz p0, :cond_52

    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_52

    :cond_2d
    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usb/UsbAlsaDevice;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "deselect current device:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/media/AudioManager;->isInputDevice(I)Z

    move-result p1

    if-eqz p1, :cond_4f

    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->stopInput()V

    return-void

    :cond_4f
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaDevice;->stopOutput()V

    :cond_52
    :goto_52
    return-void
.end method

.method public final dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    const-string/jumbo v1, "alsa_manager"

    const-wide v4, 0x10b00000004L

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v7

    const-string/jumbo v1, "cards_parser"

    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v2}, Lcom/android/internal/alsa/AlsaCardsParser;->getScanStatus()I

    move-result v2

    const-wide v4, 0x10500000001L

    invoke-virtual {v3, v1, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    iget-object v1, v0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v6, 0x0

    move v9, v6

    :goto_29
    if-ge v9, v2, :cond_99

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/android/server/usb/UsbAlsaDevice;

    const-string/jumbo v11, "alsa_devices"

    monitor-enter v10

    const-wide v12, 0x20b00000002L

    :try_start_3c
    invoke-virtual {v3, v11, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v11

    const-string/jumbo v13, "card"

    iget v14, v10, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-virtual {v3, v13, v4, v5, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string/jumbo v13, "device"

    const-wide v14, 0x10500000002L

    invoke-virtual {v3, v13, v14, v15, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-string/jumbo v13, "name"

    iget-object v14, v10, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    const-wide v4, 0x10900000003L

    invoke-virtual {v3, v13, v4, v5, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    const-string/jumbo v4, "has_output"

    iget-object v5, v10, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    const/4 v13, 0x1

    aget-boolean v5, v5, v13

    const-wide v13, 0x10800000004L

    invoke-virtual {v3, v4, v13, v14, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string/jumbo v4, "has_input"

    iget-object v5, v10, Lcom/android/server/usb/UsbAlsaDevice;->mHasDevice:[Z

    aget-boolean v5, v5, v6

    const-wide v13, 0x10800000005L

    invoke-virtual {v3, v4, v13, v14, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string/jumbo v4, "address"

    iget-object v5, v10, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceAddress:Ljava/lang/String;

    const-wide v13, 0x10900000006L

    invoke-virtual {v3, v4, v13, v14, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v3, v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V
    :try_end_8f
    .catchall {:try_start_3c .. :try_end_8f} :catchall_96

    monitor-exit v10

    const-wide v4, 0x10500000001L

    goto :goto_29

    :catchall_96
    move-exception v0

    :try_start_97
    monitor-exit v10
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw v0

    :cond_99
    iget-object v1, v0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbAlsaMidiDevice;

    const-string/jumbo v4, "alsa_midi_devices"

    const-wide v5, 0x20b00000004L

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usb/UsbAlsaMidiDevice;->dump(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto :goto_a3

    :cond_c4
    invoke-virtual {v3, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public final logDevices(Ljava/lang/String;)V
    .registers 8

    const-string/jumbo v0, "UsbAlsaManager"

    const-string v1, "----------------"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_14
    if-ge v1, p1, :cond_53

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/usb/UsbAlsaDevice;

    const-string/jumbo v3, "UsbAlsaManager"

    const-string/jumbo v4, "[card:"

    monitor-enter v2

    :try_start_25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " device:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_4b
    .catchall {:try_start_25 .. :try_end_4b} :catchall_50

    monitor-exit v2

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :catchall_50
    move-exception p0

    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p0

    :cond_53
    const-string/jumbo p0, "UsbAlsaManager"

    const-string p1, "----------------"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final removeAlsaDevice(Ljava/lang/String;)Lcom/android/server/usb/UsbAlsaDevice;
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1f

    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbAlsaDevice;

    iget-object v2, v2, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_20

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1f
    move v1, v3

    :goto_20
    if-le v1, v3, :cond_3a

    iget-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usb/UsbAlsaDevice;

    iget-object v1, p1, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0, v1, p1}, Lcom/android/server/usb/UsbAlsaManager;->removeDeviceFromAttachedDevicesMap(ILcom/android/server/usb/UsbAlsaDevice;)V

    iget-object v1, p1, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    aget v0, v1, v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbAlsaManager;->removeDeviceFromAttachedDevicesMap(ILcom/android/server/usb/UsbAlsaDevice;)V

    return-object p1

    :cond_3a
    const/4 p0, 0x0

    return-object p0
.end method

.method public final removeDeviceFromAttachedDevicesMap(ILcom/android/server/usb/UsbAlsaDevice;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAttachedDevices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    if-nez v0, :cond_f

    goto :goto_21

    :cond_f
    invoke-virtual {v0, p2}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_21

    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAttachedDevices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    :goto_21
    return-void
.end method

.method public final declared-synchronized selectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V
    .registers 5

    const-string/jumbo v0, "selectAlsaDevice() "

    monitor-enter p0

    :try_start_4
    const-string/jumbo v1, "UsbAlsaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "usb_audio_automatic_routing_disabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_33

    const-string/jumbo p1, "UsbAlsaManager"

    const-string/jumbo v0, "USB_AUDIO_AUTOMATIC_ROUTING_DISABLED"

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_31

    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    goto :goto_55

    :cond_33
    :try_start_33
    monitor-enter p1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_31

    :try_start_34
    monitor-enter p1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_53

    const/4 v0, 0x1

    :try_start_36
    invoke-virtual {p1, v0}, Lcom/android/server/usb/UsbAlsaDevice;->startDevice(I)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_4e

    :try_start_39
    monitor-exit p1

    monitor-enter p1
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_53

    :try_start_3b
    invoke-virtual {p1, v2}, Lcom/android/server/usb/UsbAlsaDevice;->startDevice(I)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_4b

    :try_start_3e
    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_53

    :try_start_3f
    monitor-exit p1

    const-string/jumbo p1, "UsbAlsaManager"

    const-string/jumbo v0, "selectAlsaDevice() - done."

    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_31

    monitor-exit p0

    return-void

    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_53

    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit p1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    :try_start_50
    throw v0

    :goto_51
    monitor-exit p1
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_53

    :try_start_52
    throw v0

    :catchall_53
    move-exception v0

    goto :goto_51

    :goto_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_31

    throw p1
.end method

.method public final selectDefaultDevice(I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "selectDefaultDevice():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UsbAlsaManager"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAttachedDevices:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Stack;

    if-eqz p0, :cond_5c

    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_5c

    :cond_2a
    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usb/UsbAlsaDevice;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "select default device:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/media/AudioManager;->isInputDevice(I)Z

    move-result p1

    if-eqz p1, :cond_52

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_4a
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbAlsaDevice;->startDevice(I)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4f

    monitor-exit p0

    return-void

    :catchall_4f
    move-exception p1

    :try_start_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p1

    :cond_52
    monitor-enter p0

    const/4 p1, 0x1

    :try_start_54
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbAlsaDevice;->startDevice(I)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_59

    monitor-exit p0

    return-void

    :catchall_59
    move-exception p1

    :try_start_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw p1

    :cond_5c
    :goto_5c
    return-void
.end method

.method public final usbDeviceAdded(Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "usbDeviceAdded(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " nm:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v11, "UsbAlsaManager"

    invoke-static {v11, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v1}, Lcom/android/internal/alsa/AlsaCardsParser;->scan()I

    iget-object v1, v0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v1, v4}, Lcom/android/internal/alsa/AlsaCardsParser;->findCardNumFor(Ljava/lang/String;)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    move-result-object v12

    const/4 v13, 0x1

    if-nez v12, :cond_5c

    const-string/jumbo v0, "no AlsaCardRecord"

    invoke-static {v11, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10, v13}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "usbDeviceAdded(): cannot find sound card for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    return-void

    :cond_5c
    invoke-virtual {v12}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardNum()I

    move-result v1

    invoke-virtual {v0, v1, v13}, Lcom/android/server/usb/UsbAlsaManager;->waitForAlsaDevice(IZ)V

    const/4 v1, 0x2

    invoke-virtual {v10, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(B)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :cond_6d
    :goto_6d
    const-string/jumbo v6, "UsbDescriptorParser"

    const-string v7, " t:0x"

    const-string/jumbo v8, "Undefined Audio Input terminal l: "

    const/16 v9, 0x100

    if-ge v5, v3, :cond_b6

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v5, v5, 0x1

    check-cast v15, Lcom/android/server/usb/descriptors/UsbDescriptor;

    const/16 v16, 0x0

    instance-of v14, v15, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v14, :cond_a3

    check-cast v15, Lcom/android/server/usb/descriptors/UsbACTerminal;

    iget v14, v15, Lcom/android/server/usb/descriptors/UsbACTerminal;->mTerminalType:I

    and-int/lit16 v14, v14, -0x100

    if-eq v14, v9, :cond_6d

    const/16 v15, 0x300

    if-eq v14, v15, :cond_6d

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/android/server/usb/UsbAlsaManager;->isDeviceDenylisted(III)Z

    move-result v1

    if-nez v1, :cond_b8

    move v1, v13

    goto :goto_ba

    :cond_a3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v15, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v7, v15, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    invoke-static {v7, v9, v6}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_6d

    :cond_b6
    const/16 v16, 0x0

    :cond_b8
    move/from16 v1, v16

    :goto_ba
    const/4 v2, 0x3

    invoke-virtual {v10, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(B)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v5, v16

    :goto_c5
    const/16 v14, 0x200

    if-ge v5, v3, :cond_104

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v5, v5, 0x1

    check-cast v15, Lcom/android/server/usb/descriptors/UsbDescriptor;

    instance-of v13, v15, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v13, :cond_f0

    check-cast v15, Lcom/android/server/usb/descriptors/UsbACTerminal;

    iget v13, v15, Lcom/android/server/usb/descriptors/UsbACTerminal;->mTerminalType:I

    and-int/lit16 v13, v13, -0x100

    if-eq v13, v9, :cond_102

    if-eq v13, v14, :cond_102

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/server/usb/UsbAlsaManager;->isDeviceDenylisted(III)Z

    move-result v2

    if-nez v2, :cond_104

    const/4 v5, 0x1

    goto :goto_106

    :cond_f0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v15, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v14, v15, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    invoke-static {v14, v13, v6}, Lcom/android/server/usb/UsbAlsaManager$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_102
    const/4 v13, 0x1

    goto :goto_c5

    :cond_104
    move/from16 v5, v16

    :goto_106
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "hasInput: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " hasOutput:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_124

    if-eqz v5, :cond_18e

    :cond_124
    invoke-virtual {v10}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isInputHeadset()Z

    move-result v7

    invoke-virtual {v10}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isOutputHeadset()Z

    move-result v8

    invoke-virtual {v10}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isDock()Z

    move-result v9

    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    if-nez v2, :cond_13b

    const-string/jumbo v0, "no AudioService"

    invoke-static {v11, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13b
    move v6, v1

    new-instance v1, Lcom/android/server/usb/UsbAlsaDevice;

    invoke-virtual {v12}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardNum()I

    move-result v3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/usb/UsbAlsaDevice;-><init>(Landroid/media/IAudioService;ILjava/lang/String;ZZZZZ)V

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardDescription()Ljava/lang/String;

    monitor-enter v1

    :try_start_14d
    iput-object v2, v1, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceName:Ljava/lang/String;
    :try_end_14f
    .catchall {:try_start_14d .. :try_end_14f} :catchall_284

    monitor-exit v1

    sget-boolean v2, Lcom/android/server/usb/UsbAlsaManager;->IS_MULTI_MODE:Z

    iget-object v3, v1, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    if-eqz v2, :cond_165

    aget v2, v3, v16

    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbAlsaManager;->deselectCurrentDevice(I)V

    const/16 v17, 0x1

    aget v2, v3, v17

    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbAlsaManager;->deselectCurrentDevice(I)V

    :cond_162
    move/from16 v5, v16

    goto :goto_17a

    :cond_165
    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_162

    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    move/from16 v5, v16

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbAlsaDevice;

    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbAlsaManager;->deselectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V

    :goto_17a
    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    aget v2, v3, v5

    invoke-virtual {v0, v2, v1}, Lcom/android/server/usb/UsbAlsaManager;->addDeviceToAttachedDevicesMap(ILcom/android/server/usb/UsbAlsaDevice;)V

    const/16 v17, 0x1

    aget v2, v3, v17

    invoke-virtual {v0, v2, v1}, Lcom/android/server/usb/UsbAlsaManager;->addDeviceToAttachedDevicesMap(ILcom/android/server/usb/UsbAlsaDevice;)V

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbAlsaManager;->selectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V

    :cond_18e
    invoke-virtual {v10}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v1

    invoke-virtual {v10, v14}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findMidiInterfaceDescriptors(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->doesInterfaceContainEndpoint(Ljava/util/ArrayList;)Z

    move-result v2

    const-string/jumbo v3, "hasMidi: "

    const-string v5, " mHasMidiFeature:"

    invoke-static {v3, v5, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, v0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "hasMidi2: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_277

    if-eqz v1, :cond_277

    if-nez v2, :cond_277

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_1f3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1e1

    goto :goto_1f3

    :cond_1e1
    if-eqz v3, :cond_1f1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1ea

    goto :goto_1f1

    :cond_1ea
    const-string v6, " "

    invoke-static {v2, v6, v3}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1f4

    :cond_1f1
    :goto_1f1
    move-object v6, v2

    goto :goto_1f4

    :cond_1f3
    :goto_1f3
    move-object v6, v3

    :goto_1f4
    const-string/jumbo v7, "name"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "manufacturer"

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "product"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "version"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "serial_number"

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardNum()I

    move-result v2

    const-string/jumbo v3, "alsa_card"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "alsa_device"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "usb_device"

    move-object/from16 v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v10, v5}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->calculateNumLegacyMidiPorts(Z)I

    move-result v2

    const/4 v5, 0x1

    invoke-virtual {v10, v5}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->calculateNumLegacyMidiPorts(Z)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "numLegacyMidiInputs: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "numLegacyMidiOutputs:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardNum()I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v19, v1

    move/from16 v22, v2

    move/from16 v23, v3

    move-object/from16 v18, v5

    invoke-static/range {v18 .. v23}, Lcom/android/server/usb/UsbAlsaMidiDevice;->create(Landroid/content/Context;Landroid/os/Bundle;IIII)Lcom/android/server/usb/UsbAlsaMidiDevice;

    move-result-object v1

    if-eqz v1, :cond_277

    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_277
    const-string/jumbo v1, "deviceAdded()"

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbAlsaManager;->logDevices(Ljava/lang/String;)V

    const-string/jumbo v0, "deviceAdded() - done"

    invoke-static {v11, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_284
    move-exception v0

    :try_start_285
    monitor-exit v1
    :try_end_286
    .catchall {:try_start_285 .. :try_end_286} :catchall_284

    throw v0
.end method

.method public final declared-synchronized usbDeviceRemoved(Ljava/lang/String;)V
    .registers 7

    const-string/jumbo v0, "USB MIDI Device Removed: "

    const-string/jumbo v1, "USB Audio Device Removed: "

    const-string/jumbo v2, "deviceRemoved("

    monitor-enter p0

    :try_start_a
    const-string/jumbo v3, "UsbAlsaManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->removeAlsaDevice(Ljava/lang/String;)Lcom/android/server/usb/UsbAlsaDevice;

    move-result-object v2

    const-string/jumbo v3, "UsbAlsaManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedBundleDevice:Lcom/android/server/usb/UsbAlsaDevice;

    const/4 v3, 0x0

    if-eqz v1, :cond_51

    iget-boolean v1, p0, Lcom/android/server/usb/UsbAlsaManager;->isBundleRemovedDone:Z

    if-eqz v1, :cond_51

    const-string/jumbo v1, "UsbAlsaManager"

    const-string/jumbo v4, "usbDeviceRemoved set mSelectedBundleDevice to null, as it\'s not set even Bundle Remove was done"

    invoke-static {v1, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedBundleDevice:Lcom/android/server/usb/UsbAlsaDevice;

    iput-boolean v3, p0, Lcom/android/server/usb/UsbAlsaManager;->isBundleRemovedDone:Z

    goto :goto_51

    :catchall_4f
    move-exception p1

    goto :goto_b1

    :cond_51
    :goto_51
    if-eqz v2, :cond_8a

    iget v1, v2, Lcom/android/server/usb/UsbAlsaDevice;->mCardNum:I

    invoke-virtual {p0, v1, v3}, Lcom/android/server/usb/UsbAlsaManager;->waitForAlsaDevice(IZ)V

    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbAlsaManager;->deselectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V

    sget-boolean v1, Lcom/android/server/usb/UsbAlsaManager;->IS_MULTI_MODE:Z

    if-eqz v1, :cond_6f

    iget-object v1, v2, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbAlsaManager;->selectDefaultDevice(I)V

    iget-object v1, v2, Lcom/android/server/usb/UsbAlsaDevice;->mDeviceType:[I

    aget v1, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbAlsaManager;->selectDefaultDevice(I)V

    goto :goto_8a

    :cond_6f
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8a

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbAlsaDevice;

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbAlsaManager;->selectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V

    :cond_8a
    :goto_8a
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbAlsaMidiDevice;

    if-eqz v1, :cond_a9

    const-string/jumbo v2, "UsbAlsaManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_a9
    const-string/jumbo p1, "usbDeviceRemoved()"

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->logDevices(Ljava/lang/String;)V
    :try_end_af
    .catchall {:try_start_a .. :try_end_af} :catchall_4f

    monitor-exit p0

    return-void

    :goto_b1
    :try_start_b1
    monitor-exit p0
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_4f

    throw p1
.end method

.method public final waitForAlsaDevice(IZ)V
    .registers 10

    const-string/jumbo v0, "UsbAlsaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "waitForAlsaDevice(c:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_1d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x9c4

    add-long/2addr v1, v3

    :cond_24
    :goto_24
    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, p2

    if-eqz v3, :cond_57

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_57

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3
    :try_end_3d
    .catchall {:try_start_1d .. :try_end_3d} :catchall_4b

    sub-long v3, v1, v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_24

    :try_start_45
    iget-object v5, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_4a} :catch_4d
    .catchall {:try_start_45 .. :try_end_4a} :catchall_4b

    goto :goto_24

    :catchall_4b
    move-exception p0

    goto :goto_b5

    :catch_4d
    :try_start_4d
    const-string/jumbo v3, "UsbAlsaManager"

    const-string/jumbo v4, "usb: InterruptedException while waiting for ALSA file."

    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :cond_57
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaCards:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int v3, p2, p0

    if-eqz v3, :cond_8b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_8b

    const-string/jumbo p0, "UsbAlsaManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "waitForAlsaDevice("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") timeout"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b3

    :cond_8b
    const-string/jumbo v1, "UsbAlsaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "waitForAlsaDevice for device card="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isAdded="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", found="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b3
    monitor-exit v0

    return-void

    :goto_b5
    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_4d .. :try_end_b6} :catchall_4b

    throw p0
.end method
