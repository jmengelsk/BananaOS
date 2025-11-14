.class public final Lcom/android/server/pm/DumpHelper;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAvailableFeatures:Landroid/util/ArrayMap;

.field public final mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mInstallerService:Lcom/android/server/pm/PackageInstallerService;

.field public final mKnownPackages:Lcom/android/server/pm/KnownPackages;

.field public final mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

.field public final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

.field public final mProtectedBroadcasts:Landroid/util/ArraySet;

.field public final mRequiredVerifierPackages:[Ljava/lang/String;

.field public final mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

.field public final mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;Lcom/android/server/pm/StorageEventHelper;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/PackageInstallerService;[Ljava/lang/String;Lcom/android/server/pm/KnownPackages;Lcom/android/server/pm/ChangedPackagesTracker;Landroid/util/ArrayMap;Landroid/util/ArraySet;[Landroid/os/incremental/PerUidReadTimeouts;Lcom/android/server/pm/SnapshotStatistics;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DumpHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    iput-object p2, p0, Lcom/android/server/pm/DumpHelper;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    iput-object p3, p0, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iput-object p4, p0, Lcom/android/server/pm/DumpHelper;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iput-object p5, p0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackages:[Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/pm/DumpHelper;->mKnownPackages:Lcom/android/server/pm/KnownPackages;

    iput-object p7, p0, Lcom/android/server/pm/DumpHelper;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    iput-object p8, p0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    iput-object p9, p0, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    iput-object p10, p0, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    iput-object p11, p0, Lcom/android/server/pm/DumpHelper;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    return-void
.end method


# virtual methods
.method public final doDump(Lcom/android/server/pm/Computer;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 27
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x2

    const/4 v8, 0x1

    new-instance v5, Lcom/android/server/pm/DumpState;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x0

    move v6, v9

    :goto_13
    array-length v10, v3

    const/16 v11, 0x8

    const-wide/32 v12, 0x10000000

    if-ge v6, v10, :cond_1cc

    aget-object v10, v3, v6

    if-eqz v10, :cond_1cc

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1cc

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2d

    if-eq v14, v15, :cond_2f

    goto/16 :goto_1cc

    :cond_2f
    add-int/2addr v6, v8

    const-string v14, "-a"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_39

    goto :goto_13

    :cond_39
    const-string v14, "-h"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b6

    const-string/jumbo v0, "Package manager dump options:"

    const-string v1, "  [-h] [-f] [--checkin] [--all-components] [cmd] ..."

    const-string v3, "    --checkin: dump for a checkin"

    const-string v4, "    -f: print details of intent filters"

    invoke-static {v2, v0, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    -h: print this help"

    const-string v1, "    --proto: dump data to proto"

    const-string v3, "    --all-components: include all component names in package dump"

    const-string v4, "    --include-apex: includes the apex packages in package dump"

    invoke-static {v2, v0, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  cmd may be one of:"

    const-string v1, "    apex: list active APEXes and APEX session state"

    const-string v3, "    l[ibraries]: list known shared libraries"

    const-string v4, "    f[eatures]: list device features"

    invoke-static {v2, v0, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    k[eysets]: print known keysets"

    const-string v1, "    r[esolvers] [activity|service|receiver|content]: dump intent resolvers"

    const-string v3, "    perm[issions]: dump permissions"

    const-string v4, "    permission [name ...]: dump declaration and use of given permission"

    invoke-static {v2, v0, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    pref[erred]: print preferred package settings"

    const-string v1, "    preferred-xml [--full]: print preferred package settings as xml"

    const-string v3, "    prov[iders]: dump content providers"

    const-string v4, "    p[ackages]: dump installed packages"

    invoke-static {v2, v0, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    q[ueries]: dump app queryability calculations"

    const-string v1, "    s[hared-users] [noperm]: dump shared user IDs"

    const-string v3, "    m[essages]: print collected runtime messages"

    const-string v4, "    v[erifiers]: print package verifier info"

    invoke-static {v2, v0, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    d[omain-preferred-apps]: print domains preferred apps"

    const-string v1, "    i[ntent-filter-verifiers]|ifv: print intent filter verifier info"

    const-string v3, "    t[imeouts]: print read timeouts for known digesters"

    const-string v4, "    version: print database version info"

    invoke-static {v2, v0, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    write: write current settings now"

    const-string v1, "    installs: details about install sessions"

    const-string v3, "    check-permission <permission> <package> [<user>]: does pkg hold perm?"

    const-string v4, "    dexopt: dump dexopt state"

    invoke-static {v2, v0, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    compiler-stats: dump compiler statistics"

    const-string v1, "    service-permissions: dump permissions required by services"

    const-string v3, "    snapshot [--full|--brief]: dump snapshot statistics"

    const-string v4, "    protected-broadcasts: print list of protected broadcast actions"

    invoke-static {v2, v0, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    known-packages: dump known packages"

    const-string v1, "    changes: dump the packages that have been changed"

    const-string v3, "    frozen: dump the frozen packages"

    const-string v4, "    volumes: dump the loaded volumes"

    invoke-static {v2, v0, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    <package.name>: info about given package"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_b6
    const-string v14, "--checkin"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c2

    iput-boolean v8, v5, Lcom/android/server/pm/DumpState;->mCheckIn:Z

    goto/16 :goto_13

    :cond_c2
    const-string v14, "--all-components"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d1

    iget v10, v5, Lcom/android/server/pm/DumpState;->mOptions:I

    or-int/2addr v10, v4

    iput v10, v5, Lcom/android/server/pm/DumpState;->mOptions:I

    goto/16 :goto_13

    :cond_d1
    const-string v14, "-f"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e0

    iget v10, v5, Lcom/android/server/pm/DumpState;->mOptions:I

    or-int/2addr v10, v8

    iput v10, v5, Lcom/android/server/pm/DumpState;->mOptions:I

    goto/16 :goto_13

    :cond_e0
    const-string v14, "--include-apex"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_ef

    iget v10, v5, Lcom/android/server/pm/DumpState;->mOptions:I

    or-int/2addr v10, v11

    iput v10, v5, Lcom/android/server/pm/DumpState;->mOptions:I

    goto/16 :goto_13

    :cond_ef
    const-string v11, "--proto"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c2

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2, v7}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v3, v0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackages:[Ljava/lang/String;

    array-length v4, v3

    move v5, v9

    :goto_100
    const-wide v10, 0x10900000001L

    if-ge v5, v4, :cond_126

    aget-object v14, v3, v5

    const-wide v6, 0x10b00000001L

    invoke-virtual {v2, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    invoke-virtual {v2, v10, v11, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-interface {v1, v14, v12, v13, v9}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v10

    const-wide v14, 0x10500000002L

    invoke-virtual {v2, v14, v15, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v2, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/2addr v5, v8

    goto :goto_100

    :cond_126
    iget-object v3, v0, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    check-cast v3, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iget-object v3, v3, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-interface {v3}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_151

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x10b00000002L

    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    invoke-virtual {v2, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-interface {v1, v3, v12, v13, v9}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    const-wide v14, 0x10500000002L

    invoke-virtual {v2, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_151
    invoke-interface {v1, v2}, Lcom/android/server/pm/Computer;->dumpSharedLibrariesProto(Landroid/util/proto/ProtoOutputStream;)V

    iget-object v3, v0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    :goto_15a
    if-ge v9, v3, :cond_16e

    iget-object v4, v0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/FeatureInfo;

    const-wide v5, 0x20b00000004L

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/pm/FeatureInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/2addr v9, v8

    goto :goto_15a

    :cond_16e
    invoke-interface {v1, v2}, Lcom/android/server/pm/Computer;->dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V

    invoke-interface {v1, v2}, Lcom/android/server/pm/Computer;->dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x2dc6c0

    sub-long/2addr v3, v5

    :try_start_180
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18a
    .catch Ljava/io/IOException; {:try_start_180 .. :try_end_18a} :catch_1bd

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_197

    :try_start_190
    invoke-virtual {v1, v3, v4}, Ljava/io/BufferedReader;->skip(J)J

    goto :goto_197

    :catchall_194
    move-exception v0

    move-object v3, v0

    goto :goto_1b4

    :cond_197
    :goto_197
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b0

    const-string/jumbo v3, "ignored: updated version"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a7

    goto :goto_197

    :cond_1a7
    const-wide v3, 0x20900000007L

    invoke-virtual {v2, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_1af
    .catchall {:try_start_190 .. :try_end_1af} :catchall_194

    goto :goto_197

    :cond_1b0
    :try_start_1b0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1b3
    .catch Ljava/io/IOException; {:try_start_1b0 .. :try_end_1b3} :catch_1bd

    goto :goto_1bd

    :goto_1b4
    :try_start_1b4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1b7
    .catchall {:try_start_1b4 .. :try_end_1b7} :catchall_1b8

    goto :goto_1bc

    :catchall_1b8
    move-exception v0

    :try_start_1b9
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1bc
    throw v3
    :try_end_1bd
    .catch Ljava/io/IOException; {:try_start_1b9 .. :try_end_1bd} :catch_1bd

    :catch_1bd
    :goto_1bd
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    goto/16 :goto_bef

    :cond_1c2
    const-string/jumbo v11, "Unknown argument: "

    const-string v12, "; use -h for help"

    invoke-static {v2, v11, v10, v12}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_1cc
    :goto_1cc
    array-length v10, v3

    move/from16 v16, v4

    const/high16 v13, 0x800000

    const/high16 v4, 0x10000

    const/16 v20, 0x4

    const/high16 v14, 0x80000

    const v15, 0x8000

    const/16 v12, 0x2000

    if-ge v6, v10, :cond_316

    aget-object v10, v3, v6

    add-int/lit8 v9, v6, 0x1

    const-string/jumbo v11, "android"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1f3

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1f9

    :cond_1f3
    const/high16 v6, 0x40000000  # 2.0f

    const/16 v11, 0x100

    goto/16 :goto_5fb

    :cond_1f9
    const-string/jumbo v11, "check-permission"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_250

    array-length v4, v3

    if-lt v9, v4, :cond_20b

    const-string v0, "Error: check-permission missing permission argument"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_20b
    aget-object v4, v3, v9

    add-int/lit8 v5, v6, 0x2

    array-length v7, v3

    if-lt v5, v7, :cond_218

    const-string v0, "Error: check-permission missing package argument"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_218
    aget-object v5, v3, v5

    add-int/lit8 v6, v6, 0x3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    array-length v8, v3

    if-ge v6, v8, :cond_23b

    :try_start_227
    aget-object v7, v3, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_22d
    .catch Ljava/lang/NumberFormatException; {:try_start_227 .. :try_end_22d} :catch_22e

    goto :goto_23b

    :catch_22e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: check-permission user argument is not a number: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v3, v6

    invoke-static {v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void

    :cond_23b
    :goto_23b
    const-wide/16 v8, -0x1

    invoke-interface {v1, v8, v9, v5}, Lcom/android/server/pm/Computer;->resolveInternalPackageName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/pm/DumpHelper;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    const-string/jumbo v3, "default:0"

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-virtual {v0, v1, v4, v3, v7}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void

    :cond_250
    const-string/jumbo v6, "l"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_262

    const-string/jumbo v6, "libraries"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_268

    :cond_262
    const/high16 v6, 0x40000000  # 2.0f

    const/16 v11, 0x100

    goto/16 :goto_5f7

    :cond_268
    const-string/jumbo v6, "f"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5ed

    const-string/jumbo v6, "features"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_282

    move/from16 v3, v16

    const/high16 v6, 0x40000000  # 2.0f

    const/16 v11, 0x100

    goto/16 :goto_5f3

    :cond_282
    const-string/jumbo v6, "r"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_294

    const-string/jumbo v6, "resolvers"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29a

    :cond_294
    const/high16 v6, 0x40000000  # 2.0f

    const/16 v11, 0x100

    goto/16 :goto_56f

    :cond_29a
    const-string/jumbo v6, "perm"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_564

    const-string/jumbo v6, "permissions"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b4

    const/16 v3, 0x40

    const/high16 v6, 0x40000000  # 2.0f

    const/16 v11, 0x100

    goto/16 :goto_56a

    :cond_2b4
    const-string/jumbo v6, "permission"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e1

    array-length v6, v3

    if-lt v9, v6, :cond_2c6

    const-string v0, "Error: permission requires permission name"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_2c6
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    :goto_2cb
    array-length v10, v3

    if-ge v9, v10, :cond_2d5

    aget-object v10, v3, v9

    invoke-virtual {v6, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/2addr v9, v8

    goto :goto_2cb

    :cond_2d5
    const/16 v3, 0x1c0

    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    move-object v4, v6

    const/high16 v6, 0x40000000  # 2.0f

    const/16 v11, 0x100

    goto/16 :goto_603

    :cond_2e1
    const-string/jumbo v6, "pref"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_559

    const-string/jumbo v6, "preferred"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2fb

    const/16 v3, 0x1000

    const/high16 v6, 0x40000000  # 2.0f

    const/16 v11, 0x100

    goto/16 :goto_55f

    :cond_2fb
    const-string/jumbo v6, "preferred-xml"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31c

    invoke-virtual {v5, v12}, Lcom/android/server/pm/DumpState;->setDump(I)V

    array-length v6, v3

    if-ge v9, v6, :cond_316

    const-string v6, "--full"

    aget-object v3, v3, v9

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_316

    iput-boolean v8, v5, Lcom/android/server/pm/DumpState;->mFullPreferred:Z

    :cond_316
    :goto_316
    const/high16 v6, 0x40000000  # 2.0f

    :cond_318
    :goto_318
    const/16 v11, 0x100

    goto/16 :goto_602

    :cond_31c
    const-string/jumbo v6, "d"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_54e

    const-string/jumbo v6, "domain-preferred-apps"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_336

    const/high16 v3, 0x40000

    const/high16 v6, 0x40000000  # 2.0f

    const/16 v11, 0x100

    goto/16 :goto_554

    :cond_336
    const-string/jumbo v6, "p"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_543

    const-string/jumbo v6, "packages"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_350

    const/16 v3, 0x80

    const/high16 v6, 0x40000000  # 2.0f

    const/16 v11, 0x100

    goto/16 :goto_549

    :cond_350
    const-string/jumbo v6, "q"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_538

    const-string/jumbo v6, "queries"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36a

    const/high16 v3, 0x4000000

    const/high16 v6, 0x40000000  # 2.0f

    const/16 v11, 0x100

    goto/16 :goto_53e

    :cond_36a
    const-string/jumbo v6, "s"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37c

    const-string/jumbo v6, "shared-users"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_382

    :cond_37c
    const/high16 v6, 0x40000000  # 2.0f

    const/16 v11, 0x100

    goto/16 :goto_51f

    :cond_382
    const-string/jumbo v6, "prov"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_516

    const-string/jumbo v6, "providers"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39a

    const/16 v3, 0x400

    const/high16 v6, 0x40000000  # 2.0f

    goto/16 :goto_51a

    :cond_39a
    const-string/jumbo v6, "m"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_50d

    const-string/jumbo v6, "messages"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b2

    const/16 v3, 0x200

    const/high16 v6, 0x40000000  # 2.0f

    goto/16 :goto_511

    :cond_3b2
    const-string/jumbo v6, "v"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_504

    const-string/jumbo v6, "verifiers"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3ca

    const/16 v3, 0x800

    const/high16 v6, 0x40000000  # 2.0f

    goto/16 :goto_508

    :cond_3ca
    const-string/jumbo v6, "dv"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4fb

    const-string/jumbo v6, "domain-verifier"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e2

    const/high16 v3, 0x20000

    const/high16 v6, 0x40000000  # 2.0f

    goto/16 :goto_4ff

    :cond_3e2
    const-string/jumbo v6, "version"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f0

    invoke-virtual {v5, v15}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_316

    :cond_3f0
    const-string/jumbo v6, "k"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4f2

    const-string/jumbo v6, "keysets"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_408

    const/16 v3, 0x4000

    const/high16 v6, 0x40000000  # 2.0f

    goto/16 :goto_4f6

    :cond_408
    const-string/jumbo v6, "installs"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_416

    invoke-virtual {v5, v4}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_316

    :cond_416
    const-string/jumbo v6, "frozen"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_424

    invoke-virtual {v5, v14}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_316

    :cond_424
    const-string/jumbo v6, "volumes"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_432

    invoke-virtual {v5, v13}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_316

    :cond_432
    const-string/jumbo v6, "dexopt"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_442

    const/high16 v6, 0x100000

    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_316

    :cond_442
    const-string/jumbo v6, "compiler-stats"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_452

    const/high16 v6, 0x200000

    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_316

    :cond_452
    const-string/jumbo v6, "changes"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_462

    const/high16 v6, 0x400000

    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_316

    :cond_462
    const-string/jumbo v6, "service-permissions"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_472

    const/high16 v6, 0x1000000

    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_316

    :cond_472
    const-string/jumbo v6, "known-packages"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_482

    const/high16 v6, 0x8000000

    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_316

    :cond_482
    const-string/jumbo v6, "t"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4e9

    const-string/jumbo v6, "timeouts"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_499

    const/high16 v3, 0x10000000

    const/high16 v6, 0x40000000  # 2.0f

    goto :goto_4ed

    :cond_499
    const-string/jumbo v6, "snapshot"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c7

    const/high16 v6, 0x20000000

    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->setDump(I)V

    array-length v6, v3

    if-ge v9, v6, :cond_316

    const-string v6, "--full"

    aget-object v10, v3, v9

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b9

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/pm/DumpState;->mBrief:Z

    goto/16 :goto_316

    :cond_4b9
    const-string v6, "--brief"

    aget-object v3, v3, v9

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_316

    iput-boolean v8, v5, Lcom/android/server/pm/DumpState;->mBrief:Z

    goto/16 :goto_316

    :cond_4c7
    const-string/jumbo v3, "protected-broadcasts"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d7

    const/high16 v6, 0x40000000  # 2.0f

    invoke-virtual {v5, v6}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_318

    :cond_4d7
    const/high16 v6, 0x40000000  # 2.0f

    const-string/jumbo v3, "pu"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_318

    const/high16 v3, -0x80000000

    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_318

    :cond_4e9
    const/high16 v6, 0x40000000  # 2.0f

    const/high16 v3, 0x10000000

    :goto_4ed
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_318

    :cond_4f2
    const/high16 v6, 0x40000000  # 2.0f

    const/16 v3, 0x4000

    :goto_4f6
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_318

    :cond_4fb
    const/high16 v6, 0x40000000  # 2.0f

    const/high16 v3, 0x20000

    :goto_4ff
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_318

    :cond_504
    const/high16 v6, 0x40000000  # 2.0f

    const/16 v3, 0x800

    :goto_508
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_318

    :cond_50d
    const/high16 v6, 0x40000000  # 2.0f

    const/16 v3, 0x200

    :goto_511
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_318

    :cond_516
    const/high16 v6, 0x40000000  # 2.0f

    const/16 v3, 0x400

    :goto_51a
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_318

    :goto_51f
    invoke-virtual {v5, v11}, Lcom/android/server/pm/DumpState;->setDump(I)V

    array-length v10, v3

    if-ge v9, v10, :cond_602

    const-string/jumbo v10, "noperm"

    aget-object v3, v3, v9

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_602

    iget v3, v5, Lcom/android/server/pm/DumpState;->mOptions:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v5, Lcom/android/server/pm/DumpState;->mOptions:I

    goto/16 :goto_602

    :cond_538
    const/high16 v6, 0x40000000  # 2.0f

    const/16 v11, 0x100

    const/high16 v3, 0x4000000

    :goto_53e
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_602

    :cond_543
    const/high16 v6, 0x40000000  # 2.0f

    const/16 v11, 0x100

    const/16 v3, 0x80

    :goto_549
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_602

    :cond_54e
    const/high16 v6, 0x40000000  # 2.0f

    const/16 v11, 0x100

    const/high16 v3, 0x40000

    :goto_554
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_602

    :cond_559
    const/high16 v6, 0x40000000  # 2.0f

    const/16 v11, 0x100

    const/16 v3, 0x1000

    :goto_55f
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_602

    :cond_564
    const/high16 v6, 0x40000000  # 2.0f

    const/16 v11, 0x100

    const/16 v3, 0x40

    :goto_56a
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_602

    :goto_56f
    array-length v10, v3

    if-lt v9, v10, :cond_579

    const/16 v3, 0x3c

    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto/16 :goto_602

    :cond_579
    :goto_579
    array-length v10, v3

    if-ge v9, v10, :cond_602

    aget-object v10, v3, v9

    const-string/jumbo v4, "a"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_590

    const-string/jumbo v4, "activity"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_593

    :cond_590
    move/from16 v4, v20

    goto :goto_5e4

    :cond_593
    const-string/jumbo v4, "s"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a5

    const-string/jumbo v4, "service"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a8

    :cond_5a5
    const/16 v4, 0x8

    goto :goto_5e0

    :cond_5a8
    const-string/jumbo v4, "r"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5ba

    const-string/jumbo v4, "receiver"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5bd

    :cond_5ba
    const/16 v4, 0x10

    goto :goto_5dc

    :cond_5bd
    const-string/jumbo v4, "c"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5cf

    const-string/jumbo v4, "content"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d2

    :cond_5cf
    const/16 v4, 0x20

    goto :goto_5d8

    :cond_5d2
    const-string v0, "Error: unknown resolver table type: "

    invoke-static {v2, v0, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_5d8
    invoke-virtual {v5, v4}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_5e7

    :goto_5dc
    invoke-virtual {v5, v4}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_5e7

    :goto_5e0
    invoke-virtual {v5, v4}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_5e7

    :goto_5e4
    invoke-virtual {v5, v4}, Lcom/android/server/pm/DumpState;->setDump(I)V

    :goto_5e7
    add-int/2addr v9, v8

    const/high16 v4, 0x10000

    const/16 v20, 0x4

    goto :goto_579

    :cond_5ed
    const/high16 v6, 0x40000000  # 2.0f

    const/16 v11, 0x100

    move/from16 v3, v16

    :goto_5f3
    invoke-virtual {v5, v3}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_602

    :goto_5f7
    invoke-virtual {v5, v8}, Lcom/android/server/pm/DumpState;->setDump(I)V

    goto :goto_602

    :goto_5fb
    iput-object v10, v5, Lcom/android/server/pm/DumpState;->mTargetPackageName:Ljava/lang/String;

    iget v3, v5, Lcom/android/server/pm/DumpState;->mOptions:I

    or-int/2addr v3, v8

    iput v3, v5, Lcom/android/server/pm/DumpState;->mOptions:I

    :cond_602
    :goto_602
    const/4 v4, 0x0

    :goto_603
    iget-object v3, v5, Lcom/android/server/pm/DumpState;->mTargetPackageName:Ljava/lang/String;

    move/from16 v18, v6

    iget-boolean v6, v5, Lcom/android/server/pm/DumpState;->mCheckIn:Z

    if-eqz v3, :cond_622

    invoke-interface {v1, v3}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v9

    if-nez v9, :cond_622

    invoke-interface {v1, v3}, Lcom/android/server/pm/Computer;->isApexPackage(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_622

    const-string/jumbo v0, "Unable to find package: "

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_622
    if-eqz v6, :cond_62a

    const-string/jumbo v9, "vers,1"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_62a
    if-nez v6, :cond_637

    invoke-virtual {v5, v15}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v9

    if-eqz v9, :cond_637

    if-nez v3, :cond_637

    invoke-interface {v1, v15, v7, v2, v5}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_637
    const/16 v9, 0x78

    if-nez v6, :cond_6eb

    const/high16 v10, 0x8000000

    invoke-virtual {v5, v10}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v10

    if-eqz v10, :cond_6eb

    if-nez v3, :cond_6eb

    iget-boolean v10, v5, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    iput-boolean v8, v5, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    if-eqz v10, :cond_64e

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    :cond_64e
    new-instance v10, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v15, "  "

    invoke-direct {v10, v2, v15, v9}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    const-string v15, "Known Packages:"

    invoke-virtual {v10, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v15, 0x0

    :goto_65e
    const/16 v11, 0x13

    if-gt v15, v11, :cond_6e8

    packed-switch v15, :pswitch_data_bf0

    const-string/jumbo v11, "Unknown"

    goto :goto_6b0

    :pswitch_669  #0x13
    const-string/jumbo v11, "Wearable sensing"

    goto :goto_6b0

    :pswitch_66d  #0x12
    const-string v11, "Ambient Context Detection"

    goto :goto_6b0

    :pswitch_670  #0x11
    const-string/jumbo v11, "Recents"

    goto :goto_6b0

    :pswitch_674  #0x10
    const-string/jumbo v11, "Retail Demo"

    goto :goto_6b0

    :pswitch_678  #0xf
    const-string v11, "Companion"

    goto :goto_6b0

    :pswitch_67b  #0xe
    const-string/jumbo v11, "Wi-Fi"

    goto :goto_6b0

    :pswitch_67f  #0xd
    const-string/jumbo v11, "Overlay Config Signature"

    goto :goto_6b0

    :pswitch_683  #0xc
    const-string v11, "App Predictor"

    goto :goto_6b0

    :pswitch_686  #0xb
    const-string v11, "Incident Report Approver"

    goto :goto_6b0

    :pswitch_689  #0xa
    const-string v11, "Configurator"

    goto :goto_6b0

    :pswitch_68c  #0x9
    const-string v11, "Documenter"

    goto :goto_6b0

    :pswitch_68f  #0x8
    const-string/jumbo v11, "Wellbeing"

    goto :goto_6b0

    :pswitch_693  #0x7
    const-string/jumbo v11, "Permission Controller"

    goto :goto_6b0

    :pswitch_697  #0x6
    const-string/jumbo v11, "System Text Classifier"

    goto :goto_6b0

    :pswitch_69b  #0x5
    const-string v11, "Browser"

    goto :goto_6b0

    :pswitch_69e  #0x4
    const-string/jumbo v11, "Verifier"

    goto :goto_6b0

    :pswitch_6a2  #0x3
    const-string/jumbo v11, "Uninstaller"

    goto :goto_6b0

    :pswitch_6a6  #0x2
    const-string v11, "Installer"

    goto :goto_6b0

    :pswitch_6a9  #0x1
    const-string/jumbo v11, "Setup Wizard"

    goto :goto_6b0

    :pswitch_6ad  #0x0
    const-string/jumbo v11, "System"

    :goto_6b0
    invoke-virtual {v10, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v11, ":"

    invoke-virtual {v10, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/pm/DumpHelper;->mKnownPackages:Lcom/android/server/pm/KnownPackages;

    const/4 v9, 0x0

    invoke-virtual {v11, v1, v15, v9}, Lcom/android/server/pm/KnownPackages;->getKnownPackageNames(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6cf

    const-string/jumbo v9, "none"

    invoke-virtual {v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6dc

    :cond_6cf
    array-length v9, v11

    const/4 v13, 0x0

    :goto_6d1
    if-ge v13, v9, :cond_6dc

    aget-object v14, v11, v13

    invoke-virtual {v10, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/2addr v13, v8

    const/high16 v14, 0x80000

    goto :goto_6d1

    :cond_6dc
    :goto_6dc
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/2addr v15, v8

    const/16 v9, 0x78

    const/high16 v13, 0x800000

    const/high16 v14, 0x80000

    goto/16 :goto_65e

    :cond_6e8
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_6eb
    const/16 v9, 0x800

    invoke-virtual {v5, v9}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v9

    if-eqz v9, :cond_75c

    if-nez v3, :cond_75c

    if-nez v6, :cond_70b

    iget-object v9, v0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackages:[Ljava/lang/String;

    array-length v9, v9

    if-lez v9, :cond_70b

    iget-boolean v9, v5, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    iput-boolean v8, v5, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    if-eqz v9, :cond_705

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    :cond_705
    const-string/jumbo v9, "Verifiers:"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_70b
    iget-object v9, v0, Lcom/android/server/pm/DumpHelper;->mRequiredVerifierPackages:[Ljava/lang/String;

    array-length v10, v9

    const/4 v11, 0x0

    :goto_70f
    if-ge v11, v10, :cond_75c

    aget-object v13, v9, v11

    if-nez v6, :cond_738

    const-string v14, "  Required: "

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, " (uid="

    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v15, v8

    move-object/from16 v17, v9

    const-wide/32 v8, 0x10000000

    const/4 v14, 0x0

    invoke-interface {v1, v13, v8, v9, v14}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v13

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string v13, ")"

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v21, v15

    goto :goto_755

    :cond_738
    move/from16 v21, v8

    move-object/from16 v17, v9

    const-wide/32 v8, 0x10000000

    const/4 v14, 0x0

    const-string/jumbo v15, "vrfy,"

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v15, ","

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1, v13, v8, v9, v14}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v13

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(I)V

    :goto_755
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, v17

    move/from16 v8, v21

    goto :goto_70f

    :cond_75c
    move/from16 v21, v8

    const/high16 v8, 0x20000

    invoke-virtual {v5, v8}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v8

    if-eqz v8, :cond_7cf

    if-nez v3, :cond_7cf

    iget-object v8, v0, Lcom/android/server/pm/DumpHelper;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    check-cast v8, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iget-object v8, v8, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mProxy:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;

    invoke-interface {v8}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_7c5

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-nez v6, :cond_7a8

    iget-boolean v9, v5, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    move/from16 v15, v21

    iput-boolean v15, v5, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    if-eqz v9, :cond_785

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    :cond_785
    const-string v9, "Domain Verifier:"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v9, "  Using: "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, " (uid="

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/32 v9, 0x10000000

    const/4 v14, 0x0

    invoke-interface {v1, v8, v9, v10, v14}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, ")"

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7c3

    :cond_7a8
    const-wide/32 v9, 0x10000000

    const/4 v14, 0x0

    if-eqz v8, :cond_7c3

    const-string/jumbo v11, "dv,"

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, ","

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1, v8, v9, v10, v14}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(I)V

    :cond_7c3
    :goto_7c3
    const/4 v15, 0x1

    goto :goto_7d1

    :cond_7c5
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v8, "No Domain Verifier available!"

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7c3

    :cond_7cf
    move/from16 v15, v21

    :goto_7d1
    invoke-virtual {v5, v15}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v8

    if-eqz v8, :cond_7dc

    if-nez v3, :cond_7dc

    invoke-interface {v1, v15, v7, v2, v5}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_7dc
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v8

    if-eqz v8, :cond_83f

    if-nez v3, :cond_83f

    iget-boolean v8, v5, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    iput-boolean v15, v5, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    if-eqz v8, :cond_7ee

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    :cond_7ee
    if-nez v6, :cond_7f5

    const-string v8, "Features:"

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7f5
    iget-object v8, v0, Lcom/android/server/pm/DumpHelper;->mAvailableFeatures:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7ff
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_83f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/FeatureInfo;

    if-nez v6, :cond_829

    const-string v10, "  "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, v9, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, v9, Landroid/content/pm/FeatureInfo;->version:I

    if-lez v10, :cond_825

    const-string v10, " version="

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v9, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(I)V

    :cond_825
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    goto :goto_7ff

    :cond_829
    const-string/jumbo v10, "feat,"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, v9, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, ","

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v9, v9, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_7ff

    :cond_83f
    invoke-interface {v1}, Lcom/android/server/pm/Computer;->getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object v8

    if-nez v6, :cond_84f

    const/4 v9, 0x4

    invoke-virtual {v5, v9}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v9

    if-eqz v9, :cond_84f

    invoke-interface {v8, v5, v2, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpActivityResolvers(Lcom/android/server/pm/DumpState;Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_84f
    if-nez v6, :cond_85c

    const/16 v9, 0x10

    invoke-virtual {v5, v9}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v9

    if-eqz v9, :cond_85c

    invoke-interface {v8, v5, v2, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpReceiverResolvers(Lcom/android/server/pm/DumpState;Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_85c
    if-nez v6, :cond_869

    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v9

    if-eqz v9, :cond_869

    invoke-interface {v8, v5, v2, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpServiceResolvers(Lcom/android/server/pm/DumpState;Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_869
    if-nez v6, :cond_876

    const/16 v9, 0x20

    invoke-virtual {v5, v9}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v9

    if-eqz v9, :cond_876

    invoke-interface {v8, v5, v2, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpProviderResolvers(Lcom/android/server/pm/DumpState;Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_876
    if-nez v6, :cond_883

    const/16 v9, 0x1000

    invoke-virtual {v5, v9}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v10

    if-eqz v10, :cond_883

    invoke-interface {v1, v9, v7, v2, v5}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_883
    if-nez v6, :cond_890

    invoke-virtual {v5, v12}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v9

    if-eqz v9, :cond_890

    if-nez v3, :cond_890

    invoke-interface {v1, v12, v7, v2, v5}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_890
    if-nez v6, :cond_89d

    const/high16 v9, 0x40000

    invoke-virtual {v5, v9}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v10

    if-eqz v10, :cond_89d

    invoke-interface {v1, v9, v7, v2, v5}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_89d
    if-nez v6, :cond_8aa

    const/16 v9, 0x40

    invoke-virtual {v5, v9}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v9

    if-eqz v9, :cond_8aa

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/server/pm/Computer;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V

    :cond_8aa
    if-nez v6, :cond_8b7

    const/16 v9, 0x400

    invoke-virtual {v5, v9}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v9

    if-eqz v9, :cond_8b7

    invoke-interface {v8, v1, v2, v5, v3}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpContentProviders(Lcom/android/server/pm/Computer;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    :cond_8b7
    if-nez v6, :cond_8c4

    const/16 v9, 0x4000

    invoke-virtual {v5, v9}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v9

    if-eqz v9, :cond_8c4

    invoke-interface {v1, v5, v2, v3}, Lcom/android/server/pm/Computer;->dumpKeySet(Lcom/android/server/pm/DumpState;Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_8c4
    const/16 v9, 0x80

    invoke-virtual {v5, v9}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v9

    if-eqz v9, :cond_8d6

    move/from16 v9, v18

    const/high16 v10, 0x10000

    const/16 v11, 0x100

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->dumpPackages(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    goto :goto_8dc

    :cond_8d6
    move/from16 v9, v18

    const/high16 v10, 0x10000

    const/16 v11, 0x100

    :goto_8dc
    if-nez v6, :cond_8e9

    const/high16 v12, 0x4000000

    invoke-virtual {v5, v12}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v13

    if-eqz v13, :cond_8e9

    invoke-interface {v1, v12, v7, v2, v5}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_8e9
    invoke-virtual {v5, v11}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v11

    if-eqz v11, :cond_8f2

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->dumpSharedUsers(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    :cond_8f2
    move-object v12, v3

    move-object v11, v5

    move v13, v6

    if-nez v13, :cond_92b

    const/high16 v6, 0x400000

    invoke-virtual {v11, v6}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_92b

    if-nez v12, :cond_92b

    iget-boolean v3, v11, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    const/4 v15, 0x1

    iput-boolean v15, v11, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    if-eqz v3, :cond_90b

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    :cond_90b
    const-string/jumbo v3, "Package Changes:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/pm/DumpHelper;->mChangedPackagesTracker:Lcom/android/server/pm/ChangedPackagesTracker;

    new-instance v4, Lcom/android/server/pm/DumpHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/android/server/pm/DumpHelper$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    iget-object v5, v3, Lcom/android/server/pm/ChangedPackagesTracker;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_91b
    iget v6, v3, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v3, v3, Lcom/android/server/pm/ChangedPackagesTracker;->mUserIdToSequenceToPackage:Landroid/util/SparseArray;

    invoke-virtual {v4, v6, v3}, Lcom/android/server/pm/DumpHelper$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit v5

    goto :goto_92b

    :catchall_928
    move-exception v0

    monitor-exit v5
    :try_end_92a
    .catchall {:try_start_91b .. :try_end_92a} :catchall_928

    throw v0

    :cond_92b
    :goto_92b
    if-nez v13, :cond_93a

    const/high16 v3, 0x80000

    invoke-virtual {v11, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v4

    if-eqz v4, :cond_93a

    if-nez v12, :cond_93a

    invoke-interface {v1, v3, v7, v2, v11}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_93a
    if-nez v13, :cond_99b

    const/high16 v3, 0x800000

    invoke-virtual {v11, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_99b

    if-nez v12, :cond_99b

    iget-object v3, v0, Lcom/android/server/pm/DumpHelper;->mStorageEventHelper:Lcom/android/server/pm/StorageEventHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v4, v11, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    const/4 v15, 0x1

    iput-boolean v15, v11, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    if-eqz v4, :cond_955

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    :cond_955
    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v5, "  "

    const/16 v6, 0x78

    invoke-direct {v4, v2, v5, v6}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v5, "Loaded volumes:"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v5, v3, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    monitor-enter v5

    :try_start_96d
    iget-object v6, v3, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-nez v6, :cond_97d

    const-string v3, "(none)"

    invoke-virtual {v4, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_994

    :catchall_97b
    move-exception v0

    goto :goto_999

    :cond_97d
    const/4 v6, 0x0

    :goto_97e
    iget-object v14, v3, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v14

    if-ge v6, v14, :cond_994

    iget-object v14, v3, Lcom/android/server/pm/StorageEventHelper;->mLoadedVolumes:Landroid/util/ArraySet;

    invoke-virtual {v14, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v15, 0x1

    add-int/2addr v6, v15

    goto :goto_97e

    :cond_994
    :goto_994
    monitor-exit v5
    :try_end_995
    .catchall {:try_start_96d .. :try_end_995} :catchall_97b

    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_99b

    :goto_999
    :try_start_999
    monitor-exit v5
    :try_end_99a
    .catchall {:try_start_999 .. :try_end_99a} :catchall_97b

    throw v0

    :cond_99b
    :goto_99b
    if-nez v13, :cond_9aa

    const/high16 v6, 0x1000000

    invoke-virtual {v11, v6}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_9aa

    if-nez v12, :cond_9aa

    invoke-interface {v8, v2, v11}, Lcom/android/server/pm/resolution/ComponentResolverApi;->dumpServicePermissions(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_9aa
    if-nez v13, :cond_9b7

    const/high16 v6, 0x100000

    invoke-virtual {v11, v6}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_9b7

    invoke-interface {v1, v6, v7, v2, v11}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_9b7
    if-nez v13, :cond_9c4

    const/high16 v3, -0x80000000

    invoke-virtual {v11, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v4

    if-eqz v4, :cond_9c4

    invoke-interface {v1, v3, v7, v2, v11}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_9c4
    if-nez v13, :cond_9d1

    const/high16 v6, 0x200000

    invoke-virtual {v11, v6}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_9d1

    invoke-interface {v1, v6, v7, v2, v11}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_9d1
    const/16 v3, 0x200

    invoke-virtual {v11, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v4

    if-eqz v4, :cond_9fe

    if-nez v12, :cond_9fe

    if-nez v13, :cond_9f8

    iget-boolean v4, v11, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    const/4 v15, 0x1

    iput-boolean v15, v11, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    if-eqz v4, :cond_9e7

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    :cond_9e7
    invoke-interface {v1, v3, v7, v2, v11}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v3, "Package warning messages:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_9fe

    :cond_9f8
    const-string/jumbo v3, "msg,"

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_9fe
    :goto_9fe
    if-nez v13, :cond_a20

    invoke-virtual {v11, v10}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_a20

    if-nez v12, :cond_a20

    iget-boolean v3, v11, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    const/4 v15, 0x1

    iput-boolean v15, v11, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    if-eqz v3, :cond_a12

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    :cond_a12
    iget-object v3, v0, Lcom/android/server/pm/DumpHelper;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v5, "  "

    const/16 v6, 0x78

    invoke-direct {v4, v2, v5, v6}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageInstallerService;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    :cond_a20
    if-nez v13, :cond_a2d

    const/high16 v3, 0x2000000

    invoke-virtual {v11, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v4

    if-eqz v4, :cond_a2d

    invoke-interface {v1, v3, v7, v2, v11}, Lcom/android/server/pm/Computer;->dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    :cond_a2d
    if-nez v13, :cond_b24

    const/high16 v3, 0x10000000

    invoke-virtual {v11, v3}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_b24

    if-nez v12, :cond_b24

    iget-boolean v3, v11, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    const/4 v15, 0x1

    iput-boolean v15, v11, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    if-eqz v3, :cond_a43

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    :cond_a43
    const-string/jumbo v3, "Per UID read timeouts:"

    const-string v4, "    Default timeouts flag: "

    invoke-static {v2, v3, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_a52
    const-string/jumbo v6, "package_manager_service"

    const-string/jumbo v7, "incfs_default_timeouts"

    const-string v8, ""

    invoke-static {v6, v7, v8}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_a5e
    .catchall {:try_start_a52 .. :try_end_a5e} :catchall_b1f

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "    Known digesters list flag: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_a76
    const-string/jumbo v6, "package_manager_service"

    const-string/jumbo v7, "known_digesters_list"

    const-string v8, ""

    invoke-static {v6, v7, v8}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_a82
    .catchall {:try_start_a76 .. :try_end_a82} :catchall_b1a

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "    Timeouts ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/pm/DumpHelper;->mPerUidReadTimeouts:[Landroid/os/incremental/PerUidReadTimeouts;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_aac
    if-ge v5, v4, :cond_b24

    aget-object v6, v3, v5

    const-string v7, "        ("

    const-string/jumbo v8, "uid="

    invoke-static {v2, v7, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Landroid/os/incremental/PerUidReadTimeouts;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "minTimeUs="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v9, v6, Landroid/os/incremental/PerUidReadTimeouts;->minTimeUs:J

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "minPendingTimeUs="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v6, Landroid/os/incremental/PerUidReadTimeouts;->minPendingTimeUs:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "maxPendingTimeUs="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v6, Landroid/os/incremental/PerUidReadTimeouts;->maxPendingTimeUs:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v15, 0x1

    add-int/2addr v5, v15

    const/high16 v9, 0x40000000  # 2.0f

    goto :goto_aac

    :catchall_b1a
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_b1f
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_b24
    if-nez v13, :cond_bb4

    const/high16 v6, 0x20000000

    invoke-virtual {v11, v6}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v3

    if-eqz v3, :cond_bb4

    if-nez v12, :cond_bb4

    iget-boolean v3, v11, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    const/4 v15, 0x1

    iput-boolean v15, v11, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    if-eqz v3, :cond_b3a

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    :cond_b3a
    const-string/jumbo v3, "Snapshot statistics:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/pm/DumpHelper;->mSnapshotStatistics:Lcom/android/server/pm/SnapshotStatistics;

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v4

    invoke-interface {v1}, Lcom/android/server/pm/Computer;->getUsed()I

    move-result v1

    iget-boolean v7, v11, Lcom/android/server/pm/DumpState;->mBrief:Z

    const-string v6, "   "

    iget-object v8, v3, Lcom/android/server/pm/SnapshotStatistics;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_b51
    iget-object v9, v3, Lcom/android/server/pm/SnapshotStatistics;->mLong:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    array-length v10, v9

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/android/server/pm/SnapshotStatistics$Stats;

    new-instance v10, Lcom/android/server/pm/SnapshotStatistics$Stats;

    const/16 v19, 0x0

    aget-object v14, v9, v19

    invoke-direct {v10, v3, v14}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;Lcom/android/server/pm/SnapshotStatistics$Stats;)V

    aput-object v10, v9, v19

    iget-object v10, v3, Lcom/android/server/pm/SnapshotStatistics;->mShort:[Lcom/android/server/pm/SnapshotStatistics$Stats;

    array-length v14, v10

    invoke-static {v10, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/android/server/pm/SnapshotStatistics$Stats;

    new-instance v14, Lcom/android/server/pm/SnapshotStatistics$Stats;

    const/16 v19, 0x0

    aget-object v15, v10, v19

    invoke-direct {v14, v3, v15}, Lcom/android/server/pm/SnapshotStatistics$Stats;-><init>(Lcom/android/server/pm/SnapshotStatistics;Lcom/android/server/pm/SnapshotStatistics$Stats;)V

    aput-object v14, v10, v19

    monitor-exit v8
    :try_end_b7a
    .catchall {:try_start_b51 .. :try_end_b7a} :catchall_bb1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%s Unrecorded-hits: %d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v8, v1}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v6, "stats"

    move-object v1, v2

    move-wide v2, v4

    move-object v4, v9

    move-object v5, v10

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/SnapshotStatistics;->dump(Ljava/io/PrintWriter;J[Lcom/android/server/pm/SnapshotStatistics$Stats;[Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/lang/String;)V

    if-eqz v7, :cond_b9b

    move-object/from16 v2, p3

    goto :goto_bb6

    :cond_b9b
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v6, "times"

    move-object/from16 v1, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/SnapshotStatistics;->dump(Ljava/io/PrintWriter;J[Lcom/android/server/pm/SnapshotStatistics$Stats;[Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v6, "usage"

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/SnapshotStatistics;->dump(Ljava/io/PrintWriter;J[Lcom/android/server/pm/SnapshotStatistics$Stats;[Lcom/android/server/pm/SnapshotStatistics$Stats;Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_bb6

    :catchall_bb1
    move-exception v0

    :try_start_bb2
    monitor-exit v8
    :try_end_bb3
    .catchall {:try_start_bb2 .. :try_end_bb3} :catchall_bb1

    throw v0

    :cond_bb4
    const/16 v19, 0x0

    :goto_bb6
    if-nez v13, :cond_bef

    const/high16 v6, 0x40000000  # 2.0f

    invoke-virtual {v11, v6}, Lcom/android/server/pm/DumpState;->isDumping(I)Z

    move-result v1

    if-eqz v1, :cond_bef

    if-nez v12, :cond_bef

    iget-boolean v1, v11, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    const/4 v15, 0x1

    iput-boolean v15, v11, Lcom/android/server/pm/DumpState;->mTitlePrinted:Z

    if-eqz v1, :cond_bcc

    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    :cond_bcc
    const-string/jumbo v1, "Protected broadcast actions:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v9, v19

    :goto_bd4
    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v9, v1, :cond_bef

    const-string v1, "  "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/pm/DumpHelper;->mProtectedBroadcasts:Landroid/util/ArraySet;

    invoke-virtual {v1, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v15, 0x1

    add-int/2addr v9, v15

    goto :goto_bd4

    :cond_bef
    :goto_bef
    return-void

    :pswitch_data_bf0
    .packed-switch 0x0
        :pswitch_6ad  #00000000
        :pswitch_6a9  #00000001
        :pswitch_6a6  #00000002
        :pswitch_6a2  #00000003
        :pswitch_69e  #00000004
        :pswitch_69b  #00000005
        :pswitch_697  #00000006
        :pswitch_693  #00000007
        :pswitch_68f  #00000008
        :pswitch_68c  #00000009
        :pswitch_689  #0000000a
        :pswitch_686  #0000000b
        :pswitch_683  #0000000c
        :pswitch_67f  #0000000d
        :pswitch_67b  #0000000e
        :pswitch_678  #0000000f
        :pswitch_674  #00000010
        :pswitch_670  #00000011
        :pswitch_66d  #00000012
        :pswitch_669  #00000013
    .end packed-switch
.end method
