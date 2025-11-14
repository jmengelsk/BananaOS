.class public final Lcom/android/server/uri/UriPermission;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public globalModeFlags:I

.field public mReadOwners:Landroid/util/ArraySet;

.field public mWriteOwners:Landroid/util/ArraySet;

.field public modeFlags:I

.field public ownedModeFlags:I

.field public persistableModeFlags:I

.field public persistedCreateTime:J

.field public persistedModeFlags:I

.field public final sourcePkg:Ljava/lang/String;

.field public stringName:Ljava/lang/String;

.field public final targetPkg:Ljava/lang/String;

.field public final targetUid:I

.field public final targetUserId:I

.field public final uri:Lcom/android/server/uri/GrantUri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    iput v0, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    iput v0, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    iput v0, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    iput v0, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/uri/UriPermission;->targetUserId:I

    iput-object p1, p0, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/uri/UriPermission;->targetUid:I

    iput-object p4, p0, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .registers 7

    const-string v0, "      "

    const-string/jumbo v1, "targetUserId="

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/uri/UriPermission;->targetUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " sourcePkg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " targetPkg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mode=0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " owned=0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " global=0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " persistable=0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " persisted=0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-eqz v1, :cond_cd

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " persistedCreate="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_cd
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    monitor-enter p0

    :try_start_d1
    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    if-eqz v1, :cond_10a

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "readOwners:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/UriPermissionOwner;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  * "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e4

    :catchall_108
    move-exception p1

    goto :goto_143

    :cond_10a
    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    if-eqz v1, :cond_141

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "writeOwners:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_141

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/UriPermissionOwner;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  * "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11d

    :cond_141
    monitor-exit p0

    return-void

    :goto_143
    monitor-exit p0
    :try_end_144
    .catchall {:try_start_d1 .. :try_end_144} :catchall_108

    throw p1
.end method

.method public final initPersistedModes(IJ)V
    .registers 4

    and-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    iput-wide p2, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    return-void
.end method

.method public final releasePersistableModes(I)Z
    .registers 5

    and-int/lit8 p1, p1, 0x3

    iget v0, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-nez p1, :cond_e

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    iget p0, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eq p0, v0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized removeReadOwner(Lcom/android/server/uri/UriPermissionOwner;)V
    .registers 5

    const-string/jumbo v0, "Unknown read owner "

    monitor-enter p0

    :try_start_4
    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    if-eqz v1, :cond_28

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_28

    :cond_f
    iget-object p1, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_26

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    iget p1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_24

    goto :goto_26

    :catchall_24
    move-exception p1

    goto :goto_44

    :cond_26
    :goto_26
    monitor-exit p0

    return-void

    :cond_28
    :goto_28
    :try_start_28
    const-string/jumbo v1, "UriPermission"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_28 .. :try_end_42} :catchall_24

    monitor-exit p0

    return-void

    :goto_44
    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_24

    throw p1
.end method

.method public final declared-synchronized removeWriteOwner(Lcom/android/server/uri/UriPermissionOwner;)V
    .registers 5

    const-string/jumbo v0, "Unknown write owner "

    monitor-enter p0

    :try_start_4
    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    if-eqz v1, :cond_28

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_28

    :cond_f
    iget-object p1, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_26

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    iget p1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_24

    goto :goto_26

    :catchall_24
    move-exception p1

    goto :goto_44

    :cond_26
    :goto_26
    monitor-exit p0

    return-void

    :cond_28
    :goto_28
    :try_start_28
    const-string/jumbo v1, "UriPermission"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_28 .. :try_end_42} :catchall_24

    monitor-exit p0

    return-void

    :goto_44
    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_24

    throw p1
.end method

.method public final revokeModes(IZ)Z
    .registers 10

    and-int/lit8 v0, p1, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    iget v3, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x0

    if-eqz v4, :cond_57

    if-eqz v0, :cond_1c

    iget v4, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/lit8 v4, v3, -0x2

    iput v4, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    :cond_1c
    iget v4, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    monitor-enter p0

    :try_start_23
    iget-object v4, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    if-eqz v4, :cond_3b

    if-eqz p2, :cond_3b

    iget v4, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    new-instance v4, Landroid/util/ArraySet;

    iget-object v6, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-direct {v4, v6}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v5, p0, Lcom/android/server/uri/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    goto :goto_3c

    :catchall_39
    move-exception p1

    goto :goto_55

    :cond_3b
    move-object v4, v5

    :goto_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_23 .. :try_end_3d} :catchall_39

    if-eqz v4, :cond_57

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_43
    :goto_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v6, :cond_43

    invoke-virtual {v6, p0}, Lcom/android/server/uri/UriPermissionOwner;->removeReadPermission(Lcom/android/server/uri/UriPermission;)V

    goto :goto_43

    :goto_55
    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_39

    throw p1

    :cond_57
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_a4

    if-eqz v0, :cond_69

    iget p1, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    iget p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    :cond_69
    iget p1, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    monitor-enter p0

    :try_start_70
    iget-object p1, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    if-eqz p1, :cond_89

    if-eqz p2, :cond_89

    iget p1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    and-int/lit8 p1, p1, -0x3

    iput p1, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    new-instance p1, Landroid/util/ArraySet;

    iget-object p2, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v5, p0, Lcom/android/server/uri/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    move-object v5, p1

    goto :goto_89

    :catchall_87
    move-exception p1

    goto :goto_a2

    :cond_89
    :goto_89
    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_70 .. :try_end_8a} :catchall_87

    if-eqz v5, :cond_a4

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_90
    :goto_90
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/uri/UriPermissionOwner;

    if-eqz p2, :cond_90

    invoke-virtual {p2, p0}, Lcom/android/server/uri/UriPermissionOwner;->removeReadPermission(Lcom/android/server/uri/UriPermission;)V

    goto :goto_90

    :goto_a2
    :try_start_a2
    monitor-exit p0
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_87

    throw p1

    :cond_a4
    iget p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-nez p1, :cond_ac

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    :cond_ac
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    iget p0, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eq p0, v3, :cond_b4

    return v2

    :cond_b4
    return v1
.end method

.method public final takePersistableModes(I)Z
    .registers 6

    and-int/lit8 p1, p1, 0x3

    iget v0, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-eq v0, p1, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Requested flags 0x"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", but only 0x"

    invoke-static {p1, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/uri/UriPermission;->persistableModeFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " are allowed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "UriPermission"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2e
    iget p1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eqz v0, :cond_3b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/uri/UriPermission;->updateModeFlags()V

    iget p0, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    if-eq p0, p1, :cond_44

    const/4 p0, 0x1

    return p0

    :cond_44
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/uri/UriPermission;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/16 v0, 0x80

    const-string/jumbo v1, "UriPermission{"

    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/uri/UriPermission;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method public final updateModeFlags()V
    .registers 3

    iget v0, p0, Lcom/android/server/uri/UriPermission;->ownedModeFlags:I

    iget v1, p0, Lcom/android/server/uri/UriPermission;->globalModeFlags:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/uri/UriPermission;->modeFlags:I

    return-void
.end method
