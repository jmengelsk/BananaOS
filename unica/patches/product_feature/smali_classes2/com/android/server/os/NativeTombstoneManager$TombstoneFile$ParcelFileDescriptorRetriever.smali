.class public final Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;
.super Landroid/app/IParcelFileDescriptorRetriever$Stub;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;


# direct methods
.method public constructor <init>(Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;->this$0:Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    invoke-direct {p0}, Landroid/app/IParcelFileDescriptorRetriever$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPfd()Landroid/os/ParcelFileDescriptor;
    .locals 3

    const-string v0, "/proc/self/fd/"

    iget-object v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;->this$0:Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    iget-boolean v1, v1, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;->this$0:Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 p0, 0x10000000

    invoke-static {v0, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/server/os/NativeTombstoneManager;->TOMBSTONE_DIR:Ljava/io/File;

    const-string/jumbo v0, "NativeTombstoneManager"

    const-string/jumbo v1, "failed to reopen file descriptor as read-only"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method
