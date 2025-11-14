.class public final Lcom/android/server/uri/UriGrantsManagerService$LocalService;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/uri/UriGrantsManagerInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/uri/UriGrantsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/uri/UriGrantsManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    return-void
.end method


# virtual methods
.method public final checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    iget-object v0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->-$$Nest$mcheckAuthorityGrantsLocked(Lcom/android/server/uri/UriGrantsManagerService;ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    .registers 7

    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "checkGrantUriPermission"

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p3

    new-instance p3, Lcom/android/server/uri/GrantUri;

    invoke-direct {p3, p5, p4, v0}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    const/4 p5, -0x1

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;II)I

    move-result p0

    return p0
.end method

.method public final checkUriPermission(Lcom/android/server/uri/GrantUri;IIZ)Z
    .registers 5

    if-eqz p4, :cond_9

    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->checkContentUriPermissionFullUnlocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result p0

    return p0

    :cond_9
    iget-object p4, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    iget-object p4, p4, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p4

    :try_start_e
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z

    move-result p0

    monitor-exit p4

    return p0

    :catchall_16
    move-exception p0

    monitor-exit p4
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw p0
.end method

.method public final grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_8

    goto :goto_28

    :cond_8
    iget-object p0, p1, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    const/4 v1, 0x0

    move v6, v1

    :goto_10
    if-ge v6, p0, :cond_28

    iget-object v1, p1, Lcom/android/server/uri/NeededUriGrants;->uris:Landroid/util/ArraySet;

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/uri/GrantUri;

    iget-object v2, p1, Lcom/android/server/uri/NeededUriGrants;->targetPkg:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/uri/NeededUriGrants;->flags:I

    iget v1, p1, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUnchecked(ILjava/lang/String;Lcom/android/server/uri/GrantUri;ILcom/android/server/uri/UriPermissionOwner;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_28
    :goto_28
    return-void
.end method

.method public final internalCheckGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;
    .registers 17

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    :goto_6
    move v5, v0

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :goto_a
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    const/4 v6, 0x0

    move-object v4, p1

    move v2, p2

    move-object v3, p3

    move v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;ILjava/lang/Integer;Ljava/lang/Integer;)Lcom/android/server/uri/NeededUriGrants;

    move-result-object p0

    return-object p0
.end method

.method public final newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "newUriPermissionOwner"

    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/uri/UriPermissionOwner;

    invoke-direct {v0, p0, p1}, Lcom/android/server/uri/UriPermissionOwner;-><init>(Lcom/android/server/uri/UriGrantsManagerInternal;Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    if-nez p0, :cond_1b

    new-instance p0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    invoke-direct {p0, v0}, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;-><init>(Lcom/android/server/uri/UriPermissionOwner;)V

    iput-object p0, v0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    :cond_1b
    iget-object p0, v0, Lcom/android/server/uri/UriPermissionOwner;->externalToken:Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    return-object p0
.end method

.method public final notifyActivityLaunchRequestCompleted(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)V
    .registers 21

    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService;->mLaunchToContentUrisWithoutCallerReadPermission:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_5f

    if-eqz p6, :cond_5e

    if-nez v0, :cond_18

    goto :goto_5e

    :cond_18
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2a
    if-ltz v1, :cond_41

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v1

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2a

    :cond_41
    const-string v0, ","

    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string p0, ","

    invoke-static {p0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x1

    const/4 v11, 0x0

    const/16 v1, 0x3a5

    move v4, p2

    move-object v3, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v1 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    :goto_5e
    return-void

    :catchall_5f
    move-exception v0

    move-object p0, v0

    :try_start_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_5f

    throw p0
.end method

.method public final removeUriPermissionsForPackage(ILjava/lang/String;Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    iget-object v0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iget-object p0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p1, p3, v1}, Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V

    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final revokeUriPermission(IILcom/android/server/uri/GrantUri;Ljava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p3, Lcom/android/server/uri/GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    iget v1, p3, Lcom/android/server/uri/GrantUri;->sourceUserId:I

    const/high16 v2, 0xc0000

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/android/server/uri/UriGrantsManagerService;->getProviderInfo(IIILjava/lang/String;)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-nez p0, :cond_2f

    const-string/jumbo p0, "UriGrantsManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "No content provider found for permission revoke: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/server/uri/GrantUri;->toSafeString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2f
    invoke-virtual {v0, p0, p3, p1, p2}, Lcom/android/server/uri/UriGrantsManagerService;->checkHoldingPermissionsUnlocked(Landroid/content/pm/ProviderInfo;Lcom/android/server/uri/GrantUri;II)Z

    move-result v5

    iget-object p0, v0, Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    move v2, p1

    move v4, p2

    move-object v3, p3

    move-object v1, p4

    :try_start_3a
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerService;->revokeUriPermissionLocked(Ljava/lang/String;ILcom/android/server/uri/GrantUri;IZ)V

    monitor-exit p0

    return-void

    :catchall_3f
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_3f

    throw p1
.end method

.method public final revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;IILjava/lang/String;I)V

    return-void
.end method

.method public final revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;IILjava/lang/String;I)V
    .registers 8

    instance-of p0, p1, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    move-object p0, p1

    check-cast p0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;

    iget-object p0, p0, Lcom/android/server/uri/UriPermissionOwner$ExternalToken;->this$0:Lcom/android/server/uri/UriPermissionOwner;

    goto :goto_c

    :cond_b
    move-object p0, v0

    :goto_c
    if-eqz p0, :cond_1a

    if-nez p2, :cond_11

    goto :goto_16

    :cond_11
    new-instance v0, Lcom/android/server/uri/GrantUri;

    invoke-direct {v0, p4, p3, p2}, Lcom/android/server/uri/GrantUri;-><init>(IILandroid/net/Uri;)V

    :goto_16
    invoke-virtual {p0, p3, p6, v0, p5}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermission(IILcom/android/server/uri/GrantUri;Ljava/lang/String;)V

    return-void

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Unknown owner: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
