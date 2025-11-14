.class public final Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAppId:I

.field public mCrashReason:Ljava/lang/String;

.field public final mPfd:Landroid/os/ParcelFileDescriptor;

.field public mPid:I

.field public mProcessName:Ljava/lang/String;

.field public mPurged:Z

.field public final mRetriever:Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;

.field public mTimestampMs:J

.field public mUid:I

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z

    new-instance v0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;

    invoke-direct {v0, p0}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;-><init>(Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;)V

    iput-object v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mRetriever:Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;

    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPfd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final matches(Ljava/util/Optional;Ljava/util/Optional;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z

    if-eqz v0, :cond_5

    goto :goto_2e

    :cond_5
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUserId:I

    if-eq p1, v0, :cond_1a

    goto :goto_2e

    :cond_1a
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mAppId:I

    if-eq p1, p0, :cond_30

    :goto_2e
    const/4 p0, 0x0

    return p0

    :cond_30
    const/4 p0, 0x1

    return p0
.end method

.method public final toAppExitInfo()Landroid/app/ApplicationExitInfo;
    .registers 5

    new-instance v0, Landroid/app/ApplicationExitInfo;

    invoke-direct {v0}, Landroid/app/ApplicationExitInfo;-><init>()V

    iget v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPid:I

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setPid(I)V

    iget v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setRealUid(I)V

    iget v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setPackageUid(I)V

    iget v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setDefiningUid(I)V

    iget-object v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setProcessName(Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setImportance(I)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setPackageName(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setProcessStateSummary([B)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/ApplicationExitInfo;->setPss(J)V

    invoke-virtual {v0, v2, v3}, Landroid/app/ApplicationExitInfo;->setRss(J)V

    iget-wide v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mTimestampMs:J

    invoke-virtual {v0, v2, v3}, Landroid/app/ApplicationExitInfo;->setTimestamp(J)V

    iget-object v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mCrashReason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mRetriever:Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;

    invoke-virtual {v0, p0}, Landroid/app/ApplicationExitInfo;->setNativeTombstoneRetriever(Landroid/app/IParcelFileDescriptorRetriever;)V

    return-object v0
.end method
